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
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 p1, 0x0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 107
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 108
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 p1, 0x0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 102
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 103
    return-void
.end method
