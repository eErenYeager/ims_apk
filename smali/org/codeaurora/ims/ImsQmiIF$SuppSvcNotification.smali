.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcNotification"
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final CONNID_FIELD_NUMBER:I = 0x6

.field public static final HISTORY_INFO_FIELD_NUMBER:I = 0x7

.field public static final HOLD_TONE_FIELD_NUMBER:I = 0x8

.field public static final INDEX_FIELD_NUMBER:I = 0x3

.field public static final NOTIFICATIONTYPE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private code_:I

.field private connId_:I

.field private hasCode:Z

.field private hasConnId:Z

.field private hasHistoryInfo:Z

.field private hasHoldTone:Z

.field private hasIndex:Z

.field private hasNotificationType:Z

.field private hasNumber:Z

.field private hasType:Z

.field private historyInfo_:Ljava/lang/String;

.field private holdTone_:Z

.field private index_:I

.field private notificationType_:I

.field private number_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6509
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6514
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6531
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6548
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6565
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6582
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6599
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6616
    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6633
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6693
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6509
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6801
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 6795
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6648
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6649
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6650
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6651
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6652
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6653
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6654
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6655
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHoldTone()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6656
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6657
    return-object p0
.end method

.method public clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6541
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6542
    return-object p0
.end method

.method public clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6609
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6610
    return-object p0
.end method

.method public clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6626
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6627
    return-object p0
.end method

.method public clearHoldTone()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    .line 6643
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6644
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6558
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6559
    return-object p0
.end method

.method public clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 6524
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6525
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6592
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6593
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .line 6574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6575
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6576
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 6696
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    if-gez v0, :cond_0

    .line 6698
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getSerializedSize()I

    .line 6700
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 6532
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    return v0
.end method

.method public getConnId()I
    .locals 1

    .line 6600
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    return v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .line 6617
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldTone()Z
    .locals 1

    .line 6634
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 6549
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    .line 6516
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 6583
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6705
    const/4 v0, 0x0

    .line 6706
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6707
    const/4 v1, 0x1

    .line 6708
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6710
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6711
    const/4 v1, 0x2

    .line 6712
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6714
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6715
    const/4 v1, 0x3

    .line 6716
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6718
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6719
    const/4 v1, 0x4

    .line 6720
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6722
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6723
    const/4 v1, 0x5

    .line 6724
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6726
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6727
    const/4 v1, 0x6

    .line 6728
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6730
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6731
    const/4 v1, 0x7

    .line 6732
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6734
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6735
    const/16 v1, 0x8

    .line 6736
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6738
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6739
    return v0
.end method

.method public getType()I
    .locals 1

    .line 6566
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    return v0
.end method

.method public hasCode()Z
    .locals 1

    .line 6533
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    return v0
.end method

.method public hasConnId()Z
    .locals 1

    .line 6601
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    return v0
.end method

.method public hasHistoryInfo()Z
    .locals 1

    .line 6618
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    return v0
.end method

.method public hasHoldTone()Z
    .locals 1

    .line 6635
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 6550
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    return v0
.end method

.method public hasNotificationType()Z
    .locals 1

    .line 6515
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .line 6584
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 6567
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 6661
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

    .line 6506
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6747
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6748
    .local v0, "tag":I
    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x15

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x25

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x35

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 6752
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6753
    return-object p0

    .line 6786
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHoldTone(Z)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_1

    .line 6782
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6783
    goto :goto_1

    .line 6778
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6779
    goto :goto_1

    .line 6774
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6775
    goto :goto_1

    .line 6770
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6771
    goto :goto_1

    .line 6766
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6767
    goto :goto_1

    .line 6762
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6763
    goto :goto_1

    .line 6758
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6759
    nop

    .line 6790
    .end local v0    # "tag":I
    :cond_8
    :goto_1
    goto :goto_0

    .line 6750
    .restart local v0    # "tag":I
    :cond_9
    return-object p0
.end method

.method public setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .line 6535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6536
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6537
    return-object p0
.end method

.method public setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .line 6603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6604
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6605
    return-object p0
.end method

.method public setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 6620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6621
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6622
    return-object p0
.end method

.method public setHoldTone(Z)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Z

    .line 6637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    .line 6638
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6639
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .line 6552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6553
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6554
    return-object p0
.end method

.method public setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .line 6518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 6519
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6520
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 6586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6587
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6588
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .line 6569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6570
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6571
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

    .line 6667
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6668
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6670
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6671
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6673
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6674
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6676
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6677
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6679
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6680
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6682
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6683
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6685
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6686
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6688
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6689
    const/16 v0, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6691
    :cond_7
    return-void
.end method
