.class public final Lorg/codeaurora/ims/ImsQmiIF$Handover;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handover"
.end annotation


# static fields
.field public static final ERRORCODE_FIELD_NUMBER:I = 0x5

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x6

.field public static final HOEXTRA_FIELD_NUMBER:I = 0x4

.field public static final SRCTECH_FIELD_NUMBER:I = 0x2

.field public static final TARGETTECH_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorCode_:Ljava/lang/String;

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasHoExtra:Z

.field private hasSrcTech:Z

.field private hasTargetTech:Z

.field private hasType:Z

.field private hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

.field private srcTech_:I

.field private targetTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4235
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4240
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4257
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4274
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4291
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4311
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4328
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4380
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4235
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4474
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4468
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4343
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4344
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4345
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4346
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4347
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4348
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4349
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4350
    return-object p0
.end method

.method public clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    .line 4321
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4322
    return-object p0
.end method

.method public clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    .line 4338
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4339
    return-object p0
.end method

.method public clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4304
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4305
    return-object p0
.end method

.method public clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4267
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4268
    return-object p0
.end method

.method public clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4284
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4285
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4249
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4250
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4251
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4383
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    if-gez v0, :cond_0

    .line 4385
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSerializedSize()I

    .line 4387
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4293
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4392
    const/4 v0, 0x0

    .line 4393
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4395
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 4394
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4397
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4399
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    const/4 v2, 0x2

    .line 4398
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4401
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4403
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    const/4 v2, 0x3

    .line 4402
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4405
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4407
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    const/4 v2, 0x4

    .line 4406
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4409
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4411
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 4410
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4413
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4415
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 4414
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4417
    :cond_5
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4418
    return v0
.end method

.method public getSrcTech()I
    .locals 1

    .prologue
    .line 4259
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    return v0
.end method

.method public getTargetTech()I
    .locals 1

    .prologue
    .line 4276
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4242
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 4313
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 4330
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    return v0
.end method

.method public hasHoExtra()Z
    .locals 1

    .prologue
    .line 4292
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    return v0
.end method

.method public hasSrcTech()Z
    .locals 1

    .prologue
    .line 4258
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    return v0
.end method

.method public hasTargetTech()Z
    .locals 1

    .prologue
    .line 4275
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 4241
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4354
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
    .line 4421
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4427
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4431
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4432
    return-object p0

    .line 4429
    :sswitch_0
    return-object p0

    .line 4437
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4441
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4445
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4449
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    .line 4450
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4451
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4455
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setErrorCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4459
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4427
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setErrorCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    .line 4316
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4317
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    .line 4333
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4334
    return-object p0
.end method

.method public setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .prologue
    .line 4295
    if-nez p1, :cond_0

    .line 4296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4299
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4300
    return-object p0
.end method

.method public setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4262
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4263
    return-object p0
.end method

.method public setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4279
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4280
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4245
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4246
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
    .line 4360
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4361
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4363
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4364
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4366
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4367
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4369
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4370
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4372
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4373
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4375
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4376
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4378
    :cond_5
    return-void
.end method
