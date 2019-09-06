.class public final Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF$CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation


# static fields
.field public static final ALS_FIELD_NUMBER:I = 0x6

.field public static final CALLDETAILS_FIELD_NUMBER:I = 0xd

.field public static final FAILCAUSE_FIELD_NUMBER:I = 0xe

.field public static final INDEX_FIELD_NUMBER:I = 0x2

.field public static final ISCALLEDPARTYRINGING_FIELD_NUMBER:I = 0x10

.field public static final ISENCRYPTED_FIELD_NUMBER:I = 0xf

.field public static final ISMPTY_FIELD_NUMBER:I = 0x4

.field public static final ISMT_FIELD_NUMBER:I = 0x5

.field public static final ISVOICEPRIVACY_FIELD_NUMBER:I = 0x8

.field public static final ISVOICE_FIELD_NUMBER:I = 0x7

.field public static final NAMEPRESENTATION_FIELD_NUMBER:I = 0xc

.field public static final NAME_FIELD_NUMBER:I = 0xb

.field public static final NUMBERPRESENTATION_FIELD_NUMBER:I = 0xa

.field public static final NUMBER_FIELD_NUMBER:I = 0x9

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field public static final TOA_FIELD_NUMBER:I = 0x3


# instance fields
.field private als_:I

.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

.field private hasAls:Z

.field private hasCallDetails:Z

.field private hasFailCause:Z

.field private hasIndex:Z

.field private hasIsCalledPartyRinging:Z

.field private hasIsEncrypted:Z

.field private hasIsMT:Z

.field private hasIsMpty:Z

.field private hasIsVoice:Z

.field private hasIsVoicePrivacy:Z

.field private hasName:Z

.field private hasNamePresentation:Z

.field private hasNumber:Z

.field private hasNumberPresentation:Z

.field private hasState:Z

.field private hasToa:Z

.field private index_:I

.field private isCalledPartyRinging_:Z

.field private isEncrypted_:Z

.field private isMT_:Z

.field private isMpty_:Z

.field private isVoicePrivacy_:Z

.field private isVoice_:Z

.field private namePresentation_:I

.field private name_:Ljava/lang/String;

.field private numberPresentation_:I

.field private number_:Ljava/lang/String;

.field private state_:I

.field private toa_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1944
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1949
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1966
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1983
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 2000
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 2017
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 2034
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2051
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2068
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2085
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2102
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2136
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2153
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2173
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2193
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2210
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2302
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 1944
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2478
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2472
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2226
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2227
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2228
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2229
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2230
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2231
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2232
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2233
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2234
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2235
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2236
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2237
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2238
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2239
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2240
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsCalledPartyRinging()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 2241
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2242
    return-object p0
.end method

.method public clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2043
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 2044
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2045
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 2166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2167
    return-object p0
.end method

.method public clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 2186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2187
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1975
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1976
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1977
    return-object p0
.end method

.method public clearIsCalledPartyRinging()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2219
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    .line 2220
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2221
    return-object p0
.end method

.method public clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2202
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    .line 2203
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2204
    return-object p0
.end method

.method public clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2026
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 2027
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 2028
    return-object p0
.end method

.method public clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2009
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 2010
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 2011
    return-object p0
.end method

.method public clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2060
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 2061
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2062
    return-object p0
.end method

.method public clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2077
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 2078
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2079
    return-object p0
.end method

.method public clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 2129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2130
    return-object p0
.end method

.method public clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2145
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 2146
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2147
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 2094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 2095
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2096
    return-object p0
.end method

.method public clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2111
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 2112
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2113
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1958
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1959
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1960
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1992
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1993
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1994
    return-object p0
.end method

.method public getAls()I
    .locals 1

    .prologue
    .line 2035
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2305
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    if-gez v0, :cond_0

    .line 2307
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getSerializedSize()I

    .line 2309
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 2155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1967
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    return v0
.end method

.method public getIsCalledPartyRinging()Z
    .locals 1

    .prologue
    .line 2211
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    return v0
.end method

.method public getIsEncrypted()Z
    .locals 1

    .prologue
    .line 2194
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    return v0
.end method

.method public getIsMT()Z
    .locals 1

    .prologue
    .line 2018
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    return v0
.end method

.method public getIsMpty()Z
    .locals 1

    .prologue
    .line 2001
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    return v0
.end method

.method public getIsVoice()Z
    .locals 1

    .prologue
    .line 2052
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    return v0
.end method

