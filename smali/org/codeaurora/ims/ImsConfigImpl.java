package org.codeaurora.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.util.Log;
import com.android.ims.ImsConfigListener;
import com.android.ims.internal.IImsConfig.Stub;
import com.android.internal.telephony.ITelephony;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

public class ImsConfigImpl extends Stub {
    private static final boolean DEBUG = true;
    private static final byte DISABLED = (byte) 0;
    private static final byte ENABLED = (byte) 1;
    private static final int EVENT_GET_FEATURE_VALUE = 1;
    private static final int EVENT_GET_INT_VALUE_ASYNC = 9;
    private static final int EVENT_GET_INT_VALUE_SYNC = 5;
    private static final int EVENT_GET_STRING_VALUE_SYNC = 6;
    private static final int EVENT_QUERY_VT_CALL_QUALITY = 12;
    private static final int EVENT_RADIO_ON = 10;
    private static final int EVENT_SET_FEATURE_VALUE = 2;
    private static final int EVENT_SET_PROV_INT_VALUE_SYNC = 7;
    private static final int EVENT_SET_PROV_STRING_VALUE_SYNC = 8;
    private static final int EVENT_SET_SRV_STATUS_DONE = 3;
    private static final int EVENT_SET_VT_CALL_QUALITY = 11;
    private static final int HEADER_SIZE = 8;
    private static final int INT_SIZE = 4;
    private static final int MAX_SIZE = 256;
    private static final int OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG = 327738;
    private static final int OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG = 327731;
    private static final int OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG = 327715;
    private static final int OEM_RIL_REQUEST_GET_IMS_SMS_CONFIG = 327717;
    private static final int OEM_RIL_REQUEST_GET_IMS_USER_CONFIG = 327719;
    private static final int OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG = 327729;
    private static final int OEM_RIL_REQUEST_GET_T_CANCELLATION = 327737;
    private static final int OEM_RIL_REQUEST_GET_T_DELAY = 327735;
    private static final int OEM_RIL_REQUEST_GET_VOLTE_MODE = 327733;
    private static final int OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG = 327739;
    private static final int OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG = 327730;
    private static final int OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG = 327716;
    private static final int OEM_RIL_REQUEST_SET_IMS_SMS_CONFIG = 327718;
    private static final int OEM_RIL_REQUEST_SET_IMS_USER_CONFIG = 327720;
    private static final int OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG = 327728;
    private static final int OEM_RIL_REQUEST_SET_T_CANCELLATION = 327736;
    private static final int OEM_RIL_REQUEST_SET_T_DELAY = 327734;
    private static final int OEM_RIL_REQUEST_SET_VOLTE_MODE = 327732;
    private static final int RESPONSE_BUFFER_SIZE = 2048;
    private static final String TAG = "ImsConfigImpl";
    private static final int WFC_CELLULAR_PREFERRED = 3;
    private static final int WFC_ROAMING_DISABLED = 2;
    private static final int WFC_ROAMING_ENABLED = 1;
    private static final int WFC_ROAMING_NOT_SUPPORTED = 0;
    private static final int WFC_STATUS_OFF = 2;
    private static final int WFC_STATUS_ON = 1;
    private static final int WFC_STATUS_UNSUPPORTED = 0;
    private static final int WFC_WLAN_ONLY = 2;
    private static final int WFC_WLAN_PREFERRED = 1;
    private final String MODIFY_PHONE_STATE = "android.permission.MODIFY_PHONE_STATE";
    private final String READ_PHONE_STATE = "android.permission.READ_PHONE_STATE";
    private final String READ_PRIVILEGED_PHONE_STATE = "android.permission.READ_PRIVILEGED_PHONE_STATE";
    private ImsSenderRxr mCi = null;
    private Context mContext;
    private InternalHandler mHandler;
    private ITelephony mITelephony = null;
    private BroadcastReceiver mImsIntentReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                    Log.d(ImsConfigImpl.TAG, "onConfigurationChange");
                    Configuration config = context.getResources().getConfiguration();
                    if (ImsConfigImpl.this.mMcc != config.mcc || ImsConfigImpl.this.mMnc != config.mnc) {
                        ImsConfigImpl.this.syncInitFeatureValueAtPowerUpOrMccMncChanged(config);
                    }
                }
            }
        }
    };
    private boolean mIsProvisioned = DEBUG;
    private int mMcc;
    private int mMnc;
    private boolean mRegisterForOn = false;

    class PadingValue {
        protected int padSize;

        PadingValue(int size) {
            this.padSize = 0;
            this.padSize = size;
        }

        PadingValue() {
            this.padSize = 0;
            this.padSize = 0;
        }
    }

    class ByteValue extends PadingValue {
        private byte value;

        ByteValue(int size) {
            super(size);
        }

        ByteValue() {
            super(0);
            this.value = ImsConfigImpl.DISABLED;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            buf.put(this.value);
            for (int i = 0; i < this.padSize; i++) {
                buf.put(ImsConfigImpl.DISABLED);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void get(ByteBuffer buf) {
            this.value = buf.get();
            buf.position(this.padSize + buf.position());
        }

        public byte getValue() {
            return this.value;
        }

        public void setValue(byte v) {
            this.value = v;
        }

        public String toString() {
            return "ByteValue value=" + this.value + "]";
        }
    }

    abstract class Config {
        public abstract int getSize();

        public abstract void populate(ByteBuffer byteBuffer);

        public abstract void put(ByteBuffer byteBuffer);

        Config() {
        }
    }

    private static final class FeatureRequestArgument {
        public int feature;
        public ImsConfigListener listener;
        public int network;
        public int value;

        public FeatureRequestArgument(int feature, int network, int value, ImsConfigListener listener) {
            this.feature = feature;
            this.network = network;
            this.listener = listener;
            this.value = value;
        }

        public int getFeature() {
            return this.feature;
        }
    }

    class GetResponse {
        Config mConfig;
        ResponseHeader mHeader = new ResponseHeader();

        GetResponse(Config t) {
            this.mConfig = t;
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.mHeader.get(buf);
            this.mConfig.populate(buf);
            Log.d(ImsConfigImpl.TAG, "GetResponse::populate:" + this);
        }

        public String toString() {
            return "GetResponse [mHeader=" + this.mHeader + ", mConfig=" + this.mConfig + "]";
        }
    }

    private static final class IntConfigRequestArgument {
        public int item;
        public int value;

        public IntConfigRequestArgument(int item, int value) {
            this.item = item;
            this.value = value;
        }
    }

    class IntValue extends PadingValue {
        private int value;

        IntValue(int size) {
            super(size);
        }

        IntValue() {
            super(0);
            this.value = 0;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            buf.putInt(this.value);
            for (int i = 0; i < this.padSize; i++) {
                buf.put(ImsConfigImpl.DISABLED);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void get(ByteBuffer buf) {
            this.value = buf.getInt();
            buf.position(this.padSize + buf.position());
        }

        public int getValue() {
            return this.value;
        }

        public void setValue(int v) {
            this.value = v;
        }

        public String toString() {
            return "IntValue [value=" + this.value + "]";
        }
    }

    private class InternalHandler extends Handler {
        public InternalHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            int status = 1;
            Log.d(ImsConfigImpl.TAG, "handleMessage, msg = " + msg.what);
            AsyncResult ar;
            InternalThreadRequest request;
            switch (msg.what) {
                case 1:
                    ImsConfigImpl.this.handleGetFeatureValue((FeatureRequestArgument) ((InternalThreadRequest) msg.obj).argument);
                    return;
                case 2:
                    ImsConfigImpl.this.handleSetFeatureValue((FeatureRequestArgument) ((InternalThreadRequest) msg.obj).argument);
                    return;
                case 3:
                    ar = (AsyncResult) msg.obj;
                    FeatureRequestArgument argf = (FeatureRequestArgument) ar.userObj;
                    if (ar.exception == null) {
                        status = 0;
                    }
                    ImsConfigImpl.this.callBackSetFeatureListener(argf, status);
                    return;
                case 5:
                    request = (InternalThreadRequest) msg.obj;
                    request.result = Integer.valueOf(ImsConfigImpl.this.handleGetIntValue(((IntConfigRequestArgument) request.argument).item));
                    synchronized (request) {
                        request.notifyAll();
                        break;
                    }
                case 6:
                    request = (InternalThreadRequest) msg.obj;
                    request.result = ImsConfigImpl.this.handleGetStringValue(((StringConfigRequestArgument) request.argument).item);
                    synchronized (request) {
                        request.notifyAll();
                        break;
                    }
                case 7:
                    request = (InternalThreadRequest) msg.obj;
                    IntConfigRequestArgument argi = (IntConfigRequestArgument) request.argument;
                    request.result = Integer.valueOf(ImsConfigImpl.this.handleSetProvisionedIntValue(argi.item, argi.value));
                    synchronized (request) {
                        request.notifyAll();
                        break;
                    }
                case 8:
                    request = (InternalThreadRequest) msg.obj;
                    StringConfigRequestArgument args = (StringConfigRequestArgument) request.argument;
                    request.result = Integer.valueOf(ImsConfigImpl.this.handleSetProvisionedStringValue(args.item, args.value));
                    synchronized (request) {
                        request.notifyAll();
                        break;
                    }
                case 9:
                    request = (InternalThreadRequest) msg.obj;
                    request.result = Integer.valueOf(ImsConfigImpl.this.handleGetIntValue(((IntConfigRequestArgument) request.argument).item));
                    return;
                case 10:
                    if (ImsConfigImpl.this.mMcc != 0 && ImsConfigImpl.this.mMnc != 0) {
                        ImsConfigImpl.this.mIsProvisioned = false;
                        ImsConfigImpl.this.getProvisionedValueAsync(10);
                        return;
                    }
                    return;
                case 11:
                    ar = (AsyncResult) msg.obj;
                    ImsConfigImpl.this.onSetVideoCallQualityDone(ImsConfigImpl.this.getImsConfigListener(ar), ar);
                    return;
                case 12:
                    ar = (AsyncResult) msg.obj;
                    ImsConfigImpl.this.onGetVideoCallQualityDone(ImsConfigImpl.this.getImsConfigListener(ar), ar);
                    return;
                default:
                    Log.w(ImsConfigImpl.TAG, "InternalThreadHandler: unexpected message code: " + msg.what);
                    return;
            }
        }
    }

    private static final class InternalThreadRequest {
        public Object argument;
        public Object result;

        public InternalThreadRequest(Object argument) {
            this.argument = argument;
        }
    }

    class PresenceConfigRawData extends Config {
        IntValue availability_cache_expiration = new IntValue(0);
        ValidValue availability_cache_expiration_valid = new ValidValue(3);
        IntValue capabilites_cache_expiration = new IntValue(0);
        ValidValue capabilites_cache_expiration_valid = new ValidValue(1);
        ByteValue capability_discovery_enable = new ByteValue();
        ValidValue capability_discovery_enable_valid = new ValidValue(0);
        IntValue capability_poll_interval = new IntValue(0);
        ValidValue capability_poll_interval_valid = new ValidValue(3);
        IntValue capability_poll_list_subscription_expiry_timer = new IntValue(0);
        ValidValue capability_poll_list_subscription_expiry_timer_valid = new ValidValue(3);
        ByteValue gzip_enabled = new ByteValue();
        ValidValue gzip_enabled_valid = new ValidValue(0);
        IntValue last_negotiated_published_expire = new IntValue(0);
        ValidValue last_negotiated_published_expire_valid = new ValidValue(3);
        StringValue last_publish_etag = new StringValue(128);
        ValidValue last_publish_etag_valid = new ValidValue();
        IntValue last_published_time = new IntValue(0);
        ValidValue last_published_time_valid = new ValidValue();
        IntValue max_subcription_list_entries = new IntValue(0);
        ValidValue max_subcription_list_entries_valid = new ValidValue(3);
        IntValue minimum_publish_interval = new IntValue(0);
        ValidValue minimum_publish_interval_valid = new ValidValue(3);
        ShortValue presence_notify_wait_duration = new ShortValue(0);
        ValidValue presence_notify_wait_duration_valid = new ValidValue(1);
        IntValue publish_error_recovery_timer = new IntValue(0);
        ValidValue publish_error_recovery_timer_valid = new ValidValue(1);
        IntValue publish_expiry_timer = new IntValue(0);
        ValidValue publish_expiry_timer_valid = new ValidValue(3);
        IntValue publish_extended_expiry_timer = new IntValue(0);
        ValidValue publish_extended_expiry_timer_valid = new ValidValue(3);
        ByteValue volte_user_opted_in_status = new ByteValue(0);
        ValidValue volte_user_opted_in_status_valid = new ValidValue(0);

        PresenceConfigRawData() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return 220;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "PresenceConfigRawData::put: " + this);
            this.publish_expiry_timer_valid.put(buf);
            this.publish_expiry_timer.put(buf);
            this.publish_extended_expiry_timer_valid.put(buf);
            this.publish_extended_expiry_timer.put(buf);
            this.minimum_publish_interval_valid.put(buf);
            this.minimum_publish_interval.put(buf);
            this.capability_poll_list_subscription_expiry_timer_valid.put(buf);
            this.capability_poll_list_subscription_expiry_timer.put(buf);
            this.capability_discovery_enable_valid.put(buf);
            this.capability_discovery_enable.put(buf);
            this.capabilites_cache_expiration_valid.put(buf);
            this.capabilites_cache_expiration.put(buf);
            this.availability_cache_expiration_valid.put(buf);
            this.availability_cache_expiration.put(buf);
            this.capability_poll_interval_valid.put(buf);
            this.capability_poll_interval.put(buf);
            this.max_subcription_list_entries_valid.put(buf);
            this.max_subcription_list_entries.put(buf);
            this.volte_user_opted_in_status_valid.put(buf);
            this.volte_user_opted_in_status.put(buf);
            this.last_publish_etag_valid.put(buf);
            this.last_publish_etag.put(buf);
            this.last_published_time_valid.put(buf);
            this.last_published_time.put(buf);
            this.last_negotiated_published_expire_valid.put(buf);
            this.last_negotiated_published_expire.put(buf);
            this.gzip_enabled_valid.put(buf);
            this.gzip_enabled.put(buf);
            this.presence_notify_wait_duration_valid.put(buf);
            this.presence_notify_wait_duration.put(buf);
            this.publish_error_recovery_timer_valid.put(buf);
            this.publish_error_recovery_timer.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.publish_expiry_timer_valid.get(buf);
            this.publish_expiry_timer.get(buf);
            this.publish_extended_expiry_timer_valid.get(buf);
            this.publish_extended_expiry_timer.get(buf);
            this.minimum_publish_interval_valid.get(buf);
            this.minimum_publish_interval.get(buf);
            this.capability_poll_list_subscription_expiry_timer_valid.get(buf);
            this.capability_poll_list_subscription_expiry_timer.get(buf);
            this.capability_discovery_enable_valid.get(buf);
            this.capability_discovery_enable.get(buf);
            this.capabilites_cache_expiration_valid.get(buf);
            this.capabilites_cache_expiration.get(buf);
            this.availability_cache_expiration_valid.get(buf);
            this.availability_cache_expiration.get(buf);
            this.capability_poll_interval_valid.get(buf);
            this.capability_poll_interval.get(buf);
            this.max_subcription_list_entries_valid.get(buf);
            this.max_subcription_list_entries.get(buf);
            this.volte_user_opted_in_status_valid.get(buf);
            this.volte_user_opted_in_status.get(buf);
            this.last_publish_etag_valid.get(buf);
            this.last_publish_etag.get(buf);
            this.last_published_time_valid.get(buf);
            this.last_published_time.get(buf);
            this.last_negotiated_published_expire_valid.get(buf);
            this.last_negotiated_published_expire.get(buf);
            this.gzip_enabled_valid.get(buf);
            this.gzip_enabled.get(buf);
            this.presence_notify_wait_duration_valid.get(buf);
            this.presence_notify_wait_duration.get(buf);
            this.publish_error_recovery_timer_valid.get(buf);
            this.publish_error_recovery_timer.get(buf);
            Log.d(ImsConfigImpl.TAG, "PresenceConfigRawData::populate: " + this);
        }

        public String toString() {
            return "PresenceConfigRawData [publish_expiry_timer_valid=" + this.publish_expiry_timer_valid + ", publish_expiry_timer=" + this.publish_expiry_timer + "publish_extended_expiry_timer_valid=" + this.publish_extended_expiry_timer_valid + ", publish_extended_expiry_timer=" + this.publish_extended_expiry_timer + "capabilites_cache_expiration_valid " + this.capabilites_cache_expiration_valid + ", capabilites_cache_expiration =" + this.capabilites_cache_expiration + "availability_cache_expiration_valid=" + this.availability_cache_expiration_valid + ", availability_cache_expiration=" + this.availability_cache_expiration + "capability_poll_interval_valid=" + this.capability_poll_interval_valid + ", capability_poll_interval=" + this.capability_poll_interval + "minimum_publish_interval_valid=" + this.minimum_publish_interval_valid + ", minimum_publish_interval=" + this.minimum_publish_interval + "max_subcription_list_entries_valid= " + this.max_subcription_list_entries_valid + ", max_subcription_list_entries= " + this.max_subcription_list_entries + "capability_poll_list_subscription_expiry_timer_valid=" + this.capability_poll_list_subscription_expiry_timer_valid + ", capability_poll_list_subscription_expiry_timer=" + this.capability_poll_list_subscription_expiry_timer + "gzip_enabled_valid=" + this.gzip_enabled_valid + ", gzip_enabled=" + this.gzip_enabled + "]";
        }
    }

    class ResponseHeader {
        private static final int RESULT_TYPE_FAILURE = 1;
        private static final int RESULT_TYPE_SUCCESS = 0;
        IntValue mErrorType = new IntValue();
        IntValue mResultType = new IntValue();
        IntValue mSettingRsp = new IntValue();
        ValidValue mSettingRspValid = new ValidValue(3);

        ResponseHeader() {
        }

        /* Access modifiers changed, original: 0000 */
        public ResponseHeader get(ByteBuffer buf) {
            ResponseHeader ret = new ResponseHeader();
            ret.mResultType.get(buf);
            ret.mErrorType.get(buf);
            ret.mSettingRspValid.get(buf);
            ret.mSettingRsp.get(buf);
            return ret;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isSuccess() {
            return this.mResultType.getValue() == 0 ? ImsConfigImpl.DEBUG : false;
        }

        public String toString() {
            return "ResponseHeader [mResultType=" + this.mResultType + ", mErrorType=" + this.mErrorType + ", mSettingRspValid=" + this.mSettingRspValid + ", mSettingRsp=" + this.mSettingRsp + "]";
        }
    }

    class SMSConfig extends Config {
        StringValue context_uri = new StringValue(ImsConfigImpl.MAX_SIZE);
        ValidValue context_uri_valid = new ValidValue();
        IntValue sms_format = new IntValue();
        ValidValue sms_format_valid = new ValidValue(3);
        ByteValue sms_over_ip = new ByteValue();
        ValidValue sms_over_ip_valid = new ValidValue();

        SMSConfig() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return 267;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "SMSConfig::put: " + this);
            this.sms_format_valid.put(buf);
            this.sms_format.put(buf);
            this.sms_over_ip_valid.put(buf);
            this.sms_over_ip.put(buf);
            this.context_uri_valid.put(buf);
            this.context_uri.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.sms_format_valid.get(buf);
            this.sms_format.get(buf);
            this.sms_over_ip_valid.get(buf);
            this.sms_over_ip.get(buf);
            this.context_uri_valid.get(buf);
            this.context_uri.get(buf);
            Log.d(ImsConfigImpl.TAG, "SMSConfig::populate: " + this);
        }

        public String toString() {
            return "SMSConfig [sms_format_valid=" + this.sms_format_valid + ", sms_format=" + this.sms_format + ", sms_over_ip_valid=" + this.sms_over_ip_valid + ", sms_over_ip=" + this.sms_over_ip + ", context_uri_valid=" + this.context_uri_valid + ", context_uri=" + this.context_uri + "]";
        }
    }

    class ShortValue extends PadingValue {
        private short value;

        ShortValue(int size) {
            super(size);
        }

        ShortValue() {
            super(0);
            this.value = (short) 0;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            buf.putShort(this.value);
            for (int i = 0; i < this.padSize; i++) {
                buf.put(ImsConfigImpl.DISABLED);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void get(ByteBuffer buf) {
            this.value = buf.getShort();
            buf.position(this.padSize + buf.position());
        }

        public short getValue() {
            return this.value;
        }

        public void setValue(short v) {
            this.value = v;
        }

        public String toString() {
            return "ShortValue [value=" + this.value + "]";
        }
    }

    class SipConfigRawData extends Config {
        ShortValue local_port = new ShortValue();
        ValidValue local_port_valid = new ValidValue(1);
        IntValue registration_timer = new IntValue();
        ValidValue registration_timer_valid = new ValidValue(3);
        ByteValue sig_comp_enabled = new ByteValue(2);
        ValidValue sig_comp_enabled_valid = new ValidValue();
        IntValue subscribe_timer = new IntValue();
        ValidValue subscribe_timer_valid = new ValidValue(3);
        IntValue t1_timer = new IntValue();
        ValidValue t1_timer_valid = new ValidValue(3);
        IntValue t2_timer = new IntValue();
        ValidValue t2_timer_valid = new ValidValue(3);
        IntValue tf_timer = new IntValue();
        ValidValue tf_timer_valid = new ValidValue(3);

        SipConfigRawData() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return 48;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "SipConfigRawData::put: " + this);
            this.local_port_valid.put(buf);
            this.local_port.put(buf);
            this.registration_timer_valid.put(buf);
            this.registration_timer.put(buf);
            this.subscribe_timer_valid.put(buf);
            this.subscribe_timer.put(buf);
            this.t1_timer_valid.put(buf);
            this.t1_timer.put(buf);
            this.t2_timer_valid.put(buf);
            this.t2_timer.put(buf);
            this.tf_timer_valid.put(buf);
            this.tf_timer.put(buf);
            this.sig_comp_enabled_valid.put(buf);
            this.sig_comp_enabled.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.local_port_valid.get(buf);
            this.local_port.get(buf);
            this.registration_timer_valid.get(buf);
            this.registration_timer.get(buf);
            this.subscribe_timer_valid.get(buf);
            this.subscribe_timer.get(buf);
            this.t1_timer_valid.get(buf);
            this.t1_timer.get(buf);
            this.t2_timer_valid.get(buf);
            this.t2_timer.get(buf);
            this.tf_timer_valid.get(buf);
            this.tf_timer.get(buf);
            this.sig_comp_enabled_valid.get(buf);
            this.sig_comp_enabled.get(buf);
            Log.d(ImsConfigImpl.TAG, "SipConfigRawData::populate: " + this);
        }

        public String toString() {
            return "SipConfigRawData [local_port_valid=" + this.local_port_valid + ", local_port=" + this.local_port + ", registration_timer_valid=" + this.registration_timer_valid + ", registration_timer=" + this.registration_timer + ", subscribe_timer_valid=" + this.subscribe_timer_valid + ", subscribe_timer=" + this.subscribe_timer + ", t1_timer_valid=" + this.t1_timer_valid + ", t1_time r=" + this.t1_timer + ", t2_timer_valid=" + this.t2_timer_valid + ", t2_timer=" + this.t2_timer + ", tf_imer_valid=" + this.tf_timer_valid + ", tf_imer=" + this.tf_timer + ", sig_comp_enabled_valid=" + this.sig_comp_enabled_valid + ", sig_comp_enabled=" + this.sig_comp_enabled + "]";
        }
    }

    private static final class StringConfigRequestArgument {
        public int item;
        public String value;

        public StringConfigRequestArgument(int item, String value) {
            this.item = item;
            this.value = value;
        }
    }

    class StringValue extends PadingValue {
        private byte[] mBuffer;
        private int mSize;
        private String value;

        StringValue(int s) {
            super(0);
            if (s <= 0) {
                s = 1;
            }
            this.mSize = s;
            this.mBuffer = new byte[this.mSize];
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            buf.put(this.mBuffer);
        }

        /* Access modifiers changed, original: 0000 */
        public void get(ByteBuffer buf) {
            Arrays.fill(this.mBuffer, ImsConfigImpl.DISABLED);
            buf.get(this.mBuffer);
            this.value = new String(this.mBuffer);
        }

        public String getValue() {
            return this.value;
        }

        public void setValue(String v) {
            this.value = v;
            Arrays.fill(this.mBuffer, ImsConfigImpl.DISABLED);
            if (this.value != null) {
                System.arraycopy(this.value.getBytes(), 0, this.mBuffer, 0, Math.min(v.length(), this.mBuffer.length));
            }
        }

        public String toString() {
            return "StringValue [value=" + this.value + "]";
        }
    }

    class UserConfig extends Config {
        StringValue domain = new StringValue(ImsConfigImpl.MAX_SIZE);
        ValidValue domain_valid = new ValidValue();

        UserConfig() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return 257;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "UserConfig::put: " + this);
            this.domain_valid.put(buf);
            this.domain.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.domain_valid.get(buf);
            this.domain.get(buf);
            Log.d(ImsConfigImpl.TAG, "UserConfig::populate: " + this);
        }

        public String toString() {
            return "UserConfig [domainValid=" + this.domain_valid + "domain=" + this.domain + "]";
        }
    }

    class ValidValue extends PadingValue {
        private boolean value;

        ValidValue(int size) {
            super(size);
            this.value = false;
        }

        ValidValue() {
            super(0);
            this.value = false;
            this.value = false;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            int i;
            if (this.value) {
                i = 1;
            } else {
                i = 0;
            }
            buf.put((byte) i);
            for (int i2 = 0; i2 < this.padSize; i2++) {
                buf.put(ImsConfigImpl.DISABLED);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void get(ByteBuffer buf) {
            boolean z = false;
            if (buf.get() != (byte) 0) {
                z = ImsConfigImpl.DEBUG;
            }
            this.value = z;
            buf.position(this.padSize + buf.position());
        }

        public boolean getValue() {
            return this.value;
        }

        public void setValue(boolean v) {
            this.value = v;
        }

        public String toString() {
            return "ValidValue value=" + this.value + "]";
        }
    }

    class VoipClientProvConfigData extends Config {
        ByteValue enable_client_provisioning = new ByteValue();
        ValidValue enable_client_provisioning_valid = new ValidValue();
        ByteValue enable_presence = new ByteValue();
        ValidValue enable_presence_valid = new ValidValue();
        ByteValue enable_volte = new ByteValue();
        ValidValue enable_volte_valid = new ValidValue();
        ByteValue enable_vt = new ByteValue();
        ValidValue enable_vt_valid = new ValidValue();
        IntValue wifi_call = new IntValue();
        IntValue wifi_call_preference = new IntValue();
        ValidValue wifi_call_preference_valid = new ValidValue(3);
        IntValue wifi_call_roaming = new IntValue();
        ValidValue wifi_call_roaming_valid = new ValidValue(3);
        ValidValue wifi_call_valid = new ValidValue(3);

        VoipClientProvConfigData() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return 32;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "VoipClientProvConfigData::put: " + this);
            this.enable_client_provisioning_valid.put(buf);
            this.enable_client_provisioning.put(buf);
            this.enable_volte_valid.put(buf);
            this.enable_volte.put(buf);
            this.enable_vt_valid.put(buf);
            this.enable_vt.put(buf);
            this.enable_presence_valid.put(buf);
            this.enable_presence.put(buf);
            this.wifi_call_valid.put(buf);
            this.wifi_call.put(buf);
            this.wifi_call_preference_valid.put(buf);
            this.wifi_call_preference.put(buf);
            this.wifi_call_roaming_valid.put(buf);
            this.wifi_call_roaming.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.enable_client_provisioning_valid.get(buf);
            this.enable_client_provisioning.get(buf);
            this.enable_volte_valid.get(buf);
            this.enable_volte.get(buf);
            this.enable_vt_valid.get(buf);
            this.enable_vt.get(buf);
            this.enable_presence_valid.get(buf);
            this.enable_presence.get(buf);
            this.wifi_call_valid.get(buf);
            this.wifi_call.get(buf);
            this.wifi_call_preference_valid.get(buf);
            this.wifi_call_preference.get(buf);
            this.wifi_call_roaming_valid.get(buf);
            this.wifi_call_roaming.get(buf);
            Log.d(ImsConfigImpl.TAG, "VoipClientProvConfigData::populate: " + this);
        }

        public String toString() {
            return "VoipClientProvConfigData [enable_client_provisioning_valid=" + this.enable_client_provisioning_valid + ", enable_client_provisioning=" + this.enable_client_provisioning + ", enable_volte_valid.=" + this.enable_volte_valid + ", enable_volte=" + this.enable_volte + ", enable_vt_valid=" + this.enable_vt_valid + ", enable_vt=" + this.enable_vt + ", enable_presence_valid=" + this.enable_presence_valid + ", enable_presence=" + this.enable_presence + ", wifi_call_valid=" + this.wifi_call_valid + ", wifi_call=" + this.wifi_call + ", wifi_call_preference_valid=" + this.wifi_call_preference_valid + ", wifi_call_preference=" + this.wifi_call_preference + ", wifi_call_roaming_valid=" + this.wifi_call_roaming_valid + ", wifi_call_roaming=" + this.wifi_call_roaming + "]";
        }
    }

    class VoipConfigRawData extends Config {
        ByteValue amr_mode = new ByteValue();
        ValidValue amr_mode_valid = new ValidValue();
        ByteValue amr_octet_align = new ByteValue();
        ValidValue amr_octet_align_valid = new ValidValue();
        ByteValue amr_wb_enable = new ByteValue();
        ValidValue amr_wb_enable_valid = new ValidValue();
        ShortValue amr_wb_mode = new ShortValue();
        ValidValue amr_wb_mode_valid = new ValidValue(1);
        ByteValue amr_wb_octet_align = new ByteValue();
        ValidValue amr_wb_octet_align_valid = new ValidValue();
        ShortValue min_session_timer = new ShortValue();
        ValidValue min_session_timer_valid = new ValidValue(1);
        ShortValue ringback_timer = new ShortValue();
        ValidValue ringback_timer_valid = new ValidValue(1);
        ShortValue ringing_timer = new ShortValue();
        ValidValue ringing_timer_valid = new ValidValue(1);
        ShortValue rtp_rtcp_inactivity_timer = new ShortValue();
        ValidValue rtp_rtcp_inactivity_timer_valid = new ValidValue(1);
        ByteValue scr_amr_enable = new ByteValue();
        ValidValue scr_amr_enable_valid = new ValidValue();
        ByteValue scr_amr_wb_enable = new ByteValue();
        ValidValue scr_amr_wb_enable_valid = new ValidValue();
        ShortValue session_duration = new ShortValue();
        ValidValue session_duration_valid = new ValidValue(1);

        VoipConfigRawData() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return 36;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "VoipConfigRawData::put: " + this);
            this.session_duration_valid.put(buf);
            this.session_duration.put(buf);
            this.min_session_timer_valid.put(buf);
            this.min_session_timer.put(buf);
            this.amr_wb_enable_valid.put(buf);
            this.amr_wb_enable.put(buf);
            this.scr_amr_enable_valid.put(buf);
            this.scr_amr_enable.put(buf);
            this.scr_amr_wb_enable_valid.put(buf);
            this.scr_amr_wb_enable.put(buf);
            this.amr_mode_valid.put(buf);
            this.amr_mode.put(buf);
            this.amr_wb_mode_valid.put(buf);
            this.amr_wb_mode.put(buf);
            this.amr_octet_align_valid.put(buf);
            this.amr_octet_align.put(buf);
            this.amr_wb_octet_align_valid.put(buf);
            this.amr_wb_octet_align.put(buf);
            this.ringing_timer_valid.put(buf);
            this.ringing_timer.put(buf);
            this.ringback_timer_valid.put(buf);
            this.ringback_timer.put(buf);
            this.rtp_rtcp_inactivity_timer_valid.put(buf);
            this.rtp_rtcp_inactivity_timer.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.session_duration_valid.get(buf);
            this.session_duration.get(buf);
            this.min_session_timer_valid.get(buf);
            this.min_session_timer.get(buf);
            this.amr_wb_enable_valid.get(buf);
            this.amr_wb_enable.get(buf);
            this.scr_amr_enable_valid.get(buf);
            this.scr_amr_enable.get(buf);
            this.scr_amr_wb_enable_valid.get(buf);
            this.scr_amr_wb_enable.get(buf);
            this.amr_mode_valid.get(buf);
            this.amr_mode.get(buf);
            this.amr_wb_mode_valid.get(buf);
            this.amr_wb_mode.get(buf);
            this.amr_octet_align_valid.get(buf);
            this.amr_octet_align.get(buf);
            this.amr_wb_octet_align_valid.get(buf);
            this.amr_wb_octet_align.get(buf);
            this.ringing_timer_valid.get(buf);
            this.ringing_timer.get(buf);
            this.ringback_timer_valid.get(buf);
            this.ringback_timer.get(buf);
            this.rtp_rtcp_inactivity_timer_valid.get(buf);
            this.rtp_rtcp_inactivity_timer.get(buf);
            Log.d(ImsConfigImpl.TAG, "VoipConfigRawData::populate: " + this);
        }

        public String toString() {
            return "VoipConfigRawData [session_duration_valid=" + this.session_duration_valid + ", session_duration=" + this.session_duration + ", min_session_timer_valid=" + this.min_session_timer_valid + ", min_session_timer=" + this.min_session_timer + ", amr_wb_enable_valid=" + this.amr_wb_enable_valid + ", amr_wb_enable=" + this.amr_wb_enable + ", scr_amr_enable_valid=" + this.scr_amr_enable_valid + ", scr_amr_enable=" + this.scr_amr_enable + ", scr_amr_wb_enable_valid=" + this.scr_amr_wb_enable_valid + ", scr_amr_wb_enable=" + this.scr_amr_wb_enable + ", amr_mode_valid=" + this.amr_mode_valid + ", amr_mode=" + this.amr_mode + ", amr_wb_mode_valid=" + this.amr_wb_mode_valid + ", amr_wb_mode=" + this.amr_wb_mode + ", amr_octet_align_valid=" + this.amr_octet_align_valid + ", amr_octet_align=" + this.amr_octet_align + ", amr_wb_octet_align_valid=" + this.amr_wb_octet_align_valid + ", amr_wb_octet_align=" + this.amr_wb_octet_align + ", ringing_timer_valid=" + this.ringing_timer_valid + ", ringing_timer=" + this.ringing_timer + ", ringback_timer_valid=" + this.ringback_timer_valid + ", ringback_timer=" + this.ringback_timer + ", rtp_rtcp_inactivity_timer_valid=" + this.rtp_rtcp_inactivity_timer_valid + ", rtp_rtcp_inactivity_timer=" + this.rtp_rtcp_inactivity_timer + "]";
        }
    }

    class VoipConfigRawDataGet extends Config {
        VoipConfigRawData data = new VoipConfigRawData();
        ByteValue silent_redial_enable = new ByteValue(2);
        ValidValue silent_redial_valid = new ValidValue();

        VoipConfigRawDataGet() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return this.data.getSize() + 4;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "VoipConfigRawDataGet::put: " + this);
            this.data.put(buf);
            this.silent_redial_valid.put(buf);
            this.silent_redial_enable.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.data.populate(buf);
            this.silent_redial_valid.get(buf);
            this.silent_redial_enable.get(buf);
            Log.d(ImsConfigImpl.TAG, "VoipConfigRawDataGet::populate: " + this);
        }

        public String toString() {
            return "VoipConfigRawDataGet [" + this.data.toString() + ", silent_redial_valid=" + this.silent_redial_valid + ", silent_redial_enable=" + this.silent_redial_enable + "]";
        }
    }

    class VoipConfigRawDataSet extends Config {
        StringValue amr_mode_str = new StringValue(32);
        ValidValue amr_mode_str_valid = new ValidValue();
        StringValue amr_wb_mode_str = new StringValue(32);
        ValidValue amr_wb_mode_str_valid = new ValidValue();
        VoipConfigRawData data = new VoipConfigRawData();
        ByteValue silent_redial_enable = new ByteValue();
        ValidValue silent_redial_valid = new ValidValue();

        VoipConfigRawDataSet() {
            super();
        }

        /* Access modifiers changed, original: 0000 */
        public int getSize() {
            return ((this.data.getSize() + 64) + 2) + 2;
        }

        /* Access modifiers changed, original: 0000 */
        public void put(ByteBuffer buf) {
            Log.d(ImsConfigImpl.TAG, "VoipConfigRawDataSet::put: " + this);
            this.data.put(buf);
            this.amr_mode_str_valid.put(buf);
            this.amr_mode_str.put(buf);
            this.amr_wb_mode_str_valid.put(buf);
            this.amr_wb_mode_str.put(buf);
            this.silent_redial_valid.put(buf);
            this.silent_redial_enable.put(buf);
        }

        /* Access modifiers changed, original: 0000 */
        public void populate(ByteBuffer buf) {
            this.data.populate(buf);
            this.amr_mode_str_valid.get(buf);
            this.amr_mode_str.get(buf);
            this.amr_wb_mode_str_valid.get(buf);
            this.amr_wb_mode_str.get(buf);
            this.silent_redial_valid.get(buf);
            this.silent_redial_enable.get(buf);
            Log.d(ImsConfigImpl.TAG, "VoipConfigRawDataSet::populate: " + this);
        }

        public String toString() {
            return "VoipConfigRawDataSet [" + this.data.toString() + ", amr_mode_str_valid=" + this.amr_mode_str_valid + ", amr_mode_str=" + this.amr_mode_str + ", amr_wb_mode_str_valid=" + this.amr_wb_mode_str_valid + ", amr_wb_mode_str=" + this.amr_wb_mode_str + ", silent_redial_valid=" + this.silent_redial_valid + ", silent_redial_enable=" + this.silent_redial_enable + "]";
        }
    }

    public ImsConfigImpl(Context context, ImsSenderRxr ci) {
        Log.d(TAG, "ImsConfigImpl Creates");
        HandlerThread handlerThread = new HandlerThread("ImsConfigServiceHandler");
        handlerThread.start();
        this.mHandler = new InternalHandler(handlerThread.getLooper());
        this.mContext = context;
        this.mCi = ci;
        this.mITelephony = ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        this.mContext.registerReceiver(this.mImsIntentReceiver, filter);
        Configuration config = this.mContext.getResources().getConfiguration();
        Log.d(TAG, "mcc = " + config.mcc + ", mnc = " + config.mnc);
        if (config.mcc != 0 && config.mnc != 0) {
            syncInitFeatureValueAtPowerUpOrMccMncChanged(null);
            this.mMcc = config.mcc;
            this.mMnc = config.mnc;
        }
    }

    public void finalize() {
        this.mContext.unregisterReceiver(this.mImsIntentReceiver);
        if (this.mRegisterForOn) {
            this.mCi.unregisterForOn(this.mHandler);
            this.mRegisterForOn = false;
        }
    }

    public int getProvisionedValue(int item) {
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", "getProvisionedValue");
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", "getProvisionedValue");
        }
        return ((Integer) sendRequest(5, new IntConfigRequestArgument(item, 0))).intValue();
    }

    public String getProvisionedStringValue(int item) {
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", "getProvisionedStringValue");
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", "getProvisionedStringValue");
        }
        return (String) sendRequest(6, new StringConfigRequestArgument(item, "Unkown"));
    }

    public int setProvisionedValue(int item, int value) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setProvisionedValue");
        int retval = ((Integer) sendRequest(7, new IntConfigRequestArgument(item, value))).intValue();
        if (retval == 0) {
            Intent configChangedIntent = new Intent("com.android.intent.action.IMS_CONFIG_CHANGED");
            configChangedIntent.putExtra("item", item);
            configChangedIntent.putExtra("value", Integer.toString(value));
            this.mContext.sendBroadcast(configChangedIntent);
        }
        return retval;
    }

    public int setProvisionedStringValue(int item, String value) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setProvisionedStringValue");
        int retval = ((Integer) sendRequest(8, new StringConfigRequestArgument(item, value))).intValue();
        if (retval == 0) {
            Intent configChangedIntent = new Intent("com.android.intent.action.IMS_CONFIG_CHANGED");
            configChangedIntent.putExtra("item", item);
            configChangedIntent.putExtra("value", value);
            this.mContext.sendBroadcast(configChangedIntent);
        }
        return retval;
    }

    public void getFeatureValue(int feature, int network, ImsConfigListener listener) {
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", "getFeatureValue");
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", "getFeatureValue");
        }
        sendRequestAsync(1, new FeatureRequestArgument(feature, network, 0, listener));
    }

    public void setFeatureValue(int feature, int network, int value, ImsConfigListener listener) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setFeatureValue");
        sendRequestAsync(2, new FeatureRequestArgument(feature, network, value, listener));
    }

    public boolean getVolteProvisioned() {
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", "getVolteProvisioned");
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", "getVolteProvisioned");
        }
        Log.d(TAG, "getVolteProvisioned =" + this.mIsProvisioned);
        return this.mIsProvisioned;
    }

    private void getProvisionedValueAsync(int item) {
        sendRequestAsync(9, new IntConfigRequestArgument(item, 0));
    }

    private void sendRequestAsync(int command, Object argument) {
        this.mHandler.obtainMessage(command, new InternalThreadRequest(argument)).sendToTarget();
    }

    private Object sendRequest(int command, Object argument) {
        if (Looper.myLooper() == this.mContext.getMainLooper()) {
            return -1;
        }
        InternalThreadRequest request = new InternalThreadRequest(argument);
        this.mHandler.obtainMessage(command, request).sendToTarget();
        synchronized (request) {
            while (request.result == null) {
                try {
                    request.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        return request.result;
    }

    private void handleGetFeatureValue(FeatureRequestArgument arg) {
        if (arg != null) {
            Log.d(TAG, "handleGetFeatureValue, feature = " + arg.feature);
            switch (arg.feature) {
                case 0:
                case 1:
                case 4:
                    getFeatureConfigValue(arg);
                    return;
                case 2:
                case 3:
                case 5:
                    getWifiFeatureConfigValue(arg);
                    return;
                default:
                    callBackGetFeatureListener(arg, 2);
                    return;
            }
        }
    }

    private void handleSetFeatureValue(FeatureRequestArgument arg) {
        if (arg != null) {
            switch (arg.feature) {
                case 0:
                case 1:
                case 4:
                    setFeatureConfigValue(arg);
                    return;
                case 2:
                case 3:
                case 5:
                    setWifiFeatureConfigValue(arg);
                    return;
                default:
                    callBackSetFeatureListener(arg, 2);
                    return;
            }
        }
    }

    private void onGetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        if (imsConfigListener != null) {
            try {
                int result;
                int status = getOperationStatus(ar.exception == null ? DEBUG : false);
                if (ar.result == null) {
                    result = -1;
                } else {
                    result = ((Integer) ar.result).intValue();
                }
                imsConfigListener.onGetVideoQuality(status, result);
                return;
            } catch (Throwable t) {
                Log.e(TAG, "onGetVideoCallQualityDone " + t);
                return;
            }
        }
        Log.e(TAG, "onGetVideoCallQualityDone listener is not valid !!!");
    }

    private void onSetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        if (imsConfigListener != null) {
            try {
                imsConfigListener.onSetVideoQuality(getOperationStatus(ar.exception == null ? DEBUG : false));
                return;
            } catch (Throwable t) {
                Log.e(TAG, "onSetVideoCallQualityDone " + t);
                return;
            }
        }
        Log.e(TAG, "onSetVideoCallQualityDone listener is not valid !!!");
    }

    private int getOperationStatus(boolean status) {
        if (status) {
            return 0;
        }
        return 1;
    }

    private ImsConfigListener getImsConfigListener(AsyncResult ar) {
        if (ar == null) {
            Log.e(TAG, "AsyncResult is null.");
        } else if (ar.userObj instanceof ImsConfigListener) {
            return (ImsConfigListener) ar.userObj;
        }
        Log.e(TAG, "getImsConfigListener returns null");
        return null;
    }

    public void getVideoQuality(ImsConfigListener imsConfigListener) {
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", "getVideoQuality");
        } catch (SecurityException e) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", "getVideoQuality");
        }
        Log.d(TAG, "getVideoQuality");
       
    }

    public void setVideoQuality(int quality, ImsConfigListener imsConfigListener) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setVideoQuality");
        Log.d(TAG, "setVideoQuality qualiy = " + quality);
       
    }

    private int handleGetIntValue(int item) {
        boolean z = DEBUG;
        switch (item) {
            case 2:
                return getSipSessionTimer();
            case 3:
                return getVoipMinSessionExpires();
            case 4:
                return getCancellationTimer();
            case 5:
                return getTDelay();
            case 6:
                return getVoipSilentRedialEnabled();
            case 7:
                return getSIPT1Timer();
            case 8:
                return getSIPT2Timer();
            case 9:
                return getSIPTfTimer();
            case 10:
                int ret = getVLTEnabled();
                if (ret != 1) {
                    z = false;
                }
                this.mIsProvisioned = z;
                return ret;
            case 11:
                return getLVCEnabled();
            case 13:
                return getSMSFormat();
            case 14:
                return getSMSOverIP();
            case 15:
                return getPublishTimer();
            case 16:
                return getPublishExtendedTimer();
            case 17:
                return getCapabilityDiscoveryEnabled();
            case 18:
                return getCapabilitiesCacheExpiration();
            case 19:
                return getAvailabilityCacheExpiration();
            case 20:
                return getCapabilitiesPollInterval();
            case ImsQmiIF.REQUEST_SET_CLIR /*21*/:
                return getSourceThrottlePublish();
            case ImsQmiIF.REQUEST_QUERY_CALL_FORWARD_STATUS /*22*/:
                return getMaxNumentriesInRcl();
            case ImsQmiIF.REQUEST_SET_CALL_FORWARD_STATUS /*23*/:
                return getCapabPollListSubExp();
            case ImsQmiIF.REQUEST_QUERY_CALL_WAITING /*24*/:
                return getGZIPFlag();
            case ImsQmiIF.REQUEST_SET_CALL_WAITING /*25*/:
                return getEABEnabled();
            case ImsQmiIF.REQUEST_IMS_REG_STATE_CHANGE /*26*/:
                return getWifiCallRoaming();
            case 27:
                return getWifiCallPreference();
            default:
                return 0;
        }
    }

    private String handleGetStringValue(int item) {
        String ret = "Unknown";
        switch (item) {
            case 0:
                return getAMRModeSet();
            case 1:
                return getAMRWBModeSet();
            case 12:
                return getDomainName();
            default:
                return ret;
        }
    }

    private int handleSetProvisionedIntValue(int item, int value) {
        switch (item) {
            case 2:
                return setSipSessionTimer((short) value);
            case 3:
                return setVoipMinSessionExpires((short) value);
            case 4:
                return setCancellationTimer(value);
            case 5:
                return setTDelay(value);
            case 6:
                return setVoipSilentRedialEnabled(value);
            case 7:
                return setSIPT1Timer(value);
            case 8:
                return setSIPT2Timer(value);
            case 9:
                return setSIPTfTimer(value);
            case 10:
                return setVLTEnabled(value);
            case 11:
                return setLVCEnabled(value);
            case 13:
                return setSMSFormat(value);
            case 14:
                return setSMSOverIP(value);
            case 15:
                return setPublishTimer(value);
            case 16:
                return setPublishExtendedTimer(value);
            case 17:
                return setCapabilityDiscoveryEnabled(value);
            case 18:
                return setCapabilitiesCacheExpiration(value);
            case 19:
                return setAvailabilityCacheExpiration(value);
            case 20:
                return setCapabilitiesPollInterval(value);
            case ImsQmiIF.REQUEST_SET_CLIR /*21*/:
                return setSourceThrottlePublish(value);
            case ImsQmiIF.REQUEST_QUERY_CALL_FORWARD_STATUS /*22*/:
                return setMaxNumentriesInRcl(value);
            case ImsQmiIF.REQUEST_SET_CALL_FORWARD_STATUS /*23*/:
                return setCapabPollListSubExp(value);
            case ImsQmiIF.REQUEST_QUERY_CALL_WAITING /*24*/:
                return setGZIPFlag(value);
            case ImsQmiIF.REQUEST_SET_CALL_WAITING /*25*/:
                return setEABEnabled(value);
            case ImsQmiIF.REQUEST_IMS_REG_STATE_CHANGE /*26*/:
                return setWifiCallRoaming(value);
            case 27:
                return setWifiCallPreference(value);
            default:
                return -1;
        }
    }

    private int handleSetProvisionedStringValue(int item, String value) {
        switch (item) {
            case 0:
                return setAMRModeSet(value);
            case 1:
                return setAMRWBModeSet(value);
            case 12:
                return setDomainName(value);
            default:
                return -1;
        }
    }

    private void getFeatureConfigValue(FeatureRequestArgument arg) {
        int status = 2;
        if (arg.network != 13) {
            status = 3;
        }
        callBackGetFeatureListener(arg, status);
    }

    private void getWifiFeatureConfigValue(FeatureRequestArgument arg) {
        int status = getWifiCallEnabled();
        if (status == 1) {
            arg.value = 1;
        } else {
            arg.value = 0;
        }
        callBackGetFeatureListener(arg, status);
    }

    private void callBackGetFeatureListener(FeatureRequestArgument arg, int status) {
        if (arg != null && arg.listener != null) {
            try {
                Log.d(TAG, "callBackGetFeatureListener, feature = " + arg.feature + " value = " + arg.value + " network = " + arg.network);
                arg.listener.onGetFeatureResponse(arg.feature, arg.network, arg.value, status);
            } catch (RemoteException e) {
                Log.e(TAG, "onGetFeatureResponse, remote exception");
            } catch (Exception e2) {
                Log.e(TAG, "onGetFeatureResponse, exception:", e2);
            }
        }
    }

    private void setServiceStatus(int service, int networkType, int enabled, int restrictCause, FeatureRequestArgument arg) {
        Log.d(TAG, "setServiceStatus Service =" + service + " NetworkType =" + networkType + "enabled = " + enabled + " restrictCause = " + restrictCause);
        this.mCi.setServiceStatus(this.mHandler.obtainMessage(3, arg), service, networkType, enabled, restrictCause);
    }

    private void setFeatureConfigValue(FeatureRequestArgument arg) {
        int status;
        if (arg == null || arg.network != 13) {
            status = 3;
        } else {
            Log.d(TAG, "setFeatureConfigValue, feature = " + arg.feature + " network = " + arg.network + " value = " + arg.value);
            if (arg.value == 1 || arg.value == 0) {
                int statusType = 2;
                if (arg.value == 0) {
                    statusType = 0;
                }
                int service = 0;
                if (arg.feature == 1) {
                    service = 3;
                }
                setServiceStatus(service, 14, statusType, 0, arg);
                return;
            }
            status = 2;
        }
        callBackSetFeatureListener(arg, status);
    }

    private void setWifiFeatureConfigValue(FeatureRequestArgument arg) {
        int status = -1;
        if (arg != null) {
            Log.d(TAG, "setWifiFeatureConfigValue, feature = " + arg.feature + " network = " + arg.network + " value = " + arg.value);
            if (arg.feature == 2) {
                setWifiCallEnabled(arg.value);
                status = 0;
            }
        }
        callBackSetFeatureListener(arg, status);
    }

    private void callBackSetFeatureListener(FeatureRequestArgument arg, int status) {
        if (arg != null && arg.listener != null) {
            try {
                Log.d(TAG, "onSetFeatureResponse, feature = " + arg.feature + " arg.network = " + arg.network + " arg.value = " + arg.value + " status = " + status);
                arg.listener.onSetFeatureResponse(arg.feature, arg.network, arg.value, status);
                if (status == 0) {
                    Intent intent = new Intent("com.android.intent.action.IMS_FEATURE_CHANGED");
                    intent.putExtra("item", arg.feature);
                    intent.putExtra("value", Integer.toString(arg.value));
                    if (this.mContext != null) {
                        this.mContext.sendBroadcast(intent);
                    }
                }
            } catch (RemoteException e) {
                Log.e(TAG, "onSetFeatureResponse, remote exception");
            } catch (Exception e2) {
                Log.e(TAG, "onSetFeatureResponse, exception:", e2);
            }
        }
    }

    private void syncInitFeatureValueAtPowerUpOrMccMncChanged(Configuration config) {
        if (config != null) {
            Log.d(TAG, "onConfigurationChanged, mcc =" + config.mcc + ", mnc =" + config.mnc);
        }
            this.mIsProvisioned = false;
            getProvisionedValueAsync(10);
            if (!this.mRegisterForOn) {
                this.mCi.registerForOn(this.mHandler, 10, null);
                this.mRegisterForOn = DEBUG;
            }
        syncVolteFeatureValue();
        syncVideoCallFeatureValue();
        syncWfcFeatureAndProvisionedValues();
        if (config != null) {
            this.mMcc = config.mcc;
            this.mMnc = config.mnc;
        }
    }

    private void syncVolteFeatureValue() {
        int volteUserEnabled = Global.getInt(this.mContext.getContentResolver(), "volte_vt_enabled", 1);
        Log.d(TAG, "volteUserEnabled = " + volteUserEnabled);
        setFeatureValue(0, 13, volteUserEnabled, null);
    }

    private void syncVideoCallFeatureValue() {
        boolean videoCallAvailable = false;
        int user4GEnabled = Global.getInt(this.mContext.getContentResolver(), "volte_vt_enabled", 1);
        int vtUserEnabled = Global.getInt(this.mContext.getContentResolver(), "vt_ims_enabled", 1);
        Log.d(TAG, "user4GEnabled = " +  user4GEnabled + ", vtUserEnabled =" + vtUserEnabled);
        if (user4GEnabled == 0) {
            vtUserEnabled = 0;
        }
        setFeatureValue(1, 13, vtUserEnabled, null);
    }

    private void syncWfcFeatureAndProvisionedValues() {
        int wfcUserEnabled = Global.getInt(this.mContext.getContentResolver(), "wfc_ims_enabled", 0);
        int wfcUserMode = Global.getInt(this.mContext.getContentResolver(), "wfc_ims_mode", 2);
        int wfcUserRoaming = Global.getInt(this.mContext.getContentResolver(), "wfc_ims_roaming_enabled", 0);
        Log.d(TAG, "wfcUserEnabled = " + wfcUserEnabled + ", wfcUserMode = " + wfcUserMode + ", wfcUserRoaming = " + wfcUserRoaming);
        if (wfcUserEnabled == 0) {
            wfcUserMode = 1;
        }
            setFeatureValue(2, 13, wfcUserEnabled, null);
            sendRequestAsync(7, new IntConfigRequestArgument(27, wfcUserMode));
            sendRequestAsync(7, new IntConfigRequestArgument(26, wfcUserRoaming));
    }

    private String getDomainName() {
        UserConfig c = (UserConfig) getConfig(OEM_RIL_REQUEST_GET_IMS_USER_CONFIG, new UserConfig());
        if (c == null || !c.domain_valid.getValue()) {
            return null;
        }
        return c.domain.getValue();
    }

    private int setDomainName(String domain) {
        UserConfig c = new UserConfig();
        c.domain_valid.setValue(DEBUG);
        c.domain.setValue(domain);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_USER_CONFIG, c);
    }

    private int getSIPT1Timer() {
        SipConfigRawData c = (SipConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG, new SipConfigRawData());
        return c != null ? c.t1_timer.getValue() : 0;
    }

    private int setSIPT1Timer(int t1) {
        SipConfigRawData c = new SipConfigRawData();
        c.t1_timer_valid.setValue(DEBUG);
        c.t1_timer.setValue(t1);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG, c);
    }

    private int getSIPT2Timer() {
        SipConfigRawData c = (SipConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG, new SipConfigRawData());
        return c != null ? c.t2_timer.getValue() : 0;
    }

    private int setSIPT2Timer(int t2) {
        SipConfigRawData c = new SipConfigRawData();
        c.t2_timer_valid.setValue(DEBUG);
        c.t2_timer.setValue(t2);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG, c);
    }

    private int getSIPTfTimer() {
        SipConfigRawData c = (SipConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG, new SipConfigRawData());
        return c != null ? c.tf_timer.getValue() : 0;
    }

    private int setSIPTfTimer(int tf) {
        SipConfigRawData c = new SipConfigRawData();
        c.tf_timer_valid.setValue(DEBUG);
        c.tf_timer.setValue(tf);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG, c);
    }

    private int getSMSFormat() {
        SMSConfig c = (SMSConfig) getConfig(OEM_RIL_REQUEST_GET_IMS_SMS_CONFIG, new SMSConfig());
        return c != null ? c.sms_format.getValue() : 0;
    }

    private int setSMSFormat(int format) {
        SMSConfig c = new SMSConfig();
        c.sms_format_valid.setValue(DEBUG);
        c.sms_format.setValue(format);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_SMS_CONFIG, c);
    }

    private int getSMSOverIP() {
        int i = 1;
        SMSConfig c = (SMSConfig) getConfig(OEM_RIL_REQUEST_GET_IMS_SMS_CONFIG, new SMSConfig());
        if (c == null || !c.sms_over_ip_valid.getValue()) {
            return 0;
        }
        if (c.sms_over_ip.getValue() != (byte) 1) {
            i = 0;
        }
        return i;
    }

    private int setSMSOverIP(int enable) {
        byte b = (byte) 1;
        SMSConfig c = new SMSConfig();
        c.sms_over_ip_valid.setValue(DEBUG);
        ByteValue byteValue = c.sms_over_ip;
        if (enable != 1) {
            b = DISABLED;
        }
        byteValue.setValue(b);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_SMS_CONFIG, c);
    }

    private int getPublishTimer() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.publish_expiry_timer.getValue() : 0;
    }

    private int setPublishTimer(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.publish_expiry_timer_valid.setValue(DEBUG);
        c.publish_expiry_timer.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getPublishExtendedTimer() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.publish_extended_expiry_timer.getValue() : 0;
    }

    private int setPublishExtendedTimer(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.publish_extended_expiry_timer_valid.setValue(DEBUG);
        c.publish_extended_expiry_timer.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getCapabilityDiscoveryEnabled() {
        int i = 1;
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        if (c == null || !c.capability_discovery_enable_valid.getValue()) {
            return 0;
        }
        if (c.capability_discovery_enable.getValue() != (byte) 1) {
            i = 0;
        }
        return i;
    }

    private int setCapabilityDiscoveryEnabled(int value) {
        byte b = (byte) 1;
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.capability_discovery_enable_valid.setValue(DEBUG);
        ByteValue byteValue = c.capability_discovery_enable;
        if (value != 1) {
            b = DISABLED;
        }
        byteValue.setValue(b);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getCapabilitiesCacheExpiration() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.capabilites_cache_expiration.getValue() : 0;
    }

    private int setCapabilitiesCacheExpiration(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.capabilites_cache_expiration_valid.setValue(DEBUG);
        c.capabilites_cache_expiration.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getAvailabilityCacheExpiration() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.availability_cache_expiration.getValue() : 0;
    }

    private int setAvailabilityCacheExpiration(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.availability_cache_expiration_valid.setValue(DEBUG);
        c.availability_cache_expiration.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getCapabilitiesPollInterval() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.capability_poll_interval.getValue() : 0;
    }

    private int setCapabilitiesPollInterval(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.capability_poll_interval_valid.setValue(DEBUG);
        c.capability_poll_interval.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getSourceThrottlePublish() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.minimum_publish_interval.getValue() : 0;
    }

    private int setSourceThrottlePublish(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.minimum_publish_interval_valid.setValue(DEBUG);
        c.minimum_publish_interval.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getMaxNumentriesInRcl() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.max_subcription_list_entries.getValue() : 0;
    }

    private int setMaxNumentriesInRcl(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.max_subcription_list_entries_valid.setValue(DEBUG);
        c.max_subcription_list_entries.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getCapabPollListSubExp() {
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        return c != null ? c.capability_poll_list_subscription_expiry_timer.getValue() : 0;
    }

    private int setCapabPollListSubExp(int value) {
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.capability_poll_list_subscription_expiry_timer_valid.setValue(DEBUG);
        c.capability_poll_list_subscription_expiry_timer.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private int getGZIPFlag() {
        int i = 1;
        PresenceConfigRawData c = (PresenceConfigRawData) getConfig(OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG, new PresenceConfigRawData());
        if (c == null || !c.gzip_enabled_valid.getValue()) {
            return 0;
        }
        if (c.gzip_enabled.getValue() != (byte) 1) {
            i = 0;
        }
        return i;
    }

    private int setGZIPFlag(int enable) {
        byte b = (byte) 1;
        PresenceConfigRawData c = new PresenceConfigRawData();
        c.gzip_enabled_valid.setValue(DEBUG);
        ByteValue byteValue = c.gzip_enabled;
        if (enable != 1) {
            b = DISABLED;
        }
        byteValue.setValue(b);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG, c);
    }

    private byte getAMRModeSetb() {
        VoipConfigRawDataGet c = (VoipConfigRawDataGet) getConfig(OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG, new VoipConfigRawDataGet());
        return c != null ? c.data.amr_mode.getValue() : DISABLED;
    }

    private String getAMRModeSet() {
        StringBuilder retval = new StringBuilder();
        byte value = getAMRModeSetb();
        boolean nonfirst = false;
        for (int i = 0; i < 8; i++) {
            if (((1 << i) & value) != 0) {
                if (nonfirst) {
                    retval.append(",").append(i);
                } else {
                    retval.append(i);
                    nonfirst = DEBUG;
                }
            }
        }
        return retval.toString();
    }

    private int setAMRModeSet(byte value) {
        VoipConfigRawDataSet c = new VoipConfigRawDataSet();
        c.data.amr_mode_valid.setValue(DEBUG);
        c.data.amr_mode.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG, c);
    }

    private int setAMRModeSet(String value) {
        String[] valueSet = value.split(",");
        byte toset = DISABLED;
        for (String v : valueSet) {
            try {
                int i = Integer.parseInt(v);
                if (i >= 0 && i <= 7) {
                    toset = (byte) ((1 << i) | toset);
                }
            } catch (NumberFormatException e) {
                Log.e(TAG, "setAMRModeSet met exception: " + e);
            }
        }
        return setAMRModeSet(toset);
    }

    private short getAMRWBModeSets() {
        VoipConfigRawDataGet c = (VoipConfigRawDataGet) getConfig(OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG, new VoipConfigRawDataGet());
        return c != null ? c.data.amr_wb_mode.getValue() : (short) 0;
    }

    private String getAMRWBModeSet() {
        StringBuilder retval = new StringBuilder();
        short value = getAMRWBModeSets();
        boolean nonfirst = false;
        for (int i = 0; i < 9; i++) {
            if (((1 << i) & value) != 0) {
                if (nonfirst) {
                    retval.append(",").append(i);
                } else {
                    retval.append(i);
                    nonfirst = DEBUG;
                }
            }
        }
        return retval.toString();
    }

    private int setAMRWBModeSet(short value) {
        VoipConfigRawDataSet c = new VoipConfigRawDataSet();
        c.data.amr_wb_mode_valid.setValue(DEBUG);
        c.data.amr_wb_mode.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG, c);
    }

    private int setAMRWBModeSet(String value) {
        short toset = (short) 0;
        for (String v : value.split(",")) {
            try {
                int i = Integer.parseInt(v);
                if (i >= 0 && i <= 8) {
                    toset = (short) ((1 << i) | toset);
                }
            } catch (NumberFormatException e) {
                Log.e(TAG, "setAMRWBModeSet met exception: " + e);
            }
        }
        return setAMRWBModeSet(toset);
    }

    private int getSipSessionTimer() {
        VoipConfigRawDataGet c = (VoipConfigRawDataGet) getConfig(OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG, new VoipConfigRawDataGet());
        return c != null ? c.data.session_duration.getValue() : 0;
    }

    private int setSipSessionTimer(short value) {
        VoipConfigRawDataSet c = new VoipConfigRawDataSet();
        c.data.session_duration_valid.setValue(DEBUG);
        c.data.session_duration.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG, c);
    }

    private int getVoipMinSessionExpires() {
        VoipConfigRawDataGet c = (VoipConfigRawDataGet) getConfig(OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG, new VoipConfigRawDataGet());
        return c != null ? c.data.min_session_timer.getValue() : 0;
    }

    private int setVoipMinSessionExpires(short value) {
        VoipConfigRawDataSet c = new VoipConfigRawDataSet();
        c.data.min_session_timer_valid.setValue(DEBUG);
        c.data.min_session_timer.setValue(value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG, c);
    }

    private int getCancellationTimer() {
        AsyncResult result = sendMessage(OEM_RIL_REQUEST_GET_T_CANCELLATION);
        if (result.exception != null) {
            Log.e(TAG, "getTimerCancellation: " + result.exception);
            return 0;
        } else if (result.result != null) {
            byte[] buf = (byte[])(result.result);
            ByteBuffer byteBuf = ByteBuffer.wrap(buf);
            byteBuf.order(ByteOrder.nativeOrder());
            int val = byteBuf.getInt();
            Log.d(TAG, "getTimerCancellation: " + val);
            return val;
        } else {
            Log.e(TAG, "getTimerCancellation gets null response from RIL");
            return 0;
        }
    }

    private int setCancellationTimer(int value) {
        AsyncResult result = sendMessage((int) OEM_RIL_REQUEST_SET_T_CANCELLATION, value);
        if (result.exception != null) {
            return -1;
        }
        Log.e(TAG, "setTimerCancellation: " + result.exception);
        return 0;
    }

    private int getTDelay() {
        AsyncResult result = sendMessage(OEM_RIL_REQUEST_GET_T_DELAY);
        if (result.exception != null) {
            Log.e(TAG, "getTDelay: " + result.exception);
            return 0;
        } else if (result.result != null) {
            byte[] buf = (byte[])(result.result);
            ByteBuffer byteBuf = ByteBuffer.wrap(buf);
            byteBuf.order(ByteOrder.nativeOrder());
            short val = byteBuf.getShort();
            Log.d(TAG, "getTDelay: " + val);
            return val;
        } else {
            Log.e(TAG, "getTDelay gets null response from RIL");
            return 0;
        }
    }

    private int setTDelay(int value) {
        AsyncResult result = sendMessage((int) OEM_RIL_REQUEST_SET_T_DELAY, (short) value);
        if (result.exception != null) {
            return -1;
        }
        Log.e(TAG, "setTDelay: " + result.exception);
        return 0;
    }

    private int getVoipSilentRedialEnabled() {
        return ((VoipConfigRawDataGet) getConfig(OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG, new VoipConfigRawDataGet())).silent_redial_enable.getValue();
    }

    private int setVoipSilentRedialEnabled(int value) {
        VoipConfigRawDataSet c = new VoipConfigRawDataSet();
        c.silent_redial_valid.setValue(DEBUG);
        c.silent_redial_enable.setValue((byte) value);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG, c);
    }

    private int getVLTEnabled() {
        int i = 1;
        VoipClientProvConfigData c = (VoipClientProvConfigData) getConfig(OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG, new VoipClientProvConfigData());
        if (c == null || !c.enable_volte_valid.getValue()) {
            return 0;
        }
        if (c.enable_volte.getValue() != (byte) 1) {
            i = 0;
        }
        return i;
    }

    private int setVLTEnabled(int value) {
        byte b = (byte) 1;
        VoipClientProvConfigData c = new VoipClientProvConfigData();
        c.enable_volte_valid.setValue(DEBUG);
        ByteValue byteValue = c.enable_volte;
        if (value != 1) {
            b = DISABLED;
        }
        byteValue.setValue(b);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG, c);
    }

    private int getLVCEnabled() {
        int i = 1;
        VoipClientProvConfigData c = (VoipClientProvConfigData) getConfig(OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG, new VoipClientProvConfigData());
        if (c == null || !c.enable_vt_valid.getValue()) {
            return 0;
        }
        if (c.enable_vt.getValue() != (byte) 1) {
            i = 0;
        }
        return i;
    }

    private int setLVCEnabled(int value) {
        byte b = (byte) 1;
        VoipClientProvConfigData c = new VoipClientProvConfigData();
        c.enable_vt_valid.setValue(DEBUG);
        ByteValue byteValue = c.enable_vt;
        if (value != 1) {
            b = DISABLED;
        }
        byteValue.setValue(b);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG, c);
    }

    private int getEABEnabled() {
        int i = 1;
        VoipClientProvConfigData c = (VoipClientProvConfigData) getConfig(OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG, new VoipClientProvConfigData());
        if (c == null || !c.enable_presence_valid.getValue()) {
            return 0;
        }
        if (c.enable_presence.getValue() != (byte) 1) {
            i = 0;
        }
        return i;
    }

    private int setEABEnabled(int value) {
        byte b = (byte) 1;
        VoipClientProvConfigData c = new VoipClientProvConfigData();
        c.enable_presence_valid.setValue(DEBUG);
        ByteValue byteValue = c.enable_presence;
        if (value != 1) {
            b = DISABLED;
        }
        byteValue.setValue(b);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG, c);
    }

    private int getWifiCallEnabled() {
        VoipClientProvConfigData c = (VoipClientProvConfigData) getConfig(OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG, new VoipClientProvConfigData());
        if (c != null && c.wifi_call_valid.getValue() && c.wifi_call.getValue() == 1) {
            return 1;
        }
        return 0;
    }

    private int setWifiCallEnabled(int value) {
        int pref = 0;
        VoipClientProvConfigData c = new VoipClientProvConfigData();
        c.wifi_call_valid.setValue(DEBUG);
        if (value == 1) {
            pref = 1;
        } else if (value == 0) {
            pref = 2;
        }
        c.wifi_call.setValue(pref);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG, c);
    }

    private int getWifiCallPreference() {
        VoipClientProvConfigData c = (VoipClientProvConfigData) getConfig(OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG, new VoipClientProvConfigData());
        if (c == null || !c.wifi_call_preference_valid.getValue()) {
            return 2;
        }
        int value = c.wifi_call_preference.getValue();
        if (value == 2) {
            return 0;
        }
        if (value == 3) {
            return 1;
        }
        return 2;
    }

    private int setWifiCallPreference(int value) {
        int pref = 1;
        VoipClientProvConfigData c = new VoipClientProvConfigData();
        c.wifi_call_preference_valid.setValue(DEBUG);
        if (value == 0) {
            pref = 2;
        } else if (value == 1) {
            pref = 3;
        }
        c.wifi_call_preference.setValue(pref);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG, c);
    }

    private int getWifiCallRoaming() {
        VoipClientProvConfigData c = (VoipClientProvConfigData) getConfig(OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG, new VoipClientProvConfigData());
        if (c != null && c.wifi_call_roaming_valid.getValue() && c.wifi_call_roaming.getValue() == 1) {
            return 1;
        }
        return 0;
    }

    private int setWifiCallRoaming(int value) {
        int pref = 0;
        VoipClientProvConfigData c = new VoipClientProvConfigData();
        c.wifi_call_roaming_valid.setValue(DEBUG);
        if (value == 1) {
            pref = 1;
        } else if (value == 0) {
            pref = 2;
        }
        c.wifi_call_roaming.setValue(pref);
        return setConfig(OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG, c);
    }

    private ByteBuffer createBufferWithNativeByteOrder(byte[] bytes) {
        ByteBuffer buf = ByteBuffer.wrap(bytes);
        buf.order(ByteOrder.nativeOrder());
        return buf;
    }

    private String bytesToHexString(byte[] bytes) {
        if (bytes == null) {
            return null;
        }
        StringBuilder ret = new StringBuilder(bytes.length * 2);
        for (int i = 0; i < bytes.length; i++) {
            ret.append("0123456789abcdef".charAt((bytes[i] >> 4) & 15));
            ret.append("0123456789abcdef".charAt(bytes[i] & 15));
        }
        return ret.toString();
    }

    private void addOemRilHookHeader(ByteBuffer buf, int requestId, int requestSize) {
        buf.put(DISABLED);
        buf.put((byte) ((16711680 & requestId) >> 16));
        buf.put((byte) ((65280 & requestId) >> 8));
        buf.put((byte) (requestId & 255));
        buf.putInt(requestSize);
    }

    private AsyncResult sendMessage(int requestId) {
        byte[] request = new byte[8];
        addOemRilHookHeader(createBufferWithNativeByteOrder(request), requestId, 0);
        return sendMessage(requestId, request);
    }

    private AsyncResult sendMessage(int requestId, short payload) {
        byte[] request = new byte[10];
        ByteBuffer reqBuffer = createBufferWithNativeByteOrder(request);
        addOemRilHookHeader(reqBuffer, requestId, 2);
        reqBuffer.putShort(payload);
        return sendRilOemHookMsg(requestId, request);
    }

    private AsyncResult sendMessage(int requestId, int payload) {
        byte[] request = new byte[12];
        ByteBuffer reqBuffer = createBufferWithNativeByteOrder(request);
        addOemRilHookHeader(reqBuffer, requestId, 4);
        reqBuffer.putInt(payload);
        return sendRilOemHookMsg(requestId, request);
    }

    private AsyncResult sendMessage(int requestId, byte[] payload) {
        byte[] request = new byte[(payload.length + 8)];
        ByteBuffer reqBuffer = createBufferWithNativeByteOrder(request);
        addOemRilHookHeader(reqBuffer, requestId, payload.length);
        reqBuffer.put(payload);
        return sendRilOemHookMsg(requestId, request);
    }

    private AsyncResult sendRilOemHookMsg(int requestId, byte[] request) {
        if (this.mITelephony == null) {
            return new AsyncResult(Integer.valueOf(requestId), null, new RemoteException("Cannot get Telephony Service"));
        }
        AsyncResult ar;
        byte[] response = new byte[RESPONSE_BUFFER_SIZE];
        Log.d(TAG, "sendQcRilOemHookMsg: Outgoing Data is " + bytesToHexString(request));
        try {
            int retVal = this.mITelephony.invokeOemRilRequestRaw(request, response);
            if (retVal >= 0) {
                byte[] validResponseBytes = null;
                if (retVal > 0) {
                    validResponseBytes = new byte[retVal];
                    System.arraycopy(response, 0, validResponseBytes, 0, retVal);
                    Log.d(TAG, "Response Data is " + bytesToHexString(validResponseBytes));
                } else {
                    Log.d(TAG, "Response retVal = " + retVal);
                }
                ar = new AsyncResult(Integer.valueOf(retVal), validResponseBytes, null);
            } else {
                Log.d(TAG, "ITelephony.sendOemRilRequestRaw returns " + retVal);
                ar = new AsyncResult(request, null, new Exception("ITelephony.sendOemRilRequestRaw returns " + retVal));
            }
        } catch (RemoteException e) {
            Log.d(TAG, "ITelephony.sendOemRilRequestRaw met exception:" + e);
            ar = new AsyncResult(Integer.valueOf(requestId), null, e);
        }
        return ar;
    }

    /* Access modifiers changed, original: 0000 */
    public Config getConfig(int requestid, Config c) {
        AsyncResult result = sendMessage(requestid);
        if (result == null || result.result == null || !(result.result instanceof byte[])) {
            Log.e(TAG, "getConfig: requestid=" + requestid + " no response/error");
        } else {
            byte[] buf = (byte[]) result.result;
            ByteBuffer ret = ByteBuffer.wrap(buf, 0, buf.length);
            ret.order(ByteOrder.nativeOrder());
            GetResponse r = new GetResponse(c);
            r.populate(ret);
            if (r.mHeader.isSuccess()) {
                return r.mConfig;
            }
            Log.e(TAG, "getConfig: requestid=" + requestid + " return failure");
        }
        return null;
    }

    private int setConfig(int requestid, Config c) {
        ByteBuffer buf = ByteBuffer.allocate(c.getSize());
        buf.order(ByteOrder.nativeOrder());
        c.put(buf);
        AsyncResult result = sendMessage(requestid, buf.array());
        if (result.exception == null) {
            return 0;
        }
        Log.e(TAG, "setConfig: requestid=" + requestid + " returned Exception: " + result.exception);
        return -1;
    }
}
