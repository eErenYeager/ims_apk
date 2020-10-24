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

    .line 8491
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8496
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8513
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8530
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8547
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8564
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8612
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8491
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

    .line 8696
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

    .line 8690
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

    .line 8579
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8580
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8581
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8582
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8583
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8584
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8585
    return-object p0
.end method

.method public clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .line 8522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 8523
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8524
    return-object p0
.end method

.method public clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .line 8573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 8574
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8575
    return-object p0
.end method

.method public clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .line 8539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 8540
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8541
    return-object p0
.end method

.method public clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .line 8505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 8506
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8507
    return-object p0
.end method

.method public clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .line 8556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 8557
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8558
    return-object p0
.end method

.method public getBoolValue()Z
    .locals 1

    .line 8514
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 8615
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 8617
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getSerializedSize()I

    .line 8619
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .line 8566
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .line 8531
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    return v0
.end method

.method public getItem()I
    .locals 1

    .line 8498
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8624
    const/4 v0, 0x0

    .line 8625
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8626
    const/4 v1, 0x1

    .line 8627
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8629
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8630
    const/4 v1, 0x2

    .line 8631
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8633
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8634
    const/4 v1, 0x3

    .line 8635
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8637
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8638
    const/4 v1, 0x4

    .line 8639
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8641
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8642
    const/4 v1, 0x5

    .line 8643
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8645
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8646
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 8548
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .line 8515
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    return v0
.end method

.method public hasErrorCause()Z
    .locals 1

    .line 8565
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    return v0
.end method

.method public hasIntValue()Z
    .locals 1

    .line 8532
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    return v0
.end method

.method public hasItem()Z
    .locals 1

    .line 8497
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 8549
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 8589
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

    .line 8488
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8654
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8655
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 8659
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 8660
    return-object p0

    .line 8681
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_1

    .line 8677
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8678
    goto :goto_1

    .line 8673
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8674
    goto :goto_1

    .line 8669
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8670
    goto :goto_1

    .line 8665
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 8666
    nop

    .line 8685
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 8657
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Z

    .line 8517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 8518
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 8519
    return-object p0
.end method

.method public setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .line 8568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 8569
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 8570
    return-object p0
.end method

.method public setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .line 8534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 8535
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 8536
    return-object p0
.end method

.method public setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .line 8500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 8501
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 8502
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 8552
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 8553
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

    .line 8595
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8596
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8598
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8599
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8601
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8602
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 8604
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8605
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8607
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8608
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8610
    :cond_4
    return-void
.end method
