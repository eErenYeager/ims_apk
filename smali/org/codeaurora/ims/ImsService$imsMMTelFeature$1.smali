.class Lorg/codeaurora/ims/ImsService$imsMMTelFeature$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsService$imsMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsService$imsMMTelFeature;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsService$imsMMTelFeature;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature$1;->this$1:Lorg/codeaurora/ims/ImsService$imsMMTelFeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBroadcastReceiver - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string p1, "subscription"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED, new DDS = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object p2, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature$1;->this$1:Lorg/codeaurora/ims/ImsService$imsMMTelFeature;

    iget-object p2, p2, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p2, p1}, Lorg/codeaurora/ims/ImsService;->access$200(Lorg/codeaurora/ims/ImsService;I)V

    .line 292
    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string p2, "LOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature$1;->this$1:Lorg/codeaurora/ims/ImsService$imsMMTelFeature;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->access$300(Lorg/codeaurora/ims/ImsService$imsMMTelFeature;)V

    .line 297
    :cond_1
    :goto_0
    return-void
.end method
