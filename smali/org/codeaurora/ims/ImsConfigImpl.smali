.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;,
        Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;,
        Lorg/codeaurora/ims/ImsConfigImpl$StringValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;,
        Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;,
        Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;,
        Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$IntValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;,
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$Config;,
        Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DISABLED:B = 0x0t

.field private static final ENABLED:B = 0x1t

.field private static final EVENT_GET_FEATURE_VALUE:I = 0x1

.field private static final EVENT_GET_INT_VALUE_ASYNC:I = 0x9

.field private static final EVENT_GET_INT_VALUE_SYNC:I = 0x5

.field private static final EVENT_GET_STRING_VALUE_SYNC:I = 0x6

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0xc

.field private static final EVENT_RADIO_ON:I = 0xa

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2

.field private static final EVENT_SET_PROV_INT_VALUE_SYNC:I = 0x7

.field private static final EVENT_SET_PROV_STRING_VALUE_SYNC:I = 0x8

.field private static final EVENT_SET_SRV_STATUS_DONE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0xb

.field private static final HEADER_SIZE:I = 0x8

.field private static final INT_SIZE:I = 0x4

.field private static final MAX_SIZE:I = 0x100

.field private static final OEM_RIL_REQUEST_GET_IMS_CLIENT_PROV_CONFIG:I = 0x5003a

.field private static final OEM_RIL_REQUEST_GET_IMS_PRESENCE_CONFIG:I = 0x50033

.field private static final OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG:I = 0x50023

.field private static final OEM_RIL_REQUEST_GET_IMS_SMS_CONFIG:I = 0x50025

.field private static final OEM_RIL_REQUEST_GET_IMS_USER_CONFIG:I = 0x50027

.field private static final OEM_RIL_REQUEST_GET_IMS_VOIP_CONFIG:I = 0x50031

.field private static final OEM_RIL_REQUEST_GET_T_CANCELLATION:I = 0x50039

.field private static final OEM_RIL_REQUEST_GET_T_DELAY:I = 0x50037

.field private static final OEM_RIL_REQUEST_GET_VOLTE_MODE:I = 0x50035

.field private static final OEM_RIL_REQUEST_SET_IMS_CLIENT_PROV_CONFIG:I = 0x5003b

.field private static final OEM_RIL_REQUEST_SET_IMS_PRESENCE_CONFIG:I = 0x50032

.field private static final OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG:I = 0x50024

.field private static final OEM_RIL_REQUEST_SET_IMS_SMS_CONFIG:I = 0x50026

.field private static final OEM_RIL_REQUEST_SET_IMS_USER_CONFIG:I = 0x50028

.field private static final OEM_RIL_REQUEST_SET_IMS_VOIP_CONFIG:I = 0x50030

.field private static final OEM_RIL_REQUEST_SET_T_CANCELLATION:I = 0x50038

.field private static final OEM_RIL_REQUEST_SET_T_DELAY:I = 0x50036

.field private static final OEM_RIL_REQUEST_SET_VOLTE_MODE:I = 0x50034

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static final WFC_CELLULAR_PREFERRED:I = 0x3

.field private static final WFC_ROAMING_DISABLED:I = 0x2

.field private static final WFC_ROAMING_ENABLED:I = 0x1

.field private static final WFC_ROAMING_NOT_SUPPORTED:I = 0x0

.field private static final WFC_STATUS_OFF:I = 0x2

.field private static final WFC_STATUS_ON:I = 0x1

.field private static final WFC_STATUS_UNSUPPORTED:I = 0x0

.field private static final WFC_WLAN_ONLY:I = 0x2

.field private static final WFC_WLAN_PREFERRED:I = 0x1


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProvisioned:Z

.field private mMcc:I

.field private mMnc:I

.field private mRegisterForOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 4

    .line 1026
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 72
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 73
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 74
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 78
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 79
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$1;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 1027
    const-string v1, "ImsConfigImpl"

    const-string v2, "ImsConfigImpl Creates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImsConfigServiceHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1030
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    .line 1031
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1032
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1033
    const-string p1, "phone"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 1034
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1035
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1037
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1038
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mnc = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget p2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz p2, :cond_0

    .line 1040
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V

    .line 1041
    iget p2, p1, Landroid/content/res/Configuration;->mcc:I

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    .line 1042
    iget p1, p1, Landroid/content/res/Configuration;->mnc:I

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    .line 1044
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    .line 25
    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    return p0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    .line 25
    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    return p0
