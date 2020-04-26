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
    .line 89
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

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
    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 330
    return-void
.end method

.method public close(I)V
    .locals 3
    .param p1, "serviceId"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallProfile"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 250
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 251
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v4

    .line 254
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

    .line 267
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallSession"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 269
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 270
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Invalid ServiceId "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v4

    .line 273
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    return-object v1
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v3, "getConfigInterface"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "getConfigInterface"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 5
    .param p1, "serviceId"    # I

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getEcbmInterface"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 362
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 363
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

    .line 364
    return-object v4

    .line 366
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getPendingCallSession"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 285
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 286
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

    .line 287
    return-object v4

    .line 289
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    return-object v1
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 6
    .param p1, "serviceId"    # I

    .prologue
    const/4 v5, 0x0

    .line 297
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v4, "getUtInterface"

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 303
    .local v1, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v1, :cond_0

    .line 304
    const-string/jumbo v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v5

    .line 298
    .end local v1    # "service":Lorg/codeaurora/ims/ImsServiceSub;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "getUtInterface"

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "service":Lorg/codeaurora/ims/ImsServiceSub;
    :cond_0
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v2

    return-object v2
.end method

.method public isConnected(III)Z
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v3, "isConnected"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "isConnected"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOpened(I)Z
    .locals 4
    .param p1, "serviceId"    # I

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v3, "isOpened"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "isOpened"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
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
    .line 141
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    .line 144
    .local v0, "serviceId":I
    if-lez v0, :cond_0

    .line 145
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

    .line 148
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 149
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrants()V

    .line 150
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

    .line 151
    return v0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 214
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 215
    const-string/jumbo v4, "setRegistrationListener"

    .line 214
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 221
    .local v1, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v1, :cond_0

    .line 222
    const-string/jumbo v2, "ImsService"

    const-string/jumbo v3, "Invalid ServiceId "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 216
    .end local v1    # "service":Lorg/codeaurora/ims/ImsServiceSub;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "setRegistrationListener"

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "service":Lorg/codeaurora/ims/ImsServiceSub;
    :cond_0
    invoke-virtual {v1, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 212
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 370
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "setUiTTYMode"

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsService;->-get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 372
    .local v0, "service":Lorg/codeaurora/ims/ImsServiceSub;
    if-nez v0, :cond_0

    .line 373
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

    .line 374
    return-void

    .line 376
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 369
    return-void
.end method

.method public turnOffIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 350
    return-void
.end method

.method public turnOnIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->-get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 340
    return-void
.end method
