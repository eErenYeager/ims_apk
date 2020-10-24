.class public final Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiEndpointInfo"
.end annotation


# static fields
.field public static final DIALOGEVENTPACKAGE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private dialogEventPackage_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasDialogEventPackage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8704
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8709
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->dialogEventPackage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8741
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->cachedSize:I

    .line 8704
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8793
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 8787
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
    .locals 1

    .line 8724
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->clearDialogEventPackage()Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    .line 8725
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->cachedSize:I

    .line 8726
    return-object p0
.end method

.method public clearDialogEventPackage()Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
    .locals 1

    .line 8718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->hasDialogEventPackage:Z

    .line 8719
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->dialogEventPackage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8720
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 8744
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 8746
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->getSerializedSize()I

    .line 8748
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->cachedSize:I

    return v0
.end method

.method public getDialogEventPackage()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 8710
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->dialogEventPackage_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8753
    const/4 v0, 0x0

    .line 8754
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->hasDialogEventPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8755
    const/4 v1, 0x1

    .line 8756
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->getDialogEventPackage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8758
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->cachedSize:I

    .line 8759
    return v0
.end method

.method public hasDialogEventPackage()Z
    .locals 1

    .line 8711
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->hasDialogEventPackage:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 8730
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

    .line 8701
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8767
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8768
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 8772
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8773
    return-object p0

    .line 8778
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->setDialogEventPackage(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;

    .line 8782
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 8770
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setDialogEventPackage(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->hasDialogEventPackage:Z

    .line 8714
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->dialogEventPackage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 8715
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

    .line 8736
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->hasDialogEventPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8737
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MultiEndpointInfo;->getDialogEventPackage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 8739
    :cond_0
    return-void
.end method
