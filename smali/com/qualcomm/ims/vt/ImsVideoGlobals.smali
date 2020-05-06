.class public Lcom/qualcomm/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;


# instance fields
.field private mCameraController:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mMediaController:Lcom/qualcomm/ims/vt/MediaController;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "VideoCall_ImsVideoGlobals"

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    .line 19
    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 1
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 63
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;

    .line 65
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 67
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    .line 68
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    .line 70
    return-void
.end method

.method private getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    .locals 3

    .prologue
    const-class v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ImsVideoGlobals: Multiple initializaiton."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 44
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 3
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v1

    .line 31
    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Default subscription is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 33
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 38
    return-void

    .line 36
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ImsVideoGlobals: Multiple initializaiton."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method


# virtual methods
.method findSessionbyMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple Active Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method getActiveCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 95
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method

.method getActiveOrOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getCameraController()Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0
.end method

.method getMediaController()Lcom/qualcomm/ims/vt/MediaController;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    return-object v0
.end method

.method getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 88
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple Outgoing Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_0
.end method

.method getOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 2
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 49
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Active subscription is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SetActiveSub, Sub # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 58
    return-void
.end method
