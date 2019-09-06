.class public final Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CbNumList"
.end annotation


# static fields
.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasNumber:Z

.field private hasStatus:Z

.field private number_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5230
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5235
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->status_:I

    .line 5252
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->number_:Ljava/lang/String;

    .line 5288
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->cachedSize:I

    .line 5230
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5348
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5342
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1

    .prologue
    .line 5267
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5268
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 5269
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->cachedSize:I

    .line 5270
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1

    .prologue
    .line 5261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasNumber:Z

    .line 5262
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->number_:Ljava/lang/String;

    .line 5263
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5244
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasStatus:Z

    .line 5245
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->status_:I

    .line 5246
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5291
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->cachedSize:I

    if-gez v0, :cond_0

    .line 5293
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getSerializedSize()I

    .line 5295
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->cachedSize:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5253
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5300
    const/4 v0, 0x0

    .line 5301
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5303
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 5302
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5305
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5307
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 5306
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5309
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->cachedSize:I

    .line 5310
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 5237
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->status_:I

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 5254
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasNumber:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 5236
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5274
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
    .line 5314
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5319
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5323
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5324
    return-object p0

    .line 5321
    :sswitch_0
    return-object p0

    .line 5329
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    goto :goto_0

    .line 5333
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    goto :goto_0

    .line 5319
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasNumber:Z

    .line 5257
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->number_:Ljava/lang/String;

    .line 5258
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasStatus:Z

    .line 5240
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->status_:I

    .line 5241
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
    .line 5280
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5281
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5283
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5279
    :cond_1
    return-void
.end method
