.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;

.field final synthetic val$suppServiceInfo:Landroid/telephony/ims/ImsSuppServiceNotification;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 436
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->val$suppServiceInfo:Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 440
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->val$suppServiceInfo:Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-interface {v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    .line 442
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    const-string v2, "callSessionSuppServiceReceived()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->access$000(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 444
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
