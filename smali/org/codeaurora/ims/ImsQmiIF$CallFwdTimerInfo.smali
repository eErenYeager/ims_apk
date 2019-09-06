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

    .line 6129
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6134
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    .line 6151
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    .line 6168
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    .line 6185
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    .line 6202
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    .line 6219
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    .line 6236
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    .line 6292
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    .line 6129
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
    .line 6392
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
    .line 6386
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
    .line 6251
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearYear()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6252
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearMonth()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6253
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearDay()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6254
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearHour()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6255
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearMinute()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6256
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearSecond()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6257
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->clearTimezone()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 6258
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    .line 6259
    return-object p0
.end method

.method public clearDay()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6177
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay:Z

    .line 6178
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    .line 6179
    return-object p0
.end method

.method public clearHour()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6194
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour:Z

    .line 6195
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    .line 6196
    return-object p0
.end method

.method public clearMinute()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6211
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute:Z

    .line 6212
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    .line 6213
    return-object p0
.end method

.method public clearMonth()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6160
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth:Z

    .line 6161
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    .line 6162
    return-object p0
.end method

.method public clearSecond()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6228
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond:Z

    .line 6229
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    .line 6230
    return-object p0
.end method

.method public clearTimezone()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6245
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone:Z

    .line 6246
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    .line 6247
    return-object p0
.end method

.method public clearYear()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6143
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear:Z

    .line 6144
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    .line 6145
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6295
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 6297
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getSerializedSize()I

    .line 6299
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 6169
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 6186
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 6203
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 6152
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 6220
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6304
    const/4 v0, 0x0

    .line 6305
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6307
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getYear()I

    move-result v1

    const/4 v2, 0x1

    .line 6306
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6309
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6311
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMonth()I

    move-result v1

    const/4 v2, 0x2

    .line 6310
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6313
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6315
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getDay()I

    move-result v1

    const/4 v2, 0x3

    .line 6314
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6317
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6319
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v1

    const/4 v2, 0x4

    .line 6318
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6321
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6323
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v1

    const/4 v2, 0x5

    .line 6322
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6325
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6327
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getSecond()I

    move-result v1

    const/4 v2, 0x6

    .line 6326
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6329
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6331
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getTimezone()I

    move-result v1

    const/4 v2, 0x7

    .line 6330
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6333
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->cachedSize:I

    .line 6334
    return v0
.end method

.method public getTimezone()I
    .locals 1

    .prologue
    .line 6237
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 6135
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    return v0
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 6170
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay:Z

    return v0
.end method

.method public hasHour()Z
    .locals 1

    .prologue
    .line 6187
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour:Z

    return v0
.end method

.method public hasMinute()Z
    .locals 1

    .prologue
    .line 6204
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute:Z

    return v0
.end method

.method public hasMonth()Z
    .locals 1

    .prologue
    .line 6153
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth:Z

    return v0
.end method

.method public hasSecond()Z
    .locals 1

    .prologue
    .line 6221
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond:Z

    return v0
.end method

.method public hasTimezone()Z
    .locals 1

    .prologue
    .line 6238
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone:Z

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 6136
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6263
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
    .line 6338
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
    .line 6342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6343
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6347
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6348
    return-object p0

    .line 6345
    :sswitch_0
    return-object p0

    .line 6353
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setYear(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6357
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMonth(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6361
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setDay(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6365
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6369
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6373
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setSecond(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6377
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setTimezone(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    goto :goto_0

    .line 6343
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
    .line 6172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay:Z

    .line 6173
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->day_:I

    .line 6174
    return-object p0
.end method

.method public setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour:Z

    .line 6190
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hour_:I

    .line 6191
    return-object p0
.end method

.method public setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute:Z

    .line 6207
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->minute_:I

    .line 6208
    return-object p0
.end method

.method public setMonth(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth:Z

    .line 6156
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->month_:I

    .line 6157
    return-object p0
.end method

.method public setSecond(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond:Z

    .line 6224
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->second_:I

    .line 6225
    return-object p0
.end method

.method public setTimezone(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone:Z

    .line 6241
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->timezone_:I

    .line 6242
    return-object p0
.end method

.method public setYear(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear:Z

    .line 6139
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->year_:I

    .line 6140
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
    .line 6269
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6270
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getYear()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6272
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6273
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMonth()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6275
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6276
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getDay()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6278
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasHour()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6279
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6281
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasMinute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6282
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6284
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasSecond()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6285
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getSecond()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6287
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6288
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getTimezone()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 6268
    :cond_6
    return-void
.end method