.end method

.method static synthetic access$1002(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueAsync(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/res/Configuration;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    return-void
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetIntValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsConfigImpl;II)I
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetProvisionedIntValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)I
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetProvisionedStringValue(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1

    .line 2110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2111
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2112
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2113
    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2114
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2115
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 4

    .line 2098
    if-nez p1, :cond_0

    .line 2099
    const/4 p1, 0x0

    return-object p1

    .line 2101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2102
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2103
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2104
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 4

    .line 1418
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_0

    .line 1420
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackGetFeatureListener, feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    iget p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1424
    :catch_0
    move-exception p1

    goto :goto_0

    .line 1422
    :catch_1
    move-exception p1

    goto :goto_1

    .line 1425
    :goto_0
    const-string p2, "onGetFeatureResponse, exception:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1423
    :goto_1
    const-string p1, "onGetFeatureResponse, remote exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    :goto_2
    return-void
.end method

.method private callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 5

    .line 1471
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_0

    .line 1473
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetFeatureResponse, feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg.network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg.value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-interface {v1, v2, v3, v4, p2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 1475
    if-nez p2, :cond_0

    .line 1476
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    const-string v1, "item"

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    const-string v1, "value"

    iget p1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 1480
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1485
    :catch_0
    move-exception p1

    goto :goto_0

    .line 1483
    :catch_1
    move-exception p1

    goto :goto_1

    .line 1486
    :goto_0
    const-string p2, "onSetFeatureResponse, exception:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1484
    :goto_1
    const-string p1, "onSetFeatureResponse, remote exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_0
    :goto_2
    return-void
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 1

    .line 2092
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2093
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2094
    return-object p1
.end method

.method private getAMRModeSet()Ljava/lang/String;
    .locals 6

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1778
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRModeSetb()B

    move-result v1

    .line 1779
    nop

    .line 1780
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 1781
    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 1782
    if-eqz v3, :cond_0

    .line 1783
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1785
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1786
    move v3, v4

    .line 1780
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1790
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAMRModeSetb()B
    .locals 2

    .line 1772
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1773
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAMRWBModeSet()Ljava/lang/String;
    .locals 6

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1823
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRWBModeSets()S

    move-result v1

    .line 1824
    nop

    .line 1825
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x9

    if-ge v2, v4, :cond_2

    .line 1826
    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 1827
    if-eqz v3, :cond_0

    .line 1828
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1830
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1831
    move v3, v4

    .line 1825
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1835
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAMRWBModeSets()S
    .locals 2

    .line 1817
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1818
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAvailabilityCacheExpiration()I
    .locals 2

    .line 1688
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1689
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCancellationTimer()I
    .locals 5

    .line 1885
    const v0, 0x50039

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1886
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const-string v3, "getTimerCancellation: "

    const-string v4, "ImsConfigImpl"

    if-eqz v1, :cond_0

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return v2

    .line 1889
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1890
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1891
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1892
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1893
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return v0

    .line 1897
    :cond_1
    const-string v0, "getTimerCancellation gets null response from RIL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    return v2
.end method

.method private getCapabPollListSubExp()I
    .locals 2

    .line 1736
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1737
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCapabilitiesCacheExpiration()I
    .locals 2

    .line 1676
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1677
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCapabilitiesPollInterval()I
    .locals 2

    .line 1700
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1701
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCapabilityDiscoveryEnabled()I
    .locals 3

    .line 1652
    nop

    .line 1653
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1654
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1657
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1658
    goto :goto_0

    .line 1657
    :cond_1
    move v1, v2

    .line 1660
    :goto_0
    return v1

    .line 1655
    :cond_2
    :goto_1
    return v1
.end method

.method private getDomainName()Ljava/lang/String;
    .locals 2

    .line 1541
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50027

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    .line 1542
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1543
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEABEnabled()I
    .locals 3

    .line 1998
    nop

    .line 1999
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2000
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2003
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2004
    goto :goto_0

    .line 2003
    :cond_1
    move v1, v2

    .line 2006
    :goto_0
    return v1

    .line 2001
    :cond_2
    :goto_1
    return v1
.end method

.method private getFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2

    .line 1400
    nop

    .line 1401
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 1402
    const/4 v0, 0x3

    goto :goto_0

    .line 1401
    :cond_0
    const/4 v0, 0x2

    .line 1404
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1405
    return-void
.end method

.method private getGZIPFlag()I
    .locals 3

    .line 1748
    nop

    .line 1749
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1750
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1753
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1754
    goto :goto_0

    .line 1753
    :cond_1
    move v1, v2

    .line 1756
    :goto_0
    return v1

    .line 1751
    :cond_2
    :goto_1
    return v1
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 2

    .line 1227
    const-string v0, "ImsConfigImpl"

    if-nez p1, :cond_0

    .line 1228
    const-string p1, "AsyncResult is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_1

    .line 1230
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/ImsConfigListener;

    return-object p1

    .line 1232
    :cond_1
    :goto_0
    const-string p1, "getImsConfigListener returns null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLVCEnabled()I
    .locals 3

    .line 1974
    nop

    .line 1975
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1976
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1979
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1980
    goto :goto_0

    .line 1979
    :cond_1
    move v1, v2

    .line 1982
    :goto_0
    return v1

    .line 1977
    :cond_2
    :goto_1
    return v1
.end method

.method private getMaxNumentriesInRcl()I
    .locals 2

    .line 1724
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1725
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getOperationStatus(Z)I
    .locals 0

    .line 1220
    if-eqz p1, :cond_0

    .line 1221
    const/4 p1, 0x0

    return p1

    .line 1223
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private getProvisionedValueAsync(I)V
    .locals 2

    .line 1121
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    const/16 p1, 0x9

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1122
    return-void
.end method

.method private getPublishExtendedTimer()I
    .locals 2

    .line 1640
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1641
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPublishTimer()I
    .locals 2

    .line 1628
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1629
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSIPT1Timer()I
    .locals 2

    .line 1556
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50023

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1557
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSIPT2Timer()I
    .locals 2

    .line 1568
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50023

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1569
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSIPTfTimer()I
    .locals 2

    .line 1580
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50023

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1581
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSMSFormat()I
    .locals 2

    .line 1592
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50025

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    .line 1593
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSMSOverIP()I
    .locals 3

    .line 1604
    nop

    .line 1605
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50025

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    .line 1606
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1609
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1610
    goto :goto_0

    .line 1609
    :cond_1
    move v1, v2

    .line 1612
    :goto_0
    return v1

    .line 1607
    :cond_2
    :goto_1
    return v1
.end method

.method private getSipSessionTimer()I
    .locals 2

    .line 1861
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1862
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSourceThrottlePublish()I
    .locals 2

    .line 1712
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50033

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1713
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTDelay()I
    .locals 5

    .line 1912
    const v0, 0x50037

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1913
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const-string v3, "getTDelay: "

    const-string v4, "ImsConfigImpl"

    if-eqz v1, :cond_0

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    return v2

    .line 1916
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1917
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1918
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1919
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1920
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return v0

    .line 1924
    :cond_1
    const-string v0, "getTDelay gets null response from RIL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return v2
.end method

.method private getVLTEnabled()I
    .locals 3

    .line 1950
    nop

    .line 1951
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1952
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1955
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1956
    goto :goto_0

    .line 1955
    :cond_1
    move v1, v2

    .line 1958
    :goto_0
    return v1

    .line 1953
    :cond_2
    :goto_1
    return v1
.end method

.method private getVoipMinSessionExpires()I
    .locals 2

    .line 1873
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1874
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getVoipSilentRedialEnabled()I
    .locals 2

    .line 1939
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x50031

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v0

    return v0
.end method

.method private getWifiCallEnabled()I
    .locals 2

    .line 2022
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2023
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2024
    return v1

    .line 2026
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getWifiCallPreference()I
    .locals 3

    .line 2043
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2044
    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2047
    :cond_0
    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    .line 2048
    if-ne v0, v1, :cond_1

    .line 2049
    const/4 v0, 0x0

    return v0

    .line 2051
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2052
    const/4 v0, 0x1

    return v0

    .line 2054
    :cond_2
    return v1

    .line 2045
    :cond_3
    :goto_0
    return v1
.end method

.method private getWifiCallRoaming()I
    .locals 2

    .line 2071
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v1, 0x5003a

    invoke-virtual {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 2072
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2073
    return v1

    .line 2075
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2

    .line 1408
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallEnabled()I

    move-result v0

    .line 1409
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1410
    iput v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    goto :goto_0

    .line 1412
    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 1414
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1415
    return-void
.end method

.method private handleGetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 3

    .line 1146
    if-eqz p1, :cond_2

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetFeatureValue, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 1160
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1161
    return-void

    .line 1157
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1158
    return-void

    .line 1152
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1153
    return-void

    .line 1164
    :cond_2
    return-void
.end method

.method private handleGetIntValue(I)I
    .locals 2

    .line 1253
    nop

    .line 1254
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1311
    :pswitch_0
    return v0

    .line 1309
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallPreference()I

    move-result p1

    return p1

    .line 1307
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallRoaming()I

    move-result p1

    return p1

    .line 1305
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getEABEnabled()I

    move-result p1

    return p1

    .line 1303
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getGZIPFlag()I

    move-result p1

    return p1

    .line 1301
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabPollListSubExp()I

    move-result p1

    return p1

    .line 1299
    :pswitch_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getMaxNumentriesInRcl()I

    move-result p1

    return p1

    .line 1297
    :pswitch_7
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSourceThrottlePublish()I

    move-result p1

    return p1

    .line 1295
    :pswitch_8
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilitiesPollInterval()I

    move-result p1

    return p1

    .line 1293
    :pswitch_9
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAvailabilityCacheExpiration()I

    move-result p1

    return p1

    .line 1291
    :pswitch_a
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilitiesCacheExpiration()I

    move-result p1

    return p1

    .line 1289
    :pswitch_b
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilityDiscoveryEnabled()I

    move-result p1

    return p1

    .line 1287
    :pswitch_c
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPublishExtendedTimer()I

    move-result p1

    return p1

    .line 1285
    :pswitch_d
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPublishTimer()I

    move-result p1

    return p1

    .line 1283
    :pswitch_e
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSMSOverIP()I

    move-result p1

    return p1

    .line 1281
    :pswitch_f
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSMSFormat()I

    move-result p1

    return p1

    .line 1279
    :pswitch_10
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getLVCEnabled()I

    move-result p1

    return p1

    .line 1272
    :pswitch_11
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVLTEnabled()I

    move-result p1

    .line 1273
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1274
    goto :goto_0

    .line 1273
    :cond_0
    move v0, v1

    .line 1276
    :goto_0
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 1277
    return p1

    .line 1270
    :pswitch_12
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPTfTimer()I

    move-result p1

    return p1

    .line 1268
    :pswitch_13
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPT2Timer()I

    move-result p1

    return p1

    .line 1266
    :pswitch_14
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPT1Timer()I

    move-result p1

    return p1

    .line 1264
    :pswitch_15
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVoipSilentRedialEnabled()I

    move-result p1

    return p1

    .line 1262
    :pswitch_16
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getTDelay()I

    move-result p1

    return p1

    .line 1260
    :pswitch_17
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCancellationTimer()I

    move-result p1

    return p1

    .line 1258
    :pswitch_18
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVoipMinSessionExpires()I

    move-result p1

    return p1

    .line 1256
    :pswitch_19
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSipSessionTimer()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleGetStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1316
    nop

    .line 1317
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 1325
    const-string p1, "Unknown"

    return-object p1

    .line 1323
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1321
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRWBModeSet()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1319
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRModeSet()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleSetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 3

    .line 1167
    if-eqz p1, :cond_2

    .line 1168
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 1180
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1181
    return-void

    .line 1177
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1178
    return-void

    .line 1172
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1173
    return-void

    .line 1184
    :cond_2
    return-void
.end method

.method private handleSetProvisionedIntValue(II)I
    .locals 0

    .line 1330
    packed-switch p1, :pswitch_data_0

    .line 1382
    :pswitch_0
    const/4 p1, -0x1

    return p1

    .line 1380
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallPreference(I)I

    move-result p1

    return p1

    .line 1378
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallRoaming(I)I

    move-result p1

    return p1

    .line 1376
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setEABEnabled(I)I

    move-result p1

    return p1

    .line 1374
    :pswitch_4
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setGZIPFlag(I)I

    move-result p1

    return p1

    .line 1372
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabPollListSubExp(I)I

    move-result p1

    return p1

    .line 1370
    :pswitch_6
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setMaxNumentriesInRcl(I)I

    move-result p1

    return p1

    .line 1368
    :pswitch_7
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSourceThrottlePublish(I)I

    move-result p1

    return p1

    .line 1366
    :pswitch_8
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilitiesPollInterval(I)I

    move-result p1

    return p1

    .line 1364
    :pswitch_9
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAvailabilityCacheExpiration(I)I

    move-result p1

    return p1

    .line 1362
    :pswitch_a
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilitiesCacheExpiration(I)I

    move-result p1

    return p1

    .line 1360
    :pswitch_b
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityDiscoveryEnabled(I)I

    move-result p1

    return p1

    .line 1358
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setPublishExtendedTimer(I)I

    move-result p1

    return p1

    .line 1356
    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setPublishTimer(I)I

    move-result p1

    return p1

    .line 1354
    :pswitch_e
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSMSOverIP(I)I

    move-result p1

    return p1

    .line 1352
    :pswitch_f
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSMSFormat(I)I

    move-result p1

    return p1

    .line 1350
    :pswitch_10
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setLVCEnabled(I)I

    move-result p1

    return p1

    .line 1348
    :pswitch_11
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setVLTEnabled(I)I

    move-result p1

    return p1

    .line 1346
    :pswitch_12
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPTfTimer(I)I

    move-result p1

    return p1

    .line 1344
    :pswitch_13
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPT2Timer(I)I

    move-result p1

    return p1

    .line 1342
    :pswitch_14
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPT1Timer(I)I

    move-result p1

    return p1

    .line 1340
    :pswitch_15
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoipSilentRedialEnabled(I)I

    move-result p1

    return p1

    .line 1338
    :pswitch_16
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setTDelay(I)I

    move-result p1

    return p1

    .line 1336
    :pswitch_17
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCancellationTimer(I)I

    move-result p1

    return p1

    .line 1334
    :pswitch_18
    int-to-short p1, p2

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoipMinSessionExpires(S)I

    move-result p1

    return p1

    .line 1332
    :pswitch_19
    int-to-short p1, p2

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setSipSessionTimer(S)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetProvisionedStringValue(ILjava/lang/String;)I
    .locals 1

    .line 1387
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 1395
    const/4 p1, -0x1

    return p1

    .line 1393
    :cond_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setDomainName(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1391
    :cond_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRWBModeSet(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1389
    :cond_2
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRModeSet(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 3

    .line 1187
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_2

    .line 1190
    :try_start_0
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 1191
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1192
    const/4 p2, -0x1

    goto :goto_1

    .line 1194
    :cond_1
    iget-object p2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1196
    :goto_1
    invoke-interface {p1, v1, p2}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    return-void

    .line 1198
    :catchall_0
    move-exception p1

    .line 1199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetVideoCallQualityDone "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return-void

    .line 1203
    :cond_2
    const-string p1, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 2

    .line 1207
    const-string v0, "ImsConfigImpl"

    if-eqz p1, :cond_1

    .line 1209
    :try_start_0
    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    return-void

    .line 1211
    :catchall_0
    move-exception p1

    .line 1212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetVideoCallQualityDone "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void

    .line 1216
    :cond_1
    const-string p1, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3

    .line 2118
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2119
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2120
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendMessage(II)Landroid/os/AsyncResult;
    .locals 3

    .line 2132
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 2133
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2134
    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2135
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2136
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3

    .line 2124
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2125
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2126
    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2127
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2128
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendMessage(I[B)Landroid/os/AsyncResult;
    .locals 3

    .line 2140
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 2141
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2142
    array-length v2, p2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2143
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2144
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1130
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1132
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    invoke-direct {v0, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 1133
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {p2, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1134
    monitor-enter v0

    .line 1135
    :goto_0
    :try_start_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 1137
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    :goto_1
    goto :goto_0

    .line 1138
    :catch_0
    move-exception p1

    goto :goto_1

    .line 1141
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1142
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    return-object p1

    .line 1141
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private sendRequestAsync(ILjava/lang/Object;)V
    .locals 2

    .line 1125
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    invoke-direct {v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1126
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 7

    .line 2148
    const-string v0, "ITelephony.sendOemRilRequestRaw returns "

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2149
    new-instance p2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Cannot get Telephony Service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p1, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p2

    .line 2152
    :cond_0
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 2153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p2, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v3

    .line 2156
    if-ltz v3, :cond_2

    .line 2157
    nop

    .line 2158
    if-lez v3, :cond_1

    .line 2159
    new-array p2, v3, [B

    .line 2160
    const/4 v0, 0x0

    invoke-static {v1, v0, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response Data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2163
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response retVal = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 2165
    :goto_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2166
    goto :goto_1

    .line 2167
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p2, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2173
    :goto_1
    goto :goto_2

    .line 2170
    :catch_0
    move-exception p2

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ITelephony.sendOemRilRequestRaw met exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, v2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2174
    :goto_2
    return-object v0
.end method

.method private setAMRModeSet(B)I
    .locals 3

    .line 1794
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1795
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1796
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1797
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setAMRModeSet(Ljava/lang/String;)I
    .locals 6

    .line 1801
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1802
    nop

    .line 1803
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 1805
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    if-ltz v3, :cond_0

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    .line 1807
    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 1811
    :cond_0
    goto :goto_1

    .line 1809
    :catch_0
    move-exception v3

    .line 1810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAMRModeSet met exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1813
    :cond_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRModeSet(B)I

    move-result p1

    return p1
.end method

.method private setAMRWBModeSet(Ljava/lang/String;)I
    .locals 6

    .line 1846
    nop

    .line 1847
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 1849
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    if-ltz v3, :cond_0

    const/16 v4, 0x8

    if-gt v3, v4, :cond_0

    .line 1851
    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 1855
    :cond_0
    goto :goto_1

    .line 1853
    :catch_0
    move-exception v3

    .line 1854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAMRWBModeSet met exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1857
    :cond_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRWBModeSet(S)I

    move-result p1

    return p1
.end method

.method private setAMRWBModeSet(S)I
    .locals 3

    .line 1839
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1840
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1841
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1842
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setAvailabilityCacheExpiration(I)I
    .locals 3

    .line 1693
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1694
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1695
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1696
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCancellationTimer(I)I
    .locals 2

    .line 1903
    const v0, 0x50038

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(II)Landroid/os/AsyncResult;

    move-result-object p1

    .line 1904
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1905
    const/4 p1, -0x1

    return p1

    .line 1907
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimerCancellation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/4 p1, 0x0

    return p1
.end method

.method private setCapabPollListSubExp(I)I
    .locals 3

    .line 1741
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1742
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1743
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1744
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCapabilitiesCacheExpiration(I)I
    .locals 3

    .line 1681
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1682
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1683
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1684
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCapabilitiesPollInterval(I)I
    .locals 3

    .line 1705
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1706
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1707
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1708
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setCapabilityDiscoveryEnabled(I)I
    .locals 3

    .line 1664
    nop

    .line 1665
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1666
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1667
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1668
    if-eq p1, v2, :cond_0

    .line 1669
    const/4 v2, 0x0

    .line 1671
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1672
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I
    .locals 2

    .line 2197
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2198
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2199
    invoke-virtual {p2, v0}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->put(Ljava/nio/ByteBuffer;)V

    .line 2200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I[B)Landroid/os/AsyncResult;

    move-result-object p2

    .line 2201
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2202
    const/4 p1, 0x0

    return p1

    .line 2204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig: requestid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned Exception: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsConfigImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 p1, -0x1

    return p1
.end method

.method private setDomainName(Ljava/lang/String;)I
    .locals 3

    .line 1549
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1550
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1551
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->setValue(Ljava/lang/String;)V

    .line 1552
    const p1, 0x50028

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setEABEnabled(I)I
    .locals 3

    .line 2010
    nop

    .line 2011
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2012
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2013
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2014
    if-eq p1, v2, :cond_0

    .line 2015
    const/4 v2, 0x0

    .line 2017
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 2018
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 11

    .line 1437
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 1440
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFeatureConfigValue, feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 1453
    :cond_1
    goto :goto_4

    .line 1442
    :cond_2
    :goto_0
    nop

    .line 1443
    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 1444
    move v8, v4

    goto :goto_1

    .line 1443
    :cond_3
    move v8, v0

    .line 1446
    :goto_1
    nop

    .line 1447
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-ne v0, v3, :cond_4

    .line 1448
    move v6, v1

    goto :goto_2

    .line 1447
    :cond_4
    move v6, v4

    .line 1450
    :goto_2
    const/16 v7, 0xe

    const/4 v9, 0x0

    move-object v5, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/codeaurora/ims/ImsConfigImpl;->setServiceStatus(IIIILorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 1451
    return-void

    .line 1438
    :cond_5
    :goto_3
    move v0, v1

    .line 1455
    :goto_4
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1456
    return-void
.end method

.method private setGZIPFlag(I)I
    .locals 3

    .line 1760
    nop

    .line 1761
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1762
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1763
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1764
    if-eq p1, v2, :cond_0

    .line 1765
    const/4 v2, 0x0

    .line 1767
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1768
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setLVCEnabled(I)I
    .locals 3

    .line 1986
    nop

    .line 1987
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1988
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1989
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1990
    if-eq p1, v2, :cond_0

    .line 1991
    const/4 v2, 0x0

    .line 1993
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1994
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setMaxNumentriesInRcl(I)I
    .locals 3

    .line 1729
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1730
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1731
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1732
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setPublishExtendedTimer(I)I
    .locals 3

    .line 1645
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1646
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1647
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1648
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setPublishTimer(I)I
    .locals 3

    .line 1633
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1634
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1635
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1636
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSIPT1Timer(I)I
    .locals 3

    .line 1561
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1562
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1563
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1564
    const p1, 0x50024

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSIPT2Timer(I)I
    .locals 3

    .line 1573
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1574
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1575
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1576
    const p1, 0x50024

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSIPTfTimer(I)I
    .locals 3

    .line 1585
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1586
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1587
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1588
    const p1, 0x50024

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSMSFormat(I)I
    .locals 3

    .line 1597
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1598
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1599
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1600
    const p1, 0x50026

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSMSOverIP(I)I
    .locals 3

    .line 1616
    nop

    .line 1617
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1618
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1619
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1620
    if-eq p1, v2, :cond_0

    .line 1621
    const/4 v2, 0x0

    .line 1623
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1624
    const p1, 0x50026

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setServiceStatus(IIIILorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 8

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceStatus Service ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " NetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restrictCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p5}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 1433
    return-void
.end method

.method private setSipSessionTimer(S)I
    .locals 3

    .line 1866
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1867
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1868
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1869
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setSourceThrottlePublish(I)I
    .locals 3

    .line 1717
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1718
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1719
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1720
    const p1, 0x50032

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setTDelay(I)I
    .locals 2

    .line 1930
    int-to-short p1, p1

    const v0, 0x50036

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object p1

    .line 1931
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1932
    const/4 p1, -0x1

    return p1

    .line 1934
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/4 p1, 0x0

    return p1
.end method

.method private setVLTEnabled(I)I
    .locals 3

    .line 1962
    nop

    .line 1963
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1964
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1965
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1966
    if-eq p1, v2, :cond_0

    .line 1967
    const/4 v2, 0x0

    .line 1969
    :cond_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1970
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setVoipMinSessionExpires(S)I
    .locals 3

    .line 1878
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1879
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1880
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1881
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setVoipSilentRedialEnabled(I)I
    .locals 3

    .line 1943
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1944
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1945
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1946
    const p1, 0x50030

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiCallEnabled(I)I
    .locals 3

    .line 2030
    nop

    .line 2031
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2032
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2033
    if-ne p1, v2, :cond_0

    .line 2034
    goto :goto_0

    .line 2035
    :cond_0
    if-nez p1, :cond_1

    .line 2036
    const/4 v2, 0x2

    goto :goto_0

    .line 2035
    :cond_1
    const/4 v2, 0x0

    .line 2038
    :goto_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 2039
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiCallPreference(I)I
    .locals 3

    .line 2058
    nop

    .line 2059
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2060
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2061
    if-nez p1, :cond_0

    .line 2062
    const/4 v2, 0x2

    goto :goto_0

    .line 2063
    :cond_0
    if-ne p1, v2, :cond_1

    .line 2064
    const/4 v2, 0x3

    .line 2066
    :cond_1
    :goto_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 2067
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiCallRoaming(I)I
    .locals 3

    .line 2079
    nop

    .line 2080
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2081
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 2082
    if-ne p1, v2, :cond_0

    .line 2083
    goto :goto_0

    .line 2084
    :cond_0
    if-nez p1, :cond_1

    .line 2085
    const/4 v2, 0x2

    goto :goto_0

    .line 2084
    :cond_1
    const/4 v2, 0x0

    .line 2087
    :goto_0
    iget-object p1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 2088
    const p1, 0x5003b

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result p1

    return p1
.end method

.method private setWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2

    .line 1459
    nop

    .line 1460
    if-eqz p1, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiFeatureConfigValue, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1463
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallEnabled(I)I

    .line 1464
    const/4 v0, 0x0

    goto :goto_0

    .line 1467
    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 1468
    return-void
.end method

.method private syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1492
    if-eqz p1, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mnc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 1496
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueAsync(I)V

    .line 1497
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    if-nez v1, :cond_1

    .line 1498
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 1501
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncVolteFeatureValue()V

    .line 1502
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncVideoCallFeatureValue()V

    .line 1503
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcFeatureAndProvisionedValues()V

    .line 1504
    if-eqz p1, :cond_2

    .line 1505
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    .line 1506
    iget p1, p1, Landroid/content/res/Configuration;->mnc:I

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    .line 1508
    :cond_2
    return-void
.end method

.method private syncVideoCallFeatureValue()V
    .locals 5

    .line 1517
    nop

    .line 1518
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volte_vt_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1519
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vt_ims_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user4GEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", vtUserEnabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    if-nez v0, :cond_0

    .line 1522
    const/4 v2, 0x0

    .line 1524
    :cond_0
    const/16 v0, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 1525
    return-void
.end method

.method private syncVolteFeatureValue()V
    .locals 4

    .line 1511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volte_vt_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volteUserEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/4 v1, 0x0

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 1514
    return-void
.end method

.method private syncWfcFeatureAndProvisionedValues()V
    .locals 6

    .line 1528
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wfc_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1529
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "wfc_ims_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1530
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wfc_ims_roaming_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wfcUserEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", wfcUserMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", wfcUserRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsConfigImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    if-nez v0, :cond_0

    .line 1533
    const/4 v2, 0x1

    .line 1535
    :cond_0
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v0, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 1536
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/16 v3, 0x1b

    invoke-direct {v0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1537
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1538
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1048
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForOn(Landroid/os/Handler;)V

    .line 1050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 1052
    :cond_0
    return-void
.end method

.method public getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;
    .locals 5

    .line 2179
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2180
    const-string v1, "getConfig: requestid="

    const-string v2, "ImsConfigImpl"

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [B

    if-nez v3, :cond_0

    goto :goto_0

    .line 2183
    :cond_0
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2184
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2185
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2186
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;

    invoke-direct {v3, p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$Config;)V

    .line 2187
    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->populate(Ljava/nio/ByteBuffer;)V

    .line 2188
    iget-object p2, v3, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2189
    iget-object p1, v3, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    return-object p1

    .line 2191
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return failure"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2181
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no response/error"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1098
    const-string v0, "getFeatureValue"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    goto :goto_0

    .line 1099
    :catch_0
    move-exception v1

    .line 1100
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :goto_0
    const/4 v0, 0x1

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, p3}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1103
    return-void
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1065
    const-string v0, "getProvisionedStringValue"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    goto :goto_0

    .line 1066
    :catch_0
    move-exception v1

    .line 1067
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    const/4 v0, 0x6

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    const-string v2, "Unkown"

    invoke-direct {v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getProvisionedValue(I)I
    .locals 3

    .line 1056
    const-string v0, "getProvisionedValue"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    goto :goto_0

    .line 1057
    :catch_0
    move-exception v1

    .line 1058
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :goto_0
    const/4 v0, 0x5

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v3, "getVideoQuality"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    const-string/jumbo v1, "ImsConfigImpl"

    const-string/jumbo v2, "getVideoQuality"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p1}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVideoQuality(Landroid/os/Message;)V

    .line 508
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "getVideoQuality"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVolteProvisioned()Z
    .locals 3

    .line 1112
    const-string v0, "getVolteProvisioned"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    goto :goto_0

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolteProvisioned ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 3

    .line 1106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setFeatureValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1108
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 3

    .line 1085
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setProvisionedStringValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    invoke-direct {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;-><init>(ILjava/lang/String;)V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1087
    if-nez v0, :cond_0

    .line 1088
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    const-string v2, "item"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1090
    const-string p1, "value"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1093
    :cond_0
    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 3

    .line 1073
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setProvisionedValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    invoke-direct {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1075
    if-nez v0, :cond_0

    .line 1076
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    const-string v2, "item"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1078
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "value"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    :cond_0
    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "quality"    # I
    .param p2, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 525
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setVideoQuality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoQuality qualiy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setVideoQuality(ILandroid/os/Message;)V

    .line 524
    return-void
.end method