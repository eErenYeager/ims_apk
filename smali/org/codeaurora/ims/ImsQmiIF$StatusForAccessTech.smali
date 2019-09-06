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

    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 831
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 848
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 865
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 929
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 826
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
    .line 1007
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
    .line 1001
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
    .line 900
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearNetworkMode()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 901
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 902
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearRestrictionCause()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 903
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearRegistered()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 905
    return-object p0
.end method

.method public clearNetworkMode()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    .line 841
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 842
    return-object p0
.end method

.method public clearRegistered()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 896
    return-object p0
.end method

.method public clearRestrictionCause()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 874
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    .line 875
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 876
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 857
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    .line 858
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 859
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    if-gez v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getSerializedSize()I

    .line 936
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    return v0
.end method

.method public getNetworkMode()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    return v0
.end method

.method public getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    return-object v0
.end method

.method public getRestrictionCause()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v1

    const/4 v2, 0x1

    .line 943
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 946
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 947
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 950
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v1

    const/4 v2, 0x3

    .line 951
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 956
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    const/4 v2, 0x4

    .line 955
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 958
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 959
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    return v0
.end method

.method public hasNetworkMode()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    return v0
.end method

.method public hasRegistered()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    return v0
.end method

.method public hasRestrictionCause()Z
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 909
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
    .line 963
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
    .line 967
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 968
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 972
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    return-object p0

    .line 970
    :sswitch_0
    return-object p0

    .line 978
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 982
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 986
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 990
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 991
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 992
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRegistered(Lorg/codeaurora/ims/ImsQmiIF$Registration;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    goto :goto_0

    .line 968
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
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    .line 836
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 837
    return-object p0
.end method

.method public setRegistered(Lorg/codeaurora/ims/ImsQmiIF$Registration;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 889
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    .line 890
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 891
    return-object p0
.end method

.method public setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    .line 870
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 871
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    .line 853
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 854
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
    .line 915
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 918
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 921
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 924
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 914
    :cond_3
    return-void
.end method
