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
.field public static final ERRORINFO_FIELD_NUMBER:I = 0x2

.field public static final FAILCAUSE_FIELD_NUMBER:I = 0x1

.field public static final NETWORKERRORSTRING_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private failcause_:I

.field private hasErrorinfo:Z

.field private hasFailcause:Z

.field private hasNetworkErrorString:Z

.field private networkErrorString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 558
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 575
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 592
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 553
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

    .prologue
    .line 700
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

    .prologue
    .line 694
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

    .prologue
    .line 607
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearFailcause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 608
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearErrorinfo()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 609
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->clearNetworkErrorString()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 610
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 611
    return-object p0
.end method

.method public clearErrorinfo()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    .line 585
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 586
    return-object p0
.end method

.method public clearFailcause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    .line 568
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 569
    return-object p0
.end method

.method public clearNetworkErrorString()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    .line 602
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 603
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getSerializedSize()I

    .line 639
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    return v0
.end method

.method public getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getFailcause()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    return v0
.end method

.method public getNetworkErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v1

    const/4 v2, 0x1

    .line 646
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 649
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x2

    .line 650
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 654
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->cachedSize:I

    .line 658
    return v0
.end method

.method public hasErrorinfo()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    return v0
.end method

.method public hasFailcause()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    return v0
.end method

.method public hasNetworkErrorString()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 615
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
    .line 661
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 667
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 671
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    return-object p0

    .line 669
    :sswitch_0
    return-object p0

    .line 677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0

    .line 681
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0

    .line 685
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setNetworkErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo:Z

    .line 580
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->errorinfo_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 581
    return-object p0
.end method

.method public setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause:Z

    .line 563
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->failcause_:I

    .line 564
    return-object p0
.end method

.method public setNetworkErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString:Z

    .line 597
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->networkErrorString_:Ljava/lang/String;

    .line 598
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
    .line 621
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 624
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorinfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorinfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 627
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 630
    :cond_2
    return-void
.end method
