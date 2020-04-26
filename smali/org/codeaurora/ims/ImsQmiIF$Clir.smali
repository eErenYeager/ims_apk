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

    .line 2964
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2969
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 2986
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 3022
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 2964
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
    .line 3082
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
    .line 3076
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
    .line 3001
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->clearParamM()Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3002
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->clearParamN()Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3003
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3004
    return-object p0
.end method

.method public clearParamM()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2978
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    .line 2979
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 2980
    return-object p0
.end method

.method public clearParamN()Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2995
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    .line 2996
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 2997
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3025
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    if-gez v0, :cond_0

    .line 3027
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getSerializedSize()I

    .line 3029
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    return v0
.end method

.method public getParamM()I
    .locals 1

    .prologue
    .line 2970
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    return v0
.end method

.method public getParamN()I
    .locals 1

    .prologue
    .line 2987
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3034
    const/4 v0, 0x0

    .line 3035
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3037
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v1

    const/4 v2, 0x1

    .line 3036
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3039
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3041
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v1

    const/4 v2, 0x2

    .line 3040
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3043
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->cachedSize:I

    .line 3044
    return v0
.end method

.method public hasParamM()Z
    .locals 1

    .prologue
    .line 2971
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    return v0
.end method

.method public hasParamN()Z
    .locals 1

    .prologue
    .line 2988
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3008
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
    .line 3048
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
    .line 3052
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3053
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3057
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3058
    return-object p0

    .line 3055
    :sswitch_0
    return-object p0

    .line 3063
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamM(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    goto :goto_0

    .line 3067
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    goto :goto_0

    .line 3053
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
    .line 2973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM:Z

    .line 2974
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramM_:I

    .line 2975
    return-object p0
.end method

.method public setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN:Z

    .line 2991
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Clir;->paramN_:I

    .line 2992
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
    .line 3014
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3017
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->hasParamN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3018
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3013
    :cond_1
    return-void
.end method
