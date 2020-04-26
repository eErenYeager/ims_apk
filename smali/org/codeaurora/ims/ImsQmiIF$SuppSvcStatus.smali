.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcStatus"
.end annotation


# static fields
.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6254
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6259
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    .line 6291
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    .line 6254
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6343
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6337
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1

    .prologue
    .line 6274
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 6275
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    .line 6276
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6268
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus:Z

    .line 6269
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    .line 6270
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6294
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 6296
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->getSerializedSize()I

    .line 6298
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6303
    const/4 v0, 0x0

    .line 6304
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6306
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 6305
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6308
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    .line 6309
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 6261
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 6260
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6280
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
    .line 6313
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6317
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6318
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6322
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6323
    return-object p0

    .line 6320
    :sswitch_0
    return-object p0

    .line 6328
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    goto :goto_0

    .line 6318
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus:Z

    .line 6264
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    .line 6265
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
    .line 6286
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6287
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6285
    :cond_0
    return-void
.end method
