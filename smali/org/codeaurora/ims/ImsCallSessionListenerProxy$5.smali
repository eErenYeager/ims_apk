.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
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
    .param p2, "val$session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "val$srcAccessTech"    # I
    .param p4, "val$targetAccessTech"    # I
    .param p5, "val$reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$srcAccessTech:I

    iput p4, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$targetAccessTech:I

    iput-object p5, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 150
    :try_start_0
    const-string/jumbo v1, "callSessionHandover()"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$srcAccessTech:I

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$targetAccessTech:I

    .line 152
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 151
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "callSessionHandover()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->-wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
