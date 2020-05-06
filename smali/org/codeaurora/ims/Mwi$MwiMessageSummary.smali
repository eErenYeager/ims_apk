.class public Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
.super Ljava/lang/Object;
.source "Mwi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/Mwi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MwiMessageSummary"
.end annotation


# instance fields
.field public mMessageType:I

.field public mNewMessage:I

.field public mNewUrgent:I

.field public mOldMessage:I

.field public mOldUrgent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
