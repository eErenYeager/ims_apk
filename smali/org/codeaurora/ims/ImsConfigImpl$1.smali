.class Lorg/codeaurora/ims/ImsConfigImpl$1;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 391
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 394
    const-string v0, "ImsConfigImpl"

    const-string v1, "setFeatureValue, reset flag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$502(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 396
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$602(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    .line 397
    return-void
.end method
