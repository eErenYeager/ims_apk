.class Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetResponse"
.end annotation


# instance fields
.field mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

.field mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$Config;)V
    .locals 2
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "t"    # Lorg/codeaurora/ims/ImsConfigImpl$Config;

    .prologue
    .line 2620
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2617
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    .line 2621
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    .line 2620
    return-void
.end method


# virtual methods
.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2625
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->get(Ljava/nio/ByteBuffer;)Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    .line 2626
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->populate(Ljava/nio/ByteBuffer;)V

    .line 2627
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetResponse::populate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GetResponse [mHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2633
    const-string/jumbo v1, "]"

    .line 2632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
