.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private final ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private final mBinder:Lcom/android/ims/internal/IImsService$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mImsPhoneId:I

.field protected mIsReceiverRegistered:Z

.field protected mNumMultiModeStacks:I

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

    .line 39
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 40
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PHONE_STATE:Ljava/lang/String;

    .line 41
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 43
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    .line 44
    new-instance v0, Lorg/codeaurora/ims/ImsService$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$1;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    .line 197
    new-instance v0, Lorg/codeaurora/ims/ImsService$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$2;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->enforceReadPhoneState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsService;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->handleRafInfoChange()V

    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 178
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method private getNumSubscriptions()I
    .locals 1

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method private handleRafInfoChange()V
    .locals 10

    .line 314
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    const-string v1, "ImsService"

    if-lez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRafInfoChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Multimode stacks. Handled by DDS switch. EXIT!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 321
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 322
    nop

    .line 323
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_2

    .line 324
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 325
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 326
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v7

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRafInfoChange: Phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsService;->isMultiModeSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    iget v4, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 330
    move v4, v3

    .line 323
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Multiple Multimode stacks: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-le v0, v5, :cond_4

    .line 344
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    :cond_3
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    .line 355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    .line 358
    const-string v0, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    :cond_4
    iput v2, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 362
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    .line 364
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 3

    .line 225
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const-string v1, "ImsService"

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "initSubscriptionStatus: multi-sim..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->handleRafInfoChange()V

    .line 230
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-nez v0, :cond_1

    .line 231
    const-string v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    goto :goto_0

    .line 240
    :cond_0
    const-string v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    :goto_0
    return-void
.end method

.method private isMultiModeSupported(I)Z
    .locals 0

    .line 305
    and-int/lit16 p1, p1, 0x1000

    if-nez p1, :cond_0

    .line 306
    const/4 p1, 0x0

    return p1

    .line 308
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private switchImsPhoneByPhoneId(I)V
    .locals 5

    .line 246
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const-string v1, "ImsService"

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switschImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-ne v0, p1, :cond_1

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " UNchanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchImsPhone: ImsPhoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput p1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 261
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget v1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/ImsServiceSub;->registerForPhoneId(I)V

    .line 264
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    .line 265
    nop

    :goto_0
    const-string v1, "android:phone_id"

    const/high16 v2, 0x20000000

    if-ge v0, p1, :cond_3

    .line 266
    iget v3, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq v3, v0, :cond_2

    .line 267
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    return-void
.end method

.method private switchImsPhoneBySubId(I)V
    .locals 3

    .line 283
    nop

    .line 289
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 295
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    .line 300
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchImsPhoneBySubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImsService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    .line 302
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 215
    const-string p1, "ImsService"

    const-string v0, "Returning mBinder for ImsService binding."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 184
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 185
    const-string v0, "ImsService"

    const-string v1, "ImsService created!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v3, Lorg/codeaurora/ims/ImsServiceSub;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v1

    .line 187
    move v1, v4

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    const-string v2, "ims"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    .line 192
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v1, v0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 193
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initSubscriptionStatus()V

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 220
    const-string v0, "ImsService"

    const-string v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 222
    return-void
.end method
