.class public final Lcom/google/protobuf/micro/CodedInputStreamMicro;
.super Ljava/lang/Object;
.source "CodedInputStreamMicro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 456
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    .line 459
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 473
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    .line 474
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 475
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 476
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    .line 472
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 456
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    .line 459
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 466
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    .line 467
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 468
    iput p2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    .line 465
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 418
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 432
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 53
    new-instance v0, Lcom/google/protobuf/micro/CodedInputStreamMicro;

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 2
    .param p0, "buf"    # [B

    .prologue
    .line 60
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/google/protobuf/micro/CodedInputStreamMicro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;-><init>([BII)V

    return-object v0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "result":I
    const/4 v1, 0x0

    .line 337
    .local v1, "offset":I
    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_3

    .line 338
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    .local v0, "b":I
    if-ne v0, v4, :cond_0

    .line 340
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v3

    throw v3

    .line 342
    :cond_0
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 343
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_1

    .line 344
    return v2

    .line 337
    :cond_1
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 348
    :cond_2
    add-int/lit8 v1, v1, 0x7

    .end local v0    # "b":I
    :cond_3
    const/16 v3, 0x40

    if-ge v1, v3, :cond_5

    .line 349
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 350
    .restart local v0    # "b":I
    if-ne v0, v4, :cond_4

    .line 351
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v3

    throw v3

    .line 353
    :cond_4
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_2

    .line 354
    return v2

    .line 357
    .end local v0    # "b":I
    :cond_5
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v3

    throw v3
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 552
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 553
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int v0, v1, v2

    .line 554
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 556
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    .line 557
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 551
    :goto_0
    return-void

    .line 559
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(Z)Z
    .locals 5
    .param p1, "mustSucceed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 603
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ge v1, v3, :cond_0

    .line 604
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 605
    const-string/jumbo v2, "refillBuffer() called when buffer wasn\'t empty."

    .line 604
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-ne v1, v3, :cond_2

    .line 610
    if-eqz p1, :cond_1

    .line 611
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 613
    :cond_1
    return v4

    .line 617
    :cond_2
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 619
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 620
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 621
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ge v1, v2, :cond_5

    .line 622
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 624
    const-string/jumbo v3, "\nThe InputStream implementation is buggy."

    .line 623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 626
    :cond_5
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v1, v2, :cond_7

    .line 627
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 628
    if-eqz p1, :cond_6

    .line 629
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 631
    :cond_6
    return v4

    .line 634
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 636
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    add-int v0, v1, v2

    .line 637
    .local v0, "totalBytesRead":I
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 638
    :cond_8
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->sizeLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 640
    :cond_9
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 102
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 103
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidEndTag()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 101
    :cond_0
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 3

    .prologue
    .line 578
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 579
    const/4 v1, -0x1

    return v1

    .line 582
    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int v0, v1, v2

    .line 583
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 592
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 569
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 570
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 568
    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 536
    if-gez p1, :cond_0

    .line 537
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 539
    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 540
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 541
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 542
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 544
    :cond_1
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 546
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 548
    return v0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readBytes()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v1

    .line 240
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 243
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    .line 244
    .local v0, "result":Lcom/google/protobuf/micro/ByteStringMicro;
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 245
    return-object v0

    .line 246
    .end local v0    # "result":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_0
    if-nez v1, :cond_1

    .line 247
    sget-object v2, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v2

    .line 250
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    return-object v2
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V
    .locals 2
    .param p1, "msg"    # Lcom/google/protobuf/micro/MessageMicro;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 214
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->recursionLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 216
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 217
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    .line 219
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 220
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 212
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 4
    .param p1, "msg"    # Lcom/google/protobuf/micro/MessageMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    .line 226
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 227
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->recursionLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->pushLimit(I)I

    move-result v1

    .line 230
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 231
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    .line 232
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 233
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 234
    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->popLimit(I)V

    .line 224
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 652
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 12
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    if-gez p1, :cond_0

    .line 665
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v9

    throw v9

    .line 668
    :cond_0
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v9, v10

    add-int/2addr v9, p1

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v9, v10, :cond_1

    .line 670
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 672
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v9

    throw v9

    .line 675
    :cond_1
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v9, v10

    if-gt p1, v9, :cond_2

    .line 677
    new-array v0, p1, [B

    .line 678
    .local v0, "bytes":[B
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 680
    return-object v0

    .line 681
    .end local v0    # "bytes":[B
    :cond_2
    const/16 v9, 0x1000

    if-ge p1, v9, :cond_4

    .line 686
    new-array v0, p1, [B

    .line 687
    .restart local v0    # "bytes":[B
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int v7, v9, v10

    .line 688
    .local v7, "pos":I
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 694
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    .line 696
    :goto_0
    sub-int v9, p1, v7

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-le v9, v10, :cond_3

    .line 697
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    const/4 v11, 0x0

    invoke-static {v9, v11, v0, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v7, v9

    .line 699
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 700
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    goto :goto_0

    .line 703
    :cond_3
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    sub-int v10, p1, v7

    const/4 v11, 0x0

    invoke-static {v9, v11, v0, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    sub-int v9, p1, v7

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 706
    return-object v0

    .line 718
    .end local v0    # "bytes":[B
    .end local v7    # "pos":I
    :cond_4
    iget v5, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 719
    .local v5, "originalBufferPos":I
    iget v6, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 722
    .local v6, "originalBufferSize":I
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 723
    const/4 v9, 0x0

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 724
    const/4 v9, 0x0

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 727
    sub-int v9, v6, v5

    sub-int v8, p1, v9

    .line 730
    .local v8, "sizeLeft":I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 732
    .local v2, "chunks":Ljava/util/Vector;
    :goto_1
    if-lez v8, :cond_8

    .line 733
    const/16 v9, 0x1000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v1, v9, [B

    .line 734
    .local v1, "chunk":[B
    const/4 v7, 0x0

    .line 735
    .restart local v7    # "pos":I
    :goto_2
    array-length v9, v1

    if-ge v7, v9, :cond_7

    .line 736
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v9, :cond_5

    const/4 v4, -0x1

    .line 738
    .local v4, "n":I
    :goto_3
    const/4 v9, -0x1

    if-ne v4, v9, :cond_6

    .line 739
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v9

    throw v9

    .line 737
    .end local v4    # "n":I
    :cond_5
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    array-length v10, v1

    sub-int/2addr v10, v7

    invoke-virtual {v9, v1, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_3

    .line 741
    .restart local v4    # "n":I
    :cond_6
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 742
    add-int/2addr v7, v4

    goto :goto_2

    .line 744
    .end local v4    # "n":I
    :cond_7
    array-length v9, v1

    sub-int/2addr v8, v9

    .line 745
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 749
    .end local v1    # "chunk":[B
    .end local v7    # "pos":I
    :cond_8
    new-array v0, p1, [B

    .line 752
    .restart local v0    # "bytes":[B
    sub-int v7, v6, v5

    .line 753
    .restart local v7    # "pos":I
    iget-object v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v9, v5, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_9

    .line 757
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 758
    .restart local v1    # "chunk":[B
    array-length v9, v1

    const/4 v10, 0x0

    invoke-static {v1, v10, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    array-length v9, v1

    add-int/2addr v7, v9

    .line 756
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 763
    .end local v1    # "chunk":[B
    :cond_9
    return-object v0
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 378
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    .line 379
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 380
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    .line 381
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    .line 382
    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 381
    or-int/2addr v4, v5

    .line 383
    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 381
    or-int/2addr v4, v5

    .line 384
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 381
    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 390
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    .line 391
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 392
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    .line 393
    .local v3, "b4":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v4

    .line 394
    .local v4, "b5":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v5

    .line 395
    .local v5, "b6":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v6

    .line 396
    .local v6, "b7":B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v7

    .line 397
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    .line 398
    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    .line 399
    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    .line 400
    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    .line 401
    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    .line 402
    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    .line 403
    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    .line 404
    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    .line 397
    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 295
    .local v2, "tmp":B
    if-ltz v2, :cond_0

    .line 296
    return v2

    .line 298
    :cond_0
    and-int/lit8 v1, v2, 0x7f

    .line 299
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_2

    .line 300
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    .line 324
    :cond_1
    :goto_0
    return v1

    .line 302
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 303
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_3

    .line 304
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    .line 306
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 307
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    .line 308
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    .line 310
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 311
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 312
    if-gez v2, :cond_1

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_5

    .line 316
    return v1

    .line 314
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_6
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 364
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 366
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 367
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 368
    return-wide v2

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 372
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v1

    .line 198
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 202
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 203
    return-object v0

    .line 206
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawBytes(I)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    .line 81
    return v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    .line 85
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidTag()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    return v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 525
    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 487
    if-gez p1, :cond_0

    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    .line 492
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    .line 493
    return v0
.end method

.method public setSizeLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 513
    if-gez p1, :cond_0

    .line 514
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 518
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 519
    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-static {p1}, Lcom/google/protobuf/micro/WireFormatMicro;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidWireType()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    .line 117
    return v2

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    .line 120
    return v2

    .line 122
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 123
    return v2

    .line 125
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipMessage()V

    .line 127
    invoke-static {p1}, Lcom/google/protobuf/micro/WireFormatMicro;->getTagFieldNumber(I)I

    move-result v0

    .line 128
    const/4 v1, 0x4

    .line 127
    invoke-static {v0, v1}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 129
    return v2

    .line 131
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    .line 134
    return v2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 147
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 774
    if-gez p1, :cond_0

    .line 775
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 778
    :cond_0
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v2, v3, :cond_1

    .line 780
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 782
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 785
    :cond_1
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt p1, v2, :cond_3

    .line 787
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 773
    :cond_2
    return-void

    .line 790
    :cond_3
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int v1, v2, v3

    .line 791
    .local v1, "pos":I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 792
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 793
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 796
    :goto_0
    if-ge v1, p1, :cond_2

    .line 797
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v2, :cond_4

    const/4 v0, -0x1

    .line 798
    .local v0, "n":I
    :goto_1
    if-gtz v0, :cond_5

    .line 799
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 797
    .end local v0    # "n":I
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    sub-int v3, p1, v1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1

    .line 801
    .restart local v0    # "n":I
    :cond_5
    add-int/2addr v1, v0

    .line 802
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    goto :goto_0
.end method
