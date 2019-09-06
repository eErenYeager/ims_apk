.class public final Lorg/codeaurora/ims/ImsQmiIF$Hangup;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangup"
.end annotation


# static fields
.field public static final CONF_ID_FIELD_NUMBER:I = 0x4

.field public static final CONN_INDEX_FIELD_NUMBER:I = 0x1

.field public static final CONN_URI_FIELD_NUMBER:I = 0x3

.field public static final FAILCAUSERESPONSE_FIELD_NUMBER:I = 0x5

.field public static final MULTI_PARTY_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private confId_:I

.field private connIndex_:I

.field private connUri_:Ljava/lang/String;

.field private failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

.field private hasConfId:Z

.field private hasConnIndex:Z

.field private hasConnUri:Z

.field private hasFailCauseResponse:Z

.field private hasMultiParty:Z

.field private multiParty_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3003
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3008
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 3025
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 3042
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 3059
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 3076
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3127
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 3003
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3213
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3207
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    .line 3094
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3095
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3096
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3097
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3098
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3099
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 3100
    return-object p0
.end method

.method public clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3068
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    .line 3069
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 3070
    return-object p0
.end method

.method public clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3017
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    .line 3018
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 3019
    return-object p0
.end method

.method public clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    .line 3051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    .line 3052
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 3053
    return-object p0
.end method

.method public clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    .line 3088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    .line 3089
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3090
    return-object p0
.end method

.method public clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3034
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    .line 3035
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 3036
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3130
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    if-gez v0, :cond_0

    .line 3132
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getSerializedSize()I

    .line 3134
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return v0
.end method

.method public getConfId()I
    .locals 1

    .prologue
    .line 3060
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    return v0
.end method

.method public getConnIndex()I
    .locals 1

    .prologue
    .line 3009
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    return v0
.end method

.method public getConnUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3043
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getMultiParty()Z
    .locals 1

    .prologue
    .line 3026
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3139
    const/4 v0, 0x0

    .line 3140
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3142
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 3141
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3144
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3146
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v1

    const/4 v2, 0x2

    .line 3145
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3148
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3150
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 3149
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3152
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3154
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v1

    const/4 v2, 0x4

    .line 3153
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3156
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3158
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/4 v2, 0x5

    .line 3157
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3160
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 3161
    return v0
.end method

.method public hasConfId()Z
    .locals 1

    .prologue
    .line 3061
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    return v0
.end method

.method public hasConnIndex()Z
    .locals 1

    .prologue
    .line 3010
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    return v0
.end method

.method public hasConnUri()Z
    .locals 1

    .prologue
    .line 3044
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    return v0
.end method

.method public hasFailCauseResponse()Z
    .locals 1

    .prologue
    .line 3077
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    return v0
.end method

.method public hasMultiParty()Z
    .locals 1

    .prologue
    .line 3027
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3104
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
    .line 3165
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3170
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3174
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3175
    return-object p0

    .line 3172
    :sswitch_0
    return-object p0

    .line 3180
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 3184
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 3188
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 3192
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 3196
    :sswitch_5
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 3197
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3198
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    .line 3170
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    .line 3064
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 3065
    return-object p0
.end method

.method public setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    .line 3013
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 3014
    return-object p0
.end method

.method public setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    .line 3047
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 3048
    return-object p0
.end method

.method public setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 3080
    if-nez p1, :cond_0

    .line 3081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3083
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    .line 3084
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3085
    return-object p0
.end method

.method public setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    .line 3030
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 3031
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
    .line 3110
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3113
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3114
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3116
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3117
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3119
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3120
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3122
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3123
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3109
    :cond_4
    return-void
.end method
