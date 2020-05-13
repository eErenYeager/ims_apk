.class Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMSConfig"
.end annotation


# instance fields
.field context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

.field context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 2

    .line 499
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 500
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 492
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v1, 0x100

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 493
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 494
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 495
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 496
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 497
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 501
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 505
    const/16 v0, 0x10b

    return v0
.end method

.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 522
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 523
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 525
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 526
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMSConfig::populate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSConfig::put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 512
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 513
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 514
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 515
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 516
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 517
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSConfig [sms_format_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sms_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sms_over_ip_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sms_over_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context_uri_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
