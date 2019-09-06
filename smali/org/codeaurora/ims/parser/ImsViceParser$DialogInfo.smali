.class public Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
.super Ljava/lang/Object;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/parser/ImsViceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogInfo"
.end annotation


# instance fields
.field public callId:Ljava/lang/String;

.field public dialogId:Ljava/lang/String;

.field public direction:Ljava/lang/String;

.field public exclusive:Ljava/lang/String;

.field public mediaAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public paramName:Ljava/lang/String;

.field public paramVal:Ljava/lang/String;

.field public remoteIdentity:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 43
    return-void
.end method
