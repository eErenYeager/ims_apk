.class Lorg/codeaurora/ims/ImsEcbmImpl$1;
.super Ljava/lang/Object;
.source "ImsEcbmImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

.field final synthetic val$isEntered:Z

.field final synthetic val$listener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsEcbmImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$isEntered:Z

    iput-object p3, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$isEntered:Z

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsEcbmImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException @createEcbmCallBackThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
