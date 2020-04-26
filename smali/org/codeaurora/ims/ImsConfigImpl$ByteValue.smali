.class Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:B


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v0, 0x0

    .line 1731
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1732
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1733
    iput-byte v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    .line 1731
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "size"    # I

    .prologue
    .line 1727
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1728
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1727
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1744
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    .line 1746
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1747
    .local v0, "pos":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->padSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1743
    return-void
.end method

.method public getValue()B
    .locals 1

    .prologue
    .line 1751
    iget-byte v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1737
    iget-byte v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1738
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->padSize:I

    if-ge v0, v1, :cond_0

    .line 1739
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1736
    :cond_0
    return-void
.end method

.method public setValue(B)V
    .locals 0
    .param p1, "v"    # B

    .prologue
    .line 1755
    iput-byte p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    .line 1754
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ByteValue value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->value:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
