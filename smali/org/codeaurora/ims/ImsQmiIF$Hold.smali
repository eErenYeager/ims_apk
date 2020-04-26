.class public final Lorg/codeaurora/ims/ImsQmiIF$Hold;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hold"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private hasCallId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7485
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7490
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    .line 7522
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    .line 7485
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7574
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7568
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1

    .prologue
    .line 7505
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$Hold;

    .line 7506
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    .line 7507
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7499
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId:Z

    .line 7500
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    .line 7501
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7525
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    if-gez v0, :cond_0

    .line 7527
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->getSerializedSize()I

    .line 7529
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 7491
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7534
    const/4 v0, 0x0

    .line 7535
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7537
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->getCallId()I

    move-result v1

    const/4 v2, 0x1

    .line 7536
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7539
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->cachedSize:I

    .line 7540
    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .prologue
    .line 7492
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7511
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
    .line 7544
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7548
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7549
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7553
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7554
    return-object p0

    .line 7551
    :sswitch_0
    return-object p0

    .line 7559
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    goto :goto_0

    .line 7549
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId:Z

    .line 7495
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hold;->callId_:I

    .line 7496
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
    .line 7517
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7518
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->getCallId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7516
    :cond_0
    return-void
.end method
