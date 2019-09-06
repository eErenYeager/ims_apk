.class Lorg/codeaurora/ims/ImsServiceSub$2;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "val$count"    # I

    .prologue
    .line 496
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iput p2, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 500
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

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

    .line 501
    .local v0, "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->val$count:I

    invoke-interface {v0, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->voiceMessageCountUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    .end local v0    # "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 504
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "notifyVoiceMessageCountUpdate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
