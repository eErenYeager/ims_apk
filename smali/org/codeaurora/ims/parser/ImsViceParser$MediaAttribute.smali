.class public Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
.super Ljava/lang/Object;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/parser/ImsViceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaAttribute"
.end annotation


# instance fields
.field public mediaDirection:Ljava/lang/String;

.field public mediaPort:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
