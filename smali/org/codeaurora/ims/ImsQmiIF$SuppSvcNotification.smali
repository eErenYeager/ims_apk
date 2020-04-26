.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcNotification"
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final CONNID_FIELD_NUMBER:I = 0x6

.field public static final HISTORY_INFO_FIELD_NUMBER:I = 0x7

.field public static final INDEX_FIELD_NUMBER:I = 0x3

.field public static final NOTIFICATIONTYPE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private code_:I

.field private connId_:I

.field private hasCode:Z

.field private hasConnId:Z

.field private hasHistoryInfo:Z

.field private hasIndex:Z

.field private hasNotificationType:Z

.field private hasNumber:Z

.field private hasType:Z

.field private historyInfo_:Ljava/lang/String;

.field private index_:I

.field private notificationType_:I

.field private number_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5983
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5988
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 6005
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6022
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6039
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6056
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6073
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6090
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6146
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 5983
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6246
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6240
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6105
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6106
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6107
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6108
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6109
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6110
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6111
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 6112
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6113
    return-object p0
.end method

.method public clearCode()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6014
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6015
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6016
    return-object p0
.end method

.method public clearConnId()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6082
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6083
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6084
    return-object p0
.end method

.method public clearHistoryInfo()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6101
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6031
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6032
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6033
    return-object p0
.end method

.method public clearNotificationType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5997
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 5998
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 5999
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    .line 6065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6066
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6067
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6048
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6049
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6050
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6149
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    if-gez v0, :cond_0

    .line 6151
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getSerializedSize()I

    .line 6153
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 6006
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    return v0
.end method

.method public getConnId()I
    .locals 1

    .prologue
    .line 6074
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    return v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6091
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 6023
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 5990
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6057
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6158
    const/4 v0, 0x0

    .line 6159
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6161
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v1

    const/4 v2, 0x1

    .line 6160
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6163
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6165
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v1

    const/4 v2, 0x2

    .line 6164
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6167
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6169
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    .line 6168
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6171
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6173
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v1

    const/4 v2, 0x4

    .line 6172
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6175
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6177
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 6176
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6179
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6181
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v1

    const/4 v2, 0x6

    .line 6180
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6183
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6185
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 6184
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6187
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->cachedSize:I

    .line 6188
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6040
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    return v0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 6007
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    return v0
.end method

.method public hasConnId()Z
    .locals 1

    .prologue
    .line 6075
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    return v0
.end method

.method public hasHistoryInfo()Z
    .locals 1

    .prologue
    .line 6092
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 6024
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    return v0
.end method

.method public hasNotificationType()Z
    .locals 1

    .prologue
    .line 5989
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 6058
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6041
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6117
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
    .line 6192
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6197
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6201
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6202
    return-object p0

    .line 6199
    :sswitch_0
    return-object p0

    .line 6207
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6211
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6215
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6219
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6223
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6227
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6231
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    goto :goto_0

    .line 6197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setCode(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode:Z

    .line 6010
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->code_:I

    .line 6011
    return-object p0
.end method

.method public setConnId(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId:Z

    .line 6078
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->connId_:I

    .line 6079
    return-object p0
.end method

.method public setHistoryInfo(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo:Z

    .line 6095
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->historyInfo_:Ljava/lang/String;

    .line 6096
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex:Z

    .line 6027
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->index_:I

    .line 6028
    return-object p0
.end method

.method public setNotificationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType:Z

    .line 5993
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->notificationType_:I

    .line 5994
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber:Z

    .line 6061
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->number_:Ljava/lang/String;

    .line 6062
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType:Z

    .line 6044
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->type_:I

    .line 6045
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
    .line 6123
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNotificationType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6124
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6126
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6127
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6129
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6130
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6132
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6133
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getType()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6135
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6136
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6138
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasConnId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6139
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6141
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHistoryInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6142
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6122
    :cond_6
    return-void
.end method
