.class Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
.super Landroid/os/Handler;
.source "ImsSenderRxr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IFMsg_Sender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 358
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 359
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 360
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 371
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/IFRequest;

    .line 372
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    const/4 v1, 0x0

    .line 374
    .local v1, "req":Lorg/codeaurora/ims/IFRequest;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 447
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 448
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 459
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 460
    const-string v3, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v6, v6, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " at TIMEOUT, reset! There still msg waitng for response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iput v4, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 489
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-eqz v3, :cond_2

    .line 490
    const-string v3, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v6, v6, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " at TIMEOUT, reset!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iput v4, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 495
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 497
    :cond_3
    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 381
    :cond_4
    const/4 v2, 0x0

    .line 384
    .local v2, "alreadySubtracted":Z
    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 386
    .local v6, "s":Landroid/net/LocalSocket;
    if-nez v6, :cond_6

    .line 387
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 388
    invoke-virtual {v0}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 389
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v7, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v7, :cond_5

    .line 390
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v8, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    sub-int/2addr v8, v4

    iput v8, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 391
    :cond_5
    const/4 v2, 0x1

    .line 435
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 392
    return-void

    .line 395
    :cond_6
    :try_start_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v7, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 396
    :try_start_3
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v8, v8, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v8, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/2addr v9, v4

    iput v9, v8, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 398
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    :try_start_4
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v7, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v7, :cond_7

    .line 401
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v8, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    sub-int/2addr v8, v4

    iput v8, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 402
    :cond_7
    const/4 v2, 0x1

    .line 404
    iget-object v7, v0, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v7, v7

    const/16 v8, 0x2000

    if-gt v7, v8, :cond_8

    .line 410
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v8, v0, Lorg/codeaurora/ims/IFRequest;->mData:[B

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .end local v6    # "s":Landroid/net/LocalSocket;
    goto :goto_0

    .line 405
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :cond_8
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message is larger than max bytes allowed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v1    # "req":Lorg/codeaurora/ims/IFRequest;
    .end local v2    # "alreadySubtracted":Z
    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    .end local p1    # "msg":Landroid/os/Message;
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 398
    .restart local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v1    # "req":Lorg/codeaurora/ims/IFRequest;
    .restart local v2    # "alreadySubtracted":Z
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v1    # "req":Lorg/codeaurora/ims/IFRequest;
    .end local v2    # "alreadySubtracted":Z
    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 435
    .end local v6    # "s":Landroid/net/LocalSocket;
    .restart local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v1    # "req":Lorg/codeaurora/ims/IFRequest;
    .restart local v2    # "alreadySubtracted":Z
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 421
    :catch_0
    move-exception v6

    .line 422
    .local v6, "exc":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v7, "ImsSenderRxr"

    const-string v8, "Uncaught exception "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v8, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v7, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->access$000(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v7

    move-object v1, v7

    .line 426
    if-nez v1, :cond_9

    if-nez v2, :cond_b

    .line 427
    :cond_9
    invoke-virtual {v0, v3, v5}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 428
    invoke-virtual {v0}, Lorg/codeaurora/ims/IFRequest;->release()V

    goto :goto_0

    .line 412
    .end local v6    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 413
    .local v3, "ex":Ljava/io/IOException;
    const-string v6, "ImsSenderRxr"

    const-string v7, "IOException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v7, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v6, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->access$000(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    move-object v1, v6

    .line 417
    if-nez v1, :cond_a

    if-nez v2, :cond_b

    .line 418
    :cond_a
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 419
    invoke-virtual {v0}, Lorg/codeaurora/ims/IFRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 435
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_b
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 436
    nop

    .line 438
    if-nez v2, :cond_c

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v3, :cond_c

    .line 439
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v5, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    sub-int/2addr v5, v4

    iput v5, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 500
    .end local v2    # "alreadySubtracted":Z
    :cond_c
    :goto_1
    return-void

    .line 435
    .restart local v2    # "alreadySubtracted":Z
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsSenderRxr;->access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V

    throw v3
.end method

.method public run()V
    .locals 0

    .line 366
    return-void
.end method
