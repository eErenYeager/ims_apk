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
    .locals 1

    .line 183
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    .line 184
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    .line 185
    return-void
.end method


# virtual methods
.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->get(Ljava/nio/ByteBuffer;)Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;->populate(Ljava/nio/ByteBuffer;)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GetResponse::populate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetResponse [mHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mHeader:Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$GetResponse;->mConfig:Lorg/codeaurora/ims/ImsConfigImpl$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
