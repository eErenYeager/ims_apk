.class Lcom/qualcomm/ims/vt/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static final CAMERA_TYPE_CAMERA2:I = 0x1

.field public static final CAMERA_TYPE_IMS_CAMERA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCall_CameraManager"

.field private static sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final sCameraType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraType:I

    .line 28
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 29
    return-void
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/qualcomm/ims/vt/CameraManager;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 36
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "VideoCall_CameraManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string/jumbo v0, "VideoCall_CameraManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method static open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open cameraid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " listener= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/CameraManager;->log(Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v2, v2, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v2, :cond_0

    .line 43
    const-string/jumbo v2, "Error: sCameraManager.mDpm is null"

    invoke-static {v2}, Lcom/qualcomm/ims/vt/CameraManager;->loge(Ljava/lang/String;)V

    .line 44
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "DevicePolicyManager not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    const-string/jumbo v1, "Error: Listener is null"

    .line 49
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v2, "Error: Listener is null"

    invoke-static {v2}, Lcom/qualcomm/ims/vt/CameraManager;->loge(Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Error: Listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v2, v2, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    .line 55
    const-string/jumbo v3, "Camera is disabled."

    .line 54
    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    .local v0, "camera":Lcom/qualcomm/ims/vt/Camera;
    sget-object v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget v2, v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraType:I

    packed-switch v2, :pswitch_data_0

    .line 68
    .end local v0    # "camera":Lcom/qualcomm/ims/vt/Camera;
    :goto_0
    if-nez v0, :cond_3

    .line 69
    const-string/jumbo v2, "Error: Undefined camera type."

    invoke-static {v2}, Lcom/qualcomm/ims/vt/CameraManager;->loge(Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Undefined camera type."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .restart local v0    # "camera":Lcom/qualcomm/ims/vt/Camera;
    :pswitch_0
    new-instance v0, Lcom/qualcomm/ims/vt/ImsCamera;

    .end local v0    # "camera":Lcom/qualcomm/ims/vt/Camera;
    sget-object v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v2, v2, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 62
    .local v0, "camera":Lcom/qualcomm/ims/vt/Camera;
    goto :goto_0

    .line 64
    .local v0, "camera":Lcom/qualcomm/ims/vt/Camera;
    :pswitch_1
    new-instance v0, Lcom/qualcomm/ims/vt/Camera2;

    .end local v0    # "camera":Lcom/qualcomm/ims/vt/Camera;
    sget-object v2, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v2, v2, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0, p1}, Lcom/qualcomm/ims/vt/Camera2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 65
    .local v0, "camera":Lcom/qualcomm/ims/vt/Camera;
    goto :goto_0

    .line 73
    .end local v0    # "camera":Lcom/qualcomm/ims/vt/Camera;
    :cond_3
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->open()V

    .line 74
    return-object v0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
