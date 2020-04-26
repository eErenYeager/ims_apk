.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return v0

    .line 158
    :pswitch_1
    const/4 v0, 0x0

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    const/4 v0, 0x2

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    const/4 v0, 0x1

    .line 165
    goto :goto_0

    .line 167
    :pswitch_4
    const/4 v0, 0x3

    .line 168
    goto :goto_0

    .line 171
    :pswitch_5
    const/4 v0, 0x4

    .line 172
    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertImsErrorStringToUiError(Ljava/lang/String;)I
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 223
    const-string/jumbo v0, "E_REJECTED_BY_REMOTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x5

    return v0

    .line 227
    :cond_0
    const-string/jumbo v0, "E_INVALID_PARAMETER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x3

    return v0

    .line 229
    :cond_1
    const-string/jumbo v0, "E_CANCELLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    return v1

    .line 231
    :cond_2
    const-string/jumbo v0, "E_UNUSED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_3
    const-string/jumbo v0, "E_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    return v1

    .line 236
    :cond_4
    const-string/jumbo v0, "E_REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    return v1

    .line 238
    :cond_5
    const-string/jumbo v0, "E_IMS_DEREGISTERED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    return v1

    .line 241
    :cond_6
    return v1
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 213
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 214
    const/4 v0, 0x4

    return v0

    .line 215
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_2

    .line 216
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .prologue
    .line 179
    const/16 v0, 0xa

    .line 180
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 199
    :pswitch_0
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return v0

    .line 183
    :pswitch_1
    const/4 v0, 0x0

    .line 184
    goto :goto_0

    .line 187
    :pswitch_2
    const/4 v0, 0x3

    .line 188
    goto :goto_0

    .line 190
    :pswitch_3
    const/4 v0, 0x4

    .line 191
    goto :goto_0

    .line 193
    :pswitch_4
    const/4 v0, 0x1

    .line 194
    goto :goto_0

    .line 196
    :pswitch_5
    const/4 v0, 0x2

    .line 197
    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .prologue
    .line 206
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 207
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    .line 206
    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 209
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    .line 151
    :goto_0
    return v0

    .line 136
    :pswitch_0
    const/4 v0, 0x0

    .line 137
    goto :goto_0

    .line 139
    :pswitch_1
    const/4 v0, 0x2

    .line 140
    goto :goto_0

    .line 142
    :pswitch_2
    const/4 v0, 0x1

    .line 143
    goto :goto_0

    .line 145
    :pswitch_3
    const/4 v0, 0x3

    .line 146
    goto :goto_0

    .line 148
    :pswitch_4
    const/4 v0, 0x4

    .line 149
    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 88
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 89
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 90
    .local v4, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 92
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_2

    .line 94
    :cond_0
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 95
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 96
    .local v2, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v5

    if-eqz v5, :cond_3

    .end local v2    # "dialingAvpRetry":Z
    :goto_1
    return v2

    .line 95
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 92
    .end local v2    # "dialingAvpRetry":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 96
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 7
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 105
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 106
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 107
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 109
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    if-nez v1, :cond_1

    .line 110
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 111
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 109
    if-eqz v6, :cond_1

    .line 112
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    .line 113
    .local v4, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v4    # "upgradeAvpRetry":Z
    :goto_1
    return v4

    .line 112
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    .line 109
    .end local v4    # "upgradeAvpRetry":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    :cond_2
    move v4, v5

    .line 113
    goto :goto_1
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 3
    .param p0, "callType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 33
    if-ne p0, v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 22
    if-ne p0, v0, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 24
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 25
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 26
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 121
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 129
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 7
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 45
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 46
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 47
    .local v5, "nextCallType":I
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 49
    .local v4, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 51
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 52
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    .line 53
    .local v3, "isHoldingPaused":Z
    :goto_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_3

    .line 55
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 53
    if-eqz v6, :cond_3

    .line 56
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_2

    const/4 v2, 0x1

    .line 57
    .local v2, "isActivePaused":Z
    :goto_1
    if-nez v3, :cond_4

    .end local v2    # "isActivePaused":Z
    :goto_2
    return v2

    .line 52
    .end local v3    # "isHoldingPaused":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 49
    .end local v3    # "isHoldingPaused":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 56
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 53
    .end local v2    # "isActivePaused":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 57
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public static isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 72
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 73
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 74
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 76
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_0

    .line 78
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    .line 76
    if-eqz v5, :cond_0

    .line 79
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_0

    const/4 v4, 0x1

    .line 76
    :cond_0
    return v4
.end method
