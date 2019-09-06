.class public final Lorg/codeaurora/ims/ImsQmiIF$CallList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    }
.end annotation


# static fields
.field public static final CALLATTRIBUTES_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private callAttributes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1939
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2485
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    .line 2534
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->cachedSize:I

    .line 1939
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2588
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2582
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList;

    return-object v0
.end method


# virtual methods
.method public addCallAttributes(Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;)Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .prologue
    .line 2502
    if-nez p1, :cond_0

    .line 2503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2505
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    .line 2508
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2509
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 1

    .prologue
    .line 2517
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->clearCallAttributes()Lorg/codeaurora/ims/ImsQmiIF$CallList;

    .line 2518
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->cachedSize:I

    .line 2519
    return-object p0
.end method

.method public clearCallAttributes()Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 1

    .prologue
    .line 2512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    .line 2513
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2537
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->cachedSize:I

    if-gez v0, :cond_0

    .line 2539
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getSerializedSize()I

    .line 2541
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->cachedSize:I

    return v0
.end method

.method public getCallAttributes(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2492
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    return-object v0
.end method

.method public getCallAttributesCount()I
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCallAttributesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2488
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2546
    const/4 v2, 0x0

    .line 2547
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2549
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    const/4 v3, 0x2

    .line 2548
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2551
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    :cond_0
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->cachedSize:I

    .line 2552
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2523
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
    .line 2556
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2560
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2561
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2565
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2566
    return-object p0

    .line 2563
    :sswitch_0
    return-object p0

    .line 2571
    :sswitch_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    .line 2572
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2573
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->addCallAttributes(Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    goto :goto_0

    .line 2561
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCallAttributes(ILorg/codeaurora/ims/ImsQmiIF$CallList$Call;)Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .prologue
    .line 2495
    if-nez p2, :cond_0

    .line 2496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2498
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList;->callAttributes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2499
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2529
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2530
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2528
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    :cond_0
    return-void
.end method
