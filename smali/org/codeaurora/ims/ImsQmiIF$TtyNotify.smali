.class public final Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtyNotify"
.end annotation


# static fields
.field public static final MODE_FIELD_NUMBER:I = 0x1

.field public static final USERDATA_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasMode:Z

.field private hasUserData:Z

.field private mode_:I

.field private userData_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4482
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4487
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mode_:I

    .line 4504
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->userData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4540
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->cachedSize:I

    .line 4482
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4600
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4594
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1

    .prologue
    .line 4519
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->clearMode()Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    .line 4520
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->clearUserData()Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    .line 4521
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->cachedSize:I

    .line 4522
    return-object p0
.end method

.method public clearMode()Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4496
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasMode:Z

    .line 4497
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mode_:I

    .line 4498
    return-object p0
.end method

.method public clearUserData()Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1

    .prologue
    .line 4513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasUserData:Z

    .line 4514
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->userData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4515
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4543
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->cachedSize:I

    if-gez v0, :cond_0

    .line 4545
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getSerializedSize()I

    .line 4547
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->cachedSize:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 4489
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4552
    const/4 v0, 0x0

    .line 4553
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4555
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v1

    const/4 v2, 0x1

    .line 4554
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4557
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasUserData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4559
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getUserData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x2

    .line 4558
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4561
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->cachedSize:I

    .line 4562
    return v0
.end method

.method public getUserData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 4505
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->userData_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasMode()Z
    .locals 1

    .prologue
    .line 4488
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasMode:Z

    return v0
.end method

.method public hasUserData()Z
    .locals 1

    .prologue
    .line 4506
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasUserData:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4526
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
    .line 4565
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4570
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4571
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4575
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4576
    return-object p0

    .line 4573
    :sswitch_0
    return-object p0

    .line 4581
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    goto :goto_0

    .line 4585
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setUserData(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    goto :goto_0

    .line 4571
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasMode:Z

    .line 4492
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->mode_:I

    .line 4493
    return-object p0
.end method

.method public setUserData(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 4508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasUserData:Z

    .line 4509
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->userData_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4510
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
    .line 4532
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4533
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4535
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->hasUserData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4536
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getUserData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 4538
    :cond_1
    return-void
.end method
