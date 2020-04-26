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
    .locals 3
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    .line 1899
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 1900
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 1901
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 1902
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 1903
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1904
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 1905
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 1899
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 1909
    const/16 v0, 0x10b

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1924
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1925
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1926
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1927
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1928
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1929
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 1930
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SMSConfig::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1913
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SMSConfig::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1916
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1917
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1918
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1919
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1920
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 1912
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SMSConfig [sms_format_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1936
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1937
    const-string/jumbo v1, ", sms_format="

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_format:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1938
    const-string/jumbo v1, ", sms_over_ip_valid="

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1938
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1939
    const-string/jumbo v1, ", sms_over_ip="

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->sms_over_ip:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1940
    const-string/jumbo v1, ", context_uri_valid="

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1940
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1941
    const-string/jumbo v1, ", context_uri="

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1941
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$SMSConfig;->context_uri:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1941
    const-string/jumbo v1, "]"

    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
