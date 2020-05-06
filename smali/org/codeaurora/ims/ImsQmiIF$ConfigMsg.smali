.class public final Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigMsg"
.end annotation


# static fields
.field public static final BOOLVALUE_FIELD_NUMBER:I = 0x2

.field public static final ERRORCAUSE_FIELD_NUMBER:I = 0x5

.field public static final INTVALUE_FIELD_NUMBER:I = 0x3

.field public static final ITEM_FIELD_NUMBER:I = 0x1

.field public static final STRINGVALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private boolValue_:Z

.field private cachedSize:I

.field private errorCause_:I

.field private hasBoolValue:Z

.field private hasErrorCause:Z

.field private hasIntValue:Z

.field private hasItem:Z

.field private hasStringValue:Z

.field private intValue_:I

.field private item_:I

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7852
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7857
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 7874
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 7891
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 7908
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 7925
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 7973
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 7852
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8057
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8051
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    .line 7940
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 7941
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 7942
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 7943
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 7944
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 7945
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 7946
    return-object p0
.end method

.method public clearBoolValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7883
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 7884
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 7885
    return-object p0
.end method

.method public clearErrorCause()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7934
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 7935
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 7936
    return-object p0
.end method

.method public clearIntValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7900
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 7901
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 7902
    return-object p0
.end method

.method public clearItem()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7866
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 7867
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 7868
    return-object p0
.end method

.method public clearStringValue()Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1

    .prologue
    .line 7917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 7918
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 7919
    return-object p0
.end method

.method public getBoolValue()Z
    .locals 1

    .prologue
    .line 7875
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7976
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 7978
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getSerializedSize()I

    .line 7980
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 7927
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 7892
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    return v0
.end method

.method public getItem()I
    .locals 1

    .prologue
    .line 7859
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7985
    const/4 v0, 0x0

    .line 7986
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7988
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v1

    const/4 v2, 0x1

    .line 7987
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 7990
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7992
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v1

    const/4 v2, 0x2

    .line 7991
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7994
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7996
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v1

    const/4 v2, 0x3

    .line 7995
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7998
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8000
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 7999
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8002
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8004
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v1

    const/4 v2, 0x5

    .line 8003
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8006
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->cachedSize:I

    .line 8007
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7909
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .prologue
    .line 7876
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    return v0
.end method

.method public hasErrorCause()Z
    .locals 1

    .prologue
    .line 7926
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    return v0
.end method

.method public hasIntValue()Z
    .locals 1

    .prologue
    .line 7893
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    return v0
.end method

.method public hasItem()Z
    .locals 1

    .prologue
    .line 7858
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 7910
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7950
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
    .line 8010
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8016
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8020
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8021
    return-object p0

    .line 8018
    :sswitch_0
    return-object p0

    .line 8026
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8030
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8034
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8038
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8042
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    goto :goto_0

    .line 8016
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue:Z

    .line 7879
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->boolValue_:Z

    .line 7880
    return-object p0
.end method

.method public setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause:Z

    .line 7930
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->errorCause_:I

    .line 7931
    return-object p0
.end method

.method public setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue:Z

    .line 7896
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->intValue_:I

    .line 7897
    return-object p0
.end method

.method public setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem:Z

    .line 7862
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->item_:I

    .line 7863
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue:Z

    .line 7913
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->stringValue_:Ljava/lang/String;

    .line 7914
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
    .line 7956
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7957
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getItem()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7959
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7960
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7962
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7963
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 7965
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7966
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7968
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7969
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7971
    :cond_4
    return-void
.end method
