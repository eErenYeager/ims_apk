.class public Lorg/codeaurora/ims/ImsUtListenerProxy;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"


# instance fields
.field public mListener:Landroid/telephony/ims/ImsUtListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 0

    .line 61
    return-void
.end method

.method startThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ImsUtListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    return-void
.end method

.method public utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 119
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 121
    :cond_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 140
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 142
    :cond_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 161
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 163
    :cond_0
    return-void
.end method

.method public utConfigurationQueried(ILandroid/os/Bundle;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;ILandroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 98
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsUtListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 54
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    return-void
.end method

.method public utConfigurationUpdated(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsUtListenerProxy;I)V

    .line 36
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 38
    :cond_0
    return-void
.end method
