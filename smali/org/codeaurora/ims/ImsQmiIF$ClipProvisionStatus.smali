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

.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private clipStatus_:I

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private hasClipStatus:Z

.field private hasErrorDetails:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5002
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5007
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 5024
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5063
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 5002
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
    .line 5125
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
    .line 5119
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
    .line 5042
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 5043
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 5044
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 5045
    return-object p0
.end method

.method public clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5016
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    .line 5017
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 5018
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    .prologue
    .line 5036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    .line 5037
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5038
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5066
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 5068
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getSerializedSize()I

    .line 5070
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return v0
.end method

.method public getClipStatus()I
    .locals 1

    .prologue
    .line 5009
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    .line 5026
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5075
    const/4 v0, 0x0

    .line 5076
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5078
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v1

    const/4 v2, 0x1

    .line 5077
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5080
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5082
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    const/4 v2, 0x2

    .line 5081
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5084
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 5085
    return v0
.end method

.method public hasClipStatus()Z
    .locals 1

    .prologue
    .line 5008
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .prologue
    .line 5025
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5049
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
    .line 5089
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5093
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5094
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5098
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5099
    return-object p0

    .line 5096
    :sswitch_0
    return-object p0

    .line 5104
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    goto :goto_0

    .line 5108
    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 5109
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5110
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    goto :goto_0

    .line 5094
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    .line 5012
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 5013
    return-object p0
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .prologue
    .line 5028
    if-nez p1, :cond_0

    .line 5029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5031
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    .line 5032
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5033
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
    .line 5055
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5056
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5058
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5059
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5054
    :cond_1
    return-void
.end method
