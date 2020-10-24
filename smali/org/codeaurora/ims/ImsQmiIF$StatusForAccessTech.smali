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

    .line 838
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 860
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 877
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 894
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 941
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 838
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

    .line 1019
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

    .line 1013
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

    .line 912
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearNetworkMode()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 913
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 914
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearRestrictionCause()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 915
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->clearRegistered()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 916
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 917
    return-object p0
.end method

.method public clearNetworkMode()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    .line 853
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 854
    return-object p0
.end method

.method public clearRegistered()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 908
    return-object p0
.end method

.method public clearRestrictionCause()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    .line 887
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 888
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    .line 870
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 871
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 944
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    if-gez v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getSerializedSize()I

    .line 948
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    return v0
.end method

.method public getNetworkMode()I
    .locals 1

    .line 845
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    return v0
.end method

.method public getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .line 896
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    return-object v0
.end method

.method public getRestrictionCause()I
    .locals 1

    .line 878
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    const/4 v1, 0x1

    .line 956
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 958
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    const/4 v1, 0x2

    .line 960
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 962
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 963
    const/4 v1, 0x3

    .line 964
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 966
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 967
    const/4 v1, 0x4

    .line 968
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->cachedSize:I

    .line 971
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 862
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    return v0
.end method

.method public hasNetworkMode()Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    return v0
.end method

.method public hasRegistered()Z
    .locals 1

    .line 895
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    return v0
.end method

.method public hasRestrictionCause()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 861
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 921
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

    .line 835
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 980
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 984
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 985
    return-object p0

    .line 1002
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 1003
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1004
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRegistered(Lorg/codeaurora/ims/ImsQmiIF$Registration;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1005
    goto :goto_1

    .line 998
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 999
    goto :goto_1

    .line 994
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 995
    goto :goto_1

    .line 990
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 991
    nop

    .line 1008
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 982
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode:Z

    .line 848
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->networkMode_:I

    .line 849
    return-object p0
.end method

.method public setRegistered(Lorg/codeaurora/ims/ImsQmiIF$Registration;)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 898
    if-eqz p1, :cond_0

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered:Z

    .line 902
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->registered_:Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 903
    return-object p0

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause:Z

    .line 882
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->restrictionCause_:I

    .line 883
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "value"    # I

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus:Z

    .line 865
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->status_:I

    .line 866
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

    .line 927
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasNetworkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 930
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 933
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRestrictionCause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 936
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->hasRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 939
    :cond_3
    return-void
.end method
