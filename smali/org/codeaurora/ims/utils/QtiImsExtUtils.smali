.class public Lorg/codeaurora/ims/utils/QtiImsExtUtils;
.super Ljava/lang/Object;
.source "QtiImsExtUtils.java"


# static fields
.field public static final ACTION_VOPS_SSAC_STATUS:Ljava/lang/String; = "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

.field public static final CARRIER_ONE_DEFAULT_MCC_MNC:Ljava/lang/String; = "405854"

.field public static final EXTRA_SSAC:Ljava/lang/String; = "Ssac"

.field public static final EXTRA_VOPS:Ljava/lang/String; = "Vops"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final PROPERTY_RADIO_ATEL_CARRIER:Ljava/lang/String; = "persist.radio.atel.carrier"

.field public static final QTI_IMS_ASSURED_TRANSFER:I = 0x2

.field public static final QTI_IMS_BLIND_TRANSFER:I = 0x1

.field public static final QTI_IMS_CALL_DEFLECT_NUMBER:Ljava/lang/String; = "ims_call_deflect_number"

.field public static final QTI_IMS_CONSULTATIVE_TRANSFER:I = 0x4

.field public static final QTI_IMS_DEFLECT_ENABLED:Ljava/lang/String; = "qti.ims.call_deflect"

.field public static final QTI_IMS_HO_DISABLE_ALL:I = 0x2

.field public static final QTI_IMS_HO_ENABLED_WLAN_TO_WWAN_ONLY:I = 0x3

.field public static final QTI_IMS_HO_ENABLED_WWAN_TO_WLAN_ONLY:I = 0x4

.field public static final QTI_IMS_HO_ENABLE_ALL:I = 0x1

.field public static final QTI_IMS_HO_INVALID:I = 0x0

.field public static final QTI_IMS_INCOMING_CONF_EXTRA_KEY:Ljava/lang/String; = "incomingConference"

.field public static final QTI_IMS_REQUEST_ERROR:I = 0x1

.field public static final QTI_IMS_REQUEST_SUCCESS:I = 0x0

.field public static final QTI_IMS_TRANSFER_EXTRA_KEY:Ljava/lang/String; = "transferType"

.field public static final QTI_IMS_VOLTE_PREF_OFF:I = 0x0

.field public static final QTI_IMS_VOLTE_PREF_ON:I = 0x1

.field public static final QTI_IMS_VOLTE_PREF_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "QtiImsExtUtils"

    sput-object v0, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowVideoCallsInLowBattery(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const-string/jumbo v0, "allow_video_call_in_low_battery"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 135
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 134
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    .end local v0    # "deflectcall":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getConfigForDefaultImsPhoneId(Landroid/content/Context;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getImsPhoneId()I

    move-result v0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 233
    if-nez p0, :cond_0

    .line 234
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v4

    .line 239
    :cond_0
    const-string/jumbo v2, "carrier_config"

    .line 238
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 240
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_1

    .line 241
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId configManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-object v4

    .line 245
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 246
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId phoneId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v4

    .line 250
    :cond_2
    invoke-static {p0, p1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 251
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId subId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-object v4

    .line 256
    :cond_3
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    return-object v2
.end method

.method private static getImsPhoneId()I
    .locals 5

    .prologue
    .line 263
    const/4 v1, -0x1

    .line 265
    .local v1, "phoneId":I
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiImsExtManager;->getImsPhoneId()I
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImsPhoneId failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, -0x1

    .line 276
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 277
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 278
    return v2

    .line 281
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 283
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 284
    return v2

    .line 286
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    return v2
.end method

.method public static isCallTransferEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string/jumbo v0, "persist.radio.ims_call_transfer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carrierConfig"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-static {p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getConfigForDefaultImsPhoneId(Landroid/content/Context;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 207
    .local v0, "b":Landroid/os/PersistableBundle;
    if-nez v0, :cond_0

    .line 208
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCarrierConfigEnabled bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v3

    .line 212
    :cond_0
    invoke-virtual {v0, p1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "405854"

    .line 197
    const-string/jumbo v1, "persist.radio.atel.carrier"

    .line 196
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCsRetryConfigEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-string/jumbo v0, "config_carrier_cs_retry_available"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    move-object v0, p1

    .line 149
    .local v0, "deflectNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    const-string/jumbo v0, ""

    .line 154
    :cond_1
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 153
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    return-void
.end method

.method public static shallHidePreviewInVtConference(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const-string/jumbo v0, "config_hide_preview_in_vt_confcall"

    .line 220
    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallRemoveModifyCallCapability(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string/jumbo v0, "remove_modify_call_capability"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useCustomVideoUi(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-string/jumbo v0, "use_custom_video_ui"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useExt(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const-string/jumbo v0, "video_call_use_ext"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
