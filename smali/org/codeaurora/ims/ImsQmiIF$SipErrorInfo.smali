.class public final Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SipErrorInfo"
.end annotation


# static fields
.field public static final SIPERRORCODE_FIELD_NUMBER:I = 0x1

.field public static final SIPERRORSTRING_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasSipErrorCode:Z

.field private hasSipErrorString:Z

.field private sipErrorCode_:I

.field private sipErrorString_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9852
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9857
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    .line 9874
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    .line 9910
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    .line 9852
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9970
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 9964
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .line 9889
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->clearSipErrorCode()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 9890
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->clearSipErrorString()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 9891
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    .line 9892
    return-object p0
.end method

.method public clearSipErrorCode()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .line 9866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode:Z

    .line 9867
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    .line 9868
    return-object p0
.end method

.method public clearSipErrorString()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .line 9883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString:Z

    .line 9884
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    .line 9885
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 9913
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9915
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSerializedSize()I

    .line 9917
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9922
    const/4 v0, 0x0

    .line 9923
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9924
    const/4 v1, 0x1

    .line 9925
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9927
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9928
    const/4 v1, 0x2

    .line 9929
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9931
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->cachedSize:I

    .line 9932
    return v0
.end method

.method public getSipErrorCode()I
    .locals 1

    .line 9858
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    return v0
.end method

.method public getSipErrorString()Ljava/lang/String;
    .locals 1

    .line 9875
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSipErrorCode()Z
    .locals 1

    .line 9859
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode:Z

    return v0
.end method

.method public hasSipErrorString()Z
    .locals 1

    .line 9876
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 9896
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

    .line 9849
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9940
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9941
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 9945
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9946
    return-object p0

    .line 9955
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->setSipErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    goto :goto_1

    .line 9951
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->setSipErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 9952
    nop

    .line 9959
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 9943
    .restart local v0    # "tag":I
    :cond_3
    return-object p0
.end method

.method public setSipErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p1, "value"    # I

    .line 9861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode:Z

    .line 9862
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorCode_:I

    .line 9863
    return-object p0
.end method

.method public setSipErrorString(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString:Z

    .line 9879
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->sipErrorString_:Ljava/lang/String;

    .line 9880
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

    .line 9902
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9903
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9905
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->hasSipErrorString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9906
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9908
    :cond_1
    return-void
.end method
