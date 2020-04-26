.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageDetails"
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x4

.field public static final FROMADDRESS_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x6

.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5

.field public static final SUBJECT_FIELD_NUMBER:I = 0x3

.field public static final TOADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private date_:Ljava/lang/String;

.field private fromAddress_:Ljava/lang/String;

.field private hasDate:Z

.field private hasFromAddress:Z

.field private hasMessageId:Z

.field private hasMessageType:Z

.field private hasPriority:Z

.field private hasSubject:Z

.field private hasToAddress:Z

.field private messageId_:Ljava/lang/String;

.field private messageType_:I

.field private priority_:I

.field private subject_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7023
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7028
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7045
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7062
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7079
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7096
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7130
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7186
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7023
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7286
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7280
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7145
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7146
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7147
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7148
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7149
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7150
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7151
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7152
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7153
    return-object p0
.end method

.method public clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7089
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7090
    return-object p0
.end method

.method public clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7055
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7056
    return-object p0
.end method

.method public clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7124
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7140
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7141
    return-object p0
.end method

.method public clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7106
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7107
    return-object p0
.end method

.method public clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7072
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7073
    return-object p0
.end method

.method public clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7038
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7039
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7189
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 7191
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSerializedSize()I

    .line 7193
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7080
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7046
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7114
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 7132
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 7098
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7198
    const/4 v0, 0x0

    .line 7199
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7201
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 7200
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7203
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7205
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 7204
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7207
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7209
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7208
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7211
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7213
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 7212
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7215
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7217
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v1

    const/4 v2, 0x5

    .line 7216
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7219
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7221
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 7220
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7223
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v1

    const/4 v2, 0x7

    .line 7224
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7227
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7228
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7063
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7029
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 7081
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    return v0
.end method

.method public hasFromAddress()Z
    .locals 1

    .prologue
    .line 7047
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 7115
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 7131
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 7097
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 7064
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    return v0
.end method

.method public hasToAddress()Z
    .locals 1

    .prologue
    .line 7030
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7157
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
    .line 7232
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7236
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7237
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7241
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7242
    return-object p0

    .line 7239
    :sswitch_0
    return-object p0

    .line 7247
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7251
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7255
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7259
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7263
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7267
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7271
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7237
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7084
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7085
    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7050
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7051
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7118
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7119
    return-object p0
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7135
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7136
    return-object p0
.end method

.method public setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7101
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7102
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7067
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7068
    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7033
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7034
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
    .line 7163
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7164
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7166
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7167
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7169
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7170
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7172
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7173
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7175
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7176
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7178
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7179
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7181
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7182
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7162
    :cond_6
    return-void
.end method
