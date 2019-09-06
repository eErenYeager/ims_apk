.class Lorg/codeaurora/ims/SmartCallForward$1;
.super Landroid/telephony/PhoneStateListener;
.source "SmartCallForward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/SmartCallForward;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/SmartCallForward;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/SmartCallForward;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/SmartCallForward;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward$1;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreciseCallStateChanged : mSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward$1;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward$1;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward$1;->mSubId:I

    invoke-static {v0, v1, p1}, Lorg/codeaurora/ims/SmartCallForward;->-wrap2(Lorg/codeaurora/ims/SmartCallForward;ILandroid/telephony/PreciseCallState;)V

    .line 114
    return-void
.end method
