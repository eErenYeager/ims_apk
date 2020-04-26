.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$1;,
        Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$Config;,
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;,
        Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$IntValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;,
        Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;,
        Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;,
        Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;,
        Lorg/codeaurora/ims/ImsConfigImpl$StringValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;,
        Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;,
        Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
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
.method static synthetic -get0(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    return v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    return v0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetIntValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap11(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsConfigImpl;II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetProvisionedIntValue(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetProvisionedStringValue(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 0
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueAsync(I)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 0
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleGetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 0
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->handleSetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    return-void
.end method

.method static synthetic -wrap9(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 42
    iput-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 45
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 98
    iput-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 99
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 102
    const-string/jumbo v3, "android.permission.MODIFY_PHONE_STATE"

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 103
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 104
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 851
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$1;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    const-string/jumbo v3, "ImsConfigImpl"

    const-string/jumbo v4, "ImsConfigImpl Creates"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ImsConfigServiceHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    .line 111
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 113
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 114
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 120
    .local v0, "config":Landroid/content/res/Configuration;
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v3, :cond_0

    .line 122
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V

    .line 123
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    iput v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    .line 124
    iget v3, v0, Landroid/content/res/Configuration;->mnc:I

    iput v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    .line 106
    :cond_0
    return-void
.end method

.method private addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 1575
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1578
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1579
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1580
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1583
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1573
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1559
    if-nez p1, :cond_0

    return-object v3

    .line 1560
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1562
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1564
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 1565
    .local v0, "b":I
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1566
    aget-byte v3, p1, v1

    and-int/lit8 v0, v3, 0xf

    .line 1567
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1570
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 6
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    .param p2, "status"    # I

    .prologue
    .line 761
    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    if-eqz v2, :cond_0

    .line 763
    :try_start_0
    const-string/jumbo v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callBackGetFeatureListener, feature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 764
    const-string/jumbo v4, " value = "

    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 764
    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 764
    const-string/jumbo v4, " network = "

    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 764
    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-interface {v2, v3, v4, v5, p2}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ImsConfigImpl"

    const-string/jumbo v3, "onGetFeatureResponse, exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 766
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsConfigImpl"

    const-string/jumbo v3, "onGetFeatureResponse, remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V
    .locals 7
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    .param p2, "status"    # I

    .prologue
    .line 828
    if-eqz p1, :cond_0

    iget-object v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    if-eqz v3, :cond_0

    .line 830
    :try_start_0
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetFeatureResponse, feature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 831
    const-string/jumbo v5, " arg.network = "

    .line 830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 831
    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    .line 830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 831
    const-string/jumbo v5, " arg.value = "

    .line 830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 831
    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 832
    const-string/jumbo v5, " status = "

    .line 830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    iget v6, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-interface {v3, v4, v5, v6, p2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 834
    if-nez p2, :cond_0

    .line 835
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "item"

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string/jumbo v3, "value"

    iget v4, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 839
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ImsConfigImpl"

    const-string/jumbo v4, "onSetFeatureResponse, exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 842
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsConfigImpl"

    const-string/jumbo v4, "onSetFeatureResponse, remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 1553
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1554
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1555
    return-object v0
.end method

.method private getAMRModeSet()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1231
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRModeSetb()B

    move-result v3

    .line 1232
    .local v3, "value":B
    const/4 v1, 0x0

    .line 1233
    .local v1, "nonfirst":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_2

    .line 1234
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1235
    if-eqz v1, :cond_1

    .line 1236
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1239
    const/4 v1, 0x1

    goto :goto_1

    .line 1244
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAMRModeSetb()B
    .locals 3

    .prologue
    .line 1225
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50031

    .line 1224
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1226
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAMRWBModeSet()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1282
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRWBModeSets()S

    move-result v3

    .line 1283
    .local v3, "value":S
    const/4 v1, 0x0

    .line 1284
    .local v1, "nonfirst":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x9

    if-ge v0, v4, :cond_2

    .line 1285
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1286
    if-eqz v1, :cond_1

    .line 1287
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1284
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1289
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1290
    const/4 v1, 0x1

    goto :goto_1

    .line 1295
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAMRWBModeSets()S
    .locals 3

    .prologue
    .line 1276
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50031

    .line 1275
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1277
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAvailabilityCacheExpiration()I
    .locals 3

    .prologue
    .line 1149
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1150
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCancellationTimer()I
    .locals 7

    .prologue
    .line 1354
    const/4 v3, 0x0

    .line 1356
    .local v3, "val":I
    const v4, 0x50039

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1358
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 1359
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimerCancellation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :goto_0
    return v3

    .line 1360
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1361
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1362
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1363
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1364
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1365
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimerCancellation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    .end local v0    # "buf":[B
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_1
    const-string/jumbo v4, "ImsConfigImpl"

    const-string/jumbo v5, "getTimerCancellation gets null response from RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCapabPollListSubExp()I
    .locals 3

    .prologue
    .line 1197
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1198
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCapabilitiesCacheExpiration()I
    .locals 3

    .prologue
    .line 1137
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1138
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCapabilitiesPollInterval()I
    .locals 3

    .prologue
    .line 1161
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1162
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCapabilityDiscoveryEnabled()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1122
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x50033

    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1123
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1124
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1126
    :cond_1
    return v2
.end method

.method private getDomainName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1016
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v3, 0x50027

    .line 1015
    invoke-virtual {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    .line 1017
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1017
    :cond_0
    return-object v1
.end method

.method private getEABEnabled()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1460
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x5003a

    .line 1459
    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1461
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1462
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1464
    :cond_1
    return v2
.end method

.method private getFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 4
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "value":I
    const/4 v0, 0x2

    .line 740
    .local v0, "status":I
    iget v2, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 745
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 736
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getGZIPFlag()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1209
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x50033

    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1210
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1211
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1213
    :cond_1
    return v2
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 495
    if-nez p1, :cond_1

    .line 496
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "AsyncResult is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "getImsConfigListener returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-object v2

    .line 497
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0
.end method

.method private getLVCEnabled()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1444
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x5003a

    .line 1443
    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1445
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1446
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1448
    :cond_1
    return v2
.end method

.method private getMaxNumentriesInRcl()I
    .locals 3

    .prologue
    .line 1185
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1186
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 490
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 491
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getProvisionedValueAsync(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 220
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    .line 221
    .local v0, "arg":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 219
    return-void
.end method

.method private getPublishExtendedTimer()I
    .locals 3

    .prologue
    .line 1110
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1111
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPublishTimer()I
    .locals 3

    .prologue
    .line 1098
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1099
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSIPT1Timer()I
    .locals 3

    .prologue
    .line 1030
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50023

    .line 1029
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1031
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSIPT2Timer()I
    .locals 3

    .prologue
    .line 1043
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50023

    .line 1042
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1044
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSIPTfTimer()I
    .locals 3

    .prologue
    .line 1056
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50023

    .line 1055
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    .line 1057
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSMSFormat()I
    .locals 3

    .prologue
    .line 1069
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50025

    .line 1068
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    .line 1070
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;
    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    .line 1070
    :goto_0
    return v1

    .line 1071
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSMSOverIP()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1082
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x50025

    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    .line 1083
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1084
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1086
    :cond_1
    return v2
.end method

.method private getSipSessionTimer()I
    .locals 3

    .prologue
    .line 1328
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50031

    .line 1327
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1329
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSourceThrottlePublish()I
    .locals 3

    .prologue
    .line 1173
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50033

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    .line 1174
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTDelay()I
    .locals 7

    .prologue
    .line 1384
    const/4 v3, 0x0

    .line 1386
    .local v3, "val":S
    const v4, 0x50037

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1388
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 1389
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTDelay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    .end local v3    # "val":S
    :goto_0
    return v3

    .line 1390
    .restart local v3    # "val":S
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1391
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1392
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1393
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1394
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1395
    .local v3, "val":S
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTDelay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1397
    .end local v0    # "buf":[B
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    .local v3, "val":S
    :cond_1
    const-string/jumbo v4, "ImsConfigImpl"

    const-string/jumbo v5, "getTDelay gets null response from RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVLTEnabled()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1428
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x5003a

    .line 1427
    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1429
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1432
    :cond_1
    return v2
.end method

.method private getVoipMinSessionExpires()I
    .locals 3

    .prologue
    .line 1341
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50031

    .line 1340
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1342
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->getValue()S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVoipSilentRedialEnabled()I
    .locals 3

    .prologue
    .line 1415
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v2, 0x50031

    .line 1414
    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;

    .line 1416
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->getValue()B

    move-result v1

    return v1
.end method

.method private getWifiCallEnabled()I
    .locals 4

    .prologue
    .line 1475
    const/4 v1, 0x0

    .line 1477
    .local v1, "value":I
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v3, 0x5003a

    .line 1476
    invoke-virtual {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1478
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1480
    const/4 v1, 0x1

    .line 1483
    :cond_0
    return v1
.end method

.method private getWifiCallPreference()I
    .locals 5

    .prologue
    .line 1500
    const/4 v1, 0x2

    .line 1502
    .local v1, "pref":I
    new-instance v3, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v4, 0x5003a

    .line 1501
    invoke-virtual {p0, v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1503
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1504
    iget-object v3, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v2

    .line 1505
    .local v2, "value":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1506
    const/4 v1, 0x0

    .line 1511
    .end local v2    # "value":I
    :cond_0
    :goto_0
    return v1

    .line 1507
    .restart local v2    # "value":I
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1508
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getWifiCallRoaming()I
    .locals 4

    .prologue
    .line 1528
    const/4 v1, 0x0

    .line 1530
    .local v1, "value":I
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    const v3, 0x5003a

    .line 1529
    invoke-virtual {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    .line 1531
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->getValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1533
    const/4 v1, 0x1

    .line 1536
    :cond_0
    return v1
.end method

.method private getWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    const/4 v1, 0x1

    .line 749
    const/4 v0, 0x2

    .line 751
    .local v0, "status":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallEnabled()I

    move-result v0

    .line 752
    if-ne v0, v1, :cond_0

    .line 753
    iput v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 757
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 748
    return-void

    .line 755
    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    goto :goto_0
.end method

.method private handleGetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 4
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    const-string/jumbo v1, "ImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetFeatureValue, feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    packed-switch v1, :pswitch_data_0

    .line 429
    const/4 v0, 0x2

    .line 430
    .local v0, "status":I
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackGetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 412
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 419
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    goto :goto_0

    .line 425
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleGetIntValue(I)I
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x1

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 613
    :goto_0
    :pswitch_0
    return v0

    .line 535
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSipSessionTimer()I

    move-result v0

    goto :goto_0

    .line 538
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVoipMinSessionExpires()I

    move-result v0

    goto :goto_0

    .line 541
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCancellationTimer()I

    move-result v0

    goto :goto_0

    .line 544
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getTDelay()I

    move-result v0

    goto :goto_0

    .line 547
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVoipSilentRedialEnabled()I

    move-result v0

    goto :goto_0

    .line 550
    :pswitch_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPT1Timer()I

    move-result v0

    goto :goto_0

    .line 553
    :pswitch_7
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPT2Timer()I

    move-result v0

    goto :goto_0

    .line 556
    :pswitch_8
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSIPTfTimer()I

    move-result v0

    goto :goto_0

    .line 559
    :pswitch_9
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSMSFormat()I

    move-result v0

    goto :goto_0

    .line 562
    :pswitch_a
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSMSOverIP()I

    move-result v0

    goto :goto_0

    .line 565
    :pswitch_b
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPublishTimer()I

    move-result v0

    goto :goto_0

    .line 568
    :pswitch_c
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPublishExtendedTimer()I

    move-result v0

    goto :goto_0

    .line 571
    :pswitch_d
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilityDiscoveryEnabled()I

    move-result v0

    goto :goto_0

    .line 574
    :pswitch_e
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilitiesCacheExpiration()I

    move-result v0

    goto :goto_0

    .line 577
    :pswitch_f
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAvailabilityCacheExpiration()I

    move-result v0

    goto :goto_0

    .line 580
    :pswitch_10
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabilitiesPollInterval()I

    move-result v0

    goto :goto_0

    .line 583
    :pswitch_11
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getSourceThrottlePublish()I

    move-result v0

    goto :goto_0

    .line 586
    :pswitch_12
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getMaxNumentriesInRcl()I

    move-result v0

    goto :goto_0

    .line 589
    :pswitch_13
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getCapabPollListSubExp()I

    move-result v0

    goto :goto_0

    .line 592
    :pswitch_14
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getGZIPFlag()I

    move-result v0

    goto :goto_0

    .line 595
    :pswitch_15
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getVLTEnabled()I

    move-result v0

    .line 596
    if-ne v0, v1, :cond_0

    :goto_1
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 599
    :pswitch_16
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getLVCEnabled()I

    move-result v0

    goto :goto_0

    .line 602
    :pswitch_17
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getEABEnabled()I

    move-result v0

    goto :goto_0

    .line 605
    :pswitch_18
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallPreference()I

    move-result v0

    goto :goto_0

    .line 608
    :pswitch_19
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getWifiCallRoaming()I

    move-result v0

    goto/16 :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method private handleGetStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 617
    const-string/jumbo v0, "Unknown"

    .line 618
    .local v0, "ret":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 631
    :goto_0
    return-object v0

    .line 620
    :sswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRModeSet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 623
    :sswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getAMRWBModeSet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :sswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSetFeatureValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 2
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    packed-switch v1, :pswitch_data_0

    .line 453
    const/4 v0, 0x2

    .line 454
    .local v0, "status":I
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 436
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 442
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    goto :goto_0

    .line 448
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetProvisionedIntValue(II)I
    .locals 2
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 635
    const/4 v0, -0x1

    .line 636
    .local v0, "retval":I
    packed-switch p1, :pswitch_data_0

    .line 715
    :goto_0
    :pswitch_0
    return v0

    .line 638
    :pswitch_1
    int-to-short v1, p2

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->setSipSessionTimer(S)I

    move-result v0

    goto :goto_0

    .line 641
    :pswitch_2
    int-to-short v1, p2

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoipMinSessionExpires(S)I

    move-result v0

    goto :goto_0

    .line 644
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCancellationTimer(I)I

    move-result v0

    goto :goto_0

    .line 647
    :pswitch_4
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setTDelay(I)I

    move-result v0

    goto :goto_0

    .line 650
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoipSilentRedialEnabled(I)I

    move-result v0

    goto :goto_0

    .line 653
    :pswitch_6
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPT1Timer(I)I

    move-result v0

    goto :goto_0

    .line 656
    :pswitch_7
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPT2Timer(I)I

    move-result v0

    goto :goto_0

    .line 659
    :pswitch_8
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSIPTfTimer(I)I

    move-result v0

    goto :goto_0

    .line 662
    :pswitch_9
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSMSFormat(I)I

    move-result v0

    goto :goto_0

    .line 665
    :pswitch_a
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSMSOverIP(I)I

    move-result v0

    goto :goto_0

    .line 668
    :pswitch_b
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setPublishTimer(I)I

    move-result v0

    goto :goto_0

    .line 671
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setPublishExtendedTimer(I)I

    move-result v0

    goto :goto_0

    .line 674
    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityDiscoveryEnabled(I)I

    move-result v0

    goto :goto_0

    .line 677
    :pswitch_e
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilitiesCacheExpiration(I)I

    move-result v0

    goto :goto_0

    .line 680
    :pswitch_f
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAvailabilityCacheExpiration(I)I

    move-result v0

    goto :goto_0

    .line 683
    :pswitch_10
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilitiesPollInterval(I)I

    move-result v0

    goto :goto_0

    .line 686
    :pswitch_11
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setSourceThrottlePublish(I)I

    move-result v0

    goto :goto_0

    .line 689
    :pswitch_12
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setMaxNumentriesInRcl(I)I

    move-result v0

    goto :goto_0

    .line 692
    :pswitch_13
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabPollListSubExp(I)I

    move-result v0

    goto :goto_0

    .line 695
    :pswitch_14
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setGZIPFlag(I)I

    move-result v0

    goto :goto_0

    .line 698
    :pswitch_15
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setVLTEnabled(I)I

    move-result v0

    goto :goto_0

    .line 701
    :pswitch_16
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setLVCEnabled(I)I

    move-result v0

    goto :goto_0

    .line 704
    :pswitch_17
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setEABEnabled(I)I

    move-result v0

    goto :goto_0

    .line 707
    :pswitch_18
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallPreference(I)I

    move-result v0

    goto :goto_0

    .line 710
    :pswitch_19
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallRoaming(I)I

    move-result v0

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method private handleSetProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v0, -0x1

    .line 720
    .local v0, "retval":I
    sparse-switch p1, :sswitch_data_0

    .line 733
    :goto_0
    return v0

    .line 722
    :sswitch_0
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRModeSet(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 725
    :sswitch_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRWBModeSet(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 728
    :sswitch_2
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setDomainName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 461
    if-eqz p1, :cond_2

    .line 463
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 464
    .local v1, "status":I
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 465
    const/4 v0, -0x1

    .line 467
    .local v0, "result":I
    :goto_1
    invoke-interface {p1, v1, v0}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V

    .line 460
    .end local v0    # "result":I
    .end local v1    # "status":I
    :goto_2
    return-void

    .line 463
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 466
    .restart local v1    # "status":I
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "result":I
    goto :goto_1

    .line 468
    .end local v0    # "result":I
    .end local v1    # "status":I
    :catch_0
    move-exception v2

    .line 469
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetVideoCallQualityDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 472
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v3, "ImsConfigImpl"

    const-string/jumbo v4, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 477
    if-eqz p1, :cond_1

    .line 479
    :try_start_0
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 480
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0    # "status":I
    :goto_1
    return-void

    .line 479
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetVideoCallQualityDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 485
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v2, "ImsConfigImpl"

    const-string/jumbo v3, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 1587
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 1588
    .local v1, "request":[B
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1590
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1592
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 1606
    const/16 v2, 0xc

    new-array v1, v2, [B

    .line 1607
    .local v1, "request":[B
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1609
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1610
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1612
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # S

    .prologue
    .line 1596
    const/16 v2, 0xa

    new-array v1, v2, [B

    .line 1597
    .local v1, "request":[B
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1599
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x2

    invoke-direct {p0, v0, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1600
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1602
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(I[B)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 1616
    array-length v2, p2

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 1617
    .local v1, "request":[B
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1619
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->addOemRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1620
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1622
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 285
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "This method will deadlock if called from the main thread."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    :cond_0
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    invoke-direct {v2, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 288
    .local v2, "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v3, p1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 289
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 292
    monitor-enter v2

    .line 293
    :goto_0
    :try_start_0
    iget-object v3, v2, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 295
    :try_start_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v2

    .line 301
    iget-object v3, v2, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    return-object v3

    .line 292
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private sendRequestAsync(ILjava/lang/Object;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 274
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    invoke-direct {v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 275
    .local v1, "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v2, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 11
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    const/4 v10, 0x0

    .line 1634
    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v7, :cond_0

    .line 1635
    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v7, "Cannot get Telephony Service"

    invoke-direct {v2, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1637
    .local v0, "ar":Landroid/os/AsyncResult;
    return-object v0

    .line 1640
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/16 v7, 0x800

    new-array v4, v7, [B

    .line 1641
    .local v4, "response":[B
    const-string/jumbo v7, "ImsConfigImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :try_start_0
    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v7, p2, v4}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v5

    .line 1645
    .local v5, "retVal":I
    if-ltz v5, :cond_2

    .line 1646
    const/4 v6, 0x0

    .line 1648
    .local v6, "validResponseBytes":[B
    if-lez v5, :cond_1

    .line 1649
    new-array v6, v5, [B

    .line 1650
    .local v6, "validResponseBytes":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1652
    const-string/jumbo v7, "ImsConfigImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Response Data is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .end local v6    # "validResponseBytes":[B
    :goto_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1667
    .end local v5    # "retVal":I
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :goto_1
    return-object v0

    .line 1654
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v5    # "retVal":I
    .local v6, "validResponseBytes":[B
    :cond_1
    const-string/jumbo v7, "ImsConfigImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Response retVal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1662
    .end local v5    # "retVal":I
    .end local v6    # "validResponseBytes":[B
    :catch_0
    move-exception v1

    .line 1663
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "ImsConfigImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ITelephony.sendOemRilRequestRaw met exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_1

    .line 1658
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "retVal":I
    :cond_2
    :try_start_1
    const-string/jumbo v7, "ImsConfigImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ITelephony.sendOemRilRequestRaw returns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    new-instance v3, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ITelephony.sendOemRilRequestRaw returns "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v0, p2, v7, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_1
.end method

.method private setAMRModeSet(B)I
    .locals 4
    .param p1, "value"    # B

    .prologue
    .line 1248
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1249
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1250
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_mode:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1251
    const v2, 0x50030

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    .line 1252
    .local v1, "retval":I
    return v1
.end method

.method private setAMRModeSet(Ljava/lang/String;)I
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1256
    const/4 v2, -0x1

    .line 1257
    .local v2, "retval":I
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1258
    .local v5, "valueSet":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1259
    .local v3, "toset":B
    array-length v7, v5

    .end local v3    # "toset":B
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 1261
    .local v4, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1262
    .local v1, "i":I
    if-ltz v1, :cond_0

    const/4 v8, 0x7

    if-gt v1, v8, :cond_0

    .line 1263
    const/4 v8, 0x1

    shl-int/2addr v8, v1

    or-int/2addr v8, v3

    int-to-byte v3, v8

    .line 1259
    .end local v1    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .line 1267
    const-string/jumbo v8, "ImsConfigImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setAMRModeSet met exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1270
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "v":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRModeSet(B)I

    move-result v2

    .line 1271
    return v2
.end method

.method private setAMRWBModeSet(Ljava/lang/String;)I
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1308
    const/4 v2, -0x1

    .line 1309
    .local v2, "retval":I
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1310
    .local v5, "valueSet":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1311
    .local v3, "toset":S
    array-length v7, v5

    .end local v3    # "toset":S
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 1313
    .local v4, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1314
    .local v1, "i":I
    if-ltz v1, :cond_0

    const/16 v8, 0x8

    if-gt v1, v8, :cond_0

    .line 1315
    const/4 v8, 0x1

    shl-int/2addr v8, v1

    or-int/2addr v8, v3

    int-to-short v3, v8

    .line 1311
    .end local v1    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .line 1319
    const-string/jumbo v8, "ImsConfigImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setAMRWBModeSet met exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1322
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "v":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setAMRWBModeSet(S)I

    move-result v2

    .line 1323
    return v2
.end method

.method private setAMRWBModeSet(S)I
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 1299
    const/4 v1, -0x1

    .line 1300
    .local v1, "retval":I
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1301
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1302
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->amr_wb_mode:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1303
    const v2, 0x50030

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    .line 1304
    return v1
.end method

.method private setAvailabilityCacheExpiration(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1154
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1155
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1156
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1157
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setCancellationTimer(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1373
    const/4 v1, -0x1

    .line 1374
    .local v1, "retval":I
    const v2, 0x50038

    invoke-direct {p0, v2, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(II)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1376
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1377
    const/4 v1, 0x0

    .line 1378
    const-string/jumbo v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTimerCancellation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    return v1
.end method

.method private setCapabPollListSubExp(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1202
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1203
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1204
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1205
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setCapabilitiesCacheExpiration(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1142
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1143
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1144
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1145
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setCapabilitiesPollInterval(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1166
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1167
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1168
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1169
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setCapabilityDiscoveryEnabled(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1130
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1131
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1132
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1133
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1

    .line 1132
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I
    .locals 6
    .param p1, "requestid"    # I
    .param p2, "c"    # Lorg/codeaurora/ims/ImsConfigImpl$Config;

    .prologue
    .line 2658
    const/4 v2, -0x1

    .line 2660
    .local v2, "retval":I
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->getSize()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2661
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2662
    invoke-virtual {p2, v0}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->put(Ljava/nio/ByteBuffer;)V

    .line 2663
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 2664
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2665
    const/4 v2, 0x0

    .line 2670
    :goto_0
    return v2

    .line 2667
    :cond_0
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfig: requestid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2668
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2667
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDomainName(Ljava/lang/String;)I
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 1022
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1023
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1024
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$UserConfig;->domain:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->setValue(Ljava/lang/String;)V

    .line 1025
    const v1, 0x50028

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setEABEnabled(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1468
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1469
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1470
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1471
    const v1, 0x5003b

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1

    .line 1470
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 8
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 786
    const/4 v6, -0x1

    .line 787
    .local v6, "status":I
    if-eqz p1, :cond_4

    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    .line 789
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFeatureConfigValue, feature = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 790
    const-string/jumbo v5, " network = "

    .line 789
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 790
    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    .line 789
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 790
    const-string/jumbo v5, " value = "

    .line 789
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 790
    iget v5, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 789
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    if-eq v0, v7, :cond_0

    .line 793
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    if-nez v0, :cond_3

    .line 795
    :cond_0
    const/4 v3, 0x2

    .line 796
    .local v3, "statusType":I
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    if-nez v0, :cond_1

    .line 797
    const/4 v3, 0x0

    .line 799
    :cond_1
    const/4 v1, 0x0

    .line 800
    .local v1, "service":I
    iget v0, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    if-ne v0, v7, :cond_2

    .line 801
    const/4 v1, 0x3

    .line 803
    :cond_2
    const/16 v2, 0xe

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsConfigImpl;->setServiceStatus(IIIILorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    .line 804
    return-void

    .line 806
    .end local v1    # "service":I
    .end local v3    # "statusType":I
    :cond_3
    const/4 v6, 0x2

    .line 811
    :goto_0
    invoke-direct {p0, p1, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 785
    return-void

    .line 809
    :cond_4
    const/4 v6, 0x3

    goto :goto_0
.end method

.method private setGZIPFlag(I)I
    .locals 3
    .param p1, "enable"    # I

    .prologue
    const/4 v1, 0x1

    .line 1217
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1218
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1219
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1220
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1

    .line 1219
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLVCEnabled(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1452
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1453
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1454
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1455
    const v1, 0x5003b

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1

    .line 1454
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMaxNumentriesInRcl(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1190
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1191
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1192
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1193
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setPublishExtendedTimer(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1115
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1116
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1117
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1118
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setPublishTimer(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1103
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1104
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1105
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1106
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setSIPT1Timer(I)I
    .locals 3
    .param p1, "t1"    # I

    .prologue
    .line 1035
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1036
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1037
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1038
    const v1, 0x50024

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setSIPT2Timer(I)I
    .locals 3
    .param p1, "t2"    # I

    .prologue
    .line 1048
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1049
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1050
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1051
    const v1, 0x50024

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setSIPTfTimer(I)I
    .locals 3
    .param p1, "tf"    # I

    .prologue
    .line 1061
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1062
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1063
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1064
    const v1, 0x50024

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setSMSFormat(I)I
    .locals 3
    .param p1, "format"    # I

    .prologue
    .line 1075
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1076
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1077
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1078
    const v1, 0x50026

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setSMSOverIP(I)I
    .locals 3
    .param p1, "enable"    # I

    .prologue
    const/4 v1, 0x1

    .line 1091
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1092
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1093
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1094
    const v1, 0x50026

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1

    .line 1093
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setServiceStatus(IIIILorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "networkType"    # I
    .param p3, "enabled"    # I
    .param p4, "restrictCause"    # I
    .param p5, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    .line 779
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setServiceStatus Service ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " NetworkType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 780
    const-string/jumbo v3, "enabled = "

    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 780
    const-string/jumbo v3, " restrictCause = "

    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p5}, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 782
    .local v1, "msg":Landroid/os/Message;
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 778
    return-void
.end method

.method private setSipSessionTimer(S)I
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 1333
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1334
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1335
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->session_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1336
    const v1, 0x50030

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setSourceThrottlePublish(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1178
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1179
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1180
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1181
    const v1, 0x50032

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setTDelay(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1403
    const/4 v1, -0x1

    .line 1404
    .local v1, "retval":I
    int-to-short v2, p1

    const v3, 0x50036

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1406
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1407
    const/4 v1, 0x0

    .line 1408
    const-string/jumbo v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTDelay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    return v1
.end method

.method private setVLTEnabled(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1436
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1437
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1438
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1439
    const v1, 0x5003b

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1

    .line 1438
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setVoipMinSessionExpires(S)I
    .locals 4
    .param p1, "value"    # S

    .prologue
    .line 1346
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1347
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1348
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->min_session_timer:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->setValue(S)V

    .line 1349
    const v2, 0x50030

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    .line 1350
    .local v1, "retval":I
    return v1
.end method

.method private setVoipSilentRedialEnabled(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1420
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1421
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1422
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->setValue(B)V

    .line 1423
    const v1, 0x50030

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v1

    return v1
.end method

.method private setWifiCallEnabled(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 1487
    const/4 v1, 0x0

    .line 1488
    .local v1, "pref":I
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1489
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1490
    if-ne p1, v3, :cond_1

    .line 1491
    const/4 v1, 0x1

    .line 1495
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1496
    const v2, 0x5003b

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v2

    return v2

    .line 1492
    :cond_1
    if-nez p1, :cond_0

    .line 1493
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private setWifiCallPreference(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 1515
    const/4 v1, 0x1

    .line 1516
    .local v1, "pref":I
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1517
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1518
    if-nez p1, :cond_1

    .line 1519
    const/4 v1, 0x2

    .line 1523
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1524
    const v2, 0x5003b

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v2

    return v2

    .line 1520
    :cond_1
    if-ne p1, v3, :cond_0

    .line 1521
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private setWifiCallRoaming(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 1540
    const/4 v1, 0x0

    .line 1541
    .local v1, "pref":I
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1542
    .local v0, "c":Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->setValue(Z)V

    .line 1543
    if-ne p1, v3, :cond_1

    .line 1544
    const/4 v1, 0x1

    .line 1548
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->setValue(I)V

    .line 1549
    const v2, 0x5003b

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)I

    move-result v2

    return v2

    .line 1545
    :cond_1
    if-nez p1, :cond_0

    .line 1546
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private setWifiFeatureConfigValue(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V
    .locals 4
    .param p1, "arg"    # Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .prologue
    .line 815
    const/4 v0, -0x1

    .line 816
    .local v0, "status":I
    if-eqz p1, :cond_0

    .line 817
    const-string/jumbo v1, "ImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiFeatureConfigValue, feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 818
    const-string/jumbo v3, " network = "

    .line 817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 818
    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    .line 817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 818
    const-string/jumbo v3, " value = "

    .line 817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 818
    iget v3, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 820
    iget v1, p1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->setWifiCallEnabled(I)I

    .line 821
    const/4 v0, 0x0

    .line 824
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->callBackSetFeatureListener(Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    .line 814
    return-void
.end method

.method private syncInitFeatureValueAtPowerUpOrMccMncChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 869
    if-eqz p1, :cond_0

    .line 870
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged, mcc ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mnc ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 874
    const v1, 0x112008e

    .line 873
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    .line 876
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueAsync(I)V

    .line 877
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    if-nez v0, :cond_1

    .line 878
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 883
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncVolteFeatureValue()V

    .line 884
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncVideoCallFeatureValue()V

    .line 885
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcFeatureAndProvisionedValues()V

    .line 887
    if-eqz p1, :cond_2

    .line 888
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMcc:I

    .line 889
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mMnc:I

    .line 867
    :cond_2
    return-void
.end method

.method private syncVideoCallFeatureValue()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 935
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 936
    const-string/jumbo v4, "volte_vt_enabled"

    .line 935
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 938
    .local v0, "user4GEnabled":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 939
    const-string/jumbo v4, "vt_ims_enabled"

    .line 938
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 943
    .local v2, "vtUserEnabled":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 944
    const v4, 0x1120090

    .line 943
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 945
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 946
    const v4, 0x1120092

    .line 945
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 950
    .local v1, "videoCallAvailable":Z
    :cond_0
    if-nez v1, :cond_1

    .line 951
    const/4 v2, 0x0

    .line 955
    :cond_1
    if-nez v0, :cond_2

    .line 956
    const/4 v2, 0x0

    .line 961
    :cond_2
    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 959
    invoke-virtual {p0, v5, v3, v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 934
    return-void
.end method

.method private syncVolteFeatureValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 894
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 895
    const-string/jumbo v4, "volte_vt_enabled"

    .line 896
    const/4 v5, 0x1

    .line 894
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 899
    .local v2, "volteUserEnabled":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 900
    const v4, 0x112008c

    .line 899
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 901
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 902
    const v4, 0x112008d

    .line 901
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 905
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 906
    const-string/jumbo v4, "preferred_tty_mode"

    .line 904
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 909
    .local v0, "ttyMode":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 910
    const v4, 0x112008f

    .line 909
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 911
    if-eqz v0, :cond_0

    .line 913
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ttyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 914
    const-string/jumbo v5, ", config_carrier_volte_tty_supported=false"

    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 915
    const-string/jumbo v5, " -> VoLTE will be disabled"

    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v2, 0x0

    .line 920
    :cond_0
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volteAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 921
    const-string/jumbo v5, ", volteUserEnabled = "

    .line 920
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-nez v1, :cond_1

    .line 925
    const/4 v2, 0x0

    .line 931
    :cond_1
    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 929
    invoke-virtual {p0, v6, v3, v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 893
    return-void

    .line 899
    .end local v0    # "ttyMode":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "volteAvailable":Z
    goto :goto_0
.end method

.method private syncWfcFeatureAndProvisionedValues()V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 965
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 966
    const-string/jumbo v7, "wfc_ims_enabled"

    .line 965
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 970
    .local v3, "wfcUserEnabled":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 971
    const v7, 0x1120093

    .line 970
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 972
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 973
    const v7, 0x1120094

    .line 972
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 975
    :goto_0
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 976
    const-string/jumbo v7, "wfc_ims_mode"

    .line 975
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 979
    .local v4, "wfcUserMode":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 980
    const-string/jumbo v7, "wfc_ims_roaming_enabled"

    .line 979
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 983
    .local v5, "wfcUserRoaming":I
    const-string/jumbo v6, "ImsConfigImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wfcAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 984
    const-string/jumbo v8, ", wfcUserEnabled = "

    .line 983
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 985
    const-string/jumbo v8, ", wfcUserMode = "

    .line 983
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 986
    const-string/jumbo v8, ", wfcUserRoaming = "

    .line 983
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    if-nez v2, :cond_0

    .line 990
    const/4 v3, 0x0

    .line 994
    :cond_0
    if-nez v3, :cond_1

    .line 995
    const/4 v4, 0x1

    .line 998
    :cond_1
    if-eqz v2, :cond_2

    .line 1002
    const/16 v6, 0xd

    const/4 v7, 0x0

    .line 1000
    invoke-virtual {p0, v9, v6, v3, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 1004
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    .line 1005
    const/16 v6, 0x1b

    .line 1004
    invoke-direct {v0, v6, v4}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    .line 1006
    .local v0, "argMode":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    invoke-direct {p0, v10, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 1008
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    .line 1009
    const/16 v6, 0x1a

    .line 1008
    invoke-direct {v1, v6, v5}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    .line 1010
    .local v1, "argRoaming":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    invoke-direct {p0, v10, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 964
    .end local v0    # "argMode":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    .end local v1    # "argRoaming":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    :cond_2
    return-void

    .line 970
    .end local v4    # "wfcUserMode":I
    .end local v5    # "wfcUserRoaming":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "wfcAvailable":Z
    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForOn(Landroid/os/Handler;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRegisterForOn:Z

    .line 128
    :cond_0
    return-void
.end method

.method getConfig(ILorg/codeaurora/ims/ImsConfigImpl$Config;)Lorg/codeaurora/ims/ImsConfigImpl$Config;
    .locals 8
    .param p1, "requestid"    # I
    .param p2, "c"    # Lorg/codeaurora/ims/ImsConfigImpl$Config;

    .prologue
    const/4 v7, 0x0

    .line 2638
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 2639
    .local v2, "result":Landroid/os/AsyncResult;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, [B

    if-eqz v4, :cond_1

    .line 2640
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2641
    .local v0, "buf":[B
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2642
    .local v3, "ret":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2644
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;

    invoke-direct {v1, p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$Config;)V

    .line 2645
    .local v1, "r":Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->populate(Ljava/nio/ByteBuffer;)V

    .line 2646
    iget-object v4, v1, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2647
    iget-object v4, v1, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    return-object v4

    .line 2649
    :cond_0
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConfig: requestid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " return failure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    .end local v0    # "buf":[B
    .end local v1    # "r":Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;
    .end local v3    # "ret":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v7

    .line 2652
    :cond_1
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConfig: requestid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " no response/error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 190
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v4, "getFeatureValue"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2, p3}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    .line 196
    .local v0, "ar":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 188
    return-void

    .line 191
    .end local v0    # "ar":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "getFeatureValue"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 151
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 152
    const-string/jumbo v5, "getProvisionedStringValue"

    .line 151
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    const-string/jumbo v3, "Unkown"

    invoke-direct {v0, p1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;-><init>(ILjava/lang/String;)V

    .line 158
    .local v0, "arg":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    const/4 v3, 0x6

    invoke-direct {p0, v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "retval":Ljava/lang/String;
    return-object v2

    .line 153
    .end local v0    # "arg":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    .end local v2    # "retval":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v5, "getProvisionedStringValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProvisionedValue(I)I
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 138
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 139
    const-string/jumbo v5, "getProvisionedValue"

    .line 138
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    .line 145
    .local v0, "arg":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    const/4 v3, 0x5

    invoke-direct {p0, v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    .local v2, "retval":I
    return v2

    .line 140
    .end local v0    # "arg":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    .end local v2    # "retval":I
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v5, "getProvisionedValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .locals 4

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 210
    const-string/jumbo v3, "getVolteProvisioned"

    .line 209
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    const-string/jumbo v1, "ImsConfigImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVolteProvisioned ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsProvisioned:Z

    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "getVolteProvisioned"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 201
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "setFeatureValue"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    .line 204
    .local v0, "ar":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequestAsync(ILjava/lang/Object;)V

    .line 200
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v5, "setProvisionedStringValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    invoke-direct {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;-><init>(ILjava/lang/String;)V

    .line 178
    .local v0, "arg":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    const/16 v3, 0x8

    invoke-direct {p0, v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    .local v2, "retval":I
    if-nez v2, :cond_0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "configChangedIntent":Landroid/content/Intent;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    .end local v1    # "configChangedIntent":Landroid/content/Intent;
    :cond_0
    return v2
.end method

.method public setProvisionedValue(II)I
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 163
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v5, "setProvisionedValue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    invoke-direct {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;-><init>(II)V

    .line 165
    .local v0, "arg":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    const/4 v3, 0x7

    invoke-direct {p0, v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 166
    .local v2, "retval":I
    if-nez v2, :cond_0

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "configChangedIntent":Landroid/content/Intent;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string/jumbo v3, "value"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    .end local v1    # "configChangedIntent":Landroid/content/Intent;
    :cond_0
    return v2
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
