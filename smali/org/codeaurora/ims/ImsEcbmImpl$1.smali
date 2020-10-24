.class Lorg/codeaurora/ims/ImsEcbmImpl$1;
.super Ljava/lang/Object;
.source "ImsEcbmImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsEcbmImpl;->createEcbmCallBackThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

.field final synthetic val$isEntered:Z


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsEcbmImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$isEntered:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$isEntered:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsEcbmImpl;->enteredEcbm()V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsEcbmImpl;->exitedEcbm()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception @createEcbmCallBackThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsEcbmImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
