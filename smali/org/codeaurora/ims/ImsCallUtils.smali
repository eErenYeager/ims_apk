.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static final MIN_VIDEO_CALL_PHONE_NUMBER_LENGTH:I = 0x7

.field public static final SESSION_MERGE_COMPLETED:I = 0x2

.field public static final SESSION_MERGE_FAILED:I = 0x3

.field public static final SESSION_MERGE_STARTED:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final TH_1x:I = 0x3b

.field public static final TH_LTE1:I = 0x38

.field public static final TH_LTE2:I = 0x39

.field public static final TH_LTE3:I = 0x3a

.field public static final T_EPDG_1X:I = 0x40

.field public static final T_EPDG_LTE:I = 0x3e

.field public static final T_EPDG_WIFI:I = 0x3f

.field public static final VICE_SETTING_ENABLED:I = 0x41

.field public static final VOWT_A:I = 0x3c

.field public static final VOWT_B:I = 0x3d


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 133
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
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return v0

    .line 253
    :pswitch_1
    const/4 v0, 0x0

    .line 254
    goto :goto_0

    .line 256
    :pswitch_2
    const/4 v0, 0x2

    .line 257
    goto :goto_0

    .line 259
    :pswitch_3
    const/4 v0, 0x1

    .line 260
    goto :goto_0

    .line 262
    :pswitch_4
    const/4 v0, 0x3

    .line 263
    goto :goto_0

    .line 266
    :pswitch_5
    const/4 v0, 0x4

    .line 267
    goto :goto_0

    .line 251
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
    .line 447
    packed-switch p0, :pswitch_data_0

    .line 577
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 449
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 451
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 453
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 455
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 457
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 459
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 461
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 463
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 465
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 467
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 469
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 471
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 473
    :pswitch_d
    const/16 v0, 0xd

    return v0

    .line 475
    :pswitch_e
    const/16 v0, 0xe

    return v0

    .line 477
    :pswitch_f
    const/16 v0, 0xf

    return v0

    .line 479
    :pswitch_10
    const/16 v0, 0x10

    return v0

    .line 481
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 483
    :pswitch_12
    const/16 v0, 0x12

    return v0

    .line 485
    :pswitch_13
    const/16 v0, 0x13

    return v0

    .line 487
    :pswitch_14
    const/16 v0, 0x14

    return v0

    .line 489
    :pswitch_15
    const/16 v0, 0x15

    return v0

    .line 491
    :pswitch_16
    const/16 v0, 0x16

    return v0

    .line 493
    :pswitch_17
    const/16 v0, 0x17

    return v0

    .line 495
    :pswitch_18
    const/16 v0, 0x18

    return v0

    .line 497
    :pswitch_19
    const/16 v0, 0x19

    return v0

    .line 499
    :pswitch_1a
    const/16 v0, 0x1c

    return v0

    .line 501
    :pswitch_1b
    const/16 v0, 0x1d

    return v0

    .line 503
    :pswitch_1c
    const/16 v0, 0x22

    return v0

    .line 505
    :pswitch_1d
    const/16 v0, 0x1a

    return v0

    .line 507
    :pswitch_1e
    const/16 v0, 0x21

    return v0

    .line 509
    :pswitch_1f
    const/16 v0, 0x23

    return v0

    .line 511
    :pswitch_20
    const/16 v0, 0x24

    return v0

    .line 513
    :pswitch_21
    const/16 v0, 0x25

    return v0

    .line 515
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 517
    :pswitch_23
    const/16 v0, 0x27

    return v0

    .line 519
    :pswitch_24
    const/16 v0, 0x28

    return v0

    .line 521
    :pswitch_25
    const/16 v0, 0x29

    return v0

    .line 523
    :pswitch_26
    const/16 v0, 0x2a

    return v0

    .line 525
    :pswitch_27
    const/16 v0, 0x2b

    return v0

    .line 527
    :pswitch_28
    const/16 v0, 0x2c

    return v0

    .line 529
    :pswitch_29
    const/16 v0, 0x2d

    return v0

    .line 531
    :pswitch_2a
    const/16 v0, 0x2e

    return v0

    .line 533
    :pswitch_2b
    const/16 v0, 0x2f

    return v0

    .line 535
    :pswitch_2c
    const/16 v0, 0x30

    return v0

    .line 537
    :pswitch_2d
    const/16 v0, 0x31

    return v0

    .line 539
    :pswitch_2e
    const/16 v0, 0x32

    return v0

    .line 541
    :pswitch_2f
    const/16 v0, 0x33

    return v0

    .line 543
    :pswitch_30
    const/16 v0, 0x34

    return v0

    .line 545
    :pswitch_31
    const/16 v0, 0x35

    return v0

    .line 547
    :pswitch_32
    const/16 v0, 0x36

    return v0

    .line 549
    :pswitch_33
    const/16 v0, 0x37

    return v0

    .line 551
    :pswitch_34
    const/16 v0, 0x38

    return v0

    .line 553
    :pswitch_35
    const/16 v0, 0x39

    return v0

    .line 555
    :pswitch_36
    const/16 v0, 0x3a

    return v0

    .line 557
    :pswitch_37
    const/16 v0, 0x3b

    return v0

    .line 559
    :pswitch_38
    const/16 v0, 0x3c

    return v0

    .line 561
    :pswitch_39
    const/16 v0, 0x3d

    return v0

    .line 563
    :pswitch_3a
    const/16 v0, 0x3e

    return v0

    .line 565
    :pswitch_3b
    const/16 v0, 0x3f

    return v0

    .line 567
    :pswitch_3c
    const/16 v0, 0x40

    return v0

    .line 569
    :pswitch_3d
    const/16 v0, 0x41

    return v0

    .line 571
    :pswitch_3e
    const/16 v0, 0x42

    return v0

    .line 573
    :pswitch_3f
    const/16 v0, 0x43

    return v0

    .line 575
    :pswitch_40
    const/16 v0, 0x45

    return v0

    .line 447
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
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 2
    .param p0, "error"    # I

    .prologue
    const/16 v1, 0x32

    .line 307
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 308
    const/4 v0, 0x4

    return v0

    .line 309
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_2

    .line 310
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 311
    :cond_2
    if-ne p0, v1, :cond_3

    .line 312
    return v1

    .line 314
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .prologue
    .line 273
    const/16 v0, 0xa

    .line 274
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 293
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

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return v0

    .line 277
    :pswitch_1
    const/4 v0, 0x0

    .line 278
    goto :goto_0

    .line 281
    :pswitch_2
    const/4 v0, 0x3

    .line 282
    goto :goto_0

    .line 284
    :pswitch_3
    const/4 v0, 0x4

    .line 285
    goto :goto_0

    .line 287
    :pswitch_4
    const/4 v0, 0x1

    .line 288
    goto :goto_0

    .line 290
    :pswitch_5
    const/4 v0, 0x2

    .line 291
    goto :goto_0

    .line 274
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
    .line 300
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 301
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    .line 300
    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 303
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    .line 246
    :goto_0
    return v0

    .line 231
    :pswitch_0
    const/4 v0, 0x0

    .line 232
    goto :goto_0

    .line 234
    :pswitch_1
    const/4 v0, 0x2

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    const/4 v0, 0x1

    .line 238
    goto :goto_0

    .line 240
    :pswitch_3
    const/4 v0, 0x3

    .line 241
    goto :goto_0

    .line 243
    :pswitch_4
    const/4 v0, 0x4

    .line 244
    goto :goto_0

    .line 229
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

