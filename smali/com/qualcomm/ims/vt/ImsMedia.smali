.class Lcom/qualcomm/ims/vt/ImsMedia;
.super Landroid/os/Handler;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PARAM_READY_EVT:I = 0x1

.field public static final DATA_USAGE_EVT:I = 0x8

.field public static final DISPLAY_MODE_EVT:I = 0x5

.field public static final DPL_INIT_FAILURE:I = -0x1

.field public static final DPL_INIT_MULTIPLE:I = -0x2

.field public static final DPL_INIT_SUCCESSFUL:I = 0x0

.field private static final LOOPBACK_MODE_FPS:I = 0x14

.field private static final LOOPBACK_MODE_HEIGHT:I = 0x90

.field private static final LOOPBACK_MODE_WIDTH:I = 0xb0

.field public static final MEDIA_EVENT:I = 0x0

.field public static final PEER_RESOLUTION_CHANGE_EVT:I = 0x6

.field public static final PLAYER_START_EVENT:I = 0x3

.field public static final PLAYER_STATE_STARTED:I = 0x0

.field public static final PLAYER_STATE_STOPPED:I = 0x1

.field public static final PLAYER_STOP_EVENT:I = 0x4

.field public static final START_READY_EVT:I = 0x2

.field public static final STOP_READY_EVT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsMedia"

.field public static final VIDEO_QUALITY_EVT:I = 0x7

.field private static mInitCalledFlag:Z

.field private static mInstance:Lcom/qualcomm/ims/vt/ImsMedia;


# instance fields
.field private mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

.field private mIsMediaLoopback:Z

.field private mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private mNegotiatedFps:S

.field private mNegotiatedHeight:I

.field private mNegotiatedWidth:I

.field private mPeerHeight:I

.field private mPeerWidth:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSurface:Landroid/view/Surface;

.field private mUIOrientationMode:I

.field private mVideoQualityLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 134
    const-string/jumbo v0, "imsmedia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x140

    const/16 v1, 0xf0

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 73
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 75
    const/16 v0, 0x14

    iput-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    .line 77
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 78
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 82
    iput-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 83
    iput-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 105
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initializemIsMediaLoopback()V

    .line 106
    return-void
.end method

.method private static areSurfacesSame(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 1
    .param p0, "a"    # Landroid/view/Surface;
    .param p1, "b"    # Landroid/view/Surface;

    .prologue
    .line 423
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 424
    const/4 v0, 0x1

    return v0

    .line 425
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 426
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/Surface;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private doOnMediaEvent(I)V
    .locals 6
    .param p1, "eventId"    # I

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 372
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received unknown event id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 312
    :pswitch_1
    const-string/jumbo v0, "Received PARAM_READY_EVT. Updating negotiated values"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->updatePreviewParams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Negotiated Camera values mNegotiatedWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string/jumbo v1, " mNegotiatedHeight= "

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string/jumbo v1, " mRecordingSurface="

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 318
    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    iget-short v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    iget-object v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 319
    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 317
    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onCameraConfigChanged(IIILandroid/view/Surface;I)V

    goto :goto_0

    .line 323
    :pswitch_2
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerHeight()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 324
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerWidth()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received PEER_RESOLUTION_CHANGE_EVENT. Updating peer values mPeerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v1, " mPeerWidth="

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-interface {v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPeerResolutionChanged(II)V

    goto/16 :goto_0

    .line 332
    :pswitch_3
    const-string/jumbo v0, "Received START_READY_EVT. Camera recording can be started"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingEnabled()V

    goto/16 :goto_0

    .line 339
    :pswitch_4
    const-string/jumbo v0, "Received STOP_READY_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    invoke-interface {v0}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingDisabled()V

    goto/16 :goto_0

    .line 345
    :pswitch_5
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received DISPLAY_MODE_EVT mUIOrientationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onOrientationModeChanged(I)V

    goto/16 :goto_0

    .line 354
    :pswitch_6
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(I)V

    goto/16 :goto_0

    .line 360
    :pswitch_7
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(I)V

    goto/16 :goto_0

    .line 365
    :pswitch_8
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetVideoQualityIndication()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received VIDEO_QUALITY_EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onVideoQualityEvent(I)V

    goto/16 :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 2

    .prologue
    const-class v1, Lcom/qualcomm/ims/vt/ImsMedia;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v0}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>()V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 98
    :cond_0
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initializemIsMediaLoopback()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    const-string/jumbo v3, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "property":I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 181
    return-void

    :cond_0
    move v1, v2

    .line 180
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string/jumbo v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string/jumbo v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeGetNegotiatedFPS()S
.end method

.method private static native nativeGetNegotiatedHeight()I
.end method

.method private static native nativeGetNegotiatedWidth()I
.end method

.method private static native nativeGetPeerHeight()I
.end method

.method private static native nativeGetPeerWidth()I
.end method

.method private static native nativeGetRecordingSurface()Landroid/view/Surface;
.end method

.method private static native nativeGetUIOrientationMode()I
.end method

.method private static native nativeGetVideoQualityIndication()I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
.end method

.method private static native nativeRequestRtpDataUsage(I)I
.end method

.method private static native nativeSetCameraFacing(I)V
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;)I
.end method

