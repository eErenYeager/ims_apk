.class public final Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuppSvcStatus"
.end annotation


# static fields
.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6809
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6814
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    .line 6846
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    .line 6809
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6898
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 6892
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1

    .line 6829
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 6830
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    .line 6831
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1

    .line 6823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus:Z

    .line 6824
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    .line 6825
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 6849
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 6851
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->getSerializedSize()I

    .line 6853
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6858
    const/4 v0, 0x0

    .line 6859
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6860
    const/4 v1, 0x1

    .line 6861
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6863
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->cachedSize:I

    .line 6864
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 6816
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 6815
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 6835
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

    .line 6806
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6872
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6873
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 6877
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6878
    return-object p0

    .line 6883
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 6887
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 6875
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    .locals 1
    .param p1, "value"    # I

    .line 6818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus:Z

    .line 6819
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->status_:I

    .line 6820
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

    .line 6841
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6842
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6844
    :cond_0
    return-void
.end method