.method public static getImsReasonInfo(Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;
    .locals 3
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    const/4 v0, 0x0

    .line 678
    .local v0, "code":I
    if-eqz p0, :cond_0

    .line 679
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1    # "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 680
    .local v1, "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lorg/codeaurora/ims/ImsRilException;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v0

    .line 684
    .end local v1    # "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_0
    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;
    .locals 3
    .param p0, "error"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .param p1, "errorCode"    # I

    .prologue
    .line 660
    if-nez p0, :cond_0

    .line 661
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    return-object v0

    .line 663
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sip error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    const-string/jumbo v2, " error string :"

    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v1

    .line 666
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-direct {v0, p1, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static getUiErrorCode(I)I
    .locals 1
    .param p0, "imsErrorCode"    # I

    .prologue
    .line 347
    const/4 v0, 0x1

    .line 348
    .local v0, "status":I
    sparse-switch p0, :sswitch_data_0

    .line 366
    const/4 v0, 0x2

    .line 368
    :goto_0
    return v0

    .line 351
    :sswitch_0
    const/4 v0, 0x1

    .line 352
    goto :goto_0

    .line 354
    :sswitch_1
    const/4 v0, 0x4

    .line 355
    goto :goto_0

    .line 357
    :sswitch_2
    const/4 v0, 0x5

    .line 358
    goto :goto_0

    .line 360
    :sswitch_3
    const/4 v0, 0x3

    .line 361
    goto :goto_0

    .line 363
    :sswitch_4
    const/16 v0, 0x32

    .line 364
    goto :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0x10 -> :sswitch_0
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getUiErrorCode(Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 338
    const/4 v1, 0x2

    .line 339
    .local v1, "status":I
    instance-of v2, p0, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 340
    check-cast v0, Lorg/codeaurora/ims/ImsRilException;

    .line 341
    .local v0, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(I)I

    move-result v1

    .line 343
    .end local v0    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return v1
.end method

.method public static hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v0, 0x0

    .line 323
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 324
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 323
    :cond_0
    return v0
.end method

.method public static isActive(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v0, 0x0

    .line 582
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 6
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 158
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 159
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 160
    .local v4, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 162
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_2

    .line 164
    :cond_0
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    .line 162
    if-eqz v5, :cond_2

    .line 165
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 166
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

    .line 165
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 162
    .end local v2    # "dialingAvpRetry":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dialingAvpRetry":Z
    goto :goto_0

    .line 166
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

    .line 174
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 175
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 176
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 177
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 179
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    if-nez v1, :cond_1

    .line 180
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 181
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 179
    if-eqz v6, :cond_1

    .line 182
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    .line 183
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

    .line 182
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    .line 179
    .end local v4    # "upgradeAvpRetry":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "upgradeAvpRetry":Z
    goto :goto_0

    :cond_2
    move v4, v5

    .line 183
    goto :goto_1
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .prologue
    .line 621
    const-string/jumbo v1, "persist.radio.atel.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "property":Ljava/lang/String;
    const-string/jumbo v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isConfigRequestValid(II)Z
    .locals 2
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .prologue
    .line 372
    const/4 v0, -0x1

    .line 373
    .local v0, "configType":I
    packed-switch p0, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 379
    :pswitch_1
    const/4 v0, 0x2

    .line 380
    goto :goto_0

    .line 440
    :pswitch_2
    const/4 v0, 0x1

    .line 441
    goto :goto_0

    .line 443
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 373
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
        :pswitch_0
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
    .end packed-switch
.end method

.method public static isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 3
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncomingVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 4
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 201
    goto :goto_0

    :cond_2
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public static isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3
    .param p0, "details"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v2, v0, :cond_0

    .line 216
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 217
    goto :goto_0

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 3
    .param p0, "callType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 103
    if-ne p0, v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 105
    if-eqz p0, :cond_0

    .line 106
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

    .line 91
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 92
    if-ne p0, v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 94
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 95
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 96
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallNumValid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 634
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 636
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Phone number invalid!"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    return v2

    .line 643
    :cond_1
    const-string/jumbo v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 647
    :cond_2
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 648
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 647
    if-nez v0, :cond_3

    .line 648
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 647
    if-nez v0, :cond_3

    .line 649
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 647
    if-eqz v0, :cond_4

    .line 650
    :cond_3
    return v2

    .line 652
    :cond_4
    return v3
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 190
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 191
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 224
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
    .line 114
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 115
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 116
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 117
    .local v5, "nextCallType":I
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 119
    .local v4, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_1

    .line 121
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 119
    if-eqz v6, :cond_1

    .line 122
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    .line 123
    .local v3, "isHoldingPaused":Z
    :goto_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v6, :cond_3

    .line 125
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 126
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_2

    const/4 v2, 0x1

    .line 127
    .local v2, "isActivePaused":Z
    :goto_1
    if-nez v3, :cond_4

    .end local v2    # "isActivePaused":Z
    :goto_2
    return v2

    .line 122
    .end local v3    # "isHoldingPaused":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 119
    .end local v3    # "isHoldingPaused":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isHoldingPaused":Z
    goto :goto_0

    .line 126
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 123
    .end local v2    # "isActivePaused":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isActivePaused":Z
    goto :goto_1

    .line 127
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

    .line 141
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 142
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 143
    .local v0, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 144
    .local v3, "nextCallType":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 146
    .local v2, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_0

    .line 148
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    .line 146
    if-eqz v5, :cond_0

    .line 149
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_0

    const/4 v4, 0x1

    .line 146
    :cond_0
    return v4
.end method

.method public static toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .prologue
    .line 605
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 613
    const/4 v0, 0x0

    return v0

    .line 607
    :pswitch_0
    const/16 v0, 0x4b1

    return v0

    .line 609
    :pswitch_1
    const/16 v0, 0x4b2

    return v0

    .line 611
    :pswitch_2
    const/16 v0, 0x4b3

    return v0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 597
    const/4 v0, -0x1

    return v0

    .line 591
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 593
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 595
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
