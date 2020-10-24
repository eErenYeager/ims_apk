.class public final Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtpStatisticsData"
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private count_:I

.field private hasCount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8268
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8273
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    .line 8305
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    .line 8268
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8357
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 8351
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1

    .line 8288
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->clearCount()Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    .line 8289
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    .line 8290
    return-object p0
.end method

.method public clearCount()Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1

    .line 8282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount:Z

    .line 8283
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    .line 8284
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 8308
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    if-gez v0, :cond_0

    .line 8310
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getSerializedSize()I

    .line 8312
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 8274
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8317
    const/4 v0, 0x0

    .line 8318
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8319
    const/4 v1, 0x1

    .line 8320
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8322
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->cachedSize:I

    .line 8323
    return v0
.end method

.method public hasCount()Z
    .locals 1

    .line 8275
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 8294
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

    .line 8265
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8331
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8332
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 8336
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8337
    return-object p0

    .line 8342
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->setCount(I)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    .line 8346
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 8334
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setCount(I)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    .locals 1
    .param p1, "value"    # I

    .line 8277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount:Z

    .line 8278
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->count_:I

    .line 8279
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

    .line 8300
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8301
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 8303
    :cond_0
    return-void
.end method
