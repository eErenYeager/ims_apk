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
    .locals 4
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v3, 0x3

    .line 1998
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1999
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2000
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2001
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2002
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2003
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2004
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2005
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2006
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2007
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2008
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2009
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2010
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2011
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2012
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1998
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 2016
    const/16 v0, 0x30

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2039
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2040
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2041
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2042
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2043
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2044
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2045
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2046
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2047
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2048
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2049
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2050
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2051
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2052
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2054
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SipConfigRawData::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2020
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SipConfigRawData::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2023
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2024
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2025
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2026
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2027
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2028
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2029
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2030
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2031
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2032
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2033
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2034
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2035
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2019
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SipConfigRawData [local_port_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2060
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2061
    const-string/jumbo v1, ", local_port="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2061
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->local_port:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2062
    const-string/jumbo v1, ", registration_timer_valid="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2062
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2063
    const-string/jumbo v1, ", registration_timer="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2063
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->registration_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2064
    const-string/jumbo v1, ", subscribe_timer_valid="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2064
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2065
    const-string/jumbo v1, ", subscribe_timer="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2065
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->subscribe_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2066
    const-string/jumbo v1, ", t1_timer_valid="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2066
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2067
    const-string/jumbo v1, ", t1_time r="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2067
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t1_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2068
    const-string/jumbo v1, ", t2_timer_valid="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2068
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2069
    const-string/jumbo v1, ", t2_timer="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2069
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->t2_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2070
    const-string/jumbo v1, ", tf_imer_valid="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2070
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2071
    const-string/jumbo v1, ", tf_imer="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2071
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->tf_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2072
    const-string/jumbo v1, ", sig_comp_enabled_valid="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2072
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2073
    const-string/jumbo v1, ", sig_comp_enabled="

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2073
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SipConfigRawData;->sig_comp_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2073
    const-string/jumbo v1, "]"

    .line 2059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
