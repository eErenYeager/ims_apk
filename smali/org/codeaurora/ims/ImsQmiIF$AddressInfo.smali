.class public final Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressInfo"
.end annotation


# static fields
.field public static final CITY_FIELD_NUMBER:I = 0x1

.field public static final COUNTRYCODE_FIELD_NUMBER:I = 0x5

.field public static final COUNTRY_FIELD_NUMBER:I = 0x3

.field public static final POSTALCODE_FIELD_NUMBER:I = 0x4

.field public static final STATE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private countryCode_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private hasCity:Z

.field private hasCountry:Z

.field private hasCountryCode:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private postalCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8961
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8966
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    .line 8983
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    .line 9000
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    .line 9017
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    .line 9034
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    .line 9082
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    .line 8961
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9166
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 9160
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .line 9049
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearCity()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9050
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearState()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9051
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearCountry()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9052
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearPostalCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9053
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearCountryCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9054
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    .line 9055
    return-object p0
.end method

.method public clearCity()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .line 8975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity:Z

    .line 8976
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    .line 8977
    return-object p0
.end method

.method public clearCountry()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .line 9009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry:Z

    .line 9010
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    .line 9011
    return-object p0
.end method

.method public clearCountryCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .line 9043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode:Z

    .line 9044
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    .line 9045
    return-object p0
.end method

.method public clearPostalCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .line 9026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode:Z

    .line 9027
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    .line 9028
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    .line 8992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState:Z

    .line 8993
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    .line 8994
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 9085
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9087
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getSerializedSize()I

    .line 9089
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 8967
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 9001
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 9035
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 9018
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9094
    const/4 v0, 0x0

    .line 9095
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9096
    const/4 v1, 0x1

    .line 9097
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9099
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9100
    const/4 v1, 0x2

    .line 9101
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9103
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9104
    const/4 v1, 0x3

    .line 9105
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9107
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9108
    const/4 v1, 0x4

    .line 9109
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9111
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9112
    const/4 v1, 0x5

    .line 9113
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9115
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    .line 9116
    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 8984
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCity()Z
    .locals 1

    .line 8968
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .line 9002
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .line 9036
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode:Z

    return v0
.end method

.method public hasPostalCode()Z
    .locals 1

    .line 9019
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .line 8985
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 9059
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

    .line 8958
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9124
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9125
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 9129
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9130
    return-object p0

    .line 9151
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    goto :goto_1

    .line 9147
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9148
    goto :goto_1

    .line 9143
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9144
    goto :goto_1

    .line 9139
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9140
    goto :goto_1

    .line 9135
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 9136
    nop

    .line 9155
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 9127
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity:Z

    .line 8971
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    .line 8972
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry:Z

    .line 9005
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    .line 9006
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode:Z

    .line 9039
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    .line 9040
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode:Z

    .line 9022
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    .line 9023
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState:Z

    .line 8988
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    .line 8989
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

    .line 9065
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9066
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9068
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9069
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9071
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9072
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9074
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9075
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9077
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9078
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9080
    :cond_4
    return-void
.end method
