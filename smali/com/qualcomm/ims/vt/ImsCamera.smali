.class public Lcom/qualcomm/ims/vt/ImsCamera;
.super Lcom/qualcomm/ims/vt/Camera;
.source "ImsCamera.java"


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CAMERA_OPERATION_SUCCESS:S = 0x0s

.field private static final INVALID_SIZE:Landroid/util/Size;

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsCamera"


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mIsOpen:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 30
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsCamera;->INVALID_SIZE:Landroid/util/Size;

    .line 33
    const-string/jumbo v0, "imscamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    .line 67
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 69
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 70
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 71
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 73
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getDefaultPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/16 v2, 0x14

    .line 74
    const/4 v3, 0x2

    .line 73
    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(Landroid/util/Size;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 75
    return-void
.end method

.method private doStopPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 276
    const-string/jumbo v1, "doStopPreview"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopPreview()S

    move-result v0

    .line 278
    .local v0, "error":S
    const-string/jumbo v1, "doStopPreview"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 279
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 282
    :cond_0
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 283
    return-void
.end method

.method private doStopRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 286
    const-string/jumbo v1, "doStopRecording"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopRecording()S

    move-result v0

    .line 288
    .local v0, "error":S
    const-string/jumbo v1, "doStopRecording"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 289
    if-eqz v0, :cond_0

    .line 290
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 292
    :cond_0
    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 293
    return-void
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
    .line 389
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 390
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultPreviewSize()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    .line 92
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 93
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string/jumbo v0, "VideoCall_ImsCamera"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method private logIfError(Ljava/lang/String;S)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "error"    # S

    .prologue
    .line 449
    if-eqz p2, :cond_0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed with error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 445
    const-string/jumbo v0, "VideoCall_ImsCamera"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method public static native native_open(I)S
.end method

.method public static native native_open(ILjava/lang/String;)S
.end method

.method private setDisplayOrientation()V
    .locals 8

    .prologue
    .line 397
    iget-object v6, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    if-nez v6, :cond_0

    .line 398
    const-string/jumbo v6, "WindowManager not available"

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 399
    return-void

    .line 402
    :cond_0
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 403
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, 0x0

    .local v4, "result":I
    const/4 v0, 0x0

    .local v0, "degrees":I
    const/4 v5, 0x0

    .line 408
    .local v5, "rotation":I
    const/4 v5, 0x0

    .line 409
    packed-switch v5, :pswitch_data_0

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDisplayOrientation: Unexpected rotation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "id":I
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 428
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 429
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v4, v6, 0x168

    .line 430
    rsub-int v6, v4, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 435
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDisplayOrientation rotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, v4}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setDisplayOrientation(I)S

    move-result v1

    .line 437
    .local v1, "error":S
    const-string/jumbo v6, "setDisplayOrientation"

    invoke-direct {p0, v6, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 438
    return-void

    .line 411
    .end local v1    # "error":S
    .end local v2    # "id":I
    :pswitch_0
    const/4 v0, 0x0

    .line 412
    goto :goto_0

    .line 414
    :pswitch_1
    const/16 v0, 0x5a

    .line 415
    goto :goto_0

    .line 417
    :pswitch_2
    const/16 v0, 0xb4

    .line 418
    goto :goto_0

    .line 420
    :pswitch_3
    const/16 v0, 0x10e

    .line 421
    goto :goto_0

    .line 432
    .restart local v2    # "id":I
    :cond_1
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v6, v0

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFrameDimension(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 177
    const-string/jumbo v1, "setPreviewSize"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 182
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewSize(II)S

    move-result v0

    .line 183
    .local v0, "error":S
    const-string/jumbo v1, "setPreviewSize"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 184
    return-void
.end method

.method private setPreviewFps(I)V
    .locals 3
    .param p1, "fps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 192
    const-string/jumbo v1, "setPreviewFps"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 197
    :cond_1
    int-to-short v1, p1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewFpsRange(S)S

    move-result v0

    .line 198
    .local v0, "error":S
    const-string/jumbo v1, "setPreviewFpsRange"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 199
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string/jumbo v2, "close"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string/jumbo v2, "close: Camera is already closed."

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 124
    return-void

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_release()S

    move-result v1

    .line 134
    .local v1, "error":S
    const-string/jumbo v2, "release"

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 136
    iput-boolean v4, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 137
    iput-boolean v4, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 138
    iput-boolean v4, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 139
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 140
    return-void

    .line 129
    .end local v1    # "error":S
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close: Failed to close camera preview/recording, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

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
    .line 220
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_getMaxZoom()I

    move-result v0

    .line 225
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMaxZoom result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 226
    int-to-float v1, v0

    return v1
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public isFacingFront()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 238
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 239
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFacingFront info.facing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 241
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_isZoomSupported()Z

    move-result v0

    .line 211
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isZoomSupported result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 212
    return v0
.end method

.method public native native_getMaxZoom()I
.end method

.method public native native_isZoomSupported()Z
.end method

.method public native native_release()S
.end method

.method public native native_setDisplayOrientation(I)S
.end method

.method public native native_setPreviewFpsRange(S)S
.end method

.method public native native_setPreviewSize(II)S
.end method

.method public native native_setPreviewTexture(Landroid/view/Surface;)S
.end method

.method public native native_setZoom(I)V
.end method

.method public native native_startPreview()S
.end method

.method public native native_startRecording()S
.end method

.method public native native_stopPreview()S
.end method

.method public native native_stopRecording()S
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v2, "open"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string/jumbo v2, "open: Camera is already open."

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, "id":I
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->native_open(ILjava/lang/String;)S

    move-result v0

    .line 109
    .local v0, "error":S
    if-eqz v0, :cond_1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open: error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->loge(Ljava/lang/String;)V

    .line 111
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2

    .line 113
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 114
    return-void
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
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconfigure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->setPreviewFps(I)V

    .line 166
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->setFrameDimension(II)V

    .line 167
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 168
    return-void
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
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 152
    :cond_0
    float-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setZoom(I)V

    .line 153
    return-void
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: Surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string/jumbo v1, "startPreview: Error camera is closed"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 252
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const-string/jumbo v1, "startPreview: Camera preview already started."

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 255
    return-void

    .line 258
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 259
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewTexture(Landroid/view/Surface;)S

    move-result v0

    .line 260
    .local v0, "error":S
    const-string/jumbo v1, "setPreviewTexture"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 262
    if-nez v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startPreview()S

    move-result v0

    .line 264
    const-string/jumbo v1, "startPreview"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->setDisplayOrientation()V

    .line 268
    if-nez v0, :cond_3

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 273
    return-void

    .line 271
    :cond_3
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 4
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecording: PreviewSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " RecordingSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v1, "startRecording: Camera recording already started."

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 324
    return-void

    .line 327
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 328
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 329
    const-string/jumbo v1, "startRecording: Preview surface is null."

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 330
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->startPreview(Landroid/view/Surface;)V

    .line 337
    :cond_2
    const-string/jumbo v1, "startRecording"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startRecording()S

    move-result v0

    .line 339
    .local v0, "error":S
    const-string/jumbo v1, "startRecording"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 340
    if-eqz v0, :cond_3

    .line 341
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 343
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 344
    return-void
.end method

.method public stopPreview()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-string/jumbo v0, "stopPreview: Camera preview already stopped."

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 302
    return-void

    .line 305
    :cond_0
    const-string/jumbo v0, "stopPreview"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    .line 311
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
    .line 351
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-string/jumbo v0, "stopRecording: Camera recording already stopped."

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 353
    return-void

    .line 356
    :cond_0
    const-string/jumbo v0, "stopRecording"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->log(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 358
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    .line 361
    :cond_1
    return-void
.end method
