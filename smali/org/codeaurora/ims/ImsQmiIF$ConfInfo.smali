.class public final Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfInfo"
.end annotation


# static fields
.field public static final CONFCALLSTATE_FIELD_NUMBER:I = 0x2

.field public static final CONF_INFO_URI_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private confCallState_:I

.field private confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasConfCallState:Z

.field private hasConfInfoUri:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5857
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5862
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5879
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    .line 5915
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    .line 5857
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5975
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5969
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1

    .prologue
    .line 5894
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->clearConfInfoUri()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 5895
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->clearConfCallState()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 5896
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    .line 5897
    return-object p0
.end method

.method public clearConfCallState()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5888
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState:Z

    .line 5889
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    .line 5890
    return-object p0
.end method

.method public clearConfInfoUri()Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1

    .prologue
    .line 5871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri:Z

    .line 5872
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5873
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5918
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5920
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getSerializedSize()I

    .line 5922
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    return v0
.end method

.method public getConfCallState()I
    .locals 1

    .prologue
    .line 5881
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    return v0
.end method

.method public getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 5863
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5927
    const/4 v0, 0x0

    .line 5928
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5930
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x1

    .line 5929
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5932
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5934
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v1

    const/4 v2, 0x2

    .line 5933
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5936
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->cachedSize:I

    .line 5937
    return v0
.end method

.method public hasConfCallState()Z
    .locals 1

    .prologue
    .line 5880
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState:Z

    return v0
.end method

.method public hasConfInfoUri()Z
    .locals 1

    .prologue
    .line 5864
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5901
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
    .line 5941
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5945
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5946
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5950
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5951
    return-object p0

    .line 5948
    :sswitch_0
    return-object p0

    .line 5956
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->setConfInfoUri(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    goto :goto_0

    .line 5960
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->setConfCallState(I)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    goto :goto_0

    .line 5946
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConfCallState(I)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState:Z

    .line 5884
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confCallState_:I

    .line 5885
    return-object p0
.end method

.method public setConfInfoUri(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 5866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri:Z

    .line 5867
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->confInfoUri_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 5868
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
    .line 5907
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfInfoUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5908
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 5910
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5911
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5906
    :cond_1
    return-void
.end method
