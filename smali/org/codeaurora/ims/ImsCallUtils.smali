.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 69
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
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return v0

    .line 164
    :pswitch_1
    const/4 v0, 0x0

    .line 165
    goto :goto_0

    .line 167
    :pswitch_2
    const/4 v0, 0x2

    .line 168
    goto :goto_0

    .line 170
    :pswitch_3
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 173
    :pswitch_4
    const/4 v0, 0x3

    .line 174
    goto :goto_0

    .line 177
    :pswitch_5
    const/4 v0, 0x4

    .line 178
    goto :goto_0

    .line 162
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

.method public static convertImsConfigToProto(I)I
    .locals 1
    .param p0, "config"    # I

    .prologue
    .line 294
    packed-switch p0, :pswitch_data_0

    .line 402
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 296
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 298
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 300
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 302
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 304
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 306
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 308
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 310
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 312
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 314
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 316
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 318
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 320
    :pswitch_d
    const/16 v0, 0xd

    return v0

    .line 322
    :pswitch_e
    const/16 v0, 0xe

    return v0

    .line 324
    :pswitch_f
    const/16 v0, 0xf

    return v0

    .line 326
    :pswitch_10
    const/16 v0, 0x10

    return v0

    .line 328
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 330
    :pswitch_12
    const/16 v0, 0x12

    return v0

    .line 332
    :pswitch_13
    const/16 v0, 0x13

    return v0

    .line 334
    :pswitch_14
    const/16 v0, 0x14

    return v0

    .line 336
    :pswitch_15
    const/16 v0, 0x15

    return v0

    .line 338
    :pswitch_16
    const/16 v0, 0x16

    return v0

    .line 340
    :pswitch_17
    const/16 v0, 0x17

    return v0

    .line 342
    :pswitch_18
    const/16 v0, 0x18

    return v0

    .line 344
    :pswitch_19
    const/16 v0, 0x19

    return v0

    .line 346
    :pswitch_1a
    const/16 v0, 0x1c

    return v0

    .line 348
    :pswitch_1b
    const/16 v0, 0x1d

    return v0

    .line 350
    :pswitch_1c
    const/16 v0, 0x22

    return v0

    .line 352
    :pswitch_1d
    const/16 v0, 0x1a

    return v0

    .line 354
    :pswitch_1e
    const/16 v0, 0x21

    return v0

    .line 356
    :pswitch_1f
    const/16 v0, 0x23

    return v0

    .line 358
    :pswitch_20
    const/16 v0, 0x24

    return v0

    .line 360
    :pswitch_21
    const/16 v0, 0x25

    return v0

    .line 362
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 364
    :pswitch_23
    const/16 v0, 0x27

    return v0

    .line 366
    :pswitch_24
    const/16 v0, 0x28

    return v0

    .line 368
    :pswitch_25
    const/16 v0, 0x29

    return v0

    .line 370
    :pswitch_26
    const/16 v0, 0x2a

    return v0

    .line 372
    :pswitch_27
    const/16 v0, 0x2b

    return v0

    .line 374
    :pswitch_28
    const/16 v0, 0x2c

    return v0

    .line 376
    :pswitch_29
    const/16 v0, 0x2d

    return v0

    .line 378
    :pswitch_2a
    const/16 v0, 0x2e

    return v0

    .line 380
    :pswitch_2b
    const/16 v0, 0x2f

    return v0

    .line 382
    :pswitch_2c
    const/16 v0, 0x30

    return v0

    .line 384
    :pswitch_2d
    const/16 v0, 0x31

    return v0

    .line 386
    :pswitch_2e
    const/16 v0, 0x32

    return v0

    .line 388
    :pswitch_2f
    const/16 v0, 0x33

    return v0

    .line 390
    :pswitch_30
    const/16 v0, 0x34

    return v0

    .line 392
    :pswitch_31
    const/16 v0, 0x35

    return v0

    .line 394
    :pswitch_32
    const/16 v0, 0x36

    return v0

    .line 396
    :pswitch_33
    const/16 v0, 0x37

    return v0

    .line 398
    :pswitch_34
    const/16 v0, 0x38

    return v0

    .line 400
    :pswitch_35
    const/16 v0, 0x39

    return v0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 219
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 220
    const/4 v0, 0x4

    return v0

    .line 221
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_2

    .line 222
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .prologue
    .line 185
    const/16 v0, 0xa

    .line 186
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 205
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

    .line 208
    :goto_0
    return v0

    .line 189
    :pswitch_1
    const/4 v0, 0x0

    .line 190
    goto :goto_0

    .line 193
    :pswitch_2
    const/4 v0, 0x3

    .line 194
    goto :goto_0

    .line 196
    :pswitch_3
    const/4 v0, 0x4

    .line 197
    goto :goto_0

    .line 199
    :pswitch_4
    const/4 v0, 0x1

    .line 200
    goto :goto_0

    .line 202
    :pswitch_5
    const/4 v0, 0x2

    .line 203
    goto :goto_0

    .line 186
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
    .line 212
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 213
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    .line 212
    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 215
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    .line 157
    :goto_0
    return v0

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    .line 143
    goto :goto_0

    .line 145
    :pswitch_1
    const/4 v0, 0x2

    .line 146
    goto :goto_0

    .line 148
    :pswitch_2
    const/4 v0, 0x1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_3
    const/4 v0, 0x3

    .line 152
    goto :goto_0

    .line 154
    :pswitch_4
    const/4 v0, 0x4

    .line 155
    goto :goto_0

    .line 140
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
    .line 93
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 94
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 95
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 96
    .local v4, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 98
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_2

    .line 100
    :cond_0
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    .line 98
    if-eqz v5, :cond_2

    .line 101
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 102
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

    .line 101
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 98
    .end local v2    # "dialingAvpRetry":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 102
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

    .line 110
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 111
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 112
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 113
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 115
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    if-nez v1, :cond_1

    .line 116
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 117
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 115
    if-eqz v6, :cond_1

    .line 118
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    .line 119
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

    .line 118
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    .line 115
    .end local v4    # "upgradeAvpRetry":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    :cond_2
    move v4, v5

    .line 119
    goto :goto_1
