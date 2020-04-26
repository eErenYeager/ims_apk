.class Lcom/qualcomm/ims/vt/Camera2;
.super Lcom/qualcomm/ims/vt/Camera;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/Camera2$1;,
        Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
    }
.end annotation


# static fields
.field public static final AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_REQUEST_START_NONE:I = 0x0

.field public static final CAMERA_REQUEST_START_PREVIEW:I = 0x1

.field public static final CAMERA_REQUEST_START_RECORDING:I = 0x2

.field public static final CAMERA_STATE_CLOSED:I = 0x0

.field public static final CAMERA_STATE_OPEN:I = 0x2

.field public static final CAMERA_STATE_OPENING:I = 0x1

.field private static final DBG:Z = true

.field public static final ENABLE_AV_TIMER:B = 0x1t

.field private static final GENERIC_CONSTANT_INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VideoCall_Camera2"

.field private static final VDBG:Z = true

.field private static final ZOOM_CONSTANT_NOT_SUPPORTED:I = 0x1


# instance fields
.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraFacing:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCropRegion:Landroid/graphics/Rect;

.field private mFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCreateSessionPending:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mOpenState:I

.field private mPendingStartRequest:I

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSensorOrientation:I

.field private mSessionId:I

.field private mStateListener:Landroid/hardware/camera2/CameraDevice$StateListener;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/ims/vt/Camera2;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return v0
.end method

