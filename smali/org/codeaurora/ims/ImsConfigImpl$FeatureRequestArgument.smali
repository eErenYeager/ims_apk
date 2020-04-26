.class final Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureRequestArgument"
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
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    .line 243
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    .line 244
    iput-object p4, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    .line 245
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 241
    return-void
.end method


# virtual methods
.method public getFeature()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    return v0
.end method
