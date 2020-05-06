.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$activeCallSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;->val$activeCallSession:Lcom/android/ims/internal/IImsCallSession;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    :try_start_0
    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    const-string/jumbo v2, "callSessionMergeComplete()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;->val$activeCallSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "onCallSessionMergeComplete()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->-wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
