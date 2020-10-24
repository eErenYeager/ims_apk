.class public Lcom/qualcomm/ims/vt/CvoUtil;
.super Ljava/lang/Object;
.source "CvoUtil.java"


# static fields
.field private static final DBG:Z = true

.field public static final ORIENTATION_ANGLE_0:I = 0x0

.field public static final ORIENTATION_ANGLE_180:I = 0x2

.field public static final ORIENTATION_ANGLE_270:I = 0x1

.field public static final ORIENTATION_ANGLE_90:I = 0x3

.field public static final ORIENTATION_THRESHOLD:I = 0x2d

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VideoCall_CvoUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static isInRange(III)Z
    .locals 1
    .param p0, "v"    # I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 49
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInRange2(III)Z
    .locals 2
    .param p0, "v"    # I
    .param p1, "p"    # I
    .param p2, "radius"    # I

    .line 58
    sub-int v0, p1, p2

    add-int v1, p1, p2

    invoke-static {p0, v0, v1}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange(III)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 62
    const-string v0, "VideoCall_CvoUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 66
    const-string v0, "VideoCall_CvoUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static toOrientation(I)I
    .locals 2
    .param p0, "angle"    # I

    .line 33
    const/16 v0, 0x2d

    const/16 v1, 0x5a

    invoke-static {p0, v1, v0}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange2(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v0, 0x3

    return v0

    .line 35
    :cond_0
    const/16 v1, 0xb4

    invoke-static {p0, v1, v0}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange2(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/4 v0, 0x2

    return v0

    .line 37
    :cond_1
    const/16 v1, 0x10e

    invoke-static {p0, v1, v0}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange2(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
