.class Lorg/codeaurora/ims/ImsService$2;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsService;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsService;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsService;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$2;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsService;->handleMessage(Landroid/os/Message;)V

    .line 118
    return-void
.end method
