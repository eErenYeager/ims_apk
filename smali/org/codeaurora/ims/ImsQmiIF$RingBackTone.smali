.class public final Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RingBackTone"
.end annotation


# static fields
.field public static final FLAG_FIELD_NUMBER:I = 0x1

.field public static final START:I = 0x1

.field public static final STOP:I


# instance fields
.field private cachedSize:I

.field private flag_:I

.field private hasFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3811
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3820
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 3852
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 3811
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3904
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3898
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1

    .prologue
    .line 3835
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->clearFlag()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    .line 3836
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 3837
    return-object p0
.end method

.method public clearFlag()Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3829
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    .line 3830
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 3831
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3855
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    if-gez v0, :cond_0

    .line 3857
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getSerializedSize()I

    .line 3859
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 3822
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3864
    const/4 v0, 0x0

    .line 3865
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3867
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    .line 3866
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3869
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->cachedSize:I

    .line 3870
    return v0
.end method

.method public hasFlag()Z
    .locals 1

    .prologue
    .line 3821
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3841
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
    .line 3873
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3878
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3879
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3883
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3884
    return-object p0

    .line 3881
    :sswitch_0
    return-object p0

    .line 3889
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->setFlag(I)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    goto :goto_0

    .line 3879
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFlag(I)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag:Z

    .line 3825
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->flag_:I

    .line 3826
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
    .line 3847
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3848
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3850
    :cond_0
    return-void
.end method
