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

    .line 542
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 544
    iput-short v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    .line 545
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 538
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 539
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 540
    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 557
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    .line 558
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->padSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 559
    return-void
.end method

.method public getValue()S
    .locals 1

    .line 562
    iget-short v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    return v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 549
    iget-short v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 550
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->padSize:I

    if-ge v1, v2, :cond_0

    .line 551
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public setValue(S)V
    .locals 0

    .line 566
    iput-short p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    .line 567
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->value:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
