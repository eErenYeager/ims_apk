.class public final Lorg/codeaurora/ims/ImsQmiIF$CallModify;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallModify"
.end annotation


# static fields
.field public static final CALLDETAILS_FIELD_NUMBER:I = 0x3

.field public static final CALLINDEX_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private callIndex_:I

.field private error_:I

.field private hasCallDetails:Z

.field private hasCallIndex:Z

.field private hasError:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1546
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1551
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    .line 1568
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1588
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    .line 1628
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    .line 1546
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1698
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1692
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    .line 1603
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->clearCallIndex()Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1604
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1605
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->clearError()Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1606
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    .line 1607
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    .line 1580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails:Z

    .line 1581
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1582
    return-object p0
.end method

.method public clearCallIndex()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1560
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex:Z

    .line 1561
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    .line 1562
    return-object p0
.end method

.method public clearError()Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1597
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError:Z

    .line 1598
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    .line 1599
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1631
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    if-gez v0, :cond_0

    .line 1633
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getSerializedSize()I

    .line 1635
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getCallIndex()I
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 1590
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1640
    const/4 v0, 0x0

    .line 1641
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1643
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v1

    const/4 v2, 0x2

    .line 1642
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1645
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/4 v2, 0x3

    .line 1646
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1649
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1651
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v1

    const/4 v2, 0x4

    .line 1650
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1653
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->cachedSize:I

    .line 1654
    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 1569
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails:Z

    return v0
.end method

.method public hasCallIndex()Z
    .locals 1

    .prologue
    .line 1553
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1589
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1611
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
    .line 1658
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1663
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1667
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1668
    return-object p0

    .line 1665
    :sswitch_0
    return-object p0

    .line 1673
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    goto :goto_0

    .line 1677
    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1678
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1679
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    goto :goto_0

    .line 1683
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    goto :goto_0

    .line 1663
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 1572
    if-nez p1, :cond_0

    .line 1573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1575
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails:Z

    .line 1576
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1577
    return-object p0
.end method

.method public setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex:Z

    .line 1556
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->callIndex_:I

    .line 1557
    return-object p0
.end method

.method public setError(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError:Z

    .line 1593
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->error_:I

    .line 1594
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
    .line 1617
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1620
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1623
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1624
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1616
    :cond_2
    return-void
.end method
