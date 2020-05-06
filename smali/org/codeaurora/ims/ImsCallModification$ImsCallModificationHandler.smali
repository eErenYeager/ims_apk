.class Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    .line 469
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-get1(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-set1(Lorg/codeaurora/ims/ImsCallModification;I)I

    move-result v0

    return v0
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 558
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v3, "EVENT_AVP_UPGRADE received"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 560
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 563
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_1

    .line 564
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v3, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallModification;->-wrap4(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 576
    .end local v1    # "shouldNotifyUser":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap1(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 577
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap5(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 578
    return-void

    .line 572
    .restart local v1    # "shouldNotifyUser":Z
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v3, "AVP Retry error when Video call was dialed"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallModification;->-wrap4(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onModifyCallInitiateDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 494
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v3, "EVENT_MODIFY_CALL_INITIATE_DONE received"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 495
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 496
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v3, "videocall error during modifyCallInitiate"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallModification;->-wrap4(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 502
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 503
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 504
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 506
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap1(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 507
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap5(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 508
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 512
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v2, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 513
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 514
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    .line 515
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 518
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-get0(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-get0(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 520
    const/4 v3, 0x4

    .line 519
    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->-set0(Lorg/codeaurora/ims/ImsCallModification;Z)Z

    .line 522
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap1(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 523
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 524
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap5(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 543
    :goto_1
    return-void

    .line 519
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap0(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v2, "Error during video pause so retry"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap4(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 531
    const-wide/16 v4, 0xbb8

    .line 530
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 532
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-get1(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-set1(Lorg/codeaurora/ims/ImsCallModification;I)I

    goto :goto_1

    .line 534
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v2, "Video Pause retry limit reached."

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 536
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap1(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 537
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap5(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 541
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v2, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-wrap4(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onVideoPauseRetry()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->-get1(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-get2(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-get0(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap2(Lorg/codeaurora/ims/ImsCallModification;I)V

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v1, "User pressed home/resume during retry so sending out new multitask request"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-wrap1(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 552
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 553
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-wrap5(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 491
    :goto_0
    return-void

    .line 474
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallInitiateDone(Landroid/os/Message;)V

    goto :goto_0

    .line 477
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const-string/jumbo v1, "EVENT_MODIFY_CALL_CONFIRM_DONE received"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-wrap1(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 482
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-wrap5(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_0

    .line 485
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    goto :goto_0

    .line 488
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
