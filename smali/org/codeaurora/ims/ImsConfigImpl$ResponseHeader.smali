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
    .locals 3
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    .line 2584
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2588
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2589
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2590
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2591
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2584
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2594
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2595
    .local v0, "ret":Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2596
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2597
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2598
    iget-object v1, v0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2599
    return-object v0
.end method

.method isSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2603
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->getValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ResponseHeader [mResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2609
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mResultType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2610
    const-string/jumbo v1, ", mErrorType="

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2610
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mErrorType:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2611
    const-string/jumbo v1, ", mSettingRspValid="

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2611
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRspValid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    const-string/jumbo v1, ", mSettingRsp="

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ResponseHeader;->mSettingRsp:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    const-string/jumbo v1, "]"

    .line 2608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
