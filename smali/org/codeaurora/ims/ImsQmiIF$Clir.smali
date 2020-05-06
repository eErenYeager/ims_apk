.class public final Lorg/codeaurora/ims/ImsQmiIF$Clir;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clir"
.end annotation


# static fields
.field public static final PARAM_M_FIELD_NUMBER:I = 0x1

.field public static final PARAM_N_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasParamM:Z

.field private hasParamN:Z

.field private paramM_:I

.field private paramN_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3079
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3084
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 3101
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3137
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3079
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3197
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3191
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .prologue
    .line 3116
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->clearParamM()Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3117
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->clearParamN()Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3118
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3119
    return-object p0
.end method

.method public clearParamM()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3093
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    .line 3094
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 3095
    return-object p0
.end method

.method public clearParamN()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3110
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    .line 3111
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3112
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3140
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    if-gez v0, :cond_0

    .line 3142
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getSerializedSize()I

    .line 3144
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    return v0
.end method

.method public getParamM()I
    .locals 1

    .prologue
    .line 3085
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    return v0
.end method

.method public getParamN()I
    .locals 1

    .prologue
    .line 3102
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3149
    const/4 v0, 0x0

    .line 3150
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3152
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v1

    const/4 v2, 0x1

    .line 3151
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3154
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3156
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v1

    const/4 v2, 0x2

    .line 3155
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3158
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3159
    return v0
.end method

.method public hasParamM()Z
    .locals 1

    .prologue
    .line 3086
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    return v0
.end method

.method public hasParamN()Z
    .locals 1

    .prologue
    .line 3103
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3123
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
    .line 3162
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3168
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3172
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3173
    return-object p0

    .line 3170
    :sswitch_0
    return-object p0

    .line 3178
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamM(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    goto :goto_0

    .line 3182
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    goto :goto_0

    .line 3168
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setParamM(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    .line 3089
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 3090
    return-object p0
.end method

.method public setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    .line 3106
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3107
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
    .line 3129
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3130
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3132
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3133
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3135
    :cond_1
    return-void
.end method