.method static synthetic -set0(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/qualcomm/ims/vt/Camera2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    return p1
.end method

.method static synthetic -set2(Lcom/qualcomm/ims/vt/Camera2;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRequestPending()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/ims/vt/Camera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->exectutePendingRequests()V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.av_timer.use_av_timer"

    .line 47
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 46
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    sput-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 444
    new-instance v1, Lcom/qualcomm/ims/vt/Camera2$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/Camera2$1;-><init>(Lcom/qualcomm/ims/vt/Camera2;)V

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Camera2, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    .line 91
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 90
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    .line 92
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    .line 93
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 92
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Camera sensor orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cameraFacing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    .line 85
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/Camera2;->notifyOnError(I)V

    goto :goto_0
.end method

.method private abortCaptures()V
    .locals 3

    .prologue
    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abortCaptures: Aborting captures..., id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abortCaptures: Failed to abort capture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method static calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 3
    .param p0, "sensorOrientation"    # I
    .param p1, "cameraConfigIms"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .param p2, "isFacingFront"    # Z

    .prologue
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculateRotation mSensorOrientation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    const-string/jumbo v2, " cameraConfigIms="

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getOrientationMode()I

    move-result v0

    .line 589
    .local v0, "orientationMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculateRotation Portrait mode so rotating by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 591
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v1

    return v1

    .line 592
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 593
    invoke-static {p0, p1, p2}, Lcom/qualcomm/ims/vt/Camera2;->getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v1

    return v1

    .line 594
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 595
    const-string/jumbo v1, "calculateRotation Landscape mode no rotation"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 597
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private cancelSession()V
    .locals 3

    .prologue
    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelSession: Canceling session..., id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 488
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSession: Failed to stop repeating session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method private clearStartRequest()V
    .locals 2

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearStartRequest: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 633
    return-void
.end method

.method private computeBestFps(I)Landroid/util/Range;
    .locals 8
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "computeBestFps "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 371
    iget-object v5, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    .line 372
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 371
    invoke-direct {p0, v5, v7}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Range;

    .line 373
    .local v3, "fpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "computeBestFps: Available FPS Ranges: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 374
    if-eqz v3, :cond_0

    array-length v5, v3

    const/4 v7, 0x1

    if-ge v5, v7, :cond_1

    .line 375
    :cond_0
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v5

    .line 378
    :cond_1
    aget-object v0, v3, v6

    .line 379
    .local v0, "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 380
    .local v4, "minDelta":I
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v1, v3, v6

    .line 381
    .local v1, "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 382
    .local v2, "delta":I
    if-ge v2, v4, :cond_2

    .line 383
    move-object v0, v1

    .line 380
    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 387
    .end local v1    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "delta":I
    :cond_3
    return-object v0
.end method

.method private computeCropRegion(F)Landroid/graphics/Rect;
    .locals 6
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 408
    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    .line 409
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 408
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 410
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "computeCropRegion: ActiveArraySize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v5, p1

    div-float v0, v3, v4

    .local v0, "dx":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v5, p1

    div-float v1, v3, v4

    .line 412
    .local v1, "dy":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "computeCropRegion: CropRegion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 414
    return-object v2
.end method

.method private doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateListener;)V
    .locals 3
    .param p2, "l"    # Landroid/hardware/camera2/CameraCaptureSession$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "o":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 658
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    .line 660
    const-string/jumbo v1, "Only one session request is allowed."

    .line 659
    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    .line 664
    const-string/jumbo v1, "Camera device is not ready (null)."

    .line 663
    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 667
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 668
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 657
    return-void
.end method

.method private doStartPreview()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doStartPreview, surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string/jumbo v3, "Error preview surface is null"

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 541
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 542
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 543
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 545
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 546
    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 545
    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 548
    .local v1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 549
    new-instance v2, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateListener;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v1    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreview: Failed to start preview, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method private doStartRecording()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doStartRecording: Surface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string/jumbo v4, "Error preview surface is null"

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    const-string/jumbo v4, "Error recording surface is null"

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 564
    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 565
    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 566
    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 567
    iget v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    .line 568
    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isFacingFront()Z

    move-result v5

    .line 567
    invoke-static {v3, v4, v5}, Lcom/qualcomm/ims/vt/Camera2;->calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v1

    .line 569
    .local v1, "rotation":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Camera2 API rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 571
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 572
    iget-object v5, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 571
    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 572
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-direct {v4, v5, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;I)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 571
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 573
    .local v2, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 574
    new-instance v3, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v3, p0, v4}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v1    # "rotation":I
    .end local v2    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecording: Failed to start recording, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method private exectutePendingRequests()V
    .locals 3

    .prologue
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exectutePendingRequests: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 421
    :try_start_0
    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    packed-switch v1, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 423
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    .line 426
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private failIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 745
    :cond_0
    const-string/jumbo v0, "failIfClosed: Camera is closed...no operation is allowed."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 746
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method private failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 750
    if-eqz p1, :cond_0

    return-void

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "failIfSurfaceNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 753
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private genSessionId()I
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "generateSessionId: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 731
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return v0
.end method

.method private getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 437
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 438
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 5
    .param p0, "sensorOrientation"    # I
    .param p1, "cameraConfigIms"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .param p2, "isFacingFront"    # Z

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateRotation CVO mode and w<h so rotating by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 604
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v3

    return v3

    .line 610
    :cond_0
    add-int/lit8 v3, p0, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 611
    .local v2, "rotationFront":I
    add-int/lit16 v3, p0, 0x10e

    rem-int/lit16 v1, v3, 0x168

    .line 612
    .local v1, "rotationBack":I
    if-eqz p2, :cond_1

    move v0, v2

    .line 613
    .local v0, "rotation":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateRotation CVO mode and w>=h so rotating by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 614
    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v3

    return v3

    .line 612
    .end local v0    # "rotation":I
    :cond_1
    move v0, v1

    .restart local v0    # "rotation":I
    goto :goto_0
.end method

