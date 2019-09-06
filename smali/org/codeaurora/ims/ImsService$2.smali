.class Lorg/codeaurora/ims/ImsService$2;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsService;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsService;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 528
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "addRegistrationListener"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 527
    return-void
.end method

.method public close(I)V
    .locals 3
    .param p1, "serviceId"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    const/4 v4, 0x0

    .line 455
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallProfile"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 457
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 458
    const-string/jumbo v1, "Invalid ServiceId "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    return-object v4

    .line 461
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    return-object v1
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    const/4 v4, 0x0

    .line 474
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallSession"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 476
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 477
    const-string/jumbo v1, "Invalid ServiceId "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    return-object v4

    .line 480
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    return-object v1
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "getConfigInterface"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 4
    .param p1, "serviceId"    # I

    .prologue
    const/4 v3, 0x0

    .line 569
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getEcbmInterface"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 571
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEcbmInterface: Invalid argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    return-object v3

    .line 575
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 589
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 490
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getPendingCallSession"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 492
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 493
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    return-object v3

    .line 496
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    return-object v1
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 4
    .param p1, "serviceId"    # I

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getUtInterface"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 505
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    return-object v3

    .line 509
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v1

    return-object v1
.end method

.method public isConnected(III)Z
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "isConnected"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public isOpened(I)Z
    .locals 2
    .param p1, "serviceId"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "isOpened"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v0, v0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq p1, v0, :cond_0

    .line 334
    const/4 v0, 0x0

    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsService$2;->openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    return v0
.end method

.method public openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 5
    .param p1, "subscription"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 364
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    .line 367
    .local v0, "serviceId":I
    if-lez v0, :cond_0

    .line 368
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 372
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v2, v2, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->setPhoneId(I)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Open returns serviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    return v0
.end method

.method public removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "removeRegistrationListener"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->removeRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 539
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 426
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "setRegistrationListener"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 428
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 429
    const-string/jumbo v1, "Invalid ServiceId "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    return-void

    .line 432
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 425
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 579
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "setUiTTYMode"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 581
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    return-void

    .line 585
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 578
    return-void
.end method

.method public turnOffIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 559
    return-void
.end method

.method public turnOnIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 549
    return-void
.end method
