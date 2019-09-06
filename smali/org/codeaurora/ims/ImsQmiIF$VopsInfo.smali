.class public final Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VopsInfo"
.end annotation


# static fields
.field public static final ISVOPSENABLED_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIsVopsEnabled:Z

.field private isVopsEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9772
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->isVopsEnabled_:Z

    .line 9809
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->cachedSize:I

    .line 9772
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9861
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9855
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    .locals 1

    .prologue
    .line 9792
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->clearIsVopsEnabled()Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    .line 9793
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->cachedSize:I

    .line 9794
    return-object p0
.end method

.method public clearIsVopsEnabled()Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9786
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->hasIsVopsEnabled:Z

    .line 9787
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->isVopsEnabled_:Z

    .line 9788
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9812
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9814
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->getSerializedSize()I

    .line 9816
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->cachedSize:I

    return v0
.end method

.method public getIsVopsEnabled()Z
    .locals 1

    .prologue
    .line 9778
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->isVopsEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9821
    const/4 v0, 0x0

    .line 9822
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->hasIsVopsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9824
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->getIsVopsEnabled()Z

    move-result v1

    const/4 v2, 0x1

    .line 9823
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 9826
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->cachedSize:I

    .line 9827
    return v0
.end method

.method public hasIsVopsEnabled()Z
    .locals 1

    .prologue
    .line 9779
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->hasIsVopsEnabled:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9798
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
    .line 9831
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9836
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9840
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9841
    return-object p0

    .line 9838
    :sswitch_0
    return-object p0

    .line 9846
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->setIsVopsEnabled(Z)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    goto :goto_0

    .line 9836
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIsVopsEnabled(Z)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->hasIsVopsEnabled:Z

    .line 9782
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->isVopsEnabled_:Z

    .line 9783
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
    .line 9804
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->hasIsVopsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9805
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->getIsVopsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9803
    :cond_0
    return-void
.end method
