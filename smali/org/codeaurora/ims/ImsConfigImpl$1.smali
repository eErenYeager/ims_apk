.class Lorg/codeaurora/ims/ImsConfigImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
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

    .line 79
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 81
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    const-string p2, "ImsConfigImpl"

    const-string v0, "onConfigurationChange"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result p2

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result p2

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq p2, v0, :cond_1

    .line 86
    :cond_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p2, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/res/Configuration;)V

    .line 90
    :cond_1
    return-void
.end method
