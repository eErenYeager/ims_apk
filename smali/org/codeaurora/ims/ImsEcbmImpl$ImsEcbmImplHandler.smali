.class Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;
.super Landroid/os/Handler;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsEcbmImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsEcbmImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsEcbmImpl;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsEcbmImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsEcbmImpl;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsEcbmImpl;Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsEcbmImpl;
    .param p2, "-this1"    # Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    const-string/jumbo v0, "ImsEcbmImpl"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string/jumbo v0, "ImsEcbmImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const-string/jumbo v0, "ImsEcbmImpl"

    const-string/jumbo v1, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsEcbmImpl;->-get0(Lorg/codeaurora/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsEcbmImpl;->-wrap0(Lorg/codeaurora/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    goto :goto_0

    .line 84
    :pswitch_1
    const-string/jumbo v0, "ImsEcbmImpl"

    const-string/jumbo v1, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsEcbmImpl;->-get0(Lorg/codeaurora/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsEcbmImpl;->-wrap0(Lorg/codeaurora/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
