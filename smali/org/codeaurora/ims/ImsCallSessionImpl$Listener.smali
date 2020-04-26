.class public interface abstract Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
.super Ljava/lang/Object;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
.end method

.method public abstract onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
.end method

.method public abstract onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
.end method
