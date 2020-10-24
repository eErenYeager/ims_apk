.class public final Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioStateChanged"
.end annotation


# static fields
.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4888
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4893
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    .line 4925
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    .line 4888
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4977
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 4971
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1

    .line 4908
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->clearState()Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    .line 4909
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    .line 4910
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1

    .line 4902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState:Z

    .line 4903
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    .line 4904
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4928
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    if-gez v0, :cond_0

    .line 4930
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getSerializedSize()I

    .line 4932
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4937
    const/4 v0, 0x0

    .line 4938
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4939
    const/4 v1, 0x1

    .line 4940
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4942
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    .line 4943
    return v0
.end method

.method public getState()I
    .locals 1

    .line 4895
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    return v0
.end method

.method public hasState()Z
    .locals 1

    .line 4894
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4914
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

    .line 4885
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4951
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4952
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4956
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4957
    return-object p0

    .line 4962
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    .line 4966
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 4954
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1
    .param p1, "value"    # I

    .line 4897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState:Z

    .line 4898
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    .line 4899
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

    .line 4920
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4921
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4923
    :cond_0
    return-void
.end method
