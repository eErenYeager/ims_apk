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

    .prologue
    .line 324
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 325
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 326
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 337
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lorg/codeaurora/ims/IFRequest;

    .line 338
    .local v7, "rr":Lorg/codeaurora/ims/IFRequest;
    const/4 v6, 0x0

    .line 340
    .local v6, "req":Lorg/codeaurora/ims/IFRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 466
    .end local v6    # "req":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v6    # "req":Lorg/codeaurora/ims/IFRequest;
    :pswitch_0
    const/4 v1, 0x0

    .line 350
    .local v1, "alreadySubtracted":Z
    :try_start_0
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v8, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    .line 352
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_2

    .line 353
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 354
    invoke-virtual {v7}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 355
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v9, :cond_1

    .line 356
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    :cond_1
    const/4 v1, 0x1

    .line 401
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 358
    return-void

    .line 361
    :cond_2
    :try_start_1
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    :try_start_2
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v10

    .line 366
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v9, :cond_3

    .line 367
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 368
    :cond_3
    const/4 v1, 0x1

    .line 370
    iget-object v9, v7, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v9, v9

    const/16 v10, 0x2000

    if-le v9, v10, :cond_8

    .line 371
    new-instance v9, Ljava/lang/RuntimeException;

    .line 372
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Message is larger than max bytes allowed! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 373
    iget-object v11, v7, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v11, v11

    .line 372
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 371
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 379
    .local v3, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v9, "ImsSenderRxr"

    const-string/jumbo v10, "IOException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v9, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap1(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 383
    .local v6, "req":Lorg/codeaurora/ims/IFRequest;
    if-nez v6, :cond_4

    xor-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_5

    .line 384
    :cond_4
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 385
    invoke-virtual {v7}, Lorg/codeaurora/ims/IFRequest;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    :cond_5
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 404
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "req":Lorg/codeaurora/ims/IFRequest;
    :goto_1
    if-nez v1, :cond_0

    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-lez v9, :cond_0

    .line 405
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 361
    .local v6, "req":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10

    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    .line 388
    .local v4, "exc":Ljava/lang/RuntimeException;
    :try_start_6
    const-string/jumbo v9, "ImsSenderRxr"

    const-string/jumbo v10, "Uncaught exception "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v10, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v9, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap1(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 392
    .local v6, "req":Lorg/codeaurora/ims/IFRequest;
    if-nez v6, :cond_6

    xor-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_7

    .line 393
    :cond_6
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 394
    invoke-virtual {v7}, Lorg/codeaurora/ims/IFRequest;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 401
    :cond_7
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V

    goto :goto_1

    .line 376
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .local v6, "req":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_8
    :try_start_7
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iget-object v10, v7, Lorg/codeaurora/ims/IFRequest;->mData:[B

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 401
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V

    goto :goto_1

    .line 396
    .end local v6    # "req":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v9

    .line 401
    iget-object v10, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v10}, Lorg/codeaurora/ims/ImsSenderRxr;->-wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 396
    throw v9

    .line 413
    .end local v1    # "alreadySubtracted":Z
    .restart local v6    # "req":Lorg/codeaurora/ims/IFRequest;
    :pswitch_1
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 414
    :try_start_8
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 425
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-eqz v9, :cond_a

    .line 426
    const-string/jumbo v9, "ImsSenderRxr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 427
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 426
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 427
    const-string/jumbo v12, " at TIMEOUT, reset!"

    .line 426
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 428
    const-string/jumbo v12, " There still msg waitng for response"

    .line 426
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v11, 0x0

    iput v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 433
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 434
    :try_start_9
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 435
    .local v2, "count":I
    const-string/jumbo v9, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_9

    .line 439
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/codeaurora/ims/IFRequest;

    move-object v7, v0

    .line 440
    const-string/jumbo v9, "ImsSenderRxr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 441
    iget v13, v7, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v13}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v13

    .line 440
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :try_start_a
    monitor-exit v11

    .line 455
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_a
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-eqz v9, :cond_b

    .line 456
    const-string/jumbo v9, "ImsSenderRxr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 457
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v12, v12, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 456
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 457
    const-string/jumbo v12, " at TIMEOUT, reset!"

    .line 456
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v11, 0x0

    iput v11, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 461
    :cond_b
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v9, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_c
    monitor-exit v10

    goto/16 :goto_0

    .line 433
    :catchall_2
    move-exception v9

    :try_start_b
    monitor-exit v11

    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 413
    :catchall_3
    move-exception v9

    monitor-exit v10

    throw v9

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method
