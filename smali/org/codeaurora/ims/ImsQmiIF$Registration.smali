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

.field public static final PASSOCIATEDURIS_FIELD_NUMBER:I = 0x5

.field public static final RADIOTECH_FIELD_NUMBER:I = 0x4

.field public static final REGISTERED:I = 0x1

.field public static final REGISTERING:I = 0x3

.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorCode_:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasPAssociatedUris:Z

.field private hasRadioTech:Z

.field private hasState:Z

.field private pAssociatedUris_:Ljava/lang/String;

.field private radioTech_:I

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3873
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3883
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3900
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3917
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3934
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    .line 3951
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    .line 3999
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3873
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

    .line 4083
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

    .line 4077
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

    .line 3966
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3967
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3968
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3969
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearRadioTech()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3970
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearPAssociatedUris()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 3971
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3972
    return-object p0
.end method

.method public clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .line 3909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    .line 3910
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3911
    return-object p0
.end method

.method public clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .line 3926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    .line 3927
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3928
    return-object p0
.end method

.method public clearPAssociatedUris()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .line 3960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris:Z

    .line 3961
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    .line 3962
    return-object p0
.end method

.method public clearRadioTech()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .line 3943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech:Z

    .line 3944
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    .line 3945
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .line 3892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3893
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3894
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 4002
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    if-gez v0, :cond_0

    .line 4004
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getSerializedSize()I

    .line 4006
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 3901
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 3918
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssociatedUris()Ljava/lang/String;
    .locals 1

    .line 3952
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTech()I
    .locals 1

    .line 3936
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4011
    const/4 v0, 0x0

    .line 4012
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4013
    const/4 v1, 0x1

    .line 4014
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4016
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4017
    const/4 v1, 0x2

    .line 4018
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4020
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4021
    const/4 v1, 0x3

    .line 4022
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4024
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4025
    const/4 v1, 0x4

    .line 4026
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getRadioTech()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4028
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4029
    const/4 v1, 0x5

    .line 4030
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4032
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 4033
    return v0
.end method

.method public getState()I
    .locals 1

    .line 3885
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .line 3902
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .line 3919
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    return v0
.end method

.method public hasPAssociatedUris()Z
    .locals 1

    .line 3953
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris:Z

    return v0
.end method

.method public hasRadioTech()Z
    .locals 1

    .line 3935
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .line 3884
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3976
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

    .line 3870
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4041
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4042
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 4046
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4047
    return-object p0

    .line 4068
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setPAssociatedUris(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_1

    .line 4064
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setRadioTech(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4065
    goto :goto_1

    .line 4060
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4061
    goto :goto_1

    .line 4056
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4057
    goto :goto_1

    .line 4052
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4053
    nop

    .line 4072
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 4044
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public setErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .line 3904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    .line 3905
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3906
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    .line 3922
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3923
    return-object p0
.end method

.method public setPAssociatedUris(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris:Z

    .line 3956
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    .line 3957
    return-object p0
.end method

.method public setRadioTech(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .line 3938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech:Z

    .line 3939
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    .line 3940
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .line 3887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3888
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3889
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

    .line 3982
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3983
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3985
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3986
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 3988
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3989
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3991
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3992
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getRadioTech()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3994
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3995
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3997
    :cond_4
    return-void
.end method
