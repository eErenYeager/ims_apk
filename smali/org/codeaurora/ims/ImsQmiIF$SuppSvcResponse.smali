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

    .line 6684
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6689
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 6706
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 6723
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 6740
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 6739
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 6800
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 6684
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
    .line 6878
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
    .line 6872
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
    .line 6756
    if-nez p1, :cond_0

    .line 6757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6759
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 6762
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6763
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 6771
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6772
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6773
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6774
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 6775
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 6776
    return-object p0
.end method

.method public clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 6766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 6767
    return-object p0
.end method

.method public clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6715
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 6716
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 6717
    return-object p0
.end method

.method public clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    .line 6732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 6733
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 6734
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6698
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 6699
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 6700
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6803
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 6805
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getSerializedSize()I

    .line 6807
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    return v0
.end method

.method public getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6746
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method

.method public getCbNumListTypeCount()I
    .locals 1

    .prologue
    .line 6744
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
    .line 6742
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    return-object v0
.end method

.method public getFacilityType()I
    .locals 1

    .prologue
    .line 6707
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    return v0
.end method

.method public getFailureCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6724
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6812
    const/4 v2, 0x0

    .line 6813
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6815
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    .line 6814
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x0

    .line 6817
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6819
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v3

    const/4 v4, 0x2

    .line 6818
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 6821
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6823
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 6822
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6825
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

    .line 6827
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v3, 0x4

    .line 6826
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 6829
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_3
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 6830
    return v2
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 6691
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    return v0
.end method

.method public hasFacilityType()Z
    .locals 1

    .prologue
    .line 6708
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    return v0
.end method

.method public hasFailureCause()Z
    .locals 1

    .prologue
    .line 6725
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 6690
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6780
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6833
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
    .line 6838
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6839
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6843
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6844
    return-object p0

    .line 6841
    :sswitch_0
    return-object p0

    .line 6849
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6853
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6857
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6861
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 6862
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6863
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->addCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    goto :goto_0

    .line 6839
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
    .line 6749
    if-nez p2, :cond_0

    .line 6750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6752
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6753
    return-object p0
.end method

.method public setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 6711
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 6712
    return-object p0
.end method

.method public setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 6728
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 6729
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 6694
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 6695
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
    .line 6786
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6787
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6789
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6790
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6792
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6793
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6795
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

    .line 6796
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 6798
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_3
    return-void
.end method
