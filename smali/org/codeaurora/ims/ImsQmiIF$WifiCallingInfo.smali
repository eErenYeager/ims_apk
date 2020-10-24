.class public final Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiCallingInfo"
.end annotation


# static fields
.field public static final PREFERENCE_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasPreference:Z

.field private hasStatus:Z

.field private preference_:I

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8365
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8370
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    .line 8387
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    .line 8423
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    .line 8365
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8483
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 8477
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1

    .line 8402
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 8403
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->clearPreference()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 8404
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    .line 8405
    return-object p0
.end method

.method public clearPreference()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1

    .line 8396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference:Z

    .line 8397
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    .line 8398
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1

    .line 8379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus:Z

    .line 8380
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    .line 8381
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 8426
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 8428
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getSerializedSize()I

    .line 8430
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    return v0
.end method

.method public getPreference()I
    .locals 1

    .line 8389
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8435
    const/4 v0, 0x0

    .line 8436
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8437
    const/4 v1, 0x1

    .line 8438
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8440
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8441
    const/4 v1, 0x2

    .line 8442
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getPreference()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8444
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    .line 8445
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 8372
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    return v0
.end method

.method public hasPreference()Z
    .locals 1

    .line 8388
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 8371
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 8409
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

    .line 8362
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8453
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8454
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 8458
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8459
    return-object p0

    .line 8468
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    goto :goto_1

    .line 8464
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 8465
    nop

    .line 8472
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 8456
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1
    .param p1, "value"    # I

    .line 8391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference:Z

    .line 8392
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    .line 8393
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1
    .param p1, "value"    # I

    .line 8374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus:Z

    .line 8375
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    .line 8376
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

    .line 8415
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8416
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8418
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8419
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getPreference()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8421
    :cond_1
    return-void
.end method
