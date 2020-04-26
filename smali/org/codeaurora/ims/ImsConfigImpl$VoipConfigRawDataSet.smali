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
    .locals 3
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/16 v2, 0x20

    .line 2276
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2277
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    .line 2279
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2280
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 2282
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2283
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 2285
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2286
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2276
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2305
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->populate(Ljava/nio/ByteBuffer;)V

    .line 2307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2309
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2310
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2314
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipConfigRawDataSet::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2293
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VoipConfigRawDataSet::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->put(Ljava/nio/ByteBuffer;)V

    .line 2296
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2297
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2298
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2299
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2300
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2301
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipConfigRawDataSet ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->data:Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2320
    const-string/jumbo v1, ", amr_mode_str_valid="

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2320
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2321
    const-string/jumbo v1, ", amr_mode_str="

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2321
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2322
    const-string/jumbo v1, ", amr_wb_mode_str_valid="

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2322
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2323
    const-string/jumbo v1, ", amr_wb_mode_str="

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2323
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->amr_wb_mode_str:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2324
    const-string/jumbo v1, ", silent_redial_valid="

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2324
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2325
    const-string/jumbo v1, ", silent_redial_enable="

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2325
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$VoipConfigRawDataSet;->silent_redial_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2325
    const-string/jumbo v1, "]"

    .line 2319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
