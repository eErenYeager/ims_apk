.class Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoipConfigRawDataSet"
.end annotation


# instance fields
.field amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

.field amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

.field amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

.field silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 2

    .line 988
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 989
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 980
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v1, 0x20

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 981
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 982
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 983
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 984
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    .line 985
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 986
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 990
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1011
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->populate(Ljava/nio/ByteBuffer;)V

    .line 1012
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1013
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1014
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1015
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1016
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1017
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoipConfigRawDataSet::populate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipConfigRawDataSet::put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->put(Ljava/nio/ByteBuffer;)V

    .line 1001
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1002
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1003
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1004
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1005
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1006
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1007
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoipConfigRawDataSet ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_mode_str_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_mode_str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_mode_str_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amr_wb_mode_str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", silent_redial_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", silent_redial_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
