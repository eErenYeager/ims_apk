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

.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x5

.field public static final FACILITYTYPE_FIELD_NUMBER:I = 0x2

.field public static final FAILURECAUSE_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumListType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;",
            ">;"
        }
    .end annotation
.end field

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private facilityType_:I

.field private failureCause_:Ljava/lang/String;

.field private hasErrorDetails:Z

.field private hasFacilityType:Z

.field private hasFailureCause:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7066
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7071
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 7088
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 7105
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 7121
    nop

    .line 7122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 7155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7206
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 7066
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

    .line 7294
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

    .line 7288
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

    .line 7138
    if-eqz p1, :cond_1

    .line 7141
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 7144
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7145
    return-object p0

    .line 7139
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .line 7173
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7174
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7175
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7176
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7177
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7178
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 7179
    return-object p0
.end method

.method public clearCbNumListType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .line 7148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    .line 7149
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .line 7167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails:Z

    .line 7168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7169
    return-object p0
.end method

.method public clearFacilityType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .line 7097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 7098
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 7099
    return-object p0
.end method

.method public clearFailureCause()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .line 7114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 7115
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 7116
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1

    .line 7080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 7081
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 7082
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 7209
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 7211
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getSerializedSize()I

    .line 7213
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    return v0
.end method

.method public getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "index"    # I

    .line 7128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method

.method public getCbNumListTypeCount()I
    .locals 1

    .line 7126
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
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;",
            ">;"
        }
    .end annotation

    .line 7124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .line 7157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getFacilityType()I
    .locals 1

    .line 7089
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    return v0
.end method

.method public getFailureCause()Ljava/lang/String;
    .locals 1

    .line 7106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 7218
    const/4 v0, 0x0

    .line 7219
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7220
    const/4 v1, 0x1

    .line 7221
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7223
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7224
    const/4 v1, 0x2

    .line 7225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7227
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7228
    const/4 v1, 0x3

    .line 7229
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7231
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 7232
    .local v2, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v3, 0x4

    .line 7233
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7234
    .end local v2    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    goto :goto_0

    .line 7235
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7236
    const/4 v1, 0x5

    .line 7237
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7239
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cachedSize:I

    .line 7240
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 7073
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .line 7156
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails:Z

    return v0
.end method

.method public hasFacilityType()Z
    .locals 1

    .line 7090
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    return v0
.end method

.method public hasFailureCause()Z
    .locals 1

    .line 7107
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 7072
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 7183
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

    .line 7063
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7248
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7249
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 7253
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7254
    return-object p0

    .line 7277
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 7278
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7279
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7280
    goto :goto_1

    .line 7271
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 7272
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7273
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->addCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7274
    goto :goto_1

    .line 7267
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7268
    goto :goto_1

    .line 7263
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7264
    goto :goto_1

    .line 7259
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 7260
    nop

    .line 7283
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 7251
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public setCbNumListType(ILorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 7131
    if-eqz p2, :cond_0

    .line 7134
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->cbNumListType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7135
    return-object p0

    .line 7132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7159
    if-eqz p1, :cond_0

    .line 7162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails:Z

    .line 7163
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 7164
    return-object p0

    .line 7160
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .line 7092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType:Z

    .line 7093
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->facilityType_:I

    .line 7094
    return-object p0
.end method

.method public setFailureCause(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause:Z

    .line 7110
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->failureCause_:Ljava/lang/String;

    .line 7111
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .locals 1
    .param p1, "value"    # I

    .line 7075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus:Z

    .line 7076
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->status_:I

    .line 7077
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7189
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7190
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7192
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFacilityType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7193
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFacilityType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7195
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7196
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7198
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 7199
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7200
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    goto :goto_0

    .line 7201
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7202
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7204
    :cond_4
    return-void
.end method
