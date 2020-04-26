.class public final Lorg/codeaurora/ims/ImsQmiIF$Registration;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Registration"
.end annotation


# static fields
.field public static final ERRORCODE_FIELD_NUMBER:I = 0x2

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x3

.field public static final NOT_REGISTERED:I = 0x2

.field public static final REGISTERED:I = 0x1

.field public static final REGISTERING:I = 0x3

.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorCode_:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasState:Z

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3507
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3517
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3534
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3551
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3591
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3507
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3659
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3653
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3566
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3567
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3568
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3569
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3570
    return-object p0
.end method

.method public clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3543
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    .line 3544
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3545
    return-object p0
.end method

.method public clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    .line 3561
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3562
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3527
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3528
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3594
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    if-gez v0, :cond_0

    .line 3596
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getSerializedSize()I

    .line 3598
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 3535
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3603
    const/4 v0, 0x0

    .line 3604
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3606
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 3605
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3608
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3610
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v1

    const/4 v2, 0x2

    .line 3609
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3612
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3614
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 3613
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3616
    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3617
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 3519
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 3536
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 3553
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 3518
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3574
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
    .line 3621
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3625
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3626
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3630
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3631
    return-object p0

    .line 3628
    :sswitch_0
    return-object p0

    .line 3636
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 3640
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 3644
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 3626
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    .line 3539
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3540
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    .line 3556
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3557
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3522
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3523
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
    .line 3580
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3581
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3583
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3584
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3586
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3587
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3579
    :cond_2
    return-void
.end method
