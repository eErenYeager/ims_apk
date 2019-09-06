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
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mwiMsgSummary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private ueAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7900
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 7904
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7938
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7955
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 7954
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 8011
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7900
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

    .prologue
    .line 8083
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

    .prologue
    .line 8077
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

    .prologue
    .line 7971
    if-nez p1, :cond_0

    .line 7972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7974
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7977
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7978
    return-object p0
.end method

.method public addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .prologue
    .line 7921
    if-nez p1, :cond_0

    .line 7922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7924
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7927
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7928
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7986
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7987
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7988
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 7989
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 7990
    return-object p0
.end method

.method public clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    .line 7982
    return-object p0
.end method

.method public clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    .line 7932
    return-object p0
.end method

.method public clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    .prologue
    .line 7947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7948
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7949
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8014
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    if-gez v0, :cond_0

    .line 8016
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getSerializedSize()I

    .line 8018
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return v0
.end method

.method public getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7961
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method

.method public getMwiMsgDetailCount()I
    .locals 1

    .prologue
    .line 7959
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
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7957
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    return-object v0
.end method

.method public getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7911
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method

.method public getMwiMsgSummaryCount()I
    .locals 1

    .prologue
    .line 7909
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
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7907
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 8023
    const/4 v3, 0x0

    .line 8024
    .local v3, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 8026
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v4, 0x1

    .line 8025
    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 8028
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8030
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 8029
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8032
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 8034
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v4, 0x3

    .line 8033
    invoke-static {v4, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 8036
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_2
    iput v3, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    .line 8037
    return v3
.end method

.method public getUeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7939
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUeAddress()Z
    .locals 1

    .prologue
    .line 7940
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7994
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
    .line 8041
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8045
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8046
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8050
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8051
    return-object p0

    .line 8048
    :sswitch_0
    return-object p0

    .line 8056
    :sswitch_1
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    .line 8057
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8058
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 8062
    .end local v2    # "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 8066
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    .line 8067
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8068
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    .line 8046
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setMwiMsgDetail(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .prologue
    .line 7964
    if-nez p2, :cond_0

    .line 7965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7967
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7968
    return-object p0
.end method

.method public setMwiMsgSummary(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .prologue
    .line 7914
    if-nez p2, :cond_0

    .line 7915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7917
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7918
    return-object p0
.end method

.method public setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    .line 7943
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    .line 7944
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8000
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 8001
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 8003
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8004
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8006
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    .line 8007
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 7999
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    :cond_2
    return-void
.end method
