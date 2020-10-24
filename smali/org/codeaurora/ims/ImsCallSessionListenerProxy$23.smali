.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$isMultiParty:Z

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 560
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput-boolean p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->val$isMultiParty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 564
    const-string v0, "callSessionMultipartyStateChanged()"

    :try_start_0
    const-string v1, "ImsCallSessionListenerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->val$isMultiParty:Z

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    goto :goto_0

    .line 566
    :catchall_0
    move-exception v1

    .line 567
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$23;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-static {v2, v1, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->access$000(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 569
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
