.class Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipConfigRawData"
.end annotation


# instance fields
.field local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 3

    .line 590
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 591
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 575
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 576
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 577
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 578
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 579
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 580
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 581
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 582
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 583
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 584
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 585
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 586
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 587
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 588
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 592
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 596
    const/16 v0, 0x30

    return v0
.end method

.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 621
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 622
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 623
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 624
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 625
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 626
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 627
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 629
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 630
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 631
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 632
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 633
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SipConfigRawData::populate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipConfigRawData::put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 603
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 604
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 605
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 606
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 607
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 608
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 609
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 610
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 611
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 612
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 614
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 615
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 616
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipConfigRawData [local_port_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", local_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registration_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registration_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subscribe_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subscribe_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t1_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t1_time r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t2_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t2_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tf_imer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tf_imer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sig_comp_enabled_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sig_comp_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
