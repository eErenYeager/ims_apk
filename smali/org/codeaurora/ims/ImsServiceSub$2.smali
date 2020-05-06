.class Lorg/codeaurora/ims/ImsServiceSub$2;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub;->createVoiceMessageUpdateCallbackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;

.field final synthetic val$count:I

.field final synthetic val$listener:Lcom/android/ims/internal/IImsRegistrationListener;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iput p3, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$count:I

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$count:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->voiceMessageCountUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "createVoiceMessageUpdateCallbackThread()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
