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

    .line 538
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iput p3, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 542
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$count:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->voiceMessageCountUpdate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    .line 544
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " createVoiceMessageUpdateCallbackThread()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceSub"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
