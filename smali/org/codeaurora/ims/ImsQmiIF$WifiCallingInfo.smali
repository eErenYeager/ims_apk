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

    .prologue
    const/4 v0, 0x0

    .line 8382
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8387
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    .line 8404
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    .line 8440
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    .line 8382
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

    .prologue
    .line 8500
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

    .prologue
    .line 8494
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

    .prologue
    .line 8419
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 8420
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->clearPreference()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 8421
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    .line 8422
    return-object p0
.end method

.method public clearPreference()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8413
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference:Z

    .line 8414
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    .line 8415
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8396
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus:Z

    .line 8397
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    .line 8398
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8443
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 8445
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getSerializedSize()I

    .line 8447
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    return v0
.end method

.method public getPreference()I
    .locals 1

    .prologue
    .line 8406
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8452
    const/4 v0, 0x0

    .line 8453
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8455
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 8454
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 8457
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8459
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getPreference()I

    move-result v1

    const/4 v2, 0x2

    .line 8458
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8461
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->cachedSize:I

    .line 8462
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 8389
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    return v0
.end method

.method public hasPreference()Z
    .locals 1

    .prologue
    .line 8405
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 8388
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8426
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
    .line 8466
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8470
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8471
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8475
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8476
    return-object p0

    .line 8473
    :sswitch_0
    return-object p0

    .line 8481
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    goto :goto_0

    .line 8485
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    goto :goto_0

    .line 8471
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference:Z

    .line 8409
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->preference_:I

    .line 8410
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus:Z

    .line 8392
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->status_:I

    .line 8393
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
    .line 8432
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8433
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8435
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->hasPreference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8436
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->getPreference()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8431
    :cond_1
    return-void
.end method
