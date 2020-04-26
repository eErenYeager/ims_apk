.class Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoipConfigRawDataGet"
.end annotation


# instance fields
.field data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

.field silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 3
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    .line 2236
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2237
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    .line 2239
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2240
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2236
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2254
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->populate(Ljava/nio/ByteBuffer;)V

    .line 2255
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2258
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipConfigRawDataGet::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2247
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipConfigRawDataGet::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->put(Ljava/nio/ByteBuffer;)V

    .line 2249
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2250
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipConfigRawDataGet ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2264
    const-string/jumbo v1, ", silent_redial_valid="

    .line 2263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2264
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2265
    const-string/jumbo v1, ", silent_redial_enable="

    .line 2263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2265
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataGet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2265
    const-string/jumbo v1, "]"

    .line 2263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
