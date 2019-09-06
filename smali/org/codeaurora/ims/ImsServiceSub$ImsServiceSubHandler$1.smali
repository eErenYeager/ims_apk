.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

.field final synthetic val$imsRadioTech:I

.field final synthetic val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$registrationState:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$1"    # Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
    .param p2, "val$registrationState"    # I
    .param p3, "val$imsRadioTech"    # I
    .param p4, "val$imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 1190
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iput p2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    iput p3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1194
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap2(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1195
    .local v0, "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1197
    :pswitch_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-interface {v0, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1207
    .end local v0    # "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 1208
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "notifyRegChange()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 1200
    .restart local v0    # "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v0, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1203
    :pswitch_2
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-interface {v0, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationProgressingWithRadioTech(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
