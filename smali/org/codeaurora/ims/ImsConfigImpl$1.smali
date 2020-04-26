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
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    .line 851
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 854
    if-eqz p2, :cond_1

    .line 855
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 857
    const-string/jumbo v2, "ImsConfigImpl"

    const-string/jumbo v3, "onConfigurationChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 859
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-get1(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-get2(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_1

    .line 860
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap11(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/res/Configuration;)V

    .line 853
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_1
    return-void
.end method
