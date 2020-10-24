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

    .line 98
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(ILjava/lang/String;)V

    .line 107
    return-void
.end method
