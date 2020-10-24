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

    .line 4985
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4990
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 5007
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5046
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 4985
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

    .line 5108
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

    .line 5102
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

    .line 5025
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 5026
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 5027
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 5028
    return-object p0
.end method

.method public clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    .line 4999
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    .line 5000
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 5001
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    .line 5019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    .line 5020
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5021
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 5049
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 5051
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getSerializedSize()I

    .line 5053
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return v0
.end method

.method public getClipStatus()I
    .locals 1

    .line 4992
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .line 5009
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5058
    const/4 v0, 0x0

    .line 5059
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5060
    const/4 v1, 0x1

    .line 5061
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5063
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5064
    const/4 v1, 0x2

    .line 5065
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5067
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    .line 5068
    return v0
.end method

.method public hasClipStatus()Z
    .locals 1

    .line 4991
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .line 5008
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5032
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

    .line 4982
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5076
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5077
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 5081
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5082
    return-object p0

    .line 5091
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 5092
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5093
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 5094
    goto :goto_1

    .line 5087
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 5088
    nop

    .line 5097
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 5079
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p1, "value"    # I

    .line 4994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    .line 4995
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    .line 4996
    return-object p0
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5011
    if-eqz p1, :cond_0

    .line 5014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    .line 5015
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 5016
    return-object p0

    .line 5012
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5038
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5039
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5041
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5042
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5044
    :cond_1
    return-void
.end method
