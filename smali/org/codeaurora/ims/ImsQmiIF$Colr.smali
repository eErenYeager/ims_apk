.class public final Lorg/codeaurora/ims/ImsQmiIF$Colr;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colr"
.end annotation


# static fields
.field public static final PRESENTATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasPresentation:Z

.field private presentation_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2305
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2310
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2342
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2305
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2394
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2388
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    .line 2325
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 2326
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2327
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2319
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    .line 2320
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2321
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2345
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    if-gez v0, :cond_0

    .line 2347
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getSerializedSize()I

    .line 2349
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .prologue
    .line 2312
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2354
    const/4 v0, 0x0

    .line 2355
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v1

    const/4 v2, 0x1

    .line 2356
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2359
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2360
    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .prologue
    .line 2311
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2331
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
    .line 2364
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2368
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2369
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2373
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2374
    return-object p0

    .line 2371
    :sswitch_0
    return-object p0

    .line 2379
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    goto :goto_0

    .line 2369
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    .line 2315
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2316
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
    .line 2337
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2338
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2336
    :cond_0
    return-void
.end method
