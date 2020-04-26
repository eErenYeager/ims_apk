.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcResponse"
.end annotation


# static fields
.field public static final CBNUMLISTTYPE_FIELD_NUMBER:I = 0x4

.field public static final FACILITYTYPE_FIELD_NUMBER:I = 0x2

.field public static final FAILURECAUSE_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumListType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;",
            ">;"
        }
    .end annotation
.end field

.field private facilityType_:I

.field private failureCause_:Ljava/lang/String;

.field private hasFacilityType:Z

.field private hasFailureCause:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6511
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6516
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 6533
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 6550
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 6567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 6566
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 6627
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 6511
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6705
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6699
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    return-object v0
.end method


# virtual methods
.method public addCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .prologue
    .line 6583
    if-nez p1, :cond_0

    .line 6584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6586
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 6589
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6590
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 6598
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6599
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6600
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6601
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6602
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 6603
    return-object p0
.end method

.method public clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 6593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 6594
    return-object p0
.end method

.method public clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6542
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 6543
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 6544
    return-object p0
.end method

.method public clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 6559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 6560
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 6561
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6525
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 6526
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 6527
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6630
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 6632
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getSerializedSize()I

    .line 6634
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    return v0
.end method

.method public getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6573
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method

.method public getCbNumListTypeCount()I
    .locals 1

    .prologue
    .line 6571
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCbNumListTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6569
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    return-object v0
.end method

.method public getFacilityType()I
    .locals 1

    .prologue
    .line 6534
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    return v0
.end method

.method public getFailureCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6639
    const/4 v2, 0x0

    .line 6640
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6642
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    .line 6641
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x0

    .line 6644
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6646
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v3

    const/4 v4, 0x2

    .line 6645
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 6648
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6650
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 6649
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6652
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6654
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v3, 0x4

    .line 6653
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 6656
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_3
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 6657
    return v2
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 6518
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    return v0
.end method

.method public hasFacilityType()Z
    .locals 1

    .prologue
    .line 6535
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    return v0
.end method

.method public hasFailureCause()Z
    .locals 1

    .prologue
    .line 6552
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 6517
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6607
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
    .line 6661
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6665
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6666
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6670
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6671
    return-object p0

    .line 6668
    :sswitch_0
    return-object p0

    .line 6676
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6680
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6684
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6688
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 6689
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6690
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->addCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6666
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setCbNumListType(ILorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .prologue
    .line 6576
    if-nez p2, :cond_0

    .line 6577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6579
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6580
    return-object p0
.end method

.method public setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 6538
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 6539
    return-object p0
.end method

.method public setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 6555
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 6556
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 6521
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 6522
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6613
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6614
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6616
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6617
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6619
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6620
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6622
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6623
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 6612
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_3
    return-void
.end method
