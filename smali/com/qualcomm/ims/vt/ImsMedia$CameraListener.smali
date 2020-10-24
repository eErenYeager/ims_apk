.class public interface abstract Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.super Ljava/lang/Object;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraListener"
.end annotation


# virtual methods
.method public abstract onCameraConfigChanged(IIILandroid/view/Surface;I)V
.end method

.method public abstract onMediaDeinitialized()V
.end method

.method public abstract onRecordingDisabled()V
.end method

.method public abstract onRecordingEnabled()V
.end method
