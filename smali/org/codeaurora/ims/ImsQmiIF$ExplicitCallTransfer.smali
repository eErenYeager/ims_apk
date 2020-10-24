.class public final Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExplicitCallTransfer"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1

.field public static final ECTTYPE_FIELD_NUMBER:I = 0x2

.field public static final TARGETADDRESS_FIELD_NUMBER:I = 0x3

.field public static final TARGETCALLID_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private ectType_:I

.field private hasCallId:Z

.field private hasEctType:Z

.field private hasTargetAddress:Z

.field private hasTargetCallId:Z

.field private targetAddress_:Ljava/lang/String;

.field private targetCallId_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9174
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9179
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    .line 9196
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    .line 9213
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    .line 9230
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    .line 9274
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    .line 9174
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9350
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 9344
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .line 9245
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9246
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearEctType()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9247
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearTargetAddress()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9248
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->clearTargetCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9249
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    .line 9250
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .line 9188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId:Z

    .line 9189
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    .line 9190
    return-object p0
.end method

.method public clearEctType()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .line 9205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType:Z

    .line 9206
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    .line 9207
    return-object p0
.end method

.method public clearTargetAddress()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .line 9222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress:Z

    .line 9223
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    .line 9224
    return-object p0
.end method

.method public clearTargetCallId()Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1

    .line 9239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId:Z

    .line 9240
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    .line 9241
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 9277
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    if-gez v0, :cond_0

    .line 9279
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getSerializedSize()I

    .line 9281
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .line 9180
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    return v0
.end method

.method public getEctType()I
    .locals 1

    .line 9198
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9286
    const/4 v0, 0x0

    .line 9287
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9288
    const/4 v1, 0x1

    .line 9289
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getCallId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9291
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9292
    const/4 v1, 0x2

    .line 9293
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getEctType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9295
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9296
    const/4 v1, 0x3

    .line 9297
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9299
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9300
    const/4 v1, 0x4

    .line 9301
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetCallId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9303
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->cachedSize:I

    .line 9304
    return v0
.end method

.method public getTargetAddress()Ljava/lang/String;
    .locals 1

    .line 9214
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCallId()I
    .locals 1

    .line 9231
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .line 9181
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId:Z

    return v0
.end method

.method public hasEctType()Z
    .locals 1

    .line 9197
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType:Z

    return v0
.end method

.method public hasTargetAddress()Z
    .locals 1

    .line 9215
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress:Z

    return v0
.end method

.method public hasTargetCallId()Z
    .locals 1

    .line 9232
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 9254
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

    .line 9171
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9312
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9313
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    .line 9317
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9318
    return-object p0

    .line 9335
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    goto :goto_1

    .line 9331
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9332
    goto :goto_1

    .line 9327
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9328
    goto :goto_1

    .line 9323
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 9324
    nop

    .line 9339
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 9315
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # I

    .line 9183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId:Z

    .line 9184
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->callId_:I

    .line 9185
    return-object p0
.end method

.method public setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # I

    .line 9200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType:Z

    .line 9201
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->ectType_:I

    .line 9202
    return-object p0
.end method

.method public setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress:Z

    .line 9218
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetAddress_:Ljava/lang/String;

    .line 9219
    return-object p0
.end method

.method public setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    .locals 1
    .param p1, "value"    # I

    .line 9234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId:Z

    .line 9235
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->targetCallId_:I

    .line 9236
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

    .line 9260
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9261
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getCallId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9263
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasEctType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9264
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getEctType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9266
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9267
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9269
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->hasTargetCallId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9270
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->getTargetCallId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9272
    :cond_3
    return-void
.end method
