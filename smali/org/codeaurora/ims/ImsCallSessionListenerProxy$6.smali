.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;

.field final synthetic val$srcAccessTech:I

.field final synthetic val$targetAccessTech:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 160
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$srcAccessTech:I

    iput p4, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$targetAccessTech:I

    iput-object p5, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 164
    const-string v0, "callSessionHandoverFailed()"

    :try_start_0
    const-string v1, "ImsCallSessionListenerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$srcAccessTech:I

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$targetAccessTech:I

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    .line 168
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-static {v2, v1, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->access$000(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 170
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
