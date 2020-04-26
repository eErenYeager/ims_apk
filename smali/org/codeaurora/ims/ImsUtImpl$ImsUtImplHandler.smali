.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsUtImpl;

    .prologue
    .line 625
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 626
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 625
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 631
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Message received: what = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 637
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 638
    .local v4, "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 639
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_1

    .line 640
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void

    .line 644
    :cond_1
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 645
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Query CB error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 649
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 648
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 654
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 655
    .local v19, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 656
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "SuppSvcResponse has failure for CB query."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v17

    .line 659
    .local v17, "failureCause":Ljava/lang/String;
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v23, 0x324

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 660
    .local v16, "error":Lcom/android/ims/ImsReasonInfo;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 662
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 661
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 664
    return-void

    .line 666
    .end local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    .end local v17    # "failureCause":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v23

    if-nez v23, :cond_4

    .line 667
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "No service status info in response for CB query."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 669
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 670
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 668
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 673
    :cond_4
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v22, v0

    .line 674
    .local v22, "ssInfoArray":[Lcom/android/ims/ImsSsInfo;
    new-instance v20, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v20 .. v20}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 675
    .local v20, "ssInfo":Lcom/android/ims/ImsSsInfo;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v23

    if-nez v23, :cond_6

    .line 676
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 681
    :cond_5
    :goto_1
    const/16 v23, 0x0

    aput-object v20, v22, v23

    .line 682
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Calling success callback for Query CB, status= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 683
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/ims/ImsSsInfo;->mStatus:I

    move/from16 v25, v0

    .line 682
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 685
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 684
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 678
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 679
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_1

    .line 690
    .end local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v20    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    .end local v22    # "ssInfoArray":[Lcom/android/ims/ImsSsInfo;
    :cond_7
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Null response received for Query CB!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 692
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 693
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 691
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 699
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 700
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 701
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_8

    .line 702
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 706
    :cond_8
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 707
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update CB error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 711
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 710
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 715
    :cond_9
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 716
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 717
    .restart local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 718
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "SuppSvcResponse has failure for CB update."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v17

    .line 721
    .restart local v17    # "failureCause":Ljava/lang/String;
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v23, 0x324

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 722
    .restart local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 724
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 723
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 726
    return-void

    .line 728
    .end local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    .end local v17    # "failureCause":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 732
    .end local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 739
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 740
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 741
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_c

    .line 742
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void

    .line 745
    :cond_c
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    .line 746
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 747
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update CF error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_d
    :goto_2
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 757
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 758
    .restart local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 759
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 760
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    .line 759
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v17

    .line 762
    .restart local v17    # "failureCause":Ljava/lang/String;
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failure cause: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v23, 0x324

    .line 765
    const/16 v24, 0x0

    .line 764
    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 766
    .restart local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 768
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 767
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 749
    .end local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    .end local v17    # "failureCause":Ljava/lang/String;
    .end local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 750
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update CW error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 772
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 774
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 773
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 779
    :cond_10
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Success callback called for msg.what= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 780
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    .line 779
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 787
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 788
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 789
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_11

    .line 790
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void

    .line 793
    :cond_11
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    .line 794
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Query CF error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 797
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 796
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 801
    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 802
    iget-object v11, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 804
    .local v11, "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v0, v11

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 805
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "CallForwardInfo[] has no elements!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 807
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 808
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 806
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 809
    return-void

    .line 812
    :cond_13
    const/4 v5, 0x0

    .line 816
    .local v5, "badCfResponse":Z
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v7, v0, [Lcom/android/ims/ImsCallForwardInfo;

    .line 818
    .local v7, "callForwardInfoList":[Lcom/android/ims/ImsCallForwardInfo;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    .line 819
    aget-object v10, v11, v18

    .line 820
    .local v10, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v6, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 822
    .local v6, "callForwardInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 823
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 833
    :goto_4
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v23, v0

    if-nez v23, :cond_16

    .line 834
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 858
    :goto_5
    if-eqz v5, :cond_1c

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 860
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 861
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 859
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 862
    return-void

    .line 825
    :cond_14
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 826
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_4

    .line 829
    :cond_15
    const/4 v5, 0x1

    .line 830
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Bad status in Query CF response."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 836
    :cond_16
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 837
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_5

    .line 839
    :cond_17
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 840
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 842
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_5

    .line 844
    :cond_18
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 845
    const/16 v23, 0x3

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_5

    .line 847
    :cond_19
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 848
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_5

    .line 850
    :cond_1a
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 851
    const/16 v23, 0x5

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_5

    .line 854
    :cond_1b
    const/4 v5, 0x1

    .line 855
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Bad reason in Query CF response."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 865
    :cond_1c
    iget v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 866
    new-instance v23, Ljava/lang/String;

    iget-object v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 868
    aput-object v6, v7, v18

    .line 818
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 871
    .end local v6    # "callForwardInfo":Lcom/android/ims/ImsCallForwardInfo;
    .end local v10    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 872
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 871
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    goto/16 :goto_0

    .line 876
    .end local v5    # "badCfResponse":Z
    .end local v7    # "callForwardInfoList":[Lcom/android/ims/ImsCallForwardInfo;
    .end local v11    # "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v18    # "i":I
    :cond_1e
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Null response received for Query CF!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 878
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 879
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 877
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 885
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 886
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 887
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_1f

    .line 888
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void

    .line 891
    :cond_1f
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_20

    .line 892
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Query CW error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 895
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 894
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 899
    :cond_20
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_24

    .line 900
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [I

    .line 902
    .local v15, "cwResponse":[I
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v9, v0, [Lcom/android/ims/ImsSsInfo;

    .line 903
    .local v9, "callWaitingInfoList":[Lcom/android/ims/ImsSsInfo;
    new-instance v8, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v8}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 905
    .local v8, "callWaitingInfo":Lcom/android/ims/ImsSsInfo;
    const/16 v23, 0x0

    aget v23, v15, v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 906
    const/16 v23, 0x1

    aget v23, v15, v23

    and-int/lit8 v23, v23, 0x1

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 907
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 925
    :goto_6
    const/16 v23, 0x0

    aput-object v8, v9, v23

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 928
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 927
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 909
    :cond_21
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_6

    .line 912
    :cond_22
    const/16 v23, 0x0

    aget v23, v15, v23

    if-nez v23, :cond_23

    .line 913
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_6

    .line 916
    :cond_23
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "No service status received for CallWaitingInfo."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 918
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 919
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 917
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 920
    return-void

    .line 932
    .end local v8    # "callWaitingInfo":Lcom/android/ims/ImsSsInfo;
    .end local v9    # "callWaitingInfoList":[Lcom/android/ims/ImsSsInfo;
    .end local v15    # "cwResponse":[I
    :cond_24
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Null response received for Query CW!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 934
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 935
    new-instance v26, Lcom/android/ims/ImsReasonInfo;

    const/16 v27, 0x324

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 933
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 941
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 942
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 943
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_25

    .line 944
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-void

    .line 947
    :cond_25
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_27

    .line 948
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    .line 949
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Query CLIR error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_26
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 954
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 953
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 958
    :cond_27
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 959
    iget-object v14, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    .line 960
    .local v14, "clirResp":[I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v13, "clirInfo":Landroid/os/Bundle;
    const-string/jumbo v23, "queryClir"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 962
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Calling success callback for Query CLIR."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v13}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 972
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "clirInfo":Landroid/os/Bundle;
    .end local v14    # "clirResp":[I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 973
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 974
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_28

    .line 975
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void

    .line 978
    :cond_28
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_29

    .line 979
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error for Query Event= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 983
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 982
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 987
    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 988
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    .line 989
    .local v21, "ssInfoArray":[I
    if-eqz v21, :cond_0

    .line 990
    new-instance v20, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v20 .. v20}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 991
    .restart local v20    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    const/16 v23, 0x0

    aget v23, v21, v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 992
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 993
    .local v12, "clInfo":Landroid/os/Bundle;
    const-string/jumbo v23, "imsSsInfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 995
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Success callback on Query event= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 997
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 996
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1004
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "clInfo":Landroid/os/Bundle;
    .end local v20    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    .end local v21    # "ssInfoArray":[I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1005
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1006
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_2a

    .line 1007
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void

    .line 1010
    :cond_2a
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b

    .line 1011
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Query COLP error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 1015
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 1014
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1019
    :cond_2b
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1022
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1023
    .restart local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 1024
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "SuppSvcResponse has failure for COLP query."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v17

    .line 1027
    .restart local v17    # "failureCause":Ljava/lang/String;
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v23, 0x324

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1028
    .restart local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 1030
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1029
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1034
    .end local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    .end local v17    # "failureCause":Ljava/lang/String;
    :cond_2c
    new-instance v20, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v20 .. v20}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 1035
    .restart local v20    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1036
    .restart local v12    # "clInfo":Landroid/os/Bundle;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    check-cast v19, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1037
    .restart local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1038
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 1039
    const-string/jumbo v23, "ImsUtImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Service= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " status= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1040
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/ims/ImsSsInfo;->mStatus:I

    move/from16 v25, v0

    .line 1039
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string/jumbo v23, "imsSsInfo"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1044
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Success callback called for Query COLP."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 1046
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1045
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1058
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "clInfo":Landroid/os/Bundle;
    .end local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v20    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1059
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1060
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-gez v23, :cond_2d

    .line 1061
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Invalid message id received in handleMessage."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1064
    :cond_2d
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_32

    .line 1065
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2f

    .line 1066
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update CLIR error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_2e
    :goto_7
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 1080
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v26

    .line 1079
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1068
    :cond_2f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 1069
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update CLIP error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1071
    :cond_30
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 1072
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update COLR error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1074
    :cond_31
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    .line 1075
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "Update COLP error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1084
    :cond_32
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_36

    .line 1087
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_33

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_35

    .line 1088
    :cond_33
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1089
    .restart local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v23

    if-eqz v23, :cond_34

    .line 1090
    const-string/jumbo v23, "ImsUtImpl"

    const-string/jumbo v24, "SuppSvcResponse has failure for CLIP/COLP update."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v17

    .line 1093
    .restart local v17    # "failureCause":Ljava/lang/String;
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v23, 0x324

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1094
    .restart local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    invoke-virtual/range {v19 .. v19}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    .line 1096
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1095
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1100
    .end local v16    # "error":Lcom/android/ims/ImsReasonInfo;
    .end local v17    # "failureCause":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 1105
    .end local v19    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 1109
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
