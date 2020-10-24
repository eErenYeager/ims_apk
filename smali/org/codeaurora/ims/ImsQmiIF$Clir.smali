.class public final Lorg/codeaurora/ims/ImsQmiIF$Clir;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clir"
.end annotation


# static fields
.field public static final PARAM_M_FIELD_NUMBER:I = 0x1

.field public static final PARAM_N_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasParamM:Z

.field private hasParamN:Z

.field private paramM_:I

.field private paramN_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3330
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3335
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 3352
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3388
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3330
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3448
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3442
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .line 3367
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->clearParamM()Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3368
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->clearParamN()Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3369
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3370
    return-object p0
.end method

.method public clearParamM()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .line 3344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    .line 3345
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 3346
    return-object p0
.end method

.method public clearParamN()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .line 3361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    .line 3362
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3363
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3391
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    if-gez v0, :cond_0

    .line 3393
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getSerializedSize()I

    .line 3395
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    return v0
.end method

.method public getParamM()I
    .locals 1

    .line 3336
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    return v0
.end method

.method public getParamN()I
    .locals 1

    .line 3353
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3400
    const/4 v0, 0x0

    .line 3401
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3402
    const/4 v1, 0x1

    .line 3403
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3405
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3406
    const/4 v1, 0x2

    .line 3407
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3409
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3410
    return v0
.end method

.method public hasParamM()Z
    .locals 1

    .line 3337
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    return v0
.end method

.method public hasParamN()Z
    .locals 1

    .line 3354
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3374
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

    .line 3327
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3418
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3419
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 3423
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3424
    return-object p0

    .line 3433
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    goto :goto_1

    .line 3429
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamM(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3430
    nop

    .line 3437
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 3421
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setParamM(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p1, "value"    # I

    .line 3339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    .line 3340
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 3341
    return-object p0
.end method

.method public setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p1, "value"    # I

    .line 3356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    .line 3357
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3358
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

    .line 3380
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3381
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3383
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3384
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3386
    :cond_1
    return-void
.end method
