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

    .line 7196
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7201
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7218
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7235
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7252
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7269
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7286
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7303
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7359
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7196
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
    .line 7459
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
    .line 7453
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
    .line 7318
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7319
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7320
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7321
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7322
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7323
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7324
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7325
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7326
    return-object p0
.end method

.method public clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7262
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7263
    return-object p0
.end method

.method public clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7228
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7229
    return-object p0
.end method

.method public clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7296
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7297
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7313
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7314
    return-object p0
.end method

.method public clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7279
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7280
    return-object p0
.end method

.method public clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7245
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7246
    return-object p0
.end method

.method public clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .prologue
    .line 7210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7211
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7212
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7362
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 7364
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSerializedSize()I

    .line 7366
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7253
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7219
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7287
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 7305
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 7271
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7371
    const/4 v0, 0x0

    .line 7372
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7374
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 7373
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7376
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7378
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 7377
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7380
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7382
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7381
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7384
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7386
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 7385
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7388
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7390
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v1

    const/4 v2, 0x5

    .line 7389
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7392
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7394
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 7393
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7396
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7398
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v1

    const/4 v2, 0x7

    .line 7397
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7400
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7401
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7236
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7202
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 7254
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    return v0
.end method

.method public hasFromAddress()Z
    .locals 1

    .prologue
    .line 7220
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 7288
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 7304
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 7270
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 7237
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    return v0
.end method

.method public hasToAddress()Z
    .locals 1

    .prologue
    .line 7203
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7330
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
    .line 7404
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
    .line 7409
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7410
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7414
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7415
    return-object p0

    .line 7412
    :sswitch_0
    return-object p0

    .line 7420
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7424
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7428
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7432
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7436
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7440
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7444
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_0

    .line 7410
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
    .line 7256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7257
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7258
    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7223
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7224
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7291
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7292
    return-object p0
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7308
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7309
    return-object p0
.end method

.method public setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7274
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7275
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7240
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7241
    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7206
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7207
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
    .line 7336
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7337
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7339
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7340
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7342
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7343
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7345
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7346
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7348
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7349
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7351
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7352
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7354
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7355
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7357
    :cond_6
    return-void
.end method
