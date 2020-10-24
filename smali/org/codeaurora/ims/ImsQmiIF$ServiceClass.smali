.class public final Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceClass"
.end annotation


# static fields
.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasServiceClass:Z

.field private serviceClass_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5116
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5121
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 5153
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 5116
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5205
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 5199
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .line 5136
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5137
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 5138
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .line 5130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    .line 5131
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 5132
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 5156
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    if-gez v0, :cond_0

    .line 5158
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getSerializedSize()I

    .line 5160
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5165
    const/4 v0, 0x0

    .line 5166
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5167
    const/4 v1, 0x1

    .line 5168
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5170
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->cachedSize:I

    .line 5171
    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .line 5122
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .line 5123
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5142
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

    .line 5113
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5179
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5180
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 5184
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5185
    return-object p0

    .line 5190
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5194
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 5182
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1
    .param p1, "value"    # I

    .line 5125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass:Z

    .line 5126
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->serviceClass_:I

    .line 5127
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

    .line 5148
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5149
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5151
    :cond_0
    return-void
.end method
