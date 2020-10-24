.class public final Lorg/codeaurora/ims/ImsQmiIF$Answer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Answer"
.end annotation


# static fields
.field public static final CALL_TYPE_FIELD_NUMBER:I = 0x1

.field public static final PRESENTATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callType_:I

.field private hasCallType:Z

.field private hasPresentation:Z

.field private presentation_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3456
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3461
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    .line 3478
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    .line 3514
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    .line 3456
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3574
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3568
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1

    .line 3493
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 3494
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 3495
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    .line 3496
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1

    .line 3470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType:Z

    .line 3471
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    .line 3472
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1

    .line 3487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation:Z

    .line 3488
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    .line 3489
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3517
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    if-gez v0, :cond_0

    .line 3519
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getSerializedSize()I

    .line 3521
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 3463
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .line 3480
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3526
    const/4 v0, 0x0

    .line 3527
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3528
    const/4 v1, 0x1

    .line 3529
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getCallType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3531
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3532
    const/4 v1, 0x4

    .line 3533
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getPresentation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3535
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    .line 3536
    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .line 3462
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType:Z

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .line 3479
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3500
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

    .line 3453
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3544
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3545
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 3549
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3550
    return-object p0

    .line 3559
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    goto :goto_1

    .line 3555
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 3556
    nop

    .line 3563
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 3547
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1
    .param p1, "value"    # I

    .line 3465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType:Z

    .line 3466
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    .line 3467
    return-object p0
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1
    .param p1, "value"    # I

    .line 3482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation:Z

    .line 3483
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    .line 3484
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

    .line 3506
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3507
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getCallType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3509
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3510
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getPresentation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3512
    :cond_1
    return-void
.end method
