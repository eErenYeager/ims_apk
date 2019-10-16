.class public Lorg/codeaurora/ims/ImsService$imsMMTelFeature;
.super Landroid/telephony/ims/compat/feature/MMTelFeature;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "imsMMTelFeature"
.end annotation


# static fields
.field private static final serviceClass:I = 0x1


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mySlotId:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsService;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsService;Landroid/content/Context;I)V
    .locals 1

    .line 260
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;-><init>()V

    .line 282
    new-instance v0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature$1;-><init>(Lorg/codeaurora/ims/ImsService$imsMMTelFeature;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setContext(Landroid/content/Context;)V

    .line 262
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setSlotId(I)V

    .line 263
    iput p3, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->mySlotId:I

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlotId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->initSubscriptionStatus()V

    .line 268
    iget p2, p1, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 269
    invoke-static {p1, p3}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;I)V

    .line 271
    :cond_0
    iget p2, p1, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    const/4 v0, 0x0

    if-ne p3, p2, :cond_1

    .line 272
    invoke-static {p1}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p2

    aget-object p2, p2, v0

    iget p1, p1, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->setPhoneId(I)V

    .line 273
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setFeatureState(I)V

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFeatureState ready! slotId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setFeatureState(I)V

    .line 278
    :goto_0
    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsService$imsMMTelFeature;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->handleSimStateChanged()V

    return-void
.end method

.method private handleRafInfoChange()V
    .locals 9

    .line 336
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v0, v0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfoChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v1, v1, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Multimode stacks. Handled by DDS switch. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    return-void

    .line 343
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 344
    nop

    .line 345
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    .line 346
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 347
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 348
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRafInfoChange: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v6, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v5

    invoke-static {v6, v5}, Lorg/codeaurora/ims/ImsService;->access$400(Lorg/codeaurora/ims/ImsService;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v5, v3, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    add-int/2addr v5, v4

    iput v5, v3, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 352
    nop

    .line 345
    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Multiple Multimode stacks: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v0, v0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v0, v0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-le v0, v4, :cond_4

    .line 366
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget-boolean v0, v0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;I)V

    .line 377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iput-boolean v4, v0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    .line 380
    const-string v0, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iput v1, v0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 384
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0, v3}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;I)V

    .line 386
    :goto_1
    return-void
.end method

.method private handleSimStateChanged()V
    .locals 3

    .line 302
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->handleRafInfoChange()V

    .line 303
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v0, v0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    iget v1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->mySlotId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v1, v1, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->setPhoneId(I)V

    .line 305
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setFeatureState(I)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setFeatureState(I)V

    .line 309
    :goto_0
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 4

    .line 313
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "initSubscriptionStatus: multi-sim..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->handleRafInfoChange()V

    .line 318
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v0, v0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-nez v0, :cond_1

    .line 319
    const-string v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    goto :goto_0

    .line 328
    :cond_0
    const-string v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "addRegistrationListener"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 596
    nop

    .line 597
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 598
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 523
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 525
    if-nez v0, :cond_0

    .line 526
    const-string p1, "Invalid sessionId "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    const/4 p1, 0x0

    return-object p1

    .line 529
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    return-object p1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createCallSession"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 544
    if-nez v0, :cond_0

    .line 545
    const-string p1, "Invalid sessionId "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    const/4 p1, 0x0

    return-object p1

    .line 548
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public endSession(I)V
    .locals 2

    .line 452
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2

    .line 584
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getConfigInterface"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 585
    nop

    .line 586
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 3

    .line 635
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getEcbmInterface"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 637
    if-nez v0, :cond_0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEcbmInterface: Invalid argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2

    .line 558
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getPendingCallSession"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 560
    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 561
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid arguments "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 3

    .line 571
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getUtInterface"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 573
    if-nez v0, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x0

    return-object v0

    .line 577
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(II)Z
    .locals 0

    .line 473
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string p2, "isConnected"

    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 474
    const/4 p1, 0x1

    return p1
.end method

.method public isOpened()Z
    .locals 2

    .line 484
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "isOpened"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "removeRegistrationListener"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 607
    nop

    .line 608
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsServiceSub;->removeRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 610
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "setRegistrationListener"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 496
    if-nez v0, :cond_0

    .line 497
    const-string p1, "Invalid sessionId "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    return-void

    .line 500
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 501
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 3

    .line 645
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setUiTTYMode"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 647
    if-nez v0, :cond_0

    .line 648
    const-string p1, "Invalid arguments 1"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    return-void

    .line 651
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 652
    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "startSession"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p1

    .line 436
    if-lez p1, :cond_0

    .line 437
    iget-object p2, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsService;->access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object p2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Open returns sessionId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    return p1
.end method

.method public turnOffIms()V
    .locals 3

    .line 626
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    nop

    .line 628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 629
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .line 616
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    nop

    .line 618
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 619
    return-void
.end method
