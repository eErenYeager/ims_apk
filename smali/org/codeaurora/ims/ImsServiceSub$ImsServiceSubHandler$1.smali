.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;ILandroid/telephony/ims/ImsReasonInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

.field final synthetic val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

.field final synthetic val$registrationState:I

.field final synthetic val$imsRadioTech:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;ILcom/android/ims/internal/IImsRegistrationListener;Landroid/telephony/ims/ImsReasonInfo;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
    .param p2, "val$registrationState"    # I
    .param p3, "val$listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "val$imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p5, "val$imsRadioTech"    # I

    .prologue
    .line 605
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iput p2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;
    
    iput p5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 609
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    packed-switch v1, :pswitch_data_0

    .line 607
    :goto_0
    return-void

    .line 611
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;
    
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "createRegCallBackThread()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    .end local v0    # "t":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 617
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;
    
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationProgressingWithRadioTech(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
