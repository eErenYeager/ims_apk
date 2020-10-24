.class public final Lorg/codeaurora/ims/ImsQmiIF$Mute;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mute"
.end annotation


# static fields
.field public static final MUTE_FLAG_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMuteFlag:Z

.field private muteFlag_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3679
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3716
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3679
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3768
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 3762
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mute;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1

    .line 3699
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->clearMuteFlag()Lorg/codeaurora/ims/ImsQmiIF$Mute;

    .line 3700
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3701
    return-object p0
.end method

.method public clearMuteFlag()Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1

    .line 3693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    .line 3694
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3695
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 3719
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    if-gez v0, :cond_0

    .line 3721
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getSerializedSize()I

    .line 3723
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    return v0
.end method

.method public getMuteFlag()Z
    .locals 1

    .line 3685
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3728
    const/4 v0, 0x0

    .line 3729
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3730
    const/4 v1, 0x1

    .line 3731
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getMuteFlag()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3733
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->cachedSize:I

    .line 3734
    return v0
.end method

.method public hasMuteFlag()Z
    .locals 1

    .line 3686
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3705
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

    .line 3676
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3742
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3743
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3747
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3748
    return-object p0

    .line 3753
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->setMuteFlag(Z)Lorg/codeaurora/ims/ImsQmiIF$Mute;

    .line 3757
    .end local v0    # "tag":I
    :cond_1
    goto :goto_0

    .line 3745
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setMuteFlag(Z)Lorg/codeaurora/ims/ImsQmiIF$Mute;
    .locals 1
    .param p1, "value"    # Z

    .line 3688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag:Z

    .line 3689
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mute;->muteFlag_:Z

    .line 3690
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

    .line 3711
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->hasMuteFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3712
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mute;->getMuteFlag()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3714
    :cond_0
    return-void
.end method
