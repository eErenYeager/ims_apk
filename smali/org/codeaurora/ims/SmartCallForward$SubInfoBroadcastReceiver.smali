.class Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartCallForward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/SmartCallForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubInfoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/SmartCallForward;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/SmartCallForward;Lorg/codeaurora/ims/SmartCallForward$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codeaurora/ims/SmartCallForward;
    .param p2, "x1"    # Lorg/codeaurora/ims/SmartCallForward$1;

    .line 63
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;-><init>(Lorg/codeaurora/ims/SmartCallForward;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->access$100(Lorg/codeaurora/ims/SmartCallForward;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->access$200(Lorg/codeaurora/ims/SmartCallForward;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->access$300(Lorg/codeaurora/ims/SmartCallForward;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->access$200(Lorg/codeaurora/ims/SmartCallForward;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->access$400(Lorg/codeaurora/ims/SmartCallForward;)V

    .line 76
    :cond_1
    :goto_0
    return-void
.end method
