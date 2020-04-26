.class Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PadingValue"
.end annotation


# instance fields
.field protected padSize:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v0, 0x0

    .line 1677
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 1678
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 1677
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "size"    # I

    .prologue
    .line 1673
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 1674
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 1673
    return-void
.end method
