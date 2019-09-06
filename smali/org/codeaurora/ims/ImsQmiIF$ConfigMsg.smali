.class public final Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigMsg"
.end annotation


# static fields
.field public static final BOOLVALUE_FIELD_NUMBER:I = 0x2

.field public static final ERRORCAUSE_FIELD_NUMBER:I = 0x5

.field public static final INTVALUE_FIELD_NUMBER:I = 0x3

.field public static final ITEM_FIELD_NUMBER:I = 0x1

.field public static final STRINGVALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private boolValue_:Z

.field private cachedSize:I

.field private errorCause_:I

.field private hasBoolValue:Z

.field private hasErrorCause:Z

.field private hasIntValue:Z

.field private hasItem:Z

.field private hasStringValue:Z

.field private intValue_:I

.field private item_:I

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8508
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8513
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8530
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8547
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8564
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8581
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8629
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8508
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8713
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8707
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    .line 8596
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8597
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8598
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8599
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8600
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8601
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8602
    return-object p0
.end method

.method public clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8539
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 8540
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8541
    return-object p0
.end method

.method public clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8590
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 8591
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8592
    return-object p0
.end method

.method public clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8556
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 8557
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8558
    return-object p0
.end method

.method public clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8522
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 8523
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8524
    return-object p0
.end method

.method public clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    .line 8573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 8574
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8575
    return-object p0
.end method

.method public getBoolValue()Z
    .locals 1

    .prologue
    .line 8531
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8632
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 8634
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getSerializedSize()I

    .line 8636
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 8583
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 8548
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    return v0
.end method

.method public getItem()I
    .locals 1

    .prologue
    .line 8515
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8641
    const/4 v0, 0x0

    .line 8642
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8644
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v1

    const/4 v2, 0x1

    .line 8643
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 8646
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8648
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v1

    const/4 v2, 0x2

    .line 8647
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8650
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8652
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v1

    const/4 v2, 0x3

    .line 8651
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8654
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8656
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 8655
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8658
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8660
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v1

    const/4 v2, 0x5

    .line 8659
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8662
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8663
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8565
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .prologue
    .line 8532
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    return v0
.end method

.method public hasErrorCause()Z
    .locals 1

    .prologue
    .line 8582
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    return v0
.end method

.method public hasIntValue()Z
    .locals 1

    .prologue
    .line 8549
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    return v0
.end method

.method public hasItem()Z
    .locals 1

    .prologue
    .line 8514
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 8566
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8606
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8667
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8671
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8672
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8676
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8677
    return-object p0

    .line 8674
    :sswitch_0
    return-object p0

    .line 8682
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8686
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8690
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8694
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8698
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8672
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 8535
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8536
    return-object p0
.end method

.method public setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 8586
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8587
    return-object p0
.end method

.method public setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 8552
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8553
    return-object p0
.end method

.method public setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 8518
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8519
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 8569
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8570
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

    .prologue
    .line 8612
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8613
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8615
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8616
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8618
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8619
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 8621
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8622
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8624
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8625
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8611
    :cond_4
    return-void
.end method
