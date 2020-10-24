.class public final Lorg/codeaurora/ims/ImsQmiIF$Resume;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resume"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private hasCallId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8171
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8176
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->callId_:I

    .line 8208
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->cachedSize:I

    .line 8171
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Resume;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8260
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Resume;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 8254
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Resume;
    .locals 1

    .line 8191
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$Resume;

    .line 8192
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->cachedSize:I

    .line 8193
    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$Resume;
    .locals 1

    .line 8185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->hasCallId:Z

    .line 8186
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->callId_:I

    .line 8187
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 8211
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->cachedSize:I

    if-gez v0, :cond_0

    .line 8213
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->getSerializedSize()I

    .line 8215
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    .line 8177
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->callId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8220
    const/4 v0, 0x0

    .line 8221
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8222
    const/4 v1, 0x1

    .line 8223
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->getCallId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8225
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->cachedSize:I

    .line 8226
    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .line 8178
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->hasCallId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 8197
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

    .line 8168
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Resume;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8234
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8235
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 8239
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8240
    return-object p0

    .line 8245
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    .line 8249
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 8237
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;
    .locals 1
    .param p1, "value"    # I

    .line 8180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->hasCallId:Z

    .line 8181
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Resume;->callId_:I

    .line 8182
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

    .line 8203
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8204
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->getCallId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 8206
    :cond_0
    return-void
.end method
