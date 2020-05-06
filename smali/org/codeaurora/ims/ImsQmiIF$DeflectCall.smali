.class public final Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeflectCall"
.end annotation


# static fields
.field public static final CONN_INDEX_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private connIndex_:I

.field private hasConnIndex:Z

.field private hasNumber:Z

.field private number_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2953
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2958
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    .line 2975
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    .line 3011
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    .line 2953
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3071
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3065
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1

    .prologue
    .line 2990
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 2991
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 2992
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    .line 2993
    return-object p0
.end method

.method public clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2967
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex:Z

    .line 2968
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    .line 2969
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1

    .prologue
    .line 2984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber:Z

    .line 2985
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    .line 2986
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3014
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    if-gez v0, :cond_0

    .line 3016
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getSerializedSize()I

    .line 3018
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    return v0
.end method

.method public getConnIndex()I
    .locals 1

    .prologue
    .line 2959
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3023
    const/4 v0, 0x0

    .line 3024
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3026
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getConnIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 3025
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3028
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3030
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 3029
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3032
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    .line 3033
    return v0
.end method

.method public hasConnIndex()Z
    .locals 1

    .prologue
    .line 2960
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2977
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2997
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
    .line 3036
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3041
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3042
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3046
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3047
    return-object p0

    .line 3044
    :sswitch_0
    return-object p0

    .line 3052
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    goto :goto_0

    .line 3056
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    goto :goto_0

    .line 3042
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex:Z

    .line 2963
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    .line 2964
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber:Z

    .line 2980
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    .line 2981
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
    .line 3003
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3004
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getConnIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3006
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3007
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3009
    :cond_1
    return-void
.end method
