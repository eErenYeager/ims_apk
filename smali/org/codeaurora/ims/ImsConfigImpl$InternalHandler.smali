.class Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 306
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 305
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 315
    const/4 v5, 0x1

    .line 317
    .local v5, "status":I
    const-string/jumbo v6, "ImsConfigImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 405
    :pswitch_0
    const-string/jumbo v6, "ImsConfigImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "InternalThreadHandler: unexpected message code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 406
    iget v8, p1, Landroid/os/Message;->what:I

    .line 405
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 321
    .local v4, "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v1, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .line 322
    .local v1, "argf":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap7(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    goto :goto_0

    .line 326
    .end local v1    # "argf":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 327
    .restart local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v1, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .line 328
    .restart local v1    # "argf":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap8(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;)V

    goto :goto_0

    .line 332
    .end local v1    # "argf":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 333
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;

    .line 334
    .restart local v1    # "argf":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 335
    const/4 v5, 0x0

    .line 337
    :cond_1
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6, v1, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap5(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;I)V

    goto :goto_0

    .line 341
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "argf":Lorg/codeaurora/ims/ImsConfigImpl$FeatureRequestArgument;
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 342
    .restart local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v2, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    .line 343
    .local v2, "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v7, v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    invoke-static {v6, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap1(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 345
    monitor-enter v4

    .line 346
    :try_start_0
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 345
    .restart local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    :catchall_0
    move-exception v6

    monitor-exit v4

    throw v6

    .line 351
    .end local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 352
    .restart local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v3, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    .line 353
    .local v3, "args":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v7, v3, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->item:I

    invoke-static {v6, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap4(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 355
    monitor-enter v4

    .line 356
    :try_start_1
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 355
    :catchall_1
    move-exception v6

    monitor-exit v4

    throw v6

    .line 361
    .end local v3    # "args":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 362
    .restart local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v2, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    .line 363
    .restart local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v7, v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    iget v8, v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->value:I

    invoke-static {v6, v7, v8}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap2(Lorg/codeaurora/ims/ImsConfigImpl;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 365
    monitor-enter v4

    .line 366
    :try_start_2
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 365
    :catchall_2
    move-exception v6

    monitor-exit v4

    throw v6

    .line 371
    .end local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 372
    .restart local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v3, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;

    .line 373
    .restart local v3    # "args":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v7, v3, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->item:I

    iget-object v8, v3, Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;->value:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap3(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    .line 375
    monitor-enter v4

    .line 376
    :try_start_3
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 375
    :catchall_3
    move-exception v6

    monitor-exit v4

    throw v6

    .line 381
    .end local v3    # "args":Lorg/codeaurora/ims/ImsConfigImpl$StringConfigRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;

    .line 382
    .restart local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    iget-object v2, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;

    .line 383
    .restart local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget v7, v2, Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;->item:I

    invoke-static {v6, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap1(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 387
    .end local v2    # "argi":Lorg/codeaurora/ims/ImsConfigImpl$IntConfigRequestArgument;
    .end local v4    # "request":Lorg/codeaurora/ims/ImsConfigImpl$InternalThreadRequest;
    :pswitch_9
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-get1(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-get2(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 388
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-get0(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 389
    const v7, 0x112008e

    .line 388
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 390
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6, v9}, Lorg/codeaurora/ims/ImsConfigImpl;->-set0(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 391
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap6(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    goto/16 :goto_0

    .line 396
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 397
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap9(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 401
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 402
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$InternalHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-wrap10(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
