.class Lcom/qualcomm/ims/vt/Camera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateListener;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/Camera2;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/Camera2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/Camera2;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisconnected: CameraDevice is disconnected, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap2(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 455
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: CameraDevice is disconnected, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap2(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 461
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOpened: CameraDevice is opened, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap2(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->-set0(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 450
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->-set2(Lcom/qualcomm/ims/vt/Camera2;I)I

    .line 451
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$1;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap1(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 447
    return-void
.end method
