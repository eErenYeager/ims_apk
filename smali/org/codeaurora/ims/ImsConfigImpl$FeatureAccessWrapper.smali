.class final Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureAccessWrapper"
.end annotation


# instance fields
.field public feature:I

.field public listener:Lcom/android/ims/ImsConfigListener;

.field public network:I

.field public value:I


# direct methods
.method public constructor <init>(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    .line 64
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    .line 65
    iput-object p4, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    .line 66
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    .line 62
    return-void
.end method
