.class public Lorg/codeaurora/ims/ServiceStatus;
.super Ljava/lang/Object;
.source "ServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    }
.end annotation


# instance fields
.field public accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

.field public isValid:Z

.field public status:I

.field public type:I

.field public userdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 7
    return-void
.end method
