.class final Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringConfigRequestArgument"
.end annotation


# instance fields
.field public item:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->item:I

    .line 648
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->value:Ljava/lang/String;

    .line 649
    return-void
.end method
