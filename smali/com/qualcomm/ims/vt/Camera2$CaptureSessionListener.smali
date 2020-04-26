.class Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateListener;
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
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/Camera2;
    .param p2, "v"    # I

    .prologue
    .line 678
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateListener;-><init>()V

    .line 679
    iput p2, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    .line 678
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigureFailed: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-get0(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap2(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->-set1(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 697
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap0(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-get0(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->-wrap3(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap1(Lcom/qualcomm/ims/vt/Camera2;)V

    goto :goto_0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigured: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-get0(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap2(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->-set1(Lcom/qualcomm/ims/vt/Camera2;Z)Z

    .line 686
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap0(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-get0(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->-wrap4(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-wrap1(Lcom/qualcomm/ims/vt/Camera2;)V

    goto :goto_0
.end method
