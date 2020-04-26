.class public Lorg/codeaurora/ims/ImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUtListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtListenerProxy"


# instance fields
.field public mListener:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "ImsUtListenerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method


# virtual methods
.method startThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "ImsUtListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 162
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .prologue
    .line 103
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 114
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 102
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .prologue
    .line 124
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 135
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 123
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .prologue
    .line 145
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 156
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 144
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 64
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 75
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 63
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 82
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 93
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 81
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 43
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsUtListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 54
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 42
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .prologue
    .line 25
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 26
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I)V

    .line 36
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 24
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
