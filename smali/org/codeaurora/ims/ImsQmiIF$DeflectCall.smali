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
    .line 2838
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2843
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    .line 2860
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    .line 2896
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    .line 2838
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
    .line 2956
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
    .line 2950
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
    .line 2875
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 2876
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 2877
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    .line 2878
    return-object p0
.end method

.method public clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2852
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex:Z

    .line 2853
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    .line 2854
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1

    .prologue
    .line 2869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber:Z

    .line 2870
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    .line 2871
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2899
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    if-gez v0, :cond_0

    .line 2901
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getSerializedSize()I

    .line 2903
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    return v0
.end method

.method public getConnIndex()I
    .locals 1

    .prologue
    .line 2844
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2861
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2908
    const/4 v0, 0x0

    .line 2909
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2911
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getConnIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 2910
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2913
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2915
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 2914
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2917
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->cachedSize:I

    .line 2918
    return v0
.end method

.method public hasConnIndex()Z
    .locals 1

    .prologue
    .line 2845
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2862
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2882
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
    .line 2922
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
    .line 2926
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2927
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2931
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2932
    return-object p0

    .line 2929
    :sswitch_0
    return-object p0

    .line 2937
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    goto :goto_0

    .line 2941
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    goto :goto_0

    .line 2927
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
    .line 2847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex:Z

    .line 2848
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->connIndex_:I

    .line 2849
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber:Z

    .line 2865
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->number_:Ljava/lang/String;

    .line 2866
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
    .line 2888
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasConnIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2889
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getConnIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2891
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2892
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2887
    :cond_1
    return-void
.end method