.method public getIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePresentation()I
    .locals 1

    .prologue
    .line 2137
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 2103
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2314
    const/4 v0, 0x0

    .line 2315
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2317
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 2316
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2319
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2321
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v1

    const/4 v2, 0x2

    .line 2320
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2323
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2325
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v1

    const/4 v2, 0x3

    .line 2324
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2327
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2329
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v1

    const/4 v2, 0x4

    .line 2328
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2331
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2333
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v1

    const/4 v2, 0x5

    .line 2332
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2335
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2337
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v1

    const/4 v2, 0x6

    .line 2336
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2339
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2341
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v1

    const/4 v2, 0x7

    .line 2340
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2343
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2345
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v1

    const/16 v2, 0x8

    .line 2344
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2347
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2349
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    .line 2348
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2351
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2353
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v1

    const/16 v2, 0xa

    .line 2352
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2355
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2357
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 2356
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2359
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2361
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v1

    const/16 v2, 0xc

    .line 2360
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2363
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2365
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/16 v2, 0xd

    .line 2364
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2367
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2369
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/16 v2, 0xe

    .line 2368
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2371
    :cond_d
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2373
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v1

    const/16 v2, 0xf

    .line 2372
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2375
    :cond_e
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2377
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsCalledPartyRinging()Z

    move-result v1

    const/16 v2, 0x10

    .line 2376
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2379
    :cond_f
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2380
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1951
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    return v0
.end method

.method public hasAls()Z
    .locals 1

    .prologue
    .line 2036
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 2154
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    return v0
.end method

.method public hasFailCause()Z
    .locals 1

    .prologue
    .line 2174
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 1968
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    return v0
.end method

.method public hasIsCalledPartyRinging()Z
    .locals 1

    .prologue
    .line 2212
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    return v0
.end method

.method public hasIsEncrypted()Z
    .locals 1

    .prologue
    .line 2195
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    return v0
.end method

.method public hasIsMT()Z
    .locals 1

    .prologue
    .line 2019
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    return v0
.end method

.method public hasIsMpty()Z
    .locals 1

    .prologue
    .line 2002
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    return v0
.end method

.method public hasIsVoice()Z
    .locals 1

    .prologue
    .line 2053
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    return v0
.end method

.method public hasIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 2070
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2121
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    return v0
.end method

.method public hasNamePresentation()Z
    .locals 1

    .prologue
    .line 2138
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 2087
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    return v0
.end method

.method public hasNumberPresentation()Z
    .locals 1

    .prologue
    .line 2104
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 1950
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .prologue
    .line 1985
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2246
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
    .line 2384
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2389
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2393
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2394
    return-object p0

    .line 2391
    :sswitch_0
    return-object p0

    .line 2399
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2403
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2407
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2411
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2415
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2419
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2423
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2427
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2431
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2435
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2439
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2443
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2447
    :sswitch_d
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2448
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2449
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2453
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_e
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 2454
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2455
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2459
    .end local v2    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2463
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsCalledPartyRinging(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x55 -> :sswitch_a
        0x5a -> :sswitch_b
        0x65 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
    .end sparse-switch
.end method

.method public setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 2039
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 2040
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 2157
    if-nez p1, :cond_0

    .line 2158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 2161
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2162
    return-object p0
.end method

.method public setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 2177
    if-nez p1, :cond_0

    .line 2178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 2181
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2182
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1971
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1972
    return-object p0
.end method

.method public setIsCalledPartyRinging(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging:Z

    .line 2215
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isCalledPartyRinging_:Z

    .line 2216
    return-object p0
.end method

.method public setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted:Z

    .line 2198
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isEncrypted_:Z

    .line 2199
    return-object p0
.end method

.method public setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 2022
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 2023
    return-object p0
.end method

.method public setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 2005
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 2006
    return-object p0
.end method

.method public setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 2056
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 2057
    return-object p0
.end method

.method public setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 2073
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 2074
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 2124
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 2125
    return-object p0
.end method

.method public setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 2141
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 2142
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 2090
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 2091
    return-object p0
.end method

.method public setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 2107
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 2108
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1954
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1955
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1988
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1989
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
    .line 2252
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2255
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2256
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2258
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2259
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2261
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2262
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2264
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2265
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2267
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2268
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2270
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2271
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2273
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2274
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2276
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2277
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2279
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2280
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2282
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2283
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2285
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2286
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2288
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2289
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2291
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2292
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2294
    :cond_d
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2295
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2297
    :cond_e
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsCalledPartyRinging()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2298
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsCalledPartyRinging()Z

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2251
    :cond_f
    return-void
.end method
