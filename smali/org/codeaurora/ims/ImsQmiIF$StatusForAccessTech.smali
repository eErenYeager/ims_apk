.class public final Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusForAccessTech"
.end annotation


# static fields
.field public static final NETWORKMODE_FIELD_NUMBER:I = 0x1

.field public static final REGISTERED_FIELD_NUMBER:I = 0x4

.field public static final RESTRICTIONCAUSE_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasNetworkMode:Z

.field private hasRegistered:Z

.field private hasRestrictionCause:Z

.field private hasStatus:Z

.field private networkMode_:I

.field private registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

.field private restrictionCause_:I

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 627
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 644
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 661
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 725
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 622
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearNetworkMode()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 697
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 698
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearRestrictionCause()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 699
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearRegistered()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 700
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 701
    return-object p0
.end method

.method public clearNetworkMode()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 638
    return-object p0
.end method

.method public clearRegistered()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 692
    return-object p0
.end method

.method public clearRestrictionCause()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 670
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    .line 671
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 672
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 653
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    .line 654
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 655
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    if-gez v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getSerializedSize()I

    .line 732
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    return v0
.end method

.method public getNetworkMode()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    return v0
.end method

.method public getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    return-object v0
.end method

.method public getRestrictionCause()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v1

    const/4 v2, 0x1

    .line 739
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 742
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 743
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v1

    const/4 v2, 0x3

    .line 747
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    const/4 v2, 0x4

    .line 751
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 755
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    return v0
.end method

.method public hasNetworkMode()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    return v0
.end method

.method public hasRegistered()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    return v0
.end method

.method public hasRestrictionCause()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 705
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
    .line 759
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 764
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 768
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    return-object p0

    .line 766
    :sswitch_0
    return-object p0

    .line 774
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 778
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 782
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 786
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 787
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 788
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRegistered(Lorg/codeaurora/ims/ImsQmiIF$Registration;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    .line 632
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 633
    return-object p0
.end method

.method public setRegistered(Lorg/codeaurora/ims/ImsQmiIF$Registration;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 683
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 685
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    .line 686
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 687
    return-object p0
.end method

.method public setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    .line 666
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 667
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    .line 649
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 650
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
    .line 711
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 717
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 720
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 710
    :cond_3
    return-void
.end method
