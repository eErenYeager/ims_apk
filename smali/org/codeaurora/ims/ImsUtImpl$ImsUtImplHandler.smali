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
    .line 620
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 621
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 620
    return-void
.end method

.method private handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x324

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 626
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 628
    .local v4, "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    array-length v6, v4

    if-ge v6, v8, :cond_0

    .line 629
    const-string/jumbo v6, "ImsCallForwardTimerInfo[] has no elements!"

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsUt;

    .line 631
    iget v8, p2, Landroid/os/Message;->arg1:I

    .line 632
    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9, v11, v10}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 630
    invoke-virtual {v7, v6, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 633
    return-void

    .line 636
    :cond_0
    const/4 v0, 0x0

    .line 640
    .local v0, "badCfResponse":Z
    array-length v6, v4

    new-array v2, v6, [Lcom/android/ims/ImsCallForwardInfo;

    .line 642
    .local v2, "callForwardInfoList":[Lcom/android/ims/ImsCallForwardInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 643
    aget-object v3, v4, v5

    .line 644
    .local v3, "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    new-instance v1, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v1}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 646
    .local v1, "callForwardInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v6, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-ne v6, v8, :cond_1

    .line 647
    iput v8, v1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 657
    :goto_1
    iget v6, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v6, :cond_3

    .line 658
    iput v10, v1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 665
    :goto_2
    if-eqz v0, :cond_4

    .line 666
    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsUt;

    .line 667
    iget v8, p2, Landroid/os/Message;->arg1:I

    .line 668
    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v9, v11, v10}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 666
    invoke-virtual {v7, v6, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 669
    return-void

    .line 649
    :cond_1
    iget v6, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v6, :cond_2

    .line 650
    iput v10, v1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 653
    :cond_2
    const/4 v0, 0x1

    .line 654
    const-string/jumbo v6, "Bad status in Query CFUT response."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 661
    :cond_3
    const/4 v0, 0x1

    .line 662
    const-string/jumbo v6, "Bad reason in Query CFUT response."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 672
    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 676
    aput-object v1, v2, v5

    .line 642
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "callForwardInfo":Lcom/android/ims/ImsCallForwardInfo;
    .end local v3    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_5
    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v7

    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsUt;

    .line 680
    iget v8, p2, Landroid/os/Message;->arg1:I

    .line 679
    invoke-virtual {v7, v6, v8, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    .line 624
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 686
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Message received: what = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 692
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 693
    .local v4, "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 694
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_1

    .line 695
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    return-void

    .line 699
    :cond_1
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 700
    const-string/jumbo v31, "Query CB error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 704
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 703
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    .line 709
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 710
    .local v23, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 711
    const-string/jumbo v31, "SuppSvcResponse has failure for CB query."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 713
    .local v26, "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 714
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 715
    const/16 v34, 0x324

    .line 714
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 713
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 716
    return-void

    .line 718
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v31

    if-nez v31, :cond_4

    .line 719
    const-string/jumbo v31, "No service status info in response for CB query."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 721
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 722
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 720
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 725
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeCount()I

    move-result v19

    .line 727
    .local v19, "count":I
    if-lez v19, :cond_7

    .line 728
    const/16 v29, 0x0

    .line 729
    .local v29, "ssInfoArray":[Lcom/android/ims/ImsSsInfo;
    const/16 v21, 0x0

    .end local v29    # "ssInfoArray":[Lcom/android/ims/ImsSsInfo;
    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 731
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v11

    .line 732
    .local v11, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListCount()I

    move-result v27

    .line 733
    .local v27, "size":I
    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v29, v0

    .line 734
    .local v29, "ssInfoArray":[Lcom/android/ims/ImsSsInfo;
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 736
    invoke-virtual {v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v24

    .line 737
    .local v24, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual/range {v24 .. v24}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v25

    .line 738
    .local v25, "service_class":I
    if-eqz v27, :cond_5

    .line 739
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 741
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v10

    .line 742
    .local v10, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 743
    .local v28, "ssInfo":Lcom/android/ims/ImsSsInfo;
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getNumber()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 744
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 745
    aput-object v28, v29, v22

    .line 739
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 729
    .end local v10    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v22    # "j":I
    .end local v24    # "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v25    # "service_class":I
    .end local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 750
    .end local v11    # "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .end local v27    # "size":I
    .end local v29    # "ssInfoArray":[Lcom/android/ims/ImsSsInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    .line 751
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 750
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 753
    .end local v21    # "i":I
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v30, v0

    .line 754
    .local v30, "ssInfoStatus":[Lcom/android/ims/ImsSsInfo;
    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 755
    .restart local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    if-nez v31, :cond_9

    .line 756
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 760
    :cond_8
    :goto_3
    const/16 v31, 0x0

    aput-object v28, v30, v31

    .line 761
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "success callback Query Anonymous CB, status= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 762
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/ims/ImsSsInfo;->mStatus:I

    move/from16 v32, v0

    .line 761
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    .line 764
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 763
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 757
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 758
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_3

    .line 769
    .end local v19    # "count":I
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    .end local v30    # "ssInfoStatus":[Lcom/android/ims/ImsSsInfo;
    :cond_a
    const-string/jumbo v31, "Null response received for Query CB!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 771
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 772
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 770
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 778
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 779
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 780
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_b

    .line 781
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    return-void

    .line 785
    :cond_b
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    .line 786
    const-string/jumbo v31, "Update CB error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 790
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 789
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 794
    :cond_c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 795
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 796
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 797
    const-string/jumbo v31, "SuppSvcResponse has failure for CB update."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 799
    .restart local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 800
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 801
    const/16 v34, 0x324

    .line 800
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 799
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 802
    return-void

    .line 804
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
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

    .line 808
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

    .line 815
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 816
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 817
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_f

    .line 818
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    return-void

    .line 821
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    .line 822
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 823
    const-string/jumbo v31, "Update CF error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    :cond_10
    :goto_4
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 833
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 834
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 835
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 836
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    .line 835
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 838
    .restart local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 839
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 840
    const/16 v34, 0x324

    .line 839
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 838
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 825
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 826
    const-string/jumbo v31, "Update CW error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 843
    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 845
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 844
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 850
    :cond_13
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Success callback called for msg.what= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 851
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    .line 850
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
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

    .line 858
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 859
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 860
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_14

    .line 861
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    return-void

    .line 864
    :cond_14
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_15

    .line 865
    const-string/jumbo v31, "Query CF error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 868
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 867
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 872
    :cond_15
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_22

    .line 873
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_16

    .line 874
    const-string/jumbo v31, "Handle CFUT response"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 876
    return-void

    .line 878
    :cond_16
    iget-object v13, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 880
    .local v13, "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    .line 881
    const-string/jumbo v31, "CallForwardInfo[] has no elements!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 883
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 884
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 882
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 885
    return-void

    .line 888
    :cond_17
    const/4 v5, 0x0

    .line 892
    .local v5, "badCfResponse":Z
    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v7, v0, [Lcom/android/ims/ImsCallForwardInfo;

    .line 894
    .local v7, "callForwardInfoList":[Lcom/android/ims/ImsCallForwardInfo;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_5
    array-length v0, v13

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_21

    .line 895
    aget-object v12, v13, v21

    .line 896
    .local v12, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v6, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 898
    .local v6, "callForwardInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 899
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 909
    :goto_6
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    if-nez v31, :cond_1a

    .line 910
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 945
    :goto_7
    if-eqz v5, :cond_20

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 947
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 948
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 946
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 949
    return-void

    .line 901
    :cond_18
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v31, v0

    if-nez v31, :cond_19

    .line 902
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_6

    .line 905
    :cond_19
    const/4 v5, 0x1

    .line 906
    const-string/jumbo v31, "Bad status in Query CF response."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 912
    :cond_1a
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 913
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_7

    .line 915
    :cond_1b
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 916
    const/16 v31, 0x2

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 918
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_7

    .line 920
    :cond_1c
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 921
    const/16 v31, 0x3

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 923
    :cond_1d
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 924
    const/16 v31, 0x4

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 926
    :cond_1e
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    .line 927
    const/16 v31, 0x5

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    goto/16 :goto_7

    .line 930
    :cond_1f
    const/4 v5, 0x1

    .line 931
    const-string/jumbo v31, "Bad reason in Query CF response."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 952
    :cond_20
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 953
    new-instance v31, Ljava/lang/String;

    iget-object v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 954
    iget v0, v12, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v6, Lcom/android/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 956
    aput-object v6, v7, v21

    .line 894
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    .line 959
    .end local v6    # "callForwardInfo":Lcom/android/ims/ImsCallForwardInfo;
    .end local v12    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 960
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 959
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    goto/16 :goto_0

    .line 964
    .end local v5    # "badCfResponse":Z
    .end local v7    # "callForwardInfoList":[Lcom/android/ims/ImsCallForwardInfo;
    .end local v13    # "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v21    # "i":I
    :cond_22
    const-string/jumbo v31, "Null response received for Query CF!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 966
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 967
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 965
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 973
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 974
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 975
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_23

    .line 976
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    return-void

    .line 979
    :cond_23
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_24

    .line 980
    const-string/jumbo v31, "Query CW error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 983
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 982
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 987
    :cond_24
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_28

    .line 988
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    .line 990
    .local v20, "cwResponse":[I
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v9, v0, [Lcom/android/ims/ImsSsInfo;

    .line 991
    .local v9, "callWaitingInfoList":[Lcom/android/ims/ImsSsInfo;
    new-instance v8, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v8}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 993
    .local v8, "callWaitingInfo":Lcom/android/ims/ImsSsInfo;
    const/16 v31, 0x0

    aget v31, v20, v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 994
    const/16 v31, 0x1

    aget v31, v20, v31

    and-int/lit8 v31, v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_25

    .line 995
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 1013
    :goto_8
    const/16 v31, 0x0

    aput-object v8, v9, v31

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1016
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1015
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    goto/16 :goto_0

    .line 997
    :cond_25
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 1000
    :cond_26
    const/16 v31, 0x0

    aget v31, v20, v31

    if-nez v31, :cond_27

    .line 1001
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 1004
    :cond_27
    const-string/jumbo v31, "No service status received for CallWaitingInfo."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1006
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1007
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1005
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    .line 1008
    return-void

    .line 1020
    .end local v8    # "callWaitingInfo":Lcom/android/ims/ImsSsInfo;
    .end local v9    # "callWaitingInfoList":[Lcom/android/ims/ImsSsInfo;
    .end local v20    # "cwResponse":[I
    :cond_28
    const-string/jumbo v31, "Null response received for Query CW!"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1022
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1023
    new-instance v34, Lcom/android/ims/ImsReasonInfo;

    const/16 v35, 0x324

    const/16 v36, 0x0

    invoke-direct/range {v34 .. v36}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1021
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1029
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1030
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1031
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_29

    .line 1032
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    return-void

    .line 1035
    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2b

    .line 1036
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    .line 1037
    const-string/jumbo v31, "Query CLIR error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    :cond_2a
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1042
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1041
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1046
    :cond_2b
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1047
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    .line 1048
    .local v17, "clirResp":[I
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1049
    .local v16, "clirInfo":Landroid/os/Bundle;
    const-string/jumbo v31, "queryClir"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1050
    const-string/jumbo v31, "Calling success callback for Query CLIR."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
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

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1058
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "clirInfo":Landroid/os/Bundle;
    .end local v17    # "clirResp":[I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1060
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 1061
    .local v15, "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    if-eqz v4, :cond_0

    .line 1062
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_2c

    .line 1063
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    return-void

    .line 1066
    :cond_2c
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2d

    .line 1067
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Error for Query Event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1070
    invoke-virtual {v15}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 1071
    .restart local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1072
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1073
    const/16 v34, 0x324

    .line 1072
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1071
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1075
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_2d
    if-eqz v15, :cond_0

    .line 1076
    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 1077
    .restart local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    invoke-virtual {v15}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 1078
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1079
    .local v14, "clInfo":Landroid/os/Bundle;
    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1081
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Success callback on Query event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1083
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1082
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1089
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v15    # "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .end local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1090
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 1091
    .local v18, "colr":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    if-eqz v4, :cond_0

    .line 1092
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_2e

    .line 1093
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    return-void

    .line 1096
    :cond_2e
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f

    .line 1097
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Error for Query Event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1100
    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 1101
    .restart local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1102
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1103
    const/16 v34, 0x324

    .line 1102
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1101
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1105
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_2f
    if-eqz v18, :cond_0

    .line 1106
    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 1107
    .restart local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 1108
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1109
    .restart local v14    # "clInfo":Landroid/os/Bundle;
    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1111
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Success callback on Query event= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1113
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1112
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1119
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v18    # "colr":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .end local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1120
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1121
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_30

    .line 1122
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    return-void

    .line 1125
    :cond_30
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_31

    .line 1126
    const-string/jumbo v31, "Query COLP error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1130
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1129
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1134
    :cond_31
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1137
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1138
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_32

    .line 1139
    const-string/jumbo v31, "SuppSvcResponse has failure for COLP query."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 1141
    .restart local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1142
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1143
    const/16 v34, 0x324

    .line 1142
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1141
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1146
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_32
    new-instance v28, Lcom/android/ims/ImsSsInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 1147
    .restart local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1148
    .restart local v14    # "clInfo":Landroid/os/Bundle;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1149
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1150
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 1151
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Service= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " status= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1152
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/ims/ImsSsInfo;->mStatus:I

    move/from16 v32, v0

    .line 1151
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    const-string/jumbo v31, "imsSsInfo"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1156
    const-string/jumbo v31, "Success callback called for Query COLP."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1158
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1157
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1170
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "clInfo":Landroid/os/Bundle;
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v28    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1171
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1172
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    if-gez v31, :cond_33

    .line 1173
    const-string/jumbo v31, "Invalid message id received in handleMessage."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    return-void

    .line 1176
    :cond_33
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_38

    .line 1177
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_35

    .line 1178
    const-string/jumbo v31, "Update CLIR error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    :cond_34
    :goto_9
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1192
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Lorg/codeaurora/ims/ImsUtImpl;->-wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1191
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1180
    :cond_35
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_36

    .line 1181
    const-string/jumbo v31, "Update CLIP error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 1183
    :cond_36
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_37

    .line 1184
    const-string/jumbo v31, "Update COLR error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 1186
    :cond_37
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xc

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_34

    .line 1187
    const-string/jumbo v31, "Update COLP error"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 1196
    :cond_38
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3c

    .line 1199
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    const/16 v32, 0xb

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3b

    .line 1200
    :cond_39
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1201
    .restart local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v31

    if-eqz v31, :cond_3a

    .line 1203
    const-string/jumbo v31, "SuppSvcResponse has failure for CLIP/COLP update."

    .line 1202
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {v23 .. v23}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v26

    .line 1205
    .restart local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/codeaurora/ims/ImsUtImpl;->-get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v32

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/ims/internal/IImsUt;

    .line 1206
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 1207
    const/16 v34, 0x324

    .line 1206
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Lcom/android/ims/ImsReasonInfo;

    move-result-object v34

    .line 1205
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 1210
    .end local v26    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_3a
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

    .line 1215
    .end local v23    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_3b
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

    .line 1219
    :cond_3c
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

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
