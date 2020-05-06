.class public final Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CbNumListType"
.end annotation


# static fields
.field public static final CB_NUM_LIST_FIELD_NUMBER:I = 0x2

.field public static final SERVICECLASS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cbNumList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumList;",
            ">;"
        }
    .end annotation
.end field

.field private hasServiceClass:Z

.field private serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5025
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5030
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5049
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    .line 5102
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    .line 5025
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5166
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5160
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    return-object v0
.end method


# virtual methods
.method public addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .prologue
    .line 5066
    if-nez p1, :cond_0

    .line 5067
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5069
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    .line 5072
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5073
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 5082
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->clearCbNumList()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 5083
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    .line 5084
    return-object p0
.end method

.method public clearCbNumList()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .prologue
    .line 5076
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    .line 5077
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1

    .prologue
    .line 5042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass:Z

    .line 5043
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5044
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5105
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    if-gez v0, :cond_0

    .line 5107
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getSerializedSize()I

    .line 5109
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    return v0
.end method

.method public getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5056
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    return-object v0
.end method

.method public getCbNumListCount()I
    .locals 1

    .prologue
    .line 5054
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCbNumListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$CbNumList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5052
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 5114
    const/4 v2, 0x0

    .line 5115
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5117
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v3

    const/4 v4, 0x1

    .line 5116
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/lit8 v2, v3, 0x0

    .line 5119
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5121
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    const/4 v3, 0x2

    .line 5120
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 5123
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    :cond_1
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cachedSize:I

    .line 5124
    return v2
.end method

.method public getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .prologue
    .line 5032
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .prologue
    .line 5031
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5088
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
    .line 5127
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5133
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5137
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5138
    return-object p0

    .line 5135
    :sswitch_0
    return-object p0

    .line 5143
    :sswitch_1
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 5144
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5145
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    goto :goto_0

    .line 5149
    .end local v2    # "value":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    .line 5150
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5151
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    goto :goto_0

    .line 5133
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCbNumList(ILorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .prologue
    .line 5059
    if-nez p2, :cond_0

    .line 5060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5062
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->cbNumList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5063
    return-object p0
.end method

.method public setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .prologue
    .line 5034
    if-nez p1, :cond_0

    .line 5035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5037
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass:Z

    .line 5038
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5039
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5094
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5095
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5097
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5098
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 5100
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    :cond_1
    return-void
.end method
