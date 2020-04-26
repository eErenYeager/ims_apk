.class public final Lorg/codeaurora/ims/ImsQmiIF$Extra;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# static fields
.field public static final EXTRAINFO_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasExtraInfo:Z

.field private hasType:Z

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3965
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3970
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 3987
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 4023
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 3965
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4083
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4077
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4002
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4003
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->clearExtraInfo()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4004
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 4005
    return-object p0
.end method

.method public clearExtraInfo()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 3996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    .line 3997
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3998
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 3979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    .line 3980
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 3981
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4026
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    if-gez v0, :cond_0

    .line 4028
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getSerializedSize()I

    .line 4030
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    return v0
.end method

.method public getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 3988
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4035
    const/4 v0, 0x0

    .line 4036
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4038
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 4037
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4040
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4042
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x2

    .line 4041
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4044
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->cachedSize:I

    .line 4045
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3972
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    return v0
.end method

.method public hasExtraInfo()Z
    .locals 1

    .prologue
    .line 3989
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3971
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4009
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
    .line 4049
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4054
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4058
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4059
    return-object p0

    .line 4056
    :sswitch_0
    return-object p0

    .line 4064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    goto :goto_0

    .line 4068
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->setExtraInfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;

    goto :goto_0

    .line 4054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setExtraInfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 3991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo:Z

    .line 3992
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->extraInfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3993
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType:Z

    .line 3975
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Extra;->type_:I

    .line 3976
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
    .line 4015
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4016
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4018
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4019
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 4014
    :cond_1
    return-void
.end method
