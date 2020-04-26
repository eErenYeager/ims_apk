.class public final Lorg/codeaurora/ims/ImsQmiIF$Hangup;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangup"
.end annotation


# static fields
.field public static final CONF_ID_FIELD_NUMBER:I = 0x4

.field public static final CONN_INDEX_FIELD_NUMBER:I = 0x1

.field public static final CONN_URI_FIELD_NUMBER:I = 0x3

.field public static final FAILCAUSERESPONSE_FIELD_NUMBER:I = 0x5

.field public static final MULTI_PARTY_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private confId_:I

.field private connIndex_:I

.field private connUri_:Ljava/lang/String;

.field private failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

.field private hasConfId:Z

.field private hasConnIndex:Z

.field private hasConnUri:Z

.field private hasFailCauseResponse:Z

.field private hasMultiParty:Z

.field private multiParty_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2620
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2625
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 2642
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 2659
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 2676
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 2693
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2744
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 2620
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2830
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2824
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    .line 2711
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2712
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2713
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2714
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2715
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2716
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 2717
    return-object p0
.end method

.method public clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2685
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    .line 2686
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 2687
    return-object p0
.end method

.method public clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2634
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    .line 2635
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 2636
    return-object p0
.end method

.method public clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    .line 2668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    .line 2669
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 2670
    return-object p0
.end method

.method public clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    .line 2706
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2707
    return-object p0
.end method

.method public clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2651
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    .line 2652
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 2653
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2747
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    if-gez v0, :cond_0

    .line 2749
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getSerializedSize()I

    .line 2751
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return v0
.end method

.method public getConfId()I
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    return v0
.end method

.method public getConnIndex()I
    .locals 1

    .prologue
    .line 2626
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    return v0
.end method

.method public getConnUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 2695
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getMultiParty()Z
    .locals 1

    .prologue
    .line 2643
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2756
    const/4 v0, 0x0

    .line 2757
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2759
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 2758
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2761
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2763
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v1

    const/4 v2, 0x2

    .line 2762
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2765
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2767
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 2766
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2769
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2771
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v1

    const/4 v2, 0x4

    .line 2770
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2775
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/4 v2, 0x5

    .line 2774
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2777
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 2778
    return v0
.end method

.method public hasConfId()Z
    .locals 1

    .prologue
    .line 2678
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    return v0
.end method

.method public hasConnIndex()Z
    .locals 1

    .prologue
    .line 2627
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    return v0
.end method

.method public hasConnUri()Z
    .locals 1

    .prologue
    .line 2661
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    return v0
.end method

.method public hasFailCauseResponse()Z
    .locals 1

    .prologue
    .line 2694
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    return v0
.end method

.method public hasMultiParty()Z
    .locals 1

    .prologue
    .line 2644
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2721
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
    .line 2782
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2786
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2787
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2791
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2792
    return-object p0

    .line 2789
    :sswitch_0
    return-object p0

    .line 2797
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 2801
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 2805
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 2809
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 2813
    :sswitch_5
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 2814
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2815
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 2787
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    .line 2681
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 2682
    return-object p0
.end method

.method public setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    .line 2630
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 2631
    return-object p0
.end method

.method public setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    .line 2664
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 2665
    return-object p0
.end method

.method public setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 2697
    if-nez p1, :cond_0

    .line 2698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2700
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    .line 2701
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2702
    return-object p0
.end method

.method public setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    .line 2647
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 2648
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
    .line 2727
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2730
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2731
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2733
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2734
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2736
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2737
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2739
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2740
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2726
    :cond_4
    return-void
.end method
