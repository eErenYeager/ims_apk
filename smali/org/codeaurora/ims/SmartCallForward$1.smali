.class Lorg/codeaurora/ims/SmartCallForward$1;
.super Landroid/telephony/PhoneStateListener;
.source "SmartCallForward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/SmartCallForward;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/SmartCallForward;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/SmartCallForward;

    .line 114
    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward$1;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreciseCallStateChanged : mSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$1;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCallForward"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward$1;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$1;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/codeaurora/ims/SmartCallForward;->access$500(Lorg/codeaurora/ims/SmartCallForward;ILandroid/telephony/PreciseCallState;)V

    .line 119
    return-void
.end method