.method private onDataUsageEvent(IJJ)V
    .locals 4
    .param p1, "mediaId"    # I
    .param p2, "uplink"    # J
    .param p4, "downlink"    # J

    .prologue
    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataUsageEvent mediaId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " downlink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 392
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 393
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 394
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 395
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 396
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method private registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1
    .param p1, "instance"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .prologue
    .line 296
    const-string/jumbo v0, "Registering for Media Callback Events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 298
    return-void
.end method

.method private declared-synchronized updatePreviewParams()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    .line 432
    :try_start_0
    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    if-eqz v5, :cond_0

    .line 433
    const/16 v5, 0x90

    iput v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 434
    const/16 v5, 0xb0

    iput v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 435
    const/16 v5, 0x14

    iput-short v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 436
    return v6

    .line 438
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedHeight()I

    move-result v1

    .line 439
    .local v1, "h":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedWidth()I

    move-result v4

    .line 440
    .local v4, "w":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedFPS()S

    move-result v0

    .line 441
    .local v0, "fps":S
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v2

    .line 444
    .local v2, "mode":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface()Landroid/view/Surface;

    move-result-object v3

    .line 445
    .local v3, "surface":Landroid/view/Surface;
    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    if-ne v5, v1, :cond_1

    .line 446
    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    if-eq v5, v4, :cond_2

    .line 450
    :cond_1
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 451
    iput v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 452
    iput-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    .line 453
    iput-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 454
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 455
    return v6

    .line 447
    :cond_2
    :try_start_2
    iget-short v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    if-ne v5, v0, :cond_1

    .line 448
    iget-object v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-static {v5, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->areSurfacesSame(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 445
    if-nez v5, :cond_1

    .line 449
    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v2, :cond_1

    .line 457
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    .end local v0    # "fps":S
    .end local v1    # "h":I
    .end local v2    # "mode":I
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "w":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method deInit()V
    .locals 1

    .prologue
    .line 172
    const-string/jumbo v0, "deInit called"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDeInit()V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 175
    return-void
.end method

.method public getNegotiatedFps()S
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Negotiated Fps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 240
    iget-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    return v0
.end method

.method public getNegotiatedHeight()I
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Negotiated Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    return v0
.end method

.method public getNegotiatedWidth()I
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Negotiated Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    return v0
.end method

.method public getPeerHeight()I
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Peer Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 264
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    return v0
.end method

.method public getPeerWidth()I
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Peer Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 272
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    return v0
.end method

.method public getRecordingSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RecordingSurface= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getUIOrientationMode()I
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UI Orientation Mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    return v0
.end method

.method public getVideoQualityLevel()I
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Video Quality Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received unknown msg id = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 402
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(I)V

    goto :goto_0

    .line 405
    :sswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 407
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 408
    .local v1, "mediaId":I
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 409
    .local v2, "uplink":J
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 410
    .local v4, "downlink":J
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 413
    .end local v1    # "mediaId":I
    .end local v2    # "uplink":J
    .end local v4    # "downlink":J
    :catchall_0
    move-exception v0

    .line 414
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 413
    throw v0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method init()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    sget-boolean v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeInit()I

    move-result v0

    .line 146
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init called error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return v0

    .line 149
    :pswitch_0
    sput-boolean v4, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 150
    invoke-direct {p0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    goto :goto_0

    .line 153
    :pswitch_1
    sput-boolean v3, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    goto :goto_0

    .line 156
    :pswitch_2
    sput-boolean v4, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 157
    const-string/jumbo v1, "Dpl init is called multiple times"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    .line 159
    goto :goto_0

    .line 165
    .end local v0    # "status":I
    :cond_0
    return v3

    .line 147
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaEvent(I)V
    .locals 4
    .param p1, "eventId"    # I

    .prologue
    const/4 v3, 0x0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMediaEvent eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, v3, p1, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public requestCallDataUsage(I)V
    .locals 3
    .param p1, "mediaId"    # I

    .prologue
    .line 287
    const-string/jumbo v1, "requestCallDataUsage"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 288
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRequestRtpDataUsage(I)I

    move-result v0

    .line 289
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCallDataUsage: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public sendCvoInfo(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCvoInfo orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetDeviceOrientation(I)V

    .line 186
    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 3
    .param p1, "isFacingFront"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 194
    .local v0, "facing":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraFacing isFacingFront="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraFacing(I)V

    .line 196
    return-void

    .line 193
    .end local v0    # "facing":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "facing":I
    goto :goto_0
.end method

.method public setCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 307
    return-void
.end method

.method public setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .prologue
    .line 301
    const-string/jumbo v0, "Registering for Media Listener"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 302
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 303
    return-void
.end method

.method public setSurface()V
    .locals 1

    .prologue
    .line 214
    const-string/jumbo v0, "setSurface()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "sSurface is null. So not passing it down"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 220
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "st"    # Landroid/view/Surface;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface(Surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 206
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 207
    return-void
.end method
