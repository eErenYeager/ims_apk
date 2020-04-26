.class Lorg/codeaurora/ims/ImsConfigImpl$IntValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v0, 0x0

    .line 1811
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1812
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1813
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    .line 1811
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "size"    # I

    .prologue
    .line 1807
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1808
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1807
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1823
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    .line 1825
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1826
    .local v0, "pos":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->padSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1822
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1830
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1816
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->padSize:I

    if-ge v0, v1, :cond_0

    .line 1818
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1815
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 1834
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    .line 1833
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IntValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
