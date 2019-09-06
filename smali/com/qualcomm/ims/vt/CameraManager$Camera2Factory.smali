.class Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/CameraManager$IFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2Factory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/CameraManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/ims/vt/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/CameraManager;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;->this$0:Lcom/qualcomm/ims/vt/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/CameraManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/qualcomm/ims/vt/Camera2;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;->this$0:Lcom/qualcomm/ims/vt/CameraManager;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/CameraManager;->-get0(Lcom/qualcomm/ims/vt/CameraManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/qualcomm/ims/vt/Camera2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    return-object v0
.end method
