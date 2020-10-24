.class public final Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCallQuality"
.end annotation


# static fields
.field public static final QUALITY_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasQuality:Z

.field private quality_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7302
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7307
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    .line 7339
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    .line 7302
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7391
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 7385
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1

    .line 7322
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->clearQuality()Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    .line 7323
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    .line 7324
    return-object p0
.end method

.method public clearQuality()Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1

    .line 7316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality:Z

    .line 7317
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    .line 7318
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 7342
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    if-gez v0, :cond_0

    .line 7344
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getSerializedSize()I

    .line 7346
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 7309
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 7351
    const/4 v0, 0x0

    .line 7352
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7353
    const/4 v1, 0x1

    .line 7354
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getQuality()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7356
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->cachedSize:I

    .line 7357
    return v0
.end method

.method public hasQuality()Z
    .locals 1

    .line 7308
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 7328
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7299
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7365
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7366
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 7370
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7371
    return-object p0

    .line 7376
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    .line 7380
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 7368
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    .locals 1
    .param p1, "value"    # I

    .line 7311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality:Z

    .line 7312
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->quality_:I

    .line 7313
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

    .line 7334
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7335
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getQuality()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7337
    :cond_0
    return-void
.end method
