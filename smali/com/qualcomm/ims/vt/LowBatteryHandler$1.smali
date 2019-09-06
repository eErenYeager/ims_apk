.class Lcom/qualcomm/ims/vt/LowBatteryHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/LowBatteryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get2(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(Landroid/content/Context;)Z

    move-result v1

    .line 98
    .local v1, "allowVideoCallsInLowBattery":Z
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v3, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-wrap0(Lcom/qualcomm/ims/vt/LowBatteryHandler;Landroid/content/Intent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-set0(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)Z

    .line 99
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get3(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    .line 105
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-wrap2(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    .line 93
    .end local v1    # "allowVideoCallsInLowBattery":Z
    :cond_2
    return-void

    .line 101
    .restart local v1    # "allowVideoCallsInLowBattery":Z
    :cond_3
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "disconnectVideoCalls on low battery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-wrap1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    goto :goto_0
.end method
