.class public final Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dtmf"
.end annotation


# static fields
.field public static final DTMF_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private dtmf_:Ljava/lang/String;

.field private hasDtmf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3776
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3781
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    .line 3813
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    .line 3776
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3865
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3859
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1

    .line 3796
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->clearDtmf()Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 3797
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    .line 3798
    return-object p0
.end method

.method public clearDtmf()Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1

    .line 3790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf:Z

    .line 3791
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    .line 3792
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3816
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    if-gez v0, :cond_0

    .line 3818
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->getSerializedSize()I

    .line 3820
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    return v0
.end method

.method public getDtmf()Ljava/lang/String;
    .locals 1

    .line 3782
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3825
    const/4 v0, 0x0

    .line 3826
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3827
    const/4 v1, 0x1

    .line 3828
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->getDtmf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3830
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    .line 3831
    return v0
.end method

.method public hasDtmf()Z
    .locals 1

    .line 3783
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3802
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

    .line 3773
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3839
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3840
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3844
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3845
    return-object p0

    .line 3850
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 3854
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 3842
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf:Z

    .line 3786
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    .line 3787
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

    .line 3808
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3809
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->getDtmf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3811
    :cond_0
    return-void
.end method
