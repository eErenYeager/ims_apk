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

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    .line 169
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->network:I

    .line 170
    iput-object p4, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->listener:Lcom/android/ims/ImsConfigListener;

    .line 171
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->value:I

    .line 172
    return-void
.end method


# virtual methods
.method public getFeature()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;->feature:I

    return v0
.end method
