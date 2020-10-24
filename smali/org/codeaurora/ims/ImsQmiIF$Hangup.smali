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

    .line 2986
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2991
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 3008
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 3025
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 3042
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 3059
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3110
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 2986
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

    .line 3196
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

    .line 3190
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

    .line 3077
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3078
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3079
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3080
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3081
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3082
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 3083
    return-object p0
.end method

.method public clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .line 3051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    .line 3052
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 3053
    return-object p0
.end method

.method public clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .line 3000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    .line 3001
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 3002
    return-object p0
.end method

.method public clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .line 3034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    .line 3035
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 3036
    return-object p0
.end method

.method public clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .line 3071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    .line 3072
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3073
    return-object p0
.end method

.method public clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    .line 3017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    .line 3018
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 3019
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3113
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    if-gez v0, :cond_0

    .line 3115
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getSerializedSize()I

    .line 3117
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return v0
.end method

.method public getConfId()I
    .locals 1

    .line 3043
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    return v0
.end method

.method public getConnIndex()I
    .locals 1

    .line 2992
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    return v0
.end method

.method public getConnUri()Ljava/lang/String;
    .locals 1

    .line 3026
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .line 3061
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getMultiParty()Z
    .locals 1

    .line 3009
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3122
    const/4 v0, 0x0

    .line 3123
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3124
    const/4 v1, 0x1

    .line 3125
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3127
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3128
    const/4 v1, 0x2

    .line 3129
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3131
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3132
    const/4 v1, 0x3

    .line 3133
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3135
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3136
    const/4 v1, 0x4

    .line 3137
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3139
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3140
    const/4 v1, 0x5

    .line 3141
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3143
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    .line 3144
    return v0
.end method

.method public hasConfId()Z
    .locals 1

    .line 3044
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    return v0
.end method

.method public hasConnIndex()Z
    .locals 1

    .line 2993
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    return v0
.end method

.method public hasConnUri()Z
    .locals 1

    .line 3027
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    return v0
.end method

.method public hasFailCauseResponse()Z
    .locals 1

    .line 3060
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    return v0
.end method

.method public hasMultiParty()Z
    .locals 1

    .line 3010
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3087
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

    .line 2983
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3152
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3153
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 3157
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3158
    return-object p0

    .line 3179
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 3180
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3181
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3182
    goto :goto_1

    .line 3175
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3176
    goto :goto_1

    .line 3171
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3172
    goto :goto_1

    .line 3167
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3168
    goto :goto_1

    .line 3163
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 3164
    nop

    .line 3185
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 3155
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # I

    .line 3046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    .line 3047
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    .line 3048
    return-object p0
.end method

.method public setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # I

    .line 2995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    .line 2996
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    .line 2997
    return-object p0
.end method

.method public setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    .line 3030
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    .line 3031
    return-object p0
.end method

.method public setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3063
    if-eqz p1, :cond_0

    .line 3066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    .line 3067
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 3068
    return-object p0

    .line 3064
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .param p1, "value"    # Z

    .line 3012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    .line 3013
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    .line 3014
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

    .line 3093
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3096
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3097
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3099
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3100
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3102
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3103
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3105
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3106
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3108
    :cond_4
    return-void
.end method
