.class public abstract Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.super Ljava/lang/Object;
.source "ImsPhoneBaseCommands.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsPhoneCommandsInterface;


# instance fields
.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

.field protected mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mPhoneType:I

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field protected mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 47
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 50
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 63
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0
.end method

.method protected onRadioAvailable()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 121
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 126
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 130
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 180
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 183
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 250
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 252
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 91
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 93
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 228
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 230
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 217
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 219
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 141
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 146
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 150
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 161
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 166
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 170
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 101
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 106
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 110
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 75
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 79
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 81
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 239
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 241
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 202
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    .line 203
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 207
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 208
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 192
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 193
    return-void
.end method

.method protected setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    .locals 3
    .param p1, "newState"    # Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .prologue
    .line 273
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 275
    .local v0, "oldState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 277
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit v2

    .line 279
    return-void

    .line 282
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 284
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 286
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->onRadioAvailable()V

    .line 289
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 293
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 297
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 298
    :cond_4
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    .line 297
    if-eqz v1, :cond_5

    .line 300
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v2

    .line 303
    return-void

    .line 273
    .end local v0    # "oldState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 310
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 213
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 198
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 134
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 137
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 257
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 97
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 235
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 224
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 154
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 173
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 113
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 116
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 85
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 88
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 246
    return-void
.end method
