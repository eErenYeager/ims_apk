.class Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseHeader"
.end annotation


# static fields
.field private static final RESULT_TYPE_FAILURE:I = 0x1

.field private static final RESULT_TYPE_SUCCESS:I


# instance fields
.field mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 2

    .line 468
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 464
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 465
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 466
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 469
    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;)Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;
    .locals 2

    .line 473
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 474
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 475
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 476
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 477
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 478
    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseHeader [mResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingRspValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingRsp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
