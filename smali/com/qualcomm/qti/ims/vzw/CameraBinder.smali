.class Lcom/qualcomm/qti/ims/vzw/CameraBinder;
.super Lverizon/net/sip/internal/ICamera$Stub;
.source "CameraBinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lverizon/net/sip/internal/ICamera$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setListener(Lverizon/net/sip/internal/ICameraListener;)V
    .locals 0
    .param p1, "listener"    # Lverizon/net/sip/internal/ICameraListener;

    .line 18
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 0
    .param p1, "value"    # I

    .line 22
    return-void
.end method

.method public stopSmoothZoom()V
    .locals 0

    .line 26
    return-void
.end method
