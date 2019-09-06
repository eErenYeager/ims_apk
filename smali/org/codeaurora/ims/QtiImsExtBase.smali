.class public abstract Lorg/codeaurora/ims/QtiImsExtBase;
.super Ljava/lang/Object;
.source "QtiImsExtBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    }
.end annotation


# instance fields
.field private mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;-><init>(Lorg/codeaurora/ims/QtiImsExtBase;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    return-object v0
.end method

.method protected onGetCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 148
    return-void
.end method

.method protected onGetHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 190
    return-void
.end method

.method protected onGetImsPhoneId()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, -0x1

    return v0
.end method

.method protected onGetPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 151
    return-void
.end method

.method protected onGetPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 154
    return-void
.end method

.method protected onQuerySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 171
    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 187
    return-void
.end method

.method protected onQueryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 168
    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 180
    return-void
.end method

.method protected onRegisterForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 177
    return-void
.end method

.method protected onResumePendingCall(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 161
    return-void
.end method

.method protected onSendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "deflectNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 158
    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 165
    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 144
    return-void
.end method

.method protected onSetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 194
    return-void
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 184
    return-void
.end method