.method static getOutputConfigurationRotation(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    const/4 v0, 0x0

    .line 619
    sparse-switch p0, :sswitch_data_0

    .line 629
    return v0

    .line 621
    :sswitch_0
    return v0

    .line 623
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 625
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 627
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 739
    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOpened()Z
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpening()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 735
    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRequestPending()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 723
    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 757
    const-string/jumbo v0, "VideoCall_Camera2"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 761
    const-string/jumbo v0, "VideoCall_Camera2"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-void
.end method

.method private onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 718
    const-string/jumbo v0, "onConfigureFailed: onConfigureFailed."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 717
    return-void
.end method

.method private onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigured: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 707
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 709
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 711
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startRepeatingSession(Landroid/hardware/camera2/CaptureRequest;)V

    .line 705
    :goto_0
    return-void

    .line 713
    :cond_0
    const-string/jumbo v0, "onConfigured: Builder is null."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    const-string/jumbo v0, "reset"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 154
    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 155
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 156
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 157
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 158
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 159
    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 160
    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 161
    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 162
    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 163
    iput-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 164
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 165
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 151
    return-void
.end method

.method private restartRepeatingSession(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restartRepeatingSession: Re-starting session... id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 521
    const-string/jumbo v1, "restartRepeatingSession: Stoping repating session..."

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 523
    const-string/jumbo v1, "restartRepeatingSession: Starting repating session..."

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 516
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string/jumbo v1, "restartRepeatingSession: Session is null."

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restartRepeatingSession: Failed to start restart repeating session Ex=, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method private shallDefer()Z
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startRepeatingSession(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRepeatingSession: Starting session..., id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRepeatingSession: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 499
    :goto_0
    return-void

    .line 507
    :cond_0
    const-string/jumbo v1, "startRepeatingSession: Session is null."

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRepeatingSession: Failed to start repeating session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method private stopRepeatingSession()V
    .locals 3

    .prologue
    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRepeatingSession: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSession: Failed to stop session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    goto :goto_0
.end method

.method private updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    const/4 v2, 0x1

    .line 391
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 393
    const-string/jumbo v0, "Enabling AV timer..."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting FPS_RANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 398
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting CROP_REGION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 403
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 390
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 133
    const-string/jumbo v1, "close"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    .line 132
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "close: Failed to close camera preview/recording, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    .line 237
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 236
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMaxZoom: Failed to retrieve Max Zoom, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 240
    throw v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    .line 250
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 249
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 251
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method public isFacingFront()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 227
    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 344
    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 107
    const-string/jumbo v2, "open"

    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open: Availalbe camera IDs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Lcom/qualcomm/ims/vt/Camera$CameraException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Incorrect id, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open: camere is already opened, state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 115
    return-void

    .line 119
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    iput v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 120
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open: Failed to open camera, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->loge(Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x0

    iput v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 124
    throw v0
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconfigure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 197
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 198
    iget v0, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->computeBestFps(I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 200
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 202
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeatingSession(Landroid/hardware/camera2/CaptureRequest;)V

    .line 193
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string/jumbo v0, "Reconfiguration is deferred."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 176
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 180
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->computeCropRegion(F)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 181
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 183
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeatingSession(Landroid/hardware/camera2/CaptureRequest;)V

    .line 172
    :goto_0
    return-void

    .line 185
    :cond_2
    const-string/jumbo v0, "Setting zoom is deferred."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPreview, surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "startPreview: Preview has already started."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 263
    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 267
    const-string/jumbo v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 271
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 272
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 274
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPreview: Deferring startPreview request, currRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 276
    iput v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 258
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V

    goto :goto_0
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecording: PreviewSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " RecordingSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string/jumbo v0, "startRecording: Recording has already started."

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 305
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 309
    const-string/jumbo v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "Error recording surface is null"

    invoke-direct {p0, p2, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 313
    iput-object p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 314
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 315
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 316
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 318
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecording: Deferring startRecording request, currRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 299
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    const-string/jumbo v0, "stopPreview"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->log(Ljava/lang/String;)V

    .line 289
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 290
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 291
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    .line 286
    return-void
.end method

.method public stopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 332
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startPreview(Landroid/view/Surface;)V

    .line 330
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    goto :goto_0
.end method
