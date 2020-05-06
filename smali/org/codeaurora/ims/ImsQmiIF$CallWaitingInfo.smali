.class public final Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallWaitingInfo"
.end annotation


# static fields
.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x2

.field public static final SERVICE_STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasServiceClass:Z

.field private hasServiceStatus:Z

.field private serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

.field private serviceStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5174
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5179
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    .line 5196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5235
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    .line 5174
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5297
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5291
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    .prologue
    .line 5214
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->clearServiceStatus()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 5215
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 5216
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    .line 5217
    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    .prologue
    .line 5208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass:Z

    .line 5209
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5210
    return-object p0
.end method

.method public clearServiceStatus()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5188
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus:Z

    .line 5189
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    .line 5190
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5238
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5240
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getSerializedSize()I

    .line 5242
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5247
    const/4 v0, 0x0

    .line 5248
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5250
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 5249
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5252
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5254
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v1

    const/4 v2, 0x2

    .line 5253
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5256
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    .line 5257
    return v0
.end method

.method public getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    .prologue
    .line 5198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method

.method public getServiceStatus()I
    .locals 1

    .prologue
    .line 5181
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    .prologue
    .line 5197
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass:Z

    return v0
.end method

.method public hasServiceStatus()Z
    .locals 1

    .prologue
    .line 5180
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5221
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
    .line 5260
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5266
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5270
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5271
    return-object p0

    .line 5268
    :sswitch_0
    return-object p0

    .line 5276
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    goto :goto_0

    .line 5280
    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 5281
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5282
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    goto :goto_0

    .line 5266
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .prologue
    .line 5200
    if-nez p1, :cond_0

    .line 5201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass:Z

    .line 5204
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 5205
    return-object p0
.end method

.method public setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus:Z

    .line 5184
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    .line 5185
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
    .line 5227
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5228
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5230
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5231
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5233
    :cond_1
    return-void
.end method
