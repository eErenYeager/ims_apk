.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageSummary"
.end annotation


# static fields
.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x1

.field public static final NEWMESSAGE_FIELD_NUMBER:I = 0x2

.field public static final NEWURGENT_FIELD_NUMBER:I = 0x4

.field public static final OLDMESSAGE_FIELD_NUMBER:I = 0x3

.field public static final OLDURGENT_FIELD_NUMBER:I = 0x5


# instance fields
.field private cachedSize:I

.field private hasMessageType:Z

.field private hasNewMessage:Z

.field private hasNewUrgent:Z

.field private hasOldMessage:Z

.field private hasOldUrgent:Z

.field private messageType_:I

.field private newMessage_:I

.field private newUrgent_:I

.field private oldMessage_:I

.field private oldUrgent_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 6810
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6815
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    .line 6832
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    .line 6849
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    .line 6866
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    .line 6883
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    .line 6931
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    .line 6810
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7015
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7009
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    .line 6898
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 6899
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearNewMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 6900
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearOldMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 6901
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearNewUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 6902
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearOldUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    .line 6903
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    .line 6904
    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    .line 6824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    .line 6825
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    .line 6826
    return-object p0
.end method

.method public clearNewMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6841
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    .line 6842
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    .line 6843
    return-object p0
.end method

.method public clearNewUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6875
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    .line 6876
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    .line 6877
    return-object p0
.end method

.method public clearOldMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6858
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    .line 6859
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    .line 6860
    return-object p0
.end method

.method public clearOldUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6892
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    .line 6893
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    .line 6894
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6934
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    if-gez v0, :cond_0

    .line 6936
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getSerializedSize()I

    .line 6938
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 6817
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    return v0
.end method

.method public getNewMessage()I
    .locals 1

    .prologue
    .line 6833
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    return v0
.end method

.method public getNewUrgent()I
    .locals 1

    .prologue
    .line 6867
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    return v0
.end method

.method public getOldMessage()I
    .locals 1

    .prologue
    .line 6850
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    return v0
.end method

.method public getOldUrgent()I
    .locals 1

    .prologue
    .line 6884
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6943
    const/4 v0, 0x0

    .line 6944
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6946
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v1

    const/4 v2, 0x1

    .line 6945
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6948
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6950
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v1

    const/4 v2, 0x2

    .line 6949
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6952
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6954
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v1

    const/4 v2, 0x3

    .line 6953
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6956
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6958
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v1

    const/4 v2, 0x4

    .line 6957
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6960
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6962
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v1

    const/4 v2, 0x5

    .line 6961
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6964
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    .line 6965
    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 6816
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    return v0
.end method

.method public hasNewMessage()Z
    .locals 1

    .prologue
    .line 6834
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    return v0
.end method

.method public hasNewUrgent()Z
    .locals 1

    .prologue
    .line 6868
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    return v0
.end method

.method public hasOldMessage()Z
    .locals 1

    .prologue
    .line 6851
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    return v0
.end method

.method public hasOldUrgent()Z
    .locals 1

    .prologue
    .line 6885
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6908
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
    .line 6969
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6974
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6978
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6979
    return-object p0

    .line 6976
    :sswitch_0
    return-object p0

    .line 6984
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 6988
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setNewMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 6992
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setOldMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 6996
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setNewUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 7000
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setOldUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    .line 6974
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
    .end sparse-switch
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    .line 6820
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    .line 6821
    return-object p0
.end method

.method public setNewMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    .line 6837
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    .line 6838
    return-object p0
.end method

.method public setNewUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    .line 6871
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    .line 6872
    return-object p0
.end method

.method public setOldMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    .line 6854
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    .line 6855
    return-object p0
.end method

.method public setOldUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    .line 6888
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    .line 6889
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
    .line 6914
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6915
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6917
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6918
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6920
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6921
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6923
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6924
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6926
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6927
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6913
    :cond_4
    return-void
.end method
