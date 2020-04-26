.class Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:Z


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v0, 0x0

    .line 1689
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1690
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1683
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 1691
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 1689
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "size"    # I

    .prologue
    .line 1685
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1686
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 1683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 1685
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 1703
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1704
    .local v1, "temp":B
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 1706
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1707
    .local v0, "pos":I
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->padSize:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1702
    return-void
.end method

.method public getValue()Z
    .locals 1

    .prologue
    .line 1711
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 1695
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v1, v2

    .line 1696
    .local v1, "temp":B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->padSize:I

    if-ge v0, v2, :cond_1

    .line 1698
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "temp":B
    :cond_0
    move v2, v3

    .line 1695
    goto :goto_0

    .line 1694
    .restart local v0    # "i":I
    .restart local v1    # "temp":B
    :cond_1
    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 1715
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 1714
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ValidValue value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
