.class Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoipClientProvConfigData"
.end annotation


# instance fields
.field enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 3
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v2, 0x3

    .line 2498
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2499
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2500
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2502
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2503
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2505
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2506
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2508
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2509
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2511
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2512
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2514
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2515
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2517
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2518
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2498
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 2524
    const/16 v0, 0x20

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2548
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2549
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2550
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2552
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2553
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2554
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2555
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2556
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2557
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2558
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2559
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2560
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2561
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipClientProvConfigData::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2528
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipClientProvConfigData::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2531
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2532
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2533
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2534
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2535
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2536
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2537
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2538
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2539
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2540
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2541
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2543
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2527
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipClientProvConfigData [enable_client_provisioning_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2567
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2568
    const-string/jumbo v1, ", enable_client_provisioning="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2568
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2569
    const-string/jumbo v1, ", enable_volte_valid.="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2569
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2570
    const-string/jumbo v1, ", enable_volte="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2570
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2571
    const-string/jumbo v1, ", enable_vt_valid="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2571
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2572
    const-string/jumbo v1, ", enable_vt="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2572
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2573
    const-string/jumbo v1, ", enable_presence_valid="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2573
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2574
    const-string/jumbo v1, ", enable_presence="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2574
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2575
    const-string/jumbo v1, ", wifi_call_valid="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2575
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2576
    const-string/jumbo v1, ", wifi_call="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2576
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2577
    const-string/jumbo v1, ", wifi_call_preference_valid="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2577
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2578
    const-string/jumbo v1, ", wifi_call_preference="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2578
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2579
    const-string/jumbo v1, ", wifi_call_roaming_valid="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2579
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2580
    const-string/jumbo v1, ", wifi_call_roaming="

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2580
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2580
    const-string/jumbo v1, "]"

    .line 2566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
