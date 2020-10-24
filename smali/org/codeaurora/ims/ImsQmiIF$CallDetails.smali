.class public final Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallDetails"
.end annotation


# static fields
.field public static final CALLDOMAIN_FIELD_NUMBER:I = 0x2

.field public static final CALLSUBSTATE_FIELD_NUMBER:I = 0x7

.field public static final CALLTYPE_FIELD_NUMBER:I = 0x1

.field public static final CAUSECODE_FIELD_NUMBER:I = 0x9

.field public static final EXTRASLENGTH_FIELD_NUMBER:I = 0x3

.field public static final EXTRAS_FIELD_NUMBER:I = 0x4

.field public static final LOCALABILITY_FIELD_NUMBER:I = 0x5

.field public static final MEDIAID_FIELD_NUMBER:I = 0x8

.field public static final PEERABILITY_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private callDomain_:I

.field private callSubstate_:I

.field private callType_:I

.field private causeCode_:I

.field private extrasLength_:I

.field private extras_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasCallDomain:Z

.field private hasCallSubstate:Z

.field private hasCallType:Z

.field private hasCauseCode:Z

.field private hasExtrasLength:Z

.field private hasLocalAbility:Z

.field private hasMediaId:Z

.field private hasPeerAbility:Z

.field private localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

.field private mediaId_:I

.field private peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1431
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1436
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1453
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1470
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1486
    nop

    .line 1487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1520
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1540
    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1560
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1577
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1594
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    .line 1658
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1431
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1783
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1777
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method


# virtual methods
.method public addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1503
    if-eqz p1, :cond_1

    .line 1506
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1509
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    return-object p0

    .line 1504
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1609
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1610
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallDomain()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1611
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearExtrasLength()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1612
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearExtras()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1613
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1614
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1615
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCallSubstate()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1616
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearMediaId()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1617
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->clearCauseCode()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1618
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1619
    return-object p0
.end method

.method public clearCallDomain()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    .line 1463
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1464
    return-object p0
.end method

.method public clearCallSubstate()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    .line 1570
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1571
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    .line 1446
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1447
    return-object p0
.end method

.method public clearCauseCode()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode:Z

    .line 1604
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    .line 1605
    return-object p0
.end method

.method public clearExtras()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1513
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    .line 1514
    return-object p0
.end method

.method public clearExtrasLength()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    .line 1480
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1481
    return-object p0
.end method

.method public clearLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    .line 1533
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1534
    return-object p0
.end method

.method public clearMediaId()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    .line 1587
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1588
    return-object p0
.end method

.method public clearPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 1552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    .line 1553
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1554
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1661
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1663
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getSerializedSize()I

    .line 1665
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    return v0
.end method

.method public getCallDomain()I
    .locals 1

    .line 1455
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .line 1562
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 1438
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    return v0
.end method

.method public getCauseCode()I
    .locals 1

    .line 1596
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    return v0
.end method

