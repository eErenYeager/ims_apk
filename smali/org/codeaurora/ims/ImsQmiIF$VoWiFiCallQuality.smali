.class public final Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoWiFiCallQuality"
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

    .line 9358
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9363
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->quality_:I

    .line 9395
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->cachedSize:I

    .line 9358
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9447
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 9441
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .locals 1

    .line 9378
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->clearQuality()Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    .line 9379
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->cachedSize:I

    .line 9380
    return-object p0
.end method

.method public clearQuality()Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .locals 1

    .line 9372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->hasQuality:Z

    .line 9373
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->quality_:I

    .line 9374
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 9398
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->cachedSize:I

    if-gez v0, :cond_0

    .line 9400
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->getSerializedSize()I

    .line 9402
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->cachedSize:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 9365
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->quality_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9407
    const/4 v0, 0x0

    .line 9408
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->hasQuality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9409
    const/4 v1, 0x1

    .line 9410
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->getQuality()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9412
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->cachedSize:I

    .line 9413
    return v0
.end method

.method public hasQuality()Z
    .locals 1

    .line 9364
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->hasQuality:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 9384
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

    .line 9355
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9421
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9422
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 9426
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9427
    return-object p0

    .line 9432
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    .line 9436
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 9424
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .locals 1
    .param p1, "value"    # I

    .line 9367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->hasQuality:Z

    .line 9368
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->quality_:I

    .line 9369
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

    .line 9390
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->hasQuality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9391
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->getQuality()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9393
    :cond_0
    return-void
.end method
