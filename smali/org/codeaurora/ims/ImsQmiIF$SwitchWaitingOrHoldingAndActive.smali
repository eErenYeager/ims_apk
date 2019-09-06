.class public final Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchWaitingOrHoldingAndActive"
.end annotation


# static fields
.field public static final CALL_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private callType_:I

.field private hasCallType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3599
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3604
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    .line 3636
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    .line 3599
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3688
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3682
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1

    .prologue
    .line 3619
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    .line 3620
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    .line 3621
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3613
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType:Z

    .line 3614
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    .line 3615
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3639
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    if-gez v0, :cond_0

    .line 3641
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->getSerializedSize()I

    .line 3643
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 3606
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3648
    const/4 v0, 0x0

    .line 3649
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3651
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    .line 3650
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3653
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->cachedSize:I

    .line 3654
    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 3605
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3625
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
    .line 3658
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3663
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3667
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3668
    return-object p0

    .line 3665
    :sswitch_0
    return-object p0

    .line 3673
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    goto :goto_0

    .line 3663
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType:Z

    .line 3609
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->callType_:I

    .line 3610
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
    .line 3631
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->hasCallType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3632
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3630
    :cond_0
    return-void
.end method
