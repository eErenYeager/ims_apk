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

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "addRegistrationListener"

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 133
    return-void
.end method

.method public close(I)V
    .locals 2

    .line 62
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    const-string p1, "ImsService"

    const-string p2, "Invalid ServiceId "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 p1, 0x0

    return-object p1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createCallSession"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    const-string p1, "ImsService"

    const-string p2, "Invalid ServiceId "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 1

    .line 126
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "getConfigInterface"

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object p1

    return-object p1
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getEcbmInterface"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEcbmInterface: Invalid argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 0

    .line 166
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getPendingCallSession"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 108
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
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

    const-string p2, "ImsService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "getUtInterface"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 p1, 0x0

    return-object p1
.end method

.method public isConnected(III)Z
    .locals 0

    .line 66
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string p2, "isConnected"

    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 67
    const/4 p1, 0x1

    return p1
.end method

.method public isOpened(I)Z
    .locals 1

    .line 71
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "isOpened"

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 72
    const/4 p1, 0x1

    return p1
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 2

    .line 46
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "open"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsService$1;->openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p1

    return p1
.end method

.method public openForSub(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p2

    .line 52
    if-lez p2, :cond_0

    .line 53
    iget-object p3, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p3}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object p3

    new-instance p4, Ljava/lang/Integer;

    invoke-direct {p4, p2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p3

    iget-object p4, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p4}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p4

    aget-object p4, p4, p1

    invoke-virtual {p3, p4}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 56
    iget-object p3, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p3}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p3

    aget-object p1, p3, p1

    iget-object p3, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    iget p3, p3, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setPhoneId(I)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Open returns serviceId "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ImsService"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return p2
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "setRegistrationListener"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 78
    if-nez v0, :cond_0

    .line 79
    const-string p1, "ImsService"

    const-string p2, "Invalid ServiceId "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 83
    :goto_0
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setUiTTYMode"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid arguments "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 163
    :goto_0
    return-void
.end method

.method public turnOffIms(I)V
    .locals 2

    .line 141
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "turnOffIms"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 143
    return-void
.end method

.method public turnOnIms(I)V
    .locals 2

    .line 136
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "turnOnIms"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$1;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 138
    return-void
.end method
