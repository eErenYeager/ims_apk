.class public Lcom/qualcomm/ims/vt/Camera$CameraException;
.super Landroid/hardware/camera2/CameraAccessException;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraException"
.end annotation


# static fields
.field public static final CAMERA_ERROR:I = 0x3


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "problem"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(ILjava/lang/String;)V

    .line 106
    return-void
.end method
