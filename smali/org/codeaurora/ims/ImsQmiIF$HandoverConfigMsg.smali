.class public final Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandoverConfigMsg"
.end annotation


# static fields
.field public static final HOCONFIG_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasHoConfig:Z

.field private hoConfig_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10179
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10184
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hoConfig_:I

    .line 10216
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->cachedSize:I

    .line 10179
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10268
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10262
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->clearHoConfig()Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    .line 10200
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->cachedSize:I

    .line 10201
    return-object p0
.end method

.method public clearHoConfig()Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    .locals 1

    .prologue
    .line 10193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig:Z

    .line 10194
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hoConfig_:I

    .line 10195
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10219
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 10221
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->getSerializedSize()I

    .line 10223
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->cachedSize:I

    return v0
.end method

.method public getHoConfig()I
    .locals 1

    .prologue
    .line 10186
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hoConfig_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10228
    const/4 v0, 0x0

    .line 10229
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10231
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->getHoConfig()I

    move-result v1

    const/4 v2, 0x1

    .line 10230
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 10233
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->cachedSize:I

    .line 10234
    return v0
.end method

.method public hasHoConfig()Z
    .locals 1

    .prologue
    .line 10185
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10205
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
    .line 10238
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10242
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10243
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10247
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10248
    return-object p0

    .line 10245
    :sswitch_0
    return-object p0

    .line 10253
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->setHoConfig(I)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    goto :goto_0

    .line 10243
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setHoConfig(I)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig:Z

    .line 10189
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hoConfig_:I

    .line 10190
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
    .line 10211
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10212
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->getHoConfig()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 10210
    :cond_0
    return-void
.end method
