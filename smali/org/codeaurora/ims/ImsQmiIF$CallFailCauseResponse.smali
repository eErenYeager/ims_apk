.class public final Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallFailCauseResponse"
.end annotation


# static fields
.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x4

.field public static final ERRORINFO_FIELD_NUMBER:I = 0x2

.field public static final FAILCAUSE_FIELD_NUMBER:I = 0x1

.field public static final NETWORKERRORSTRING_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private failcause_:I

.field private hasErrorDetails:Z

.field private hasErrorinfo:Z

.field private hasFailcause:Z

.field private hasNetworkErrorString:Z

.field private networkErrorString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 649
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 654
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 671
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 649
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 824
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearFailcause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 724
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearErrorinfo()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 725
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearNetworkErrorString()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 726
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 728
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails:Z

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 719
    return-object p0
.end method

.method public clearErrorinfo()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    .line 681
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 682
    return-object p0
.end method

.method public clearFailcause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    .line 664
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 665
    return-object p0
.end method

.method public clearNetworkErrorString()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    .line 698
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 699
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 755
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 757
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getSerializedSize()I

    .line 759
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getFailcause()I
    .locals 1

    .line 656
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    return v0
.end method

.method public getNetworkErrorString()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const/4 v1, 0x1

    .line 767
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    const/4 v1, 0x2

    .line 771
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    const/4 v1, 0x3

    .line 775
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 778
    const/4 v1, 0x4

    .line 779
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 781
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 782
    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails:Z

    return v0
.end method

.method public hasErrorinfo()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    return v0
.end method

.method public hasFailcause()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    return v0
.end method

.method public hasNetworkErrorString()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 732
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

    .line 646
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 791
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 795
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 796
    return-object p0

    .line 813
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 814
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 815
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 816
    goto :goto_1

    .line 809
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setNetworkErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 810
    goto :goto_1

    .line 805
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 806
    goto :goto_1

    .line 801
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 802
    nop

    .line 819
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 793
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 709
    if-eqz p1, :cond_0

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails:Z

    .line 713
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 714
    return-object p0

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    .line 676
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 677
    return-object p0
.end method

.method public setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # I

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    .line 659
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 660
    return-object p0
.end method

.method public setNetworkErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    .line 693
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 694
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

    .line 738
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 741
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 744
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 747
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 750
    :cond_3
    return-void
.end method
