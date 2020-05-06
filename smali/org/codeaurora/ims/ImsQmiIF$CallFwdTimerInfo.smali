.class public final Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallFwdTimerInfo"
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field public static final HOUR_FIELD_NUMBER:I = 0x4

.field public static final MINUTE_FIELD_NUMBER:I = 0x5

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field public static final SECOND_FIELD_NUMBER:I = 0x6

.field public static final TIMEZONE_FIELD_NUMBER:I = 0x7

.field public static final YEAR_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private day_:I

.field private hasDay:Z

.field private hasHour:Z

.field private hasMinute:Z

.field private hasMonth:Z

.field private hasSecond:Z

.field private hasTimezone:Z

.field private hasYear:Z

.field private hour_:I

.field private minute_:I

.field private month_:I

.field private second_:I

.field private timezone_:I

.field private year_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5730
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5735
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    .line 5752
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    .line 5769
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    .line 5786
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    .line 5803
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    .line 5820
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    .line 5837
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    .line 5893
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    .line 5730
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5993
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5987
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    .line 5852
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearYear()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5853
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearMonth()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5854
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearDay()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5855
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearHour()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5856
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearMinute()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5857
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearSecond()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5858
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearTimezone()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 5859
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    .line 5860
    return-object p0
.end method

.method public clearDay()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5778
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay:Z

    .line 5779
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    .line 5780
    return-object p0
.end method

.method public clearHour()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5795
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour:Z

    .line 5796
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    .line 5797
    return-object p0
.end method

.method public clearMinute()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5812
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute:Z

    .line 5813
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    .line 5814
    return-object p0
.end method

.method public clearMonth()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5761
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth:Z

    .line 5762
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    .line 5763
    return-object p0
.end method

.method public clearSecond()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5829
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond:Z

    .line 5830
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    .line 5831
    return-object p0
.end method

.method public clearTimezone()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5846
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone:Z

    .line 5847
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    .line 5848
    return-object p0
.end method

.method public clearYear()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5744
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear:Z

    .line 5745
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    .line 5746
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5896
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5898
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getSerializedSize()I

    .line 5900
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 5770
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 5787
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 5804
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 5753
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 5821
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5905
    const/4 v0, 0x0

    .line 5906
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5908
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getYear()I

    move-result v1

    const/4 v2, 0x1

    .line 5907
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5910
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5912
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMonth()I

    move-result v1

    const/4 v2, 0x2

    .line 5911
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5914
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5916
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getDay()I

    move-result v1

    const/4 v2, 0x3

    .line 5915
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5918
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5920
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v1

    const/4 v2, 0x4

    .line 5919
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5922
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5924
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v1

    const/4 v2, 0x5

    .line 5923
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5926
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5928
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getSecond()I

    move-result v1

    const/4 v2, 0x6

    .line 5927
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5930
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5932
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getTimezone()I

    move-result v1

    const/4 v2, 0x7

    .line 5931
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5934
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    .line 5935
    return v0
.end method

.method public getTimezone()I
    .locals 1

    .prologue
    .line 5838
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 5736
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    return v0
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 5771
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay:Z

    return v0
.end method

.method public hasHour()Z
    .locals 1

    .prologue
    .line 5788
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour:Z

    return v0
.end method

.method public hasMinute()Z
    .locals 1

    .prologue
    .line 5805
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute:Z

    return v0
.end method

.method public hasMonth()Z
    .locals 1

    .prologue
    .line 5754
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth:Z

    return v0
.end method

.method public hasSecond()Z
    .locals 1

    .prologue
    .line 5822
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond:Z

    return v0
.end method

.method public hasTimezone()Z
    .locals 1

    .prologue
    .line 5839
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone:Z

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 5737
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5864
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
    .line 5938
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5943
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5944
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5948
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5949
    return-object p0

    .line 5946
    :sswitch_0
    return-object p0

    .line 5954
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setYear(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5958
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMonth(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5962
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setDay(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5966
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5970
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5974
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setSecond(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5978
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setTimezone(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 5944
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
    .end sparse-switch
.end method

.method public setDay(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay:Z

    .line 5774
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    .line 5775
    return-object p0
.end method

.method public setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour:Z

    .line 5791
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    .line 5792
    return-object p0
.end method

.method public setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute:Z

    .line 5808
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    .line 5809
    return-object p0
.end method

.method public setMonth(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth:Z

    .line 5757
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    .line 5758
    return-object p0
.end method

.method public setSecond(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond:Z

    .line 5825
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    .line 5826
    return-object p0
.end method

.method public setTimezone(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone:Z

    .line 5842
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    .line 5843
    return-object p0
.end method

.method public setYear(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear:Z

    .line 5740
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    .line 5741
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
    .line 5870
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5871
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getYear()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5873
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5874
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMonth()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5876
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5877
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getDay()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5879
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5880
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5882
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5883
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5885
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5886
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getSecond()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5888
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5889
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getTimezone()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 5891
    :cond_6
    return-void
.end method
