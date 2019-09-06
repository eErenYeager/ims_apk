.class public Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
.super Ljava/lang/Object;
.source "Mwi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/Mwi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MwiMessageDetails"
.end annotation


# instance fields
.field public mDate:Ljava/lang/String;

.field public mFromAddress:Ljava/lang/String;

.field public mMessageId:Ljava/lang/String;

.field public mMessageType:I

.field public mPriority:I

.field public mSubject:Ljava/lang/String;

.field public mToAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
