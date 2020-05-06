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

    .prologue
    .line 3525
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3530
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    .line 3562
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    .line 3525
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

    .prologue
    .line 3614
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

    .prologue
    .line 3608
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

    .prologue
    .line 3545
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->clearDtmf()Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 3546
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    .line 3547
    return-object p0
.end method

.method public clearDtmf()Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1

    .prologue
    .line 3539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf:Z

    .line 3540
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    .line 3541
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3565
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    if-gez v0, :cond_0

    .line 3567
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->getSerializedSize()I

    .line 3569
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    return v0
.end method

.method public getDtmf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3531
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3574
    const/4 v0, 0x0

    .line 3575
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3577
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->getDtmf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3576
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3579
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->cachedSize:I

    .line 3580
    return v0
.end method

.method public hasDtmf()Z
    .locals 1

    .prologue
    .line 3532
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3551
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
    .line 3583
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3588
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3589
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3593
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3594
    return-object p0

    .line 3591
    :sswitch_0
    return-object p0

    .line 3599
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    goto :goto_0

    .line 3589
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf:Z

    .line 3535
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->dtmf_:Ljava/lang/String;

    .line 3536
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
    .line 3557
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->hasDtmf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3558
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->getDtmf()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3560
    :cond_0
    return-void
.end method
