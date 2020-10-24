.class Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/Camera2;


# direct methods
.method public constructor <init>(Lcom/qualcomm/ims/vt/Camera2;I)V
    .locals 0
    .param p2, "v"    # I

    .line 688
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 689
    iput p2, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    .line 690
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigureFailed: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$000(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$502(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 707
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$600(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->access$800(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$300(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 712
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$000(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->access$502(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 696
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$600(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->access$400(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->access$700(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->access$300(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 701
    :cond_1
    :goto_0
    return-void
.end method
