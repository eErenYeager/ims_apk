.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageDetails"
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x4

.field public static final FROMADDRESS_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x6

.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5

.field public static final SUBJECT_FIELD_NUMBER:I = 0x3

.field public static final TOADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private date_:Ljava/lang/String;

.field private fromAddress_:Ljava/lang/String;

.field private hasDate:Z

.field private hasFromAddress:Z

.field private hasMessageId:Z

.field private hasMessageType:Z

.field private hasPriority:Z

.field private hasSubject:Z

.field private hasToAddress:Z

.field private messageId_:Ljava/lang/String;

.field private messageType_:I

.field private priority_:I

.field private subject_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7612
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7617
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7634
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7651
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7668
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7685
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7702
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7719
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7775
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7612
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7875
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 7869
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7734
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7735
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7736
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7737
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7738
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7739
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7740
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7741
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7742
    return-object p0
.end method

.method public clearDate()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7678
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7679
    return-object p0
.end method

.method public clearFromAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7644
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7645
    return-object p0
.end method

.method public clearMessageId()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7712
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7713
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7729
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7730
    return-object p0
.end method

.method public clearPriority()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7695
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7696
    return-object p0
.end method

.method public clearSubject()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7661
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7662
    return-object p0
.end method

.method public clearToAddress()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    .line 7626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7627
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7628
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 7778
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 7780
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSerializedSize()I

    .line 7782
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 7669
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 7635
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 7703
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 7721
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 7687
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 7787
    const/4 v0, 0x0

    .line 7788
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7789
    const/4 v1, 0x1

    .line 7790
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7792
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7793
    const/4 v1, 0x2

    .line 7794
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7796
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7797
    const/4 v1, 0x3

    .line 7798
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7800
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7801
    const/4 v1, 0x4

    .line 7802
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7804
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7805
    const/4 v1, 0x5

    .line 7806
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7808
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7809
    const/4 v1, 0x6

    .line 7810
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7812
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7813
    const/4 v1, 0x7

    .line 7814
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7816
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->cachedSize:I

    .line 7817
    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 7652
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 7618
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    .line 7670
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    return v0
.end method

.method public hasFromAddress()Z
    .locals 1

    .line 7636
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .line 7704
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .line 7720
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .line 7686
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .line 7653
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    return v0
.end method

.method public hasToAddress()Z
    .locals 1

    .line 7619
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 7746
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

    .line 7609
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7825
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7826
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    .line 7830
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7831
    return-object p0

    .line 7860
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    goto :goto_1

    .line 7856
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7857
    goto :goto_1

    .line 7852
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7853
    goto :goto_1

    .line 7848
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7849
    goto :goto_1

    .line 7844
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7845
    goto :goto_1

    .line 7840
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7841
    goto :goto_1

    .line 7836
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7837
    nop

    .line 7864
    .end local v0    # "tag":I
    :cond_7
    :goto_1
    goto :goto_0

    .line 7828
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate:Z

    .line 7673
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->date_:Ljava/lang/String;

    .line 7674
    return-object p0
.end method

.method public setFromAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress:Z

    .line 7639
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->fromAddress_:Ljava/lang/String;

    .line 7640
    return-object p0
.end method

.method public setMessageId(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId:Z

    .line 7707
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageId_:Ljava/lang/String;

    .line 7708
    return-object p0
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .line 7723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType:Z

    .line 7724
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->messageType_:I

    .line 7725
    return-object p0
.end method

.method public setPriority(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # I

    .line 7689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority:Z

    .line 7690
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->priority_:I

    .line 7691
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject:Z

    .line 7656
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->subject_:Ljava/lang/String;

    .line 7657
    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress:Z

    .line 7622
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->toAddress_:Ljava/lang/String;

    .line 7623
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

    .line 7752
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7753
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7755
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasFromAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7756
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7758
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7759
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7761
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7762
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7764
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7765
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7767
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7768
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7770
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7771
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7773
    :cond_6
    return-void
.end method
