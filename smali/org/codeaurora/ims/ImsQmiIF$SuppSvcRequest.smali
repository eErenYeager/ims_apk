.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcRequest"
.end annotation


# static fields
.field public static final CBNUMLISTTYPE_FIELD_NUMBER:I = 0x3

.field public static final FACILITYTYPE_FIELD_NUMBER:I = 0x2

.field public static final OPERATIONTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

.field private facilityType_:I

.field private hasCbNumListType:Z

.field private hasFacilityType:Z

.field private hasOperationType:Z

.field private operationType_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6923
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6928
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    .line 6945
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    .line 6962
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 7005
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    .line 6923
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7075
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7069
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    .line 6980
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->clearOperationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 6981
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 6982
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 6983
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    .line 6984
    return-object p0
.end method

.method public clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    .line 6974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType:Z

    .line 6975
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6976
    return-object p0
.end method

.method public clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6954
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType:Z

    .line 6955
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    .line 6956
    return-object p0
.end method

.method public clearOperationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6937
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType:Z

    .line 6938
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    .line 6939
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7008
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 7010
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getSerializedSize()I

    .line 7012
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    return v0
.end method

.method public getCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .prologue
    .line 6964
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method

.method public getFacilityType()I
    .locals 1

    .prologue
    .line 6946
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    .prologue
    .line 6929
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7017
    const/4 v0, 0x0

    .line 7018
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7020
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getOperationType()I

    move-result v1

    const/4 v2, 0x1

    .line 7019
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7022
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7024
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getFacilityType()I

    move-result v1

    const/4 v2, 0x2

    .line 7023
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7026
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7028
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v1

    const/4 v2, 0x3

    .line 7027
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7030
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cachedSize:I

    .line 7031
    return v0
.end method

.method public hasCbNumListType()Z
    .locals 1

    .prologue
    .line 6963
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType:Z

    return v0
.end method

.method public hasFacilityType()Z
    .locals 1

    .prologue
    .line 6947
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType:Z

    return v0
.end method

.method public hasOperationType()Z
    .locals 1

    .prologue
    .line 6930
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6988
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
    .line 7035
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7039
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7040
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7044
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7045
    return-object p0

    .line 7042
    :sswitch_0
    return-object p0

    .line 7050
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    goto :goto_0

    .line 7054
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    goto :goto_0

    .line 7058
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 7059
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7060
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    goto :goto_0

    .line 7040
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .prologue
    .line 6966
    if-nez p1, :cond_0

    .line 6967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6969
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType:Z

    .line 6970
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->cbNumListType_:Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 6971
    return-object p0
.end method

.method public setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType:Z

    .line 6950
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->facilityType_:I

    .line 6951
    return-object p0
.end method

.method public setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType:Z

    .line 6933
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->operationType_:I

    .line 6934
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
    .line 6994
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasOperationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6995
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getOperationType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6997
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasFacilityType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6998
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getFacilityType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7000
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->hasCbNumListType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7001
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->getCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6993
    :cond_2
    return-void
.end method