.method public getExtras(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1493
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtrasCount()I
    .locals 1

    .line 1491
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtrasLength()I
    .locals 1

    .line 1471
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    return v0
.end method

.method public getExtrasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1489
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .line 1522
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method

.method public getMediaId()I
    .locals 1

    .line 1578
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    return v0
.end method

.method public getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .line 1542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1670
    const/4 v0, 0x0

    .line 1671
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1672
    nop

    .line 1673
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1675
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1676
    const/4 v1, 0x2

    .line 1677
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1679
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1680
    const/4 v1, 0x3

    .line 1681
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasLength()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1684
    :cond_2
    const/4 v1, 0x0

    .line 1685
    .local v1, "dataSize":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1686
    .local v4, "element":Ljava/lang/String;
    nop

    .line 1687
    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1688
    .end local v4    # "element":Ljava/lang/String;
    goto :goto_0

    .line 1689
    :cond_3
    add-int/2addr v0, v1

    .line 1690
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1692
    .end local v1    # "dataSize":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1693
    const/4 v1, 0x5

    .line 1694
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1696
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1697
    const/4 v1, 0x6

    .line 1698
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1700
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1701
    const/4 v1, 0x7

    .line 1702
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1704
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1705
    const/16 v1, 0x8

    .line 1706
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1708
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1709
    const/16 v1, 0x9

    .line 1710
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1712
    :cond_8
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->cachedSize:I

    .line 1713
    return v0
.end method

.method public hasCallDomain()Z
    .locals 1

    .line 1454
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    return v0
.end method

.method public hasCallSubstate()Z
    .locals 1

    .line 1561
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .line 1437
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    return v0
.end method

.method public hasCauseCode()Z
    .locals 1

    .line 1595
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode:Z

    return v0
.end method

.method public hasExtrasLength()Z
    .locals 1

    .line 1472
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    return v0
.end method

.method public hasLocalAbility()Z
    .locals 1

    .line 1521
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    return v0
.end method

.method public hasMediaId()Z
    .locals 1

    .line 1579
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    return v0
.end method

.method public hasPeerAbility()Z
    .locals 1

    .line 1541
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1623
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

    .line 1428
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1721
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1722
    .local v0, "tag":I
    if-eqz v0, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    .line 1726
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1727
    return-object p0

    .line 1768
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCauseCode(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    goto :goto_1

    .line 1764
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setMediaId(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1765
    goto :goto_1

    .line 1760
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallSubstate(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1761
    goto :goto_1

    .line 1754
    :cond_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    .line 1755
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1756
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setPeerAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1757
    goto :goto_1

    .line 1748
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :cond_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    .line 1749
    .restart local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1750
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setLocalAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1751
    goto :goto_1

    .line 1744
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1745
    goto :goto_1

    .line 1740
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setExtrasLength(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1741
    goto :goto_1

    .line 1736
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1737
    goto :goto_1

    .line 1732
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1733
    nop

    .line 1772
    .end local v0    # "tag":I
    :cond_9
    :goto_1
    goto/16 :goto_0

    .line 1724
    .restart local v0    # "tag":I
    :cond_a
    return-object p0
.end method

.method public setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain:Z

    .line 1458
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callDomain_:I

    .line 1459
    return-object p0
.end method

.method public setCallSubstate(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .line 1564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate:Z

    .line 1565
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callSubstate_:I

    .line 1566
    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType:Z

    .line 1441
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->callType_:I

    .line 1442
    return-object p0
.end method

.method public setCauseCode(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .line 1598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode:Z

    .line 1599
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->causeCode_:I

    .line 1600
    return-object p0
.end method

.method public setExtras(ILjava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1496
    if-eqz p2, :cond_0

    .line 1499
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extras_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1500
    return-object p0

    .line 1497
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setExtrasLength(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .line 1474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength:Z

    .line 1475
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->extrasLength_:I

    .line 1476
    return-object p0
.end method

.method public setLocalAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1524
    if-eqz p1, :cond_0

    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility:Z

    .line 1528
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->localAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1529
    return-object p0

    .line 1525
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setMediaId(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # I

    .line 1581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId:Z

    .line 1582
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->mediaId_:I

    .line 1583
    return-object p0
.end method

.method public setPeerAbility(Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1544
    if-eqz p1, :cond_0

    .line 1547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility:Z

    .line 1548
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->peerAbility_:Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1549
    return-object p0

    .line 1545
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

    .line 1629
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1632
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallDomain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1635
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasExtrasLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1636
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1638
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1639
    .local v1, "element":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1640
    .end local v1    # "element":Ljava/lang/String;
    goto :goto_0

    .line 1641
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasLocalAbility()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1642
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1644
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasPeerAbility()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1645
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1647
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCallSubstate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1648
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1650
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasMediaId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1651
    const/16 v0, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 1653
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->hasCauseCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1654
    const/16 v0, 0x9

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1656
    :cond_8
    return-void
.end method
