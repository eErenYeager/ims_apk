.class public final Lcom/google/protobuf/micro/ByteStringMicro;
.super Ljava/lang/Object;
.source "ByteStringMicro.java"


# static fields
.field public static final EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 45
    iput-object p1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 46
    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 2
    .param p0, "bytes"    # [B

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 84
    new-array v0, p2, [B

    .line 85
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance v1, Lcom/google/protobuf/micro/ByteStringMicro;

    invoke-direct {v1, v0}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 111
    :try_start_0
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .line 54
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo([BI)V
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I

    .line 127
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return-void
.end method

.method public copyTo([BIII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "size"    # I

    .line 141
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 180
    return v0

    .line 183
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/micro/ByteStringMicro;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 184
    return v2

    .line 187
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/micro/ByteStringMicro;

    .line 188
    .local v1, "other":Lcom/google/protobuf/micro/ByteStringMicro;
    iget-object v3, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v3, v3

    .line 189
    .local v3, "size":I
    iget-object v4, v1, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 190
    return v2

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 194
    .local v4, "thisBytes":[B
    iget-object v5, v1, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 195
    .local v5, "otherBytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_4

    .line 196
    aget-byte v7, v4, v6

    aget-byte v8, v5, v6

    if-eq v7, v8, :cond_3

    .line 197
    return v2

    .line 195
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    .end local v6    # "i":I
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 208
    iget v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 210
    .local v0, "h":I
    if-nez v0, :cond_2

    .line 211
    iget-object v1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 212
    .local v1, "thisBytes":[B
    iget-object v2, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v2, v2

    .line 214
    .local v2, "size":I
    move v0, v2

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 216
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v1, v3

    add-int v0, v4, v5

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 219
    const/4 v0, 0x1

    .line 222
    :cond_1
    iput v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 225
    .end local v1    # "thisBytes":[B
    .end local v2    # "size":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v1, v0

    .line 149
    .local v1, "size":I
    new-array v2, v1, [B

    .line 150
    .local v2, "copy":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .locals 3

    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
