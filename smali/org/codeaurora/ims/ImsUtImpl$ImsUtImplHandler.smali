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
    .line 604
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 605
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 606
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 610
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Message received: what = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 616
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 617
    .local v4, "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 618
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_1

    .line 619
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void

    .line 623
    :cond_1
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 624
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Query CB error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 628
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 627
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 632
    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    .line 633
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 634
    .local v23, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 635
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "SuppSvcResponse has failure for CB query."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 638
    .local v20, "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v31, 0x324

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 639
    .local v19, "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 641
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 640
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 643
    return-void

    .line 645
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v31

    if-nez v31, :cond_4

    .line 646
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "No service status info in response for CB query."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 648
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 649
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 647
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 652
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeCount()I

    move-result v17

    .line 654
    .local v17, "count":I
    if-lez v17, :cond_7

    .line 655
    const/16 v29, 0x0

    .line 656
    .local v29, "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    const/16 v21, 0x0

    .end local v29    # "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 658
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v11

    .line 659
    .local v11, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListCount()I

    move-result v26

    .line 660
    .local v26, "size":I
    move/from16 v0, v26

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    move-object/from16 v29, v0

    .line 661
    .local v29, "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 663
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v24

    .line 664
    .local v24, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual/range {v24 .. v24}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v25

    .line 665
    .local v25, "service_class":I
    if-eqz v26, :cond_5

    .line 666
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 668
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v10

    .line 669
    .local v10, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 672
    .local v27, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 673
    aput-object v27, v29, v22

    .line 666
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 656
    .end local v10    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v22    # "j":I
    .end local v24    # "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v25    # "service_class":I
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 678
    .end local v11    # "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .end local v26    # "size":I
    .end local v29    # "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    .line 679
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 678
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 681
    .end local v21    # "i":I
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    move-object/from16 v30, v0

    .line 682
    .local v30, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 683
    .restart local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    if-nez v31, :cond_9

    .line 684
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 688
    :cond_8
    :goto_3
    const/16 v31, 0x0

    aput-object v27, v30, v31

    .line 689
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "success callback Query Anonymous CB, status= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 690
    move-object/from16 v0, v27

    iget v0, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    move/from16 v33, v0

    .line 689
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    .line 692
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 691
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 685
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 686
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_3

    .line 697
    .end local v17    # "count":I
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v30    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    :cond_a
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Null response received for Query CB!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 699
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 700
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 698
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 706
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 707
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 708
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_b

    .line 709
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 713
    :cond_b
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    .line 714
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update CB error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 718
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 717
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 722
    :cond_c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 723
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 724
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 725
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "SuppSvcResponse has failure for CB update."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 728
    .restart local v20    # "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v31, 0x324

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 729
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 731
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 730
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 733
    return-void

    .line 735
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 739
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 746
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 747
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 748
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_f

    .line 749
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 752
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    .line 753
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 754
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update CF error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_10
    :goto_4
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 764
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 765
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 766
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 767
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    .line 766
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 769
    .restart local v20    # "failureCause":Ljava/lang/String;
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Failure cause: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v31, 0x324

    .line 772
    const/16 v32, 0x0

    .line 771
    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 773
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 775
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 774
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 756
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 757
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update CW error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 779
    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 781
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 780
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 786
    :cond_13
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Success callback called for msg.what= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 787
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    .line 786
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 794
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 795
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 796
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_14

    .line 797
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 800
    :cond_14
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    .line 801
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Query CF error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 804
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 803
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 808
    :cond_15
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_21

    .line 809
    iget-object v13, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 811
    .local v13, "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_16

    .line 812
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "CallForwardInfo[] has no elements!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 814
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 815
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 813
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 816
    return-void

    .line 819
    :cond_16
    const/4 v5, 0x0

    .line 823
    .local v5, "badCfResponse":Z
    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v7, v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 825
    .local v7, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_5
    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_20

    .line 826
    aget-object v12, v13, v21

    .line 827
    .local v12, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 829
    .local v6, "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 830
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 840
    :goto_6
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    if-nez v31, :cond_19

    .line 841
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 876
    :goto_7
    if-eqz v5, :cond_1f

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 878
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 879
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 877
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 880
    return-void

    .line 832
    :cond_17
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v31, v0

    if-nez v31, :cond_18

    .line 833
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_6

    .line 836
    :cond_18
    const/4 v5, 0x1

    .line 837
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Bad status in Query CF response."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 843
    :cond_19
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    .line 844
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_7

    .line 846
    :cond_1a
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 847
    const/16 v31, 0x2

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 849
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_7

    .line 851
    :cond_1b
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 852
    const/16 v31, 0x3

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 854
    :cond_1c
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 855
    const/16 v31, 0x4

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 857
    :cond_1d
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 858
    const/16 v31, 0x5

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 861
    :cond_1e
    const/4 v5, 0x1

    .line 862
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Bad reason in Query CF response."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 883
    :cond_1f
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 884
    new-instance v31, Ljava/lang/String;

    iget-object v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iput-object v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 886
    aput-object v6, v7, v21

    .line 825
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 889
    .end local v6    # "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v12    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 890
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 889
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    goto/16 :goto_0

    .line 894
    .end local v5    # "badCfResponse":Z
    .end local v7    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v13    # "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v21    # "i":I
    :cond_21
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Null response received for Query CF!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 896
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 897
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 895
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 903
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 904
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 905
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_22

    .line 906
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 909
    :cond_22
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_23

    .line 910
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Query CW error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 913
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 912
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 917
    :cond_23
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_27

    .line 918
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    .line 920
    .local v18, "cwResponse":[I
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v9, v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 921
    .local v9, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v8, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v8}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 923
    .local v8, "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    const/16 v31, 0x0

    aget v31, v18, v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_25

    .line 924
    const/16 v31, 0x1

    aget v31, v18, v31

    and-int/lit8 v31, v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_24

    .line 925
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 943
    :goto_8
    const/16 v31, 0x0

    aput-object v8, v9, v31

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 946
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 945
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 927
    :cond_24
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 930
    :cond_25
    const/16 v31, 0x0

    aget v31, v18, v31

    if-nez v31, :cond_26

    .line 931
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v8, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 934
    :cond_26
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "No service status received for CallWaitingInfo."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 936
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 937
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 935
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 938
    return-void

    .line 950
    .end local v8    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v9    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v18    # "cwResponse":[I
    :cond_27
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Null response received for Query CW!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 952
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 953
    new-instance v34, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 951
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 959
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 960
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 961
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_28

    .line 962
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void

    .line 965
    :cond_28
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2a

    .line 966
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_29

    .line 967
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Query CLIR error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 972
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 971
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 976
    :cond_2a
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 977
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [I

    .line 978
    .local v16, "clirResp":[I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 979
    .local v15, "clirInfo":Landroid/os/Bundle;
    const-string/jumbo v31, "queryClir"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 980
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Calling success callback for Query CLIR."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v15}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 990
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "clirInfo":Landroid/os/Bundle;
    .end local v16    # "clirResp":[I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 991
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 992
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_2b

    .line 993
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void

    .line 996
    :cond_2b
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2c

    .line 997
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Error for Query Event= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1001
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 1000
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1005
    :cond_2c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1006
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, [I

    .line 1007
    .local v28, "ssInfoArray":[I
    if-eqz v28, :cond_0

    .line 1008
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1009
    .restart local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    const/16 v31, 0x0

    aget v31, v28, v31

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1010
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1011
    .local v14, "clInfo":Landroid/os/Bundle;
    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1013
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Success callback on Query event= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1015
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1014
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1022
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v28    # "ssInfoArray":[I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1023
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1024
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_2d

    .line 1025
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 1028
    :cond_2d
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2e

    .line 1029
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Query COLP error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1033
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 1032
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1037
    :cond_2e
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1040
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1041
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 1042
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "SuppSvcResponse has failure for COLP query."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 1045
    .restart local v20    # "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v31, 0x324

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1046
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1048
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1047
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1052
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_2f
    new-instance v27, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct/range {v27 .. v27}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1053
    .restart local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1054
    .restart local v14    # "clInfo":Landroid/os/Bundle;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1055
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1056
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v27

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1057
    const-string/jumbo v31, "ImsUtImpl"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Service= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " status= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 1058
    move-object/from16 v0, v27

    iget v0, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    move/from16 v33, v0

    .line 1057
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1062
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Success callback called for Query COLP."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1064
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1063
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1076
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v27    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1077
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1078
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_30

    .line 1079
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Invalid message id received in handleMessage."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1082
    :cond_30
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_35

    .line 1083
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    .line 1084
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update CLIR error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_31
    :goto_9
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1098
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v34

    .line 1097
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1086
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_33

    .line 1087
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update CLIP error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1089
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_34

    .line 1090
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update COLR error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1092
    :cond_34
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xc

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_31

    .line 1093
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "Update COLP error"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1102
    :cond_35
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_39

    .line 1105
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_36

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xb

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_38

    .line 1106
    :cond_36
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1107
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v31

    if-eqz v31, :cond_37

    .line 1108
    const-string/jumbo v31, "ImsUtImpl"

    const-string/jumbo v32, "SuppSvcResponse has failure for CLIP/COLP update."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v20

    .line 1111
    .restart local v20    # "failureCause":Ljava/lang/String;
    new-instance v19, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v31, 0x324

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1112
    .restart local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1114
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1113
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1118
    .end local v19    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v20    # "failureCause":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 1123
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 1127
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    goto/16 :goto_0

    .line 613
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
