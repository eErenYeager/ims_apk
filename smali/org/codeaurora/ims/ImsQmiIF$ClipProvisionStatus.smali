.class public final Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipProvisionStatus"
.end annotation


# static fields
.field public static final CLIP_STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private clipStatus_:I

.field private hasClipStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4705
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4710
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 4742
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 4705
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4794
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4788
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    .prologue
    .line 4725
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 4726
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 4727
    return-object p0
.end method

.method public clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4719
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    .line 4720
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 4721
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4745
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 4747
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getSerializedSize()I

    .line 4749
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return v0
.end method

.method public getClipStatus()I
    .locals 1

    .prologue
    .line 4712
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4754
    const/4 v0, 0x0

    .line 4755
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4757
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 4756
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4759
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 4760
    return v0
.end method

.method public hasClipStatus()Z
    .locals 1

    .prologue
    .line 4711
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4731
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
    .line 4763
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4769
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4773
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4774
    return-object p0

    .line 4771
    :sswitch_0
    return-object p0

    .line 4779
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    goto :goto_0

    .line 4769
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    .line 4715
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 4716
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
    .line 4737
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4738
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4740
    :cond_0
    return-void
.end method
