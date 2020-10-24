.class public final Lorg/codeaurora/ims/ImsQmiIF$Handover;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handover"
.end annotation


# static fields
.field public static final ERRORCODE_FIELD_NUMBER:I = 0x5

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x6

.field public static final HOEXTRA_FIELD_NUMBER:I = 0x4

.field public static final SRCTECH_FIELD_NUMBER:I = 0x2

.field public static final TARGETTECH_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorCode_:Ljava/lang/String;

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasHoExtra:Z

.field private hasSrcTech:Z

.field private hasTargetTech:Z

.field private hasType:Z

.field private hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

.field private srcTech_:I

.field private targetTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4515
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4520
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4537
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4554
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4571
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4591
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4608
    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4660
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4515
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4754
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 4748
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4623
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4624
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4625
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4626
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4627
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4628
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4629
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4630
    return-object p0
.end method

.method public clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    .line 4601
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4602
    return-object p0
.end method

.method public clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    .line 4618
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4619
    return-object p0
.end method

.method public clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4584
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4585
    return-object p0
.end method

.method public clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4547
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4548
    return-object p0
.end method

.method public clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4564
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4565
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .line 4529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4530
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4531
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4663
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    if-gez v0, :cond_0

    .line 4665
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSerializedSize()I

    .line 4667
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 4592
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 4609
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .line 4573
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4672
    const/4 v0, 0x0

    .line 4673
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4674
    const/4 v1, 0x1

    .line 4675
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4677
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4678
    const/4 v1, 0x2

    .line 4679
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4681
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4682
    const/4 v1, 0x3

    .line 4683
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4685
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4686
    const/4 v1, 0x4

    .line 4687
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4689
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4690
    const/4 v1, 0x5

    .line 4691
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4693
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4694
    const/4 v1, 0x6

    .line 4695
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4697
    :cond_5
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4698
    return v0
.end method

.method public getSrcTech()I
    .locals 1

    .line 4539
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    return v0
.end method

.method public getTargetTech()I
    .locals 1

    .line 4556
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 4522
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .line 4593
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .line 4610
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    return v0
.end method

.method public hasHoExtra()Z
    .locals 1

    .line 4572
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    return v0
.end method

.method public hasSrcTech()Z
    .locals 1

    .line 4538
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    return v0
.end method

.method public hasTargetTech()Z
    .locals 1

    .line 4555
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 4521
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4634
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

    .line 4512
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4706
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4707
    .local v0, "tag":I
    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    .line 4711
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4712
    return-object p0

    .line 4739
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_1

    .line 4735
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setErrorCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4736
    goto :goto_1

    .line 4729
    :cond_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    .line 4730
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4731
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4732
    goto :goto_1

    .line 4725
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4726
    goto :goto_1

    .line 4721
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4722
    goto :goto_1

    .line 4717
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4718
    nop

    .line 4743
    .end local v0    # "tag":I
    :cond_6
    :goto_1
    goto :goto_0

    .line 4709
    .restart local v0    # "tag":I
    :cond_7
    return-object p0
.end method

.method public setErrorCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    .line 4596
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4597
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    .line 4613
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4614
    return-object p0
.end method

.method public setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4575
    if-eqz p1, :cond_0

    .line 4578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4579
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4580
    return-object p0

    .line 4576
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .line 4541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4542
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4543
    return-object p0
.end method

.method public setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .line 4558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4559
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4560
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .line 4524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4525
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4526
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

    .line 4640
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4641
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4643
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4644
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4646
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4647
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4649
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4650
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4652
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4653
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4655
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4656
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4658
    :cond_5
    return-void
.end method
