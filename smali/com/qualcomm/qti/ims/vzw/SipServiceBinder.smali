.class public Lcom/qualcomm/qti/ims/vzw/SipServiceBinder;
.super Lverizon/net/sip/internal/ISipService$Stub;
.source "SipServiceBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lverizon/net/sip/internal/ISipService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSipSession()Lverizon/net/sip/internal/ISipSession;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableCallWaitingRules(Z)V
    .locals 0
    .param p1, "enableRule"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public getRegisterResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipSession(I)Lverizon/net/sip/internal/ISipSession;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p1, "localProfileUri"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;Lverizon/net/sip/internal/ISipSessionListener;II)Lverizon/net/sip/internal/ISipSession;
    .locals 1
    .param p1, "peerUri"    # Ljava/lang/String;
    .param p2, "listener"    # Lverizon/net/sip/internal/ISipSessionListener;
    .param p3, "type"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public mergeMediaCalls(Lverizon/net/sip/internal/ISipSession;Lverizon/net/sip/internal/ISipSession;I)Lverizon/net/sip/internal/ISipSession;
    .locals 1
    .param p1, "call1"    # Lverizon/net/sip/internal/ISipSession;
    .param p2, "call2"    # Lverizon/net/sip/internal/ISipSession;
    .param p3, "timeout"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/app/PendingIntent;Lverizon/net/sip/internal/ISipRegistrationListener;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incomingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lverizon/net/sip/internal/ISipRegistrationListener;
    .param p4, "priority"    # I

    .prologue
    .line 24
    return-void
.end method

.method public openSipDialog(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/Map;Lverizon/net/sip/internal/ISipRegistrationListener;)Lverizon/net/sip/internal/ISipSession;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Landroid/app/PendingIntent;
    .param p3, "filter"    # Ljava/util/Map;
    .param p4, "listener"    # Lverizon/net/sip/internal/ISipRegistrationListener;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetCallingListeneer(Lverizon/net/sip/internal/ISipSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lverizon/net/sip/internal/ISipSessionListener;

    .prologue
    .line 38
    return-void
.end method

.method public setCallingListener(Lverizon/net/sip/internal/ISipSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lverizon/net/sip/internal/ISipSessionListener;

    .prologue
    .line 33
    return-void
.end method

.method public setRegistrationListener(Lverizon/net/sip/internal/ISipRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lverizon/net/sip/internal/ISipRegistrationListener;

    .prologue
    .line 28
    return-void
.end method
