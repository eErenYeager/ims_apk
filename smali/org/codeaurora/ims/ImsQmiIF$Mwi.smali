.class public final Lorg/codeaurora/ims/ImsQmiIF$Mwi;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mwi"
.end annotation


# static fields
.field public static final MWIMSGDETAIL_FIELD_NUMBER:I = 0x3

.field public static final MWIMSGSUMMARY_FIELD_NUMBER:I = 0x1

.field public static final UEADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasUeAddress:Z

.field private mwiMsgDetail_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mwiMsgSummary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private ueAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7883
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7887
    nop

    .line 7888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7921
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7937
    nop

    .line 7938
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7994
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7883
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8066
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 8060
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    return-object v0
.end method


# virtual methods
.method public addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7954
    if-eqz p1, :cond_1

    .line 7957
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7960
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7961
    return-object p0

    .line 7955
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7904
    if-eqz p1, :cond_1

    .line 7907
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7910
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7911
    return-object p0

    .line 7905
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .line 7969
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7970
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7971
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7972
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7973
    return-object p0
.end method

.method public clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .line 7964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7965
    return-object p0
.end method

.method public clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .line 7914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7915
    return-object p0
.end method

.method public clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .line 7930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7931
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7932
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 7997
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    if-gez v0, :cond_0

    .line 7999
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getSerializedSize()I

    .line 8001
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return v0
.end method

.method public getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "index"    # I

    .line 7944
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method

.method public getMwiMsgDetailCount()I
    .locals 1

    .line 7942
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation

    .line 7940
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    return-object v0
.end method

.method public getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "index"    # I

    .line 7894
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method

.method public getMwiMsgSummaryCount()I
    .locals 1

    .line 7892
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgSummaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation

    .line 7890
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 8006
    const/4 v0, 0x0

    .line 8007
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 8008
    .local v2, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v3, 0x1

    .line 8009
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8010
    .end local v2    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    goto :goto_0

    .line 8011
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8012
    const/4 v1, 0x2

    .line 8013
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8015
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 8016
    .local v2, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v3, 0x3

    .line 8017
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8018
    .end local v2    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    goto :goto_1

    .line 8019
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 8020
    return v0
.end method

.method public getUeAddress()Ljava/lang/String;
    .locals 1

    .line 7922
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUeAddress()Z
    .locals 1

    .line 7923
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 7977
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

    .line 7880
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8028
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8029
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 8033
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8034
    return-object p0

    .line 8049
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    .line 8050
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8051
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 8052
    goto :goto_1

    .line 8045
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 8046
    goto :goto_1

    .line 8039
    :cond_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    .line 8040
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8041
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 8042
    nop

    .line 8055
    .end local v0    # "tag":I
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_3
    :goto_1
    goto :goto_0

    .line 8031
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public setMwiMsgDetail(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7947
    if-eqz p2, :cond_0

    .line 7950
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7951
    return-object p0

    .line 7948
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setMwiMsgSummary(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7897
    if-eqz p2, :cond_0

    .line 7900
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7901
    return-object p0

    .line 7898
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7926
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7927
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7983
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 7984
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7985
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    goto :goto_0

    .line 7986
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7987
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7989
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 7990
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7991
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    goto :goto_1

    .line 7992
    :cond_2
    return-void
.end method
