.class public final Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VolteUserPref"
.end annotation


# static fields
.field public static final MODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMode:Z

.field private mode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10082
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10087
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mode_:I

    .line 10119
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->cachedSize:I

    .line 10082
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10171
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10165
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .locals 1

    .prologue
    .line 10102
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->clearMode()Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    .line 10103
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->cachedSize:I

    .line 10104
    return-object p0
.end method

.method public clearMode()Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10096
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->hasMode:Z

    .line 10097
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mode_:I

    .line 10098
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10122
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->cachedSize:I

    if-gez v0, :cond_0

    .line 10124
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->getSerializedSize()I

    .line 10126
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->cachedSize:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 10089
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10131
    const/4 v0, 0x0

    .line 10132
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->hasMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10134
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->getMode()I

    move-result v1

    const/4 v2, 0x1

    .line 10133
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 10136
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->cachedSize:I

    .line 10137
    return v0
.end method

.method public hasMode()Z
    .locals 1

    .prologue
    .line 10088
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->hasMode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10108
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
    .line 10141
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10146
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10150
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10151
    return-object p0

    .line 10148
    :sswitch_0
    return-object p0

    .line 10156
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    goto :goto_0

    .line 10146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMode(I)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->hasMode:Z

    .line 10092
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->mode_:I

    .line 10093
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
    .line 10114
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->hasMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10115
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 10113
    :cond_0
    return-void
.end method
