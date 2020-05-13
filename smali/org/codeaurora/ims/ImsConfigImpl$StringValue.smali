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

    .line 657
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 659
    if-gtz p2, :cond_0

    .line 660
    const/4 p2, 0x1

    .line 662
    :cond_0
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mSize:I

    .line 663
    iget p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    .line 664
    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 673
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 674
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 675
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 669
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4

    .line 683
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 685
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->mBuffer:[B

    array-length v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
