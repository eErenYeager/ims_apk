.class Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:S


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v0, 0x0

    .line 1771
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1772
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1773
    iput-short v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    .line 1771
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "size"    # I

    .prologue
    .line 1767
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1768
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1767
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1784
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    .line 1786
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1787
    .local v0, "pos":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->padSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1783
    return-void
.end method

.method public getValue()S
    .locals 1

    .prologue
    .line 1791
    iget-short v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1777
    iget-short v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->padSize:I

    if-ge v0, v1, :cond_0

    .line 1779
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1776
    :cond_0
    return-void
.end method

.method public setValue(S)V
    .locals 0
    .param p1, "v"    # S

    .prologue
    .line 1795
    iput-short p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    .line 1794
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShortValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
