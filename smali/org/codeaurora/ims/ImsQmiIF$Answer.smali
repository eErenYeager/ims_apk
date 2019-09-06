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

    .prologue
    const/4 v0, 0x0

    .line 3473
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3478
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    .line 3495
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    .line 3531
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    .line 3473
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

    .prologue
    .line 3591
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

    .prologue
    .line 3585
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

    .prologue
    .line 3510
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 3511
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 3512
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    .line 3513
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3487
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType:Z

    .line 3488
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    .line 3489
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3504
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation:Z

    .line 3505
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    .line 3506
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3534
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    if-gez v0, :cond_0

    .line 3536
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getSerializedSize()I

    .line 3538
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 3480
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .prologue
    .line 3497
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3543
    const/4 v0, 0x0

    .line 3544
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3546
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    .line 3545
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3548
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3550
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getPresentation()I

    move-result v1

    const/4 v2, 0x4

    .line 3549
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3552
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->cachedSize:I

    .line 3553
    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 3479
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType:Z

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .prologue
    .line 3496
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3517
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
    .line 3557
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3561
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3562
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3566
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3567
    return-object p0

    .line 3564
    :sswitch_0
    return-object p0

    .line 3572
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    goto :goto_0

    .line 3576
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    goto :goto_0

    .line 3562
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType:Z

    .line 3483
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->callType_:I

    .line 3484
    return-object p0
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation:Z

    .line 3500
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Answer;->presentation_:I

    .line 3501
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
    .line 3523
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasCallType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3524
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3526
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3527
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->getPresentation()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3522
    :cond_1
    return-void
.end method
