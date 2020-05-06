.class public final Lorg/codeaurora/ims/ImsQmiIF$Mute;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mute"
.end annotation


# static fields
.field public static final MUTE_FLAG_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMuteFlag:Z

.field private muteFlag_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3428
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3465
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3428
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3517
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3511
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1

    .prologue
    .line 3448
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->clearMuteFlag()Lorg/codeaurora/ims/ImsQmiIF$Mute;

    .line 3449
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3450
    return-object p0
.end method

.method public clearMuteFlag()Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3442
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    .line 3443
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3444
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3468
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    if-gez v0, :cond_0

    .line 3470
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getSerializedSize()I

    .line 3472
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    return v0
.end method

.method public getMuteFlag()Z
    .locals 1

    .prologue
    .line 3434
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3477
    const/4 v0, 0x0

    .line 3478
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3480
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getMuteFlag()Z

    move-result v1

    const/4 v2, 0x1

    .line 3479
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3482
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3483
    return v0
.end method

.method public hasMuteFlag()Z
    .locals 1

    .prologue
    .line 3435
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3454
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
    .line 3486
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3491
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3492
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3496
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3497
    return-object p0

    .line 3494
    :sswitch_0
    return-object p0

    .line 3502
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->setMuteFlag(Z)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    goto :goto_0

    .line 3492
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMuteFlag(Z)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    .line 3438
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3439
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
    .line 3460
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3461
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getMuteFlag()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3463
    :cond_0
    return-void
.end method
