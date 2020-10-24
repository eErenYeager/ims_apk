.class Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;
.super Landroid/os/Handler;
.source "ImsMultiEndpointImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiEndpointImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMultiEndpointImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codeaurora/ims/ImsMultiEndpointImpl;
    .param p2, "x1"    # Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;

    .line 57
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 62
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "EVENT_CAPABILITIES_CHANGED"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->access$200(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/AsyncResult;)V

    .line 73
    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "EVENT_REFRESH_MULTIENDPOINT_INFO/EVENT_GET_MULTIENDPOINT_INFO"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->access$100(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/AsyncResult;)V

    .line 69
    nop

    .line 78
    :goto_0
    return-void
.end method
