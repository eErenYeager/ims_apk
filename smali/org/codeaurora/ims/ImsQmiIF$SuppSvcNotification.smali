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

    .prologue
    const/4 v1, 0x0

    .line 6526
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6531
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6548
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6565
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6582
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6599
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6616
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6633
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6650
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6710
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6526
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

    .prologue
    .line 6818
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

    .prologue
    .line 6812
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

    .prologue
    .line 6665
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6666
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6667
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6668
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6669
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6670
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6671
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6672
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHoldTone()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6673
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6674
    return-object p0
.end method

.method public clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6557
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6558
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6559
    return-object p0
.end method

.method public clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6625
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6626
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6627
    return-object p0
.end method

.method public clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6643
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6644
    return-object p0
.end method

.method public clearHoldTone()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6659
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    .line 6660
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6661
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6574
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6575
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6576
    return-object p0
.end method

.method public clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6540
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 6541
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6542
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6609
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6610
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6591
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6592
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6593
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6713
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    if-gez v0, :cond_0

    .line 6715
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getSerializedSize()I

    .line 6717
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 6549
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    return v0
.end method

.method public getConnId()I
    .locals 1

    .prologue
    .line 6617
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    return v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6634
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldTone()Z
    .locals 1

    .prologue
    .line 6651
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 6566
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 6533
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6600
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6722
    const/4 v0, 0x0

    .line 6723
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6725
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v1

    const/4 v2, 0x1

    .line 6724
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6727
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6729
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v1

    const/4 v2, 0x2

    .line 6728
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6731
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6733
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    .line 6732
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6735
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6737
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v1

    const/4 v2, 0x4

    .line 6736
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6739
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6741
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 6740
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6743
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6745
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v1

    const/4 v2, 0x6

    .line 6744
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6747
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6749
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 6748
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6751
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6753
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v1

    const/16 v2, 0x8

    .line 6752
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6755
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6756
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6583
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    return v0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 6550
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    return v0
.end method

.method public hasConnId()Z
    .locals 1

    .prologue
    .line 6618
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    return v0
.end method

.method public hasHistoryInfo()Z
    .locals 1

    .prologue
    .line 6635
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    return v0
.end method

.method public hasHoldTone()Z
    .locals 1

    .prologue
    .line 6652
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 6567
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    return v0
.end method

.method public hasNotificationType()Z
    .locals 1

    .prologue
    .line 6532
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 6601
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6584
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6678
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
    .line 6760
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6764
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6765
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6769
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6770
    return-object p0

    .line 6767
    :sswitch_0
    return-object p0

    .line 6775
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6779
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6783
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6787
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6791
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6795
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6799
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6803
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHoldTone(Z)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6765
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6553
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6554
    return-object p0
.end method

.method public setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6621
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6622
    return-object p0
.end method

.method public setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6638
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6639
    return-object p0
.end method

.method public setHoldTone(Z)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone:Z

    .line 6655
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->holdTone_:Z

    .line 6656
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6570
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6571
    return-object p0
.end method

.method public setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 6536
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6537
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6604
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6605
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6587
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6588
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
    .line 6684
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6685
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6687
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6688
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6690
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6691
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6693
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6694
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6696
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6697
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6699
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6700
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6702
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6703
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6705
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6706
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6683
    :cond_7
    return-void
.end method
