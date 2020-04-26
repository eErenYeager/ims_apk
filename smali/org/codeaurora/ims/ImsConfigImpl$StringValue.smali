.class Lorg/codeaurora/ims/ImsConfigImpl$StringValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringValue"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mSize:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "s"    # I

    .prologue
    const/4 v0, 0x0

    .line 1848
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1849
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1851
    if-gtz p2, :cond_0

    const/4 p2, 0x1

    .line 1852
    :cond_0
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mSize:I

    .line 1853
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    .line 1848
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1861
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1862
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1863
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    .line 1860
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1857
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1856
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1871
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    .line 1872
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 1873
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1870
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StringValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
