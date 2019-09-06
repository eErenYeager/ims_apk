.class Lorg/codeaurora/ims/ImsCallSessionImpl$2;
.super Ljava/lang/Thread;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 2301
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2304
    new-instance v1, Landroid/media/ToneGenerator;

    .line 2305
    const/4 v2, 0x0

    const/16 v3, 0x28

    .line 2304
    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 2307
    .local v1, "mTone":Landroid/media/ToneGenerator;
    const/16 v2, 0x19

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2308
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2309
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2313
    if-eqz v1, :cond_0

    .line 2314
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 2302
    :cond_0
    :goto_0
    return-void

    .line 2310
    :catch_0
    move-exception v0

    .line 2311
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception caught when generator sleep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2313
    if-eqz v1, :cond_0

    .line 2314
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    goto :goto_0

    .line 2312
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 2313
    if-eqz v1, :cond_1

    .line 2314
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 2312
    :cond_1
    throw v2
.end method
