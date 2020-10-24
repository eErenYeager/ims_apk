.class public final Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CbNumListType"
.end annotation


# static fields
.field public static final CB_NUM_LIST_FIELD_NUMBER:I = 0x2

.field public static final SERVICECLASS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumList;",
            ">;"
        }
    .end annotation
.end field

.field private hasServiceClass:Z

.field private serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5339
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5344
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5363
    nop

    .line 5364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    .line 5416
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    .line 5339
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5480
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 5474
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method


# virtual methods
.method public addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5380
    if-eqz p1, :cond_1

    .line 5383
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    .line 5386
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5387
    return-object p0

    .line 5381
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .line 5395
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 5396
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->clearCbNumList()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 5397
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    .line 5398
    return-object p0
.end method

.method public clearCbNumList()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .line 5390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    .line 5391
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .line 5356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass:Z

    .line 5357
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5358
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 5419
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    if-gez v0, :cond_0

    .line 5421
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getSerializedSize()I

    .line 5423
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    return v0
.end method

.method public getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1
    .param p1, "index"    # I

    .line 5370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    return-object v0
.end method

.method public getCbNumListCount()I
    .locals 1

    .line 5368
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCbNumListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumList;",
            ">;"
        }
    .end annotation

    .line 5366
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 5428
    const/4 v0, 0x0

    .line 5429
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5430
    const/4 v1, 0x1

    .line 5431
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5433
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5434
    .local v2, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    const/4 v3, 0x2

    .line 5435
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v0, v3

    .line 5436
    .end local v2    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    goto :goto_0

    .line 5437
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    .line 5438
    return v0
.end method

.method public getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .line 5346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .line 5345
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5402
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

    .line 5336
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5446
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5447
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 5451
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5452
    return-object p0

    .line 5463
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    .line 5464
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5465
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 5466
    goto :goto_1

    .line 5457
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 5458
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5459
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 5460
    nop

    .line 5469
    .end local v0    # "tag":I
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    :cond_2
    :goto_1
    goto :goto_0

    .line 5449
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setCbNumList(ILorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5373
    if-eqz p2, :cond_0

    .line 5376
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5377
    return-object p0

    .line 5374
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5348
    if-eqz p1, :cond_0

    .line 5351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass:Z

    .line 5352
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5353
    return-object p0

    .line 5349
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5408
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5409
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5411
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5412
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5413
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    goto :goto_0

    .line 5414
    :cond_1
    return-void
.end method
