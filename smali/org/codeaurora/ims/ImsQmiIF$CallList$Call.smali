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

    .line 1711
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1716
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1733
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1750
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1767
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 1784
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 1801
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 1818
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 1835
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 1852
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 1869
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 1886
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 1903
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 1920
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1940
    iput-object v2, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 2027
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 1711
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
    .line 2187
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
    .line 2181
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
    .line 1958
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1959
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1960
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1961
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1962
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1963
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1964
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1965
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1966
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1967
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1968
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1969
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1970
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1971
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 1973
    return-object p0
.end method

.method public clearAls()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1810
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 1811
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 1812
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 1932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 1933
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1934
    return-object p0
.end method

.method public clearFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 1952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1954
    return-object p0
.end method

.method public clearIndex()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1742
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1743
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1744
    return-object p0
.end method

.method public clearIsMT()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1793
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 1794
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 1795
    return-object p0
.end method

.method public clearIsMpty()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1776
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 1777
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 1778
    return-object p0
.end method

.method public clearIsVoice()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1827
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 1828
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 1829
    return-object p0
.end method

.method public clearIsVoicePrivacy()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1844
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 1845
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 1846
    return-object p0
.end method

.method public clearName()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 1896
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 1897
    return-object p0
.end method

.method public clearNamePresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1912
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 1913
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 1914
    return-object p0
.end method

.method public clearNumber()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    .line 1861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 1862
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 1863
    return-object p0
.end method

.method public clearNumberPresentation()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1878
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 1879
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 1880
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1725
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1726
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1727
    return-object p0
.end method

.method public clearToa()Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1759
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1760
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1761
    return-object p0
.end method

.method public getAls()I
    .locals 1

    .prologue
    .line 1802
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2030
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    if-gez v0, :cond_0

    .line 2032
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getSerializedSize()I

    .line 2034
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1734
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    return v0
.end method

.method public getIsMT()Z
    .locals 1

    .prologue
    .line 1785
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    return v0
.end method

.method public getIsMpty()Z
    .locals 1

    .prologue
    .line 1768
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    return v0
.end method

.method public getIsVoice()Z
    .locals 1

    .prologue
    .line 1819
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    return v0
.end method

.method public getIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 1836
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePresentation()I
    .locals 1

    .prologue
    .line 1904
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1870
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2039
    const/4 v0, 0x0

    .line 2040
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 2041
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2044
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2046
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v1

    const/4 v2, 0x2

    .line 2045
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2048
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2050
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v1

    const/4 v2, 0x3

    .line 2049
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2052
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2054
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v1

    const/4 v2, 0x4

    .line 2053
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2056
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2058
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v1

    const/4 v2, 0x5

    .line 2057
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2060
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2062
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v1

    const/4 v2, 0x6

    .line 2061
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2064
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2066
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v1

    const/4 v2, 0x7

    .line 2065
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2068
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2070
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v1

    const/16 v2, 0x8

    .line 2069
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2072
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2074
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    .line 2073
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2076
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2078
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v1

    const/16 v2, 0xa

    .line 2077
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2080
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2082
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 2081
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2084
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2086
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v1

    const/16 v2, 0xc

    .line 2085
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2088
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2090
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/16 v2, 0xd

    .line 2089
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2092
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2094
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/16 v2, 0xe

    .line 2093
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2096
    :cond_d
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->cachedSize:I

    .line 2097
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1718
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    return v0
.end method

.method public hasAls()Z
    .locals 1

    .prologue
    .line 1803
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    return v0
.end method

.method public hasFailCause()Z
    .locals 1

    .prologue
    .line 1941
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 1735
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    return v0
.end method

.method public hasIsMT()Z
    .locals 1

    .prologue
    .line 1786
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    return v0
.end method

.method public hasIsMpty()Z
    .locals 1

    .prologue
    .line 1769
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    return v0
.end method

.method public hasIsVoice()Z
    .locals 1

    .prologue
    .line 1820
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    return v0
.end method

.method public hasIsVoicePrivacy()Z
    .locals 1

    .prologue
    .line 1837
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1888
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    return v0
.end method

.method public hasNamePresentation()Z
    .locals 1

    .prologue
    .line 1905
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 1854
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    return v0
.end method

.method public hasNumberPresentation()Z
    .locals 1

    .prologue
    .line 1871
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 1717
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    return v0
.end method

.method public hasToa()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1977
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
    .line 2101
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
    .line 2105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2106
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2110
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2111
    return-object p0

    .line 2108
    :sswitch_0
    return-object p0

    .line 2116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2120
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2124
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2128
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2132
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2136
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2140
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2144
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2148
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2152
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2156
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2160
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2164
    :sswitch_d
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2165
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2166
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto :goto_0

    .line 2170
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_e
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 2171
    .local v2, "value":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2172
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    goto/16 :goto_0

    .line 2106
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
    .end sparse-switch
.end method

.method public setAls(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls:Z

    .line 1806
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->als_:I

    .line 1807
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 1924
    if-nez p1, :cond_0

    .line 1925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1927
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails:Z

    .line 1928
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1929
    return-object p0
.end method

.method public setFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 1944
    if-nez p1, :cond_0

    .line 1945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1947
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause:Z

    .line 1948
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->failCause_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1949
    return-object p0
.end method

.method public setIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex:Z

    .line 1738
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->index_:I

    .line 1739
    return-object p0
.end method

.method public setIsMT(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT:Z

    .line 1789
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMT_:Z

    .line 1790
    return-object p0
.end method

.method public setIsMpty(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty:Z

    .line 1772
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isMpty_:Z

    .line 1773
    return-object p0
.end method

.method public setIsVoice(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice:Z

    .line 1823
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoice_:Z

    .line 1824
    return-object p0
.end method

.method public setIsVoicePrivacy(Z)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy:Z

    .line 1840
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->isVoicePrivacy_:Z

    .line 1841
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName:Z

    .line 1891
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->name_:Ljava/lang/String;

    .line 1892
    return-object p0
.end method

.method public setNamePresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation:Z

    .line 1908
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->namePresentation_:I

    .line 1909
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber:Z

    .line 1857
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->number_:Ljava/lang/String;

    .line 1858
    return-object p0
.end method

.method public setNumberPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation:Z

    .line 1874
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->numberPresentation_:I

    .line 1875
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState:Z

    .line 1721
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->state_:I

    .line 1722
    return-object p0
.end method

.method public setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa:Z

    .line 1755
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->toa_:I

    .line 1756
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
    .line 1983
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1986
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1987
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1989
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasToa()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1990
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1992
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1993
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1995
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsMT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1996
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1998
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasAls()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1999
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2001
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2002
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2004
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsVoicePrivacy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2005
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2007
    :cond_7
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2008
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2010
    :cond_8
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNumberPresentation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2011
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2013
    :cond_9
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasName()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2014
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2016
    :cond_a
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasNamePresentation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2017
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2019
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2020
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2022
    :cond_c
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2023
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1982
    :cond_d
    return-void
.end method
