.class Lcom/qualcomm/qti/ims/vzw/SipSessionBinder;
.super Lverizon/net/sip/internal/ISipSession$Stub;
.source "SipSessionBinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lverizon/net/sip/internal/ISipSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 34
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public continueVideo()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public endCall(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 38
    return-void
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lverizon/net/sip/internal/ICamera;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeerProfile()[Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public holdCall(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 46
    return-void
.end method

.method public holdVideo()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public makeCall(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerUri"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "extraHeaders"    # Ljava/util/Map;
    .param p4, "fromUri"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public removeLastParticipant(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 122
    return-void
.end method

.method public resumeCall(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 42
    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 114
    return-void
.end method

.method public sendSIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sip"    # Ljava/lang/String;
    .param p2, "imsServer"    # Ljava/lang/String;
    .param p3, "sipMessage"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSessionModifyRequest(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 73
    return-void
.end method

.method public sendSessionModifyResponse(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 77
    return-void
.end method

.method public setCamera(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 97
    return-void
.end method

.method public setCamera2(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 105
    return-void
.end method

.method public setListener(Lverizon/net/sip/internal/ISipSessionListener;Z)V
    .locals 0
    .param p1, "listener"    # Lverizon/net/sip/internal/ISipSessionListener;
    .param p2, "callbackImmediately"    # Z

    .prologue
    .line 25
    return-void
.end method

.method public setListener2(Ljava/util/Map;Lverizon/net/sip/internal/ISipSessionListener;)V
    .locals 0
    .param p1, "filter"    # Ljava/util/Map;
    .param p2, "listener"    # Lverizon/net/sip/internal/ISipSessionListener;

    .prologue
    .line 126
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 93
    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteIp"    # [Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public startMedia()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
