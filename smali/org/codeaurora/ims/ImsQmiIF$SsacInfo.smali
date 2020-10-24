.class public final Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SsacInfo"
.end annotation


# static fields
.field public static final BARRINGFACTORVIDEOSIB_FIELD_NUMBER:I = 0x7

.field public static final BARRINGFACTORVIDEO_FIELD_NUMBER:I = 0x3

.field public static final BARRINGFACTORVOICESIB_FIELD_NUMBER:I = 0x5

.field public static final BARRINGFACTORVOICE_FIELD_NUMBER:I = 0x1

.field public static final BARRINGTIMEVIDEOSIB_FIELD_NUMBER:I = 0x8

.field public static final BARRINGTIMEVIDEO_FIELD_NUMBER:I = 0x4

.field public static final BARRINGTIMEVOICESIB_FIELD_NUMBER:I = 0x6

.field public static final BARRINGTIMEVOICE_FIELD_NUMBER:I = 0x2


# instance fields
.field private barringFactorVideoSib_:I

.field private barringFactorVideo_:I

.field private barringFactorVoiceSib_:I

.field private barringFactorVoice_:I

.field private barringTimeVideoSib_:I

.field private barringTimeVideo_:I

.field private barringTimeVoiceSib_:I

.field private barringTimeVoice_:I

.field private cachedSize:I

.field private hasBarringFactorVideo:Z

.field private hasBarringFactorVideoSib:Z

.field private hasBarringFactorVoice:Z

.field private hasBarringFactorVoiceSib:Z

.field private hasBarringTimeVideo:Z

.field private hasBarringTimeVideoSib:Z

.field private hasBarringTimeVoice:Z

.field private hasBarringTimeVoiceSib:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9455
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9460
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    .line 9477
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    .line 9494
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    .line 9511
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    .line 9528
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    .line 9545
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    .line 9562
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    .line 9579
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    .line 9639
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    .line 9455
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9747
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 9741
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9594
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9595
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9596
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9597
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9598
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9599
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9600
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9601
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9602
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    .line 9603
    return-object p0
.end method

.method public clearBarringFactorVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    .line 9504
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    .line 9505
    return-object p0
.end method

.method public clearBarringFactorVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    .line 9572
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    .line 9573
    return-object p0
.end method

.method public clearBarringFactorVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    .line 9470
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    .line 9471
    return-object p0
.end method

.method public clearBarringFactorVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    .line 9538
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    .line 9539
    return-object p0
.end method

.method public clearBarringTimeVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    .line 9521
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    .line 9522
    return-object p0
.end method

.method public clearBarringTimeVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    .line 9589
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    .line 9590
    return-object p0
.end method

.method public clearBarringTimeVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    .line 9487
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    .line 9488
    return-object p0
.end method

.method public clearBarringTimeVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .line 9554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    .line 9555
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    .line 9556
    return-object p0
.end method

.method public getBarringFactorVideo()I
    .locals 1

    .line 9495
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    return v0
.end method

.method public getBarringFactorVideoSib()I
    .locals 1

    .line 9563
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    return v0
.end method

.method public getBarringFactorVoice()I
    .locals 1

    .line 9461
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    return v0
.end method

.method public getBarringFactorVoiceSib()I
    .locals 1

    .line 9529
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    return v0
.end method

.method public getBarringTimeVideo()I
    .locals 1

    .line 9512
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    return v0
.end method

.method public getBarringTimeVideoSib()I
    .locals 1

    .line 9580
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    return v0
.end method

.method public getBarringTimeVoice()I
    .locals 1

    .line 9478
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    return v0
.end method

.method public getBarringTimeVoiceSib()I
    .locals 1

    .line 9546
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 9642
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9644
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getSerializedSize()I

    .line 9646
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9651
    const/4 v0, 0x0

    .line 9652
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9653
    const/4 v1, 0x1

    .line 9654
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9656
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9657
    const/4 v1, 0x2

    .line 9658
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoice()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9660
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9661
    const/4 v1, 0x3

    .line 9662
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideo()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9664
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9665
    const/4 v1, 0x4

    .line 9666
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideo()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9668
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9669
    const/4 v1, 0x5

    .line 9670
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoiceSib()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9672
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9673
    const/4 v1, 0x6

    .line 9674
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoiceSib()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9676
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9677
    const/4 v1, 0x7

    .line 9678
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideoSib()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9680
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9681
    const/16 v1, 0x8

    .line 9682
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideoSib()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9684
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    .line 9685
    return v0
.end method

.method public hasBarringFactorVideo()Z
    .locals 1

    .line 9496
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    return v0
.end method

.method public hasBarringFactorVideoSib()Z
    .locals 1

    .line 9564
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    return v0
.end method

.method public hasBarringFactorVoice()Z
    .locals 1

    .line 9462
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    return v0
.end method

.method public hasBarringFactorVoiceSib()Z
    .locals 1

    .line 9530
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    return v0
.end method

.method public hasBarringTimeVideo()Z
    .locals 1

    .line 9513
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    return v0
.end method

.method public hasBarringTimeVideoSib()Z
    .locals 1

    .line 9581
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    return v0
.end method

.method public hasBarringTimeVoice()Z
    .locals 1

    .line 9479
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    return v0
.end method

.method public hasBarringTimeVoiceSib()Z
    .locals 1

    .line 9547
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 9607
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9452
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9693
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9694
    .local v0, "tag":I
    if-eqz v0, :cond_9

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    const/16 v1, 0x15

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x25

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x35

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    .line 9698
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 9699
    return-object p0

    .line 9732
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_1

    .line 9728
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9729
    goto :goto_1

    .line 9724
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9725
    goto :goto_1

    .line 9720
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9721
    goto :goto_1

    .line 9716
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9717
    goto :goto_1

    .line 9712
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9713
    goto :goto_1

    .line 9708
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9709
    goto :goto_1

    .line 9704
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9705
    nop

    .line 9736
    .end local v0    # "tag":I
    :cond_8
    :goto_1
    goto :goto_0

    .line 9696
    .restart local v0    # "tag":I
    :cond_9
    return-object p0
.end method

.method public setBarringFactorVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    .line 9499
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    .line 9500
    return-object p0
.end method

.method public setBarringFactorVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    .line 9567
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    .line 9568
    return-object p0
.end method

.method public setBarringFactorVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    .line 9465
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    .line 9466
    return-object p0
.end method

.method public setBarringFactorVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    .line 9533
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    .line 9534
    return-object p0
.end method

.method public setBarringTimeVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    .line 9516
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    .line 9517
    return-object p0
.end method

.method public setBarringTimeVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    .line 9584
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    .line 9585
    return-object p0
.end method

.method public setBarringTimeVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    .line 9482
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    .line 9483
    return-object p0
.end method

.method public setBarringTimeVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    .line 9550
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    .line 9551
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9613
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9614
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9616
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9617
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoice()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9619
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9620
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideo()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9622
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9623
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideo()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9625
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9626
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoiceSib()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9628
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9629
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoiceSib()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9631
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9632
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideoSib()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9634
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9635
    const/16 v0, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideoSib()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9637
    :cond_7
    return-void
.end method
