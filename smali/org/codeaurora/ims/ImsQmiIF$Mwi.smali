.class public final Lorg/codeaurora/ims/ImsQmiIF$Mwi;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mwi"
.end annotation


# static fields
.field public static final MWIMSGDETAIL_FIELD_NUMBER:I = 0x3

.field public static final MWIMSGSUMMARY_FIELD_NUMBER:I = 0x1

.field public static final UEADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasUeAddress:Z

.field private mwiMsgDetail_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mwiMsgSummary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private ueAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7467
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 7471
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7505
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 7521
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7578
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7467
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7650
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7644
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    return-object v0
.end method


# virtual methods
.method public addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .prologue
    .line 7538
    if-nez p1, :cond_0

    .line 7539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7541
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7544
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7545
    return-object p0
.end method

.method public addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .prologue
    .line 7488
    if-nez p1, :cond_0

    .line 7489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7491
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7494
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7495
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7553
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7554
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7555
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7556
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7557
    return-object p0
.end method

.method public clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7549
    return-object p0
.end method

.method public clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7499
    return-object p0
.end method

.method public clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7515
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7516
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7581
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    if-gez v0, :cond_0

    .line 7583
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getSerializedSize()I

    .line 7585
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return v0
.end method

.method public getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7528
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method

.method public getMwiMsgDetailCount()I
    .locals 1

    .prologue
    .line 7526
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    return-object v0
.end method

.method public getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7478
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method

.method public getMwiMsgSummaryCount()I
    .locals 1

    .prologue
    .line 7476
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgSummaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7474
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 7590
    const/4 v3, 0x0

    .line 7591
    .local v3, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7593
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v4, 0x1

    .line 7592
    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 7595
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7597
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 7596
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 7599
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7601
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v4, 0x3

    .line 7600
    invoke-static {v4, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 7603
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_2
    iput v3, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7604
    return v3
.end method

.method public getUeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7506
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUeAddress()Z
    .locals 1

    .prologue
    .line 7507
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7561
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7607
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7613
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7617
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7618
    return-object p0

    .line 7615
    :sswitch_0
    return-object p0

    .line 7623
    :sswitch_1
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    .line 7624
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7625
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 7629
    .end local v2    # "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 7633
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    .line 7634
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7635
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 7613
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setMwiMsgDetail(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .prologue
    .line 7531
    if-nez p2, :cond_0

    .line 7532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7534
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7535
    return-object p0
.end method

.method public setMwiMsgSummary(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .prologue
    .line 7481
    if-nez p2, :cond_0

    .line 7482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7484
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7485
    return-object p0
.end method

.method public setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7510
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7511
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7567
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7568
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 7570
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7571
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7573
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7574
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 7576
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_2
    return-void
.end method
