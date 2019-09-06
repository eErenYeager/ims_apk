.class public final Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParticipantStatusInfo"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1

.field public static final ISECT_FIELD_NUMBER:I = 0x5

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field public static final PARTICIPANTURI_FIELD_NUMBER:I = 0x4

.field public static final SIPSTATUS_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private hasCallId:Z

.field private hasIsEct:Z

.field private hasOperation:Z

.field private hasParticipantUri:Z

.field private hasSipStatus:Z

.field private isEct_:Z

.field private operation_:I

.field private participantUri_:Ljava/lang/String;

.field private sipStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9869
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9874
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    .line 9891
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    .line 9908
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    .line 9925
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    .line 9942
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    .line 9990
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    .line 9869
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10074
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10068
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    .line 9957
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9958
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearOperation()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9959
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearSipStatus()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9960
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearParticipantUri()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9961
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearIsEct()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 9962
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    .line 9963
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9883
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    .line 9884
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    .line 9885
    return-object p0
.end method

.method public clearIsEct()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9951
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    .line 9952
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    .line 9953
    return-object p0
.end method

.method public clearOperation()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9900
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    .line 9901
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    .line 9902
    return-object p0
.end method

.method public clearParticipantUri()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    .line 9934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    .line 9935
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    .line 9936
    return-object p0
.end method

.method public clearSipStatus()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9917
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    .line 9918
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    .line 9919
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9993
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9995
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSerializedSize()I

    .line 9997
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 9875
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    return v0
.end method

.method public getIsEct()Z
    .locals 1

    .prologue
    .line 9943
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    return v0
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 9893
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    return v0
.end method

.method public getParticipantUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9926
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10002
    const/4 v0, 0x0

    .line 10003
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10005
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v1

    const/4 v2, 0x1

    .line 10004
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 10007
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10009
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v1

    const/4 v2, 0x2

    .line 10008
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10011
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10013
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v1

    const/4 v2, 0x3

    .line 10012
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10015
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10017
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 10016
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10019
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10021
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v1

    const/4 v2, 0x5

    .line 10020
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10023
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    .line 10024
    return v0
.end method

.method public getSipStatus()I
    .locals 1

    .prologue
    .line 9909
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .prologue
    .line 9876
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    return v0
.end method

.method public hasIsEct()Z
    .locals 1

    .prologue
    .line 9944
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    return v0
.end method

.method public hasOperation()Z
    .locals 1

    .prologue
    .line 9892
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    return v0
.end method

.method public hasParticipantUri()Z
    .locals 1

    .prologue
    .line 9927
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    return v0
.end method

.method public hasSipStatus()Z
    .locals 1

    .prologue
    .line 9910
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9967
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
    .line 10028
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10032
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10033
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10037
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10038
    return-object p0

    .line 10035
    :sswitch_0
    return-object p0

    .line 10043
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 10047
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setOperation(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 10051
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setSipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 10055
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setParticipantUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 10059
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setIsEct(Z)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    .line 10033
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    .line 9879
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    .line 9880
    return-object p0
.end method

.method public setIsEct(Z)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    .line 9947
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    .line 9948
    return-object p0
.end method

.method public setOperation(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    .line 9896
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    .line 9897
    return-object p0
.end method

.method public setParticipantUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    .line 9930
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    .line 9931
    return-object p0
.end method

.method public setSipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    .line 9913
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    .line 9914
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
    .line 9973
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9974
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9976
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9977
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9979
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9980
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9982
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9983
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9985
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9986
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9972
    :cond_4
    return-void
.end method