.end method

.method public static isConfigRequestValid(II)Z
    .locals 2
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .prologue
    .line 229
    const/4 v0, -0x1

    .line 230
    .local v0, "configType":I
    packed-switch p0, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 236
    :pswitch_1
    const/4 v0, 0x2

    .line 237
    goto :goto_0

    .line 287
    :pswitch_2
    const/4 v0, 0x1

    .line 288
    goto :goto_0

    .line 290
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 3
    .param p0, "callType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 38
    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 39
    if-ne p0, v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 41
    if-eqz p0, :cond_0

    .line 42
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

    .line 27
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 28
    if-ne p0, v0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 30
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 31
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 32
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

    .line 126
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 127
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 135
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
    .line 50
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 51
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 52
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 53
    .local v5, "nextCallType":I
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 55
    .local v4, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 57
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 58
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    .line 59
    .local v3, "isHoldingPaused":Z
    :goto_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_3

    .line 61
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 59
    if-eqz v6, :cond_3

    .line 62
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_2

    const/4 v2, 0x1

    .line 63
    .local v2, "isActivePaused":Z
    :goto_1
    if-nez v3, :cond_4

    .end local v2    # "isActivePaused":Z
    :goto_2
    return v2

    .line 58
    .end local v3    # "isHoldingPaused":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 55
    .end local v3    # "isHoldingPaused":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 59
    .end local v2    # "isActivePaused":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 63
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

    .line 77
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 78
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 79
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 80
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 82
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_0

    .line 84
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    .line 82
    if-eqz v5, :cond_0

    .line 85
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_0

    const/4 v4, 0x1

    .line 82
    :cond_0
    return v4
.end method
