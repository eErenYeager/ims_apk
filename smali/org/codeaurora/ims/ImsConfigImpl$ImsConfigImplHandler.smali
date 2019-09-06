.class Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConfigImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 81
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    :pswitch_0
    const-string/jumbo v1, "handleMessage: unhandled message"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 83
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap2(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap4(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap3(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap1(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
