.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/compat/ImsService;
.source "ImsService.java"


# static fields
.field private static final ACTION_GET_RADIO_ACCESS_FAMILY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

.field private static final DEFAULT_SLOT_ID:I = 0x0

.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field protected mImsPhoneId:I

.field protected mIsReceiverRegistered:Z

.field private mNumImsSubscriptionsCache:Ljava/lang/Integer;

.field protected mNumMultiModeStacks:I

.field private mNumPhonesCache:Ljava/lang/Integer;

.field private final mQtiBinder:Landroid/os/IBinder;

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubSlotMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/telephony/ims/compat/ImsService;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 52
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lorg/codeaurora/ims/ImsService$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$1;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    new-instance v0, Lorg/codeaurora/ims/ImsService$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$2;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mQtiBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsService;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsService;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsService;

    .line 42
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->handleRafInfoChange()V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsService;

    .line 42
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->enforceReadPhoneState(Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 70
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method private getNumSlots()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:Ljava/lang/Integer;

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getNumSubscriptions()I
    .locals 1

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method private handleRafInfoChange()V
    .locals 9

    .line 289
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    const-string v1, "ImsService"

    if-lez v0, :cond_0

    .line 290
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

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    .line 297
    .local v0, "mNumPhones":I
    const/4 v2, 0x0

    .line 298
    .local v2, "nTempPhoneId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 299
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 300
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 301
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    .line 302
    .local v6, "nRafInfo":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRafInfoChange: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsService;->isMultiModeSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    iget v7, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    add-int/2addr v7, v4

    iput v7, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 305
    move v2, v3

    .line 298
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "nRafInfo":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Multiple Multimode stacks: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v3, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-le v3, v4, :cond_4

    .line 319
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    if-eqz v3, :cond_3

    .line 320
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    :cond_3
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    .line 330
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    .line 333
    const-string v3, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 336
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 337
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    .line 339
    :goto_1
    return-void
.end method

.method private initCallDeflectStatus()V
    .locals 3

    .line 192
    nop

    .line 193
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    const-string v1, "qti.ims.call_deflect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 3

    .line 199
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const-string v1, "ImsService"

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "initSubscriptionStatus: multi-sim..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->handleRafInfoChange()V

    .line 204
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-nez v0, :cond_1

    .line 205
    const-string v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    goto :goto_0

    .line 214
    :cond_0
    const-string v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    :goto_0
    return-void
.end method

.method private isMultiModeSupported(I)Z
    .locals 2
    .param p1, "nRatMask"    # I

    .line 282
    const/16 v0, 0x4000

    .line 283
    .local v0, "nMmMask":I
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setupImsSubscriptionMap()V
    .locals 5

    .line 91
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 92
    .local v0, "variant":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v0, v2, :cond_0

    .line 94
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private switchImsPhoneByPhoneId(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 222
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    const-string v1, "ImsService"

    if-ne v0, p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UNchanged"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_0
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

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput p1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, "defaultSub":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    iget v2, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->registerForPhoneId(I)V

    .line 235
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v1

    .line 236
    .local v1, "mNumPhones":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "android:phone_id"

    const/high16 v4, 0x20000000

    if-ge v2, v1, :cond_2

    .line 237
    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq v5, v2, :cond_1

    .line 238
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 236
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    iget v4, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method private switchImsPhoneBySubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 254
    const/4 v0, 0x0

    .line 260
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 266
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 271
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchImsPhoneBySubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    .line 273
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateMMTelImsFeature$0$ImsService()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 126
    const-class v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ImsService"

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "Returning mQtiBinder for ImsService binding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mQtiBinder:Landroid/os/IBinder;

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.telephony.ims.compat.ImsService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "Returning mImsServiceController for ImsService binding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onCreate()V

    .line 104
    const-string v0, "ImsService"

    const-string v1, "ImsService created!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v2, v0, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->setupImsSubscriptionMap()V

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, "defaultSub":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 118
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initSubscriptionStatus()V

    .line 121
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initCallDeflectStatus()V

    .line 122
    return-void
.end method

.method public onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 138
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/compat/feature/MMTelFeature;

    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 2
    .param p1, "slotId"    # I

    .line 146
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 147
    if-nez p1, :cond_0

    .line 151
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$ImsService$lXe9ZbyWqZ709gWV8ntA6y-ajLw;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/-$$Lambda$ImsService$lXe9ZbyWqZ709gWV8ntA6y-ajLw;-><init>(Lorg/codeaurora/ims/ImsService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubSlotMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/compat/feature/MMTelFeature;

    return-object v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 166
    const-string v0, "ImsService"

    const-string v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onDestroy()V

    .line 171
    return-void
.end method
