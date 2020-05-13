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
    .locals 2

    .line 794
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 795
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 779
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 780
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 781
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 782
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 783
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 784
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 785
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 786
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 787
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 788
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 789
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 790
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 791
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 792
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 796
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 800
    const/16 v0, 0x20

    return v0
.end method

.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 824
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 825
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 826
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 827
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 828
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 829
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 830
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 831
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 832
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 833
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 834
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 835
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 836
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 837
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoipClientProvConfigData::populate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipClientProvConfigData::put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 807
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 808
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 809
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 810
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 811
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 812
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 813
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 814
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 815
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 816
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 817
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 818
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 819
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 820
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipClientProvConfigData [enable_client_provisioning_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_client_provisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_client_provisioning:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_volte_valid.="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_volte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_volte:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_vt_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_vt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_vt:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_presence_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enable_presence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->enable_presence:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi_call_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi_call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi_call_preference_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi_call_preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_preference:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi_call_roaming_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi_call_roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipClientProvConfigData;->wifi_call_roaming:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
