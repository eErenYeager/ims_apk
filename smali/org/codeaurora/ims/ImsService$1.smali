.class Lorg/codeaurora/ims/ImsService$1;
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
    .line 1
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    .line 219
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 435
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "addRegistrationListener"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x1

    .line 437
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 438
    return-void
.end method

.method public close(I)V
    .locals 3
    .param p1, "serviceId"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallProfile"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 364
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 365
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v4

    .line 368
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    return-object v1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallSession"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 383
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 384
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-object v4

    .line 387
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    return-object v1
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 423
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getConfigInterface"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x1

    .line 425
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v1

    return-object v1
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 5
    .param p1, "serviceId"    # I

    .prologue
    const/4 v4, 0x0

    .line 463
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getEcbmInterface"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 465
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 466
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEcbmInterface: Invalid argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v4

    .line 469
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getPendingCallSession"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 399
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 400
    :cond_0
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v4

    .line 403
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    return-object v1
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 5
    .param p1, "serviceId"    # I

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "getUtInterface"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 412
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 413
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v4

    .line 416
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
    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "isConnected"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public isOpened(I)Z
    .locals 2
    .param p1, "serviceId"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "isOpened"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 324
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
    .line 243
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsService$1;->openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

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
    .line 271
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    .line 274
    .local v0, "serviceId":I
    if-lez v0, :cond_0

    .line 275
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 279
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    iget v2, v2, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->setPhoneId(I)V

    .line 280
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Open returns serviceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 333
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "setRegistrationListener"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsService;->-wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 335
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 336
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 339
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 340
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 473
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "setUiTTYMode"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 475
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 476
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 479
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 480
    return-void
.end method

.method public turnOffIms(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 454
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "turnOffIms"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x1

    .line 456
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 457
    return-void
.end method

.method public turnOnIms(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 444
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "turnOnIms"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "default_subscription":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 447
    return-void
.end method
