.class public final Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallForwardInfo"
.end annotation


# static fields
.field public static final CALLFWDTIMEREND_FIELD_NUMBER:I = 0x8

.field public static final CALLFWDTIMERSTART_FIELD_NUMBER:I = 0x7

.field public static final NUMBER_FIELD_NUMBER:I = 0x5

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final TIME_SECONDS_FIELD_NUMBER:I = 0x6

.field public static final TOA_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

.field private callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

.field private hasCallFwdTimerEnd:Z

.field private hasCallFwdTimerStart:Z

.field private hasNumber:Z

.field private hasReason:Z

.field private hasServiceClass:Z

.field private hasStatus:Z

.field private hasTimeSeconds:Z

.field private hasToa:Z

.field private number_:Ljava/lang/String;

.field private reason_:I

.field private serviceClass_:I

.field private status_:I

.field private timeSeconds_:I

.field private toa_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5658
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5663
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5680
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5697
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5714
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5731
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5748
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5765
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5785
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5848
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5658
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5960
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 5954
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5803
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5804
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearReason()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5805
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5806
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5807
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5808
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearTimeSeconds()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5809
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5810
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->clearCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5811
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5812
    return-object p0
.end method

.method public clearCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 5798
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5799
    return-object p0
.end method

.method public clearCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 5778
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5779
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    .line 5741
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5742
    return-object p0
.end method

.method public clearReason()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    .line 5690
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5691
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    .line 5707
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5708
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    .line 5673
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5674
    return-object p0
.end method

.method public clearTimeSeconds()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    .line 5758
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5759
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1

    .line 5723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    .line 5724
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5725
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 5851
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5853
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getSerializedSize()I

    .line 5855
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    return v0
.end method

.method public getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .line 5787
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method

.method public getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .line 5767
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 5732
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 5681
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5860
    const/4 v0, 0x0

    .line 5861
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5862
    const/4 v1, 0x1

    .line 5863
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5865
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5866
    const/4 v1, 0x2

    .line 5867
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5869
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5870
    const/4 v1, 0x3

    .line 5871
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5873
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5874
    const/4 v1, 0x4

    .line 5875
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5877
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5878
    const/4 v1, 0x5

    .line 5879
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5881
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5882
    const/4 v1, 0x6

    .line 5883
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5885
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5886
    const/4 v1, 0x7

    .line 5887
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5889
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5890
    const/16 v1, 0x8

    .line 5891
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5893
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->cachedSize:I

    .line 5894
    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .line 5698
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 5664
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    return v0
.end method

.method public getTimeSeconds()I
    .locals 1

    .line 5749
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .line 5715
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    return v0
.end method

.method public hasCallFwdTimerEnd()Z
    .locals 1

    .line 5786
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    return v0
.end method

.method public hasCallFwdTimerStart()Z
    .locals 1

    .line 5766
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .line 5733
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .line 5682
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .line 5699
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 5665
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    return v0
.end method

.method public hasTimeSeconds()Z
    .locals 1

    .line 5750
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .line 5716
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5816
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

    .line 5655
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5902
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5903
    .local v0, "tag":I
    if-eqz v0, :cond_9

    const/16 v1, 0xd

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

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 5907
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5908
    return-object p0

    .line 5943
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 5944
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5945
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5946
    goto :goto_1

    .line 5937
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 5938
    .restart local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5939
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5940
    goto :goto_1

    .line 5933
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5934
    goto :goto_1

    .line 5929
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5930
    goto :goto_1

    .line 5925
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5926
    goto :goto_1

    .line 5921
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5922
    goto :goto_1

    .line 5917
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5918
    goto :goto_1

    .line 5913
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 5914
    nop

    .line 5949
    .end local v0    # "tag":I
    :cond_8
    :goto_1
    goto :goto_0

    .line 5905
    .restart local v0    # "tag":I
    :cond_9
    return-object p0
.end method

.method public setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5789
    if-eqz p1, :cond_0

    .line 5792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 5793
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerEnd_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5794
    return-object p0

    .line 5790
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5769
    if-eqz p1, :cond_0

    .line 5772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 5773
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->callFwdTimerStart_:Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5774
    return-object p0

    .line 5770
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber:Z

    .line 5736
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->number_:Ljava/lang/String;

    .line 5737
    return-object p0
.end method

.method public setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .line 5684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason:Z

    .line 5685
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->reason_:I

    .line 5686
    return-object p0
.end method

.method public setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .line 5701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass:Z

    .line 5702
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->serviceClass_:I

    .line 5703
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .line 5667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus:Z

    .line 5668
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->status_:I

    .line 5669
    return-object p0
.end method

.method public setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .line 5752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds:Z

    .line 5753
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->timeSeconds_:I

    .line 5754
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .locals 1
    .param p1, "value"    # I

    .line 5718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa:Z

    .line 5719
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->toa_:I

    .line 5720
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

    .line 5822
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5823
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5825
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5826
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5828
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5829
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5831
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5832
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5834
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5835
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5837
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasTimeSeconds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5838
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5840
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5841
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5843
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5844
    const/16 v0, 0x8

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5846
    :cond_7
    return-void
.end method
