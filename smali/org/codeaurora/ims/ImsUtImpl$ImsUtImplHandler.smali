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

    .line 685
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 686
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 687
    return-void
.end method

.method private handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "msg"    # Landroid/os/Message;

    .line 691
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 693
    .local v0, "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    array-length v1, v0

    const/16 v2, 0x324

    const-string v3, "ImsUtImpl"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    .line 694
    const-string v1, "ImsCallForwardTimerInfo[] has no elements!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v1

    iget v3, p2, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 697
    return-void

    .line 700
    :cond_0
    const/4 v1, 0x0

    .line 703
    .local v1, "badCfResponse":Z
    array-length v6, v0

    new-array v6, v6, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 706
    .local v6, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_5

    .line 707
    aget-object v8, v0, v7

    .line 708
    .local v8, "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    new-instance v9, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v9}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 710
    .local v9, "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v10, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-ne v10, v5, :cond_1

    .line 711
    iput v5, v9, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 713
    :cond_1
    iget v10, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v10, :cond_2

    .line 714
    iput v4, v9, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 717
    :cond_2
    const/4 v1, 0x1

    .line 718
    const-string v10, "Bad status in Query CFUT response."

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_1
    iget v10, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v10, :cond_3

    .line 722
    iput v4, v9, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_2

    .line 725
    :cond_3
    const/4 v1, 0x1

    .line 726
    const-string v10, "Bad reason in Query CFUT response."

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_2
    if-eqz v1, :cond_4

    .line 730
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v5, p2, Landroid/os/Message;->arg1:I

    new-instance v10, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v10, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v10}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 732
    return-void

    .line 735
    :cond_4
    new-instance v10, Ljava/lang/String;

    iget-object v11, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 739
    aput-object v9, v6, v7

    .line 706
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 742
    .end local v7    # "i":I
    .end local v8    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v9    # "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    iget v3, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 744
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 748
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v4, "Success callback on Query event= "

    const-string v5, "Error for Query Event= "

    const-string v6, "imsSsInfo"

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x2

    const-string v10, "Invalid message id received in handleMessage."

    const/16 v11, 0x324

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    .line 838
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 839
    .local v2, "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 840
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_0

    .line 841
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void

    .line 845
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 846
    const-string v4, "Update CB error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 849
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 850
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 849
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 853
    :cond_1
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 854
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 855
    .local v4, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 856
    const-string v5, "SuppSvcResponse has failure for CB update."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 858
    .local v3, "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 859
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 858
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 861
    return-void

    .line 863
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_2
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 864
    .end local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    goto/16 :goto_d

    .line 867
    :cond_3
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_d

    .line 754
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 755
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 756
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_4

    .line 757
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void

    .line 761
    :cond_4
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 762
    const-string v4, "Query CB error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 765
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 766
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 765
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 769
    :cond_5
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_d

    .line 770
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 771
    .restart local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 772
    const-string v5, "SuppSvcResponse has failure for CB query."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 774
    .restart local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 775
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 774
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 777
    return-void

    .line 779
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :cond_6
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v5

    if-nez v5, :cond_7

    .line 780
    const-string v5, "No service status info in response for CB query."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v11, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 785
    :cond_7
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeCount()I

    move-result v5

    .line 787
    .local v5, "count":I
    if-lez v5, :cond_a

    .line 788
    const/4 v3, 0x0

    .line 789
    .local v3, "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_9

    .line 790
    nop

    .line 791
    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v7

    .line 792
    .local v7, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListCount()I

    move-result v8

    .line 793
    .local v8, "size":I
    new-array v3, v8, [Landroid/telephony/ims/ImsSsInfo;

    .line 794
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 795
    nop

    .line 796
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v9

    .line 797
    .local v9, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v10

    .line 798
    .local v10, "service_class":I
    if-eqz v8, :cond_8

    .line 799
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_8

    .line 800
    nop

    .line 801
    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v12

    .line 802
    .local v12, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    new-instance v13, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v13}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 805
    .local v13, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v14

    iput v14, v13, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 806
    aput-object v13, v3, v11

    .line 799
    .end local v12    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v13    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 789
    .end local v7    # "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    .end local v8    # "size":I
    .end local v9    # "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v10    # "service_class":I
    .end local v11    # "j":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 811
    .end local v6    # "i":I
    :cond_9
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 813
    .end local v3    # "ssInfoArray":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_3

    .line 814
    :cond_a
    new-array v6, v13, [Landroid/telephony/ims/ImsSsInfo;

    .line 815
    .local v6, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v7, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 816
    .local v7, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v8

    if-nez v8, :cond_b

    .line 817
    iput v12, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_2

    .line 818
    :cond_b
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v8

    if-ne v8, v13, :cond_c

    .line 819
    iput v13, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 821
    :cond_c
    :goto_2
    aput-object v7, v6, v12

    .line 822
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "success callback Query Anonymous CB, status= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v8, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 828
    .end local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v5    # "count":I
    .end local v6    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_3
    goto/16 :goto_d

    .line 830
    :cond_d
    const-string v4, "Null response received for Query CB!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v11, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 1165
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1166
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 1167
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_e

    .line 1168
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void

    .line 1171
    :cond_e
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_f

    .line 1172
    const-string v4, "Query COLP error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 1175
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1176
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1175
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 1179
    :cond_f
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3e

    .line 1182
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1183
    .restart local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1184
    const-string v5, "SuppSvcResponse has failure for COLP query."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 1186
    .local v3, "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1187
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1186
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1189
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    goto :goto_4

    .line 1191
    :cond_10
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1192
    .local v5, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1193
    .local v7, "clInfo":Landroid/os/Bundle;
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1194
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1195
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v8

    iput v8, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " status= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1201
    const-string v6, "Success callback called for Query COLP."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1205
    .end local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "clInfo":Landroid/os/Bundle;
    :cond_11
    :goto_4
    goto/16 :goto_d

    .line 1136
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1137
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 1138
    .local v7, "colr":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    nop

    .line 1139
    iget v8, v1, Landroid/os/Message;->arg1:I

    if-gez v8, :cond_12

    .line 1140
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1143
    :cond_12
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_13

    .line 1144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 1147
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 1148
    .restart local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 1149
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 1148
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1151
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    goto/16 :goto_d

    .line 1152
    :cond_13
    if-eqz v7, :cond_3e

    .line 1153
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1154
    .restart local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v8

    iput v8, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1155
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1156
    .local v8, "clInfo":Landroid/os/Bundle;
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1160
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v8    # "clInfo":Landroid/os/Bundle;
    goto/16 :goto_d

    .line 1106
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "colr":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1107
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 1109
    .local v7, "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    nop

    .line 1110
    iget v8, v1, Landroid/os/Message;->arg1:I

    if-gez v8, :cond_14

    .line 1111
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void

    .line 1114
    :cond_14
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_15

    .line 1115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 1118
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 1119
    .restart local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 1120
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 1119
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1122
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    goto/16 :goto_d

    .line 1123
    :cond_15
    if-eqz v7, :cond_3e

    .line 1124
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1125
    .restart local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v8

    iput v8, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1126
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1127
    .restart local v8    # "clInfo":Landroid/os/Bundle;
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1131
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v8    # "clInfo":Landroid/os/Bundle;
    goto/16 :goto_d

    .line 1214
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1215
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 1216
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_16

    .line 1217
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void

    .line 1220
    :cond_16
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1b

    .line 1221
    iget v4, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_17

    .line 1222
    const-string v4, "Update CLIR error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1224
    :cond_17
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_18

    .line 1225
    const-string v4, "Update CLIP error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1227
    :cond_18
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_19

    .line 1228
    const-string v4, "Update COLR error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1230
    :cond_19
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1a

    .line 1231
    const-string v4, "Update COLP error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_1a
    :goto_5
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 1235
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1236
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1235
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 1239
    :cond_1b
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1f

    .line 1242
    iget v4, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1d

    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1c

    goto :goto_6

    .line 1258
    :cond_1c
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_d

    .line 1243
    :cond_1d
    :goto_6
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1244
    .restart local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1245
    const-string v5, "SuppSvcResponse has failure for CLIP/COLP update."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 1248
    .restart local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1249
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1248
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1251
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    goto :goto_7

    .line 1253
    :cond_1e
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 1255
    .end local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :goto_7
    goto/16 :goto_d

    .line 1262
    :cond_1f
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_d

    .line 1078
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1079
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 1080
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_20

    .line 1081
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void

    .line 1084
    :cond_20
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_22

    .line 1085
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_21

    .line 1086
    const-string v4, "Query CLIR error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_21
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 1090
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1091
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1090
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 1094
    :cond_22
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3e

    .line 1095
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1096
    .local v4, "clirResp":[I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1097
    .local v5, "clirInfo":Landroid/os/Bundle;
    const-string v6, "queryClir"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1098
    const-string v6, "Calling success callback for Query CLIR."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1101
    .end local v4    # "clirResp":[I
    .end local v5    # "clirInfo":Landroid/os/Bundle;
    goto/16 :goto_d

    .line 1026
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1027
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 1028
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_23

    .line 1029
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void

    .line 1032
    :cond_23
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_24

    .line 1033
    const-string v4, "Query CW error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 1035
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1036
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1035
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 1039
    :cond_24
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_28

    .line 1040
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1042
    .local v4, "cwResponse":[I
    new-array v5, v13, [Landroid/telephony/ims/ImsSsInfo;

    .line 1043
    .local v5, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v6, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1045
    .local v6, "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    aget v7, v4, v12

    if-ne v7, v13, :cond_26

    .line 1046
    aget v3, v4, v13

    and-int/2addr v3, v13

    if-ne v3, v13, :cond_25

    .line 1047
    iput v13, v6, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 1049
    :cond_25
    iput v12, v6, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 1052
    :cond_26
    aget v7, v4, v12

    if-nez v7, :cond_27

    .line 1053
    iput v12, v6, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1064
    :goto_8
    aput-object v6, v5, v12

    .line 1066
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1068
    .end local v4    # "cwResponse":[I
    .end local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v6    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_d

    .line 1056
    .restart local v4    # "cwResponse":[I
    .restart local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .restart local v6    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_27
    const-string v7, "No service status received for CallWaitingInfo."

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v8, v11, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1059
    return-void

    .line 1070
    .end local v4    # "cwResponse":[I
    .end local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v6    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_28
    const-string v4, "Null response received for Query CW!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v11, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 874
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 875
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 876
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_29

    .line 877
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-void

    .line 880
    :cond_29
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2e

    .line 881
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_2a

    .line 882
    const-string v4, "Update CF error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 884
    :cond_2a
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_2b

    .line 885
    const-string v4, "Update CW error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2b
    :goto_9
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2d

    .line 891
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 893
    .local v4, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v3

    .line 897
    .restart local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 898
    invoke-static {v3, v11}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 897
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 901
    .end local v3    # "sipError":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .end local v4    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :cond_2c
    goto/16 :goto_d

    .line 902
    :cond_2d
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 903
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 904
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 903
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 908
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success callback called for msg.what= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_d

    .line 916
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 917
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3e

    .line 918
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_2f

    .line 919
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 922
    :cond_2f
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_30

    .line 923
    const-string v4, "Query CF error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 925
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 926
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 925
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_d

    .line 929
    :cond_30
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    .line 930
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v4, :cond_31

    .line 931
    const-string v4, "Handle CFUT response"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 933
    return-void

    .line 935
    :cond_31
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 937
    .local v4, "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v5, v4

    if-ge v5, v13, :cond_32

    .line 938
    const-string v5, "CallForwardInfo[] has no elements!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v11, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 941
    return-void

    .line 944
    :cond_32
    const/4 v5, 0x0

    .line 947
    .local v5, "badCfResponse":Z
    array-length v6, v4

    new-array v6, v6, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 950
    .local v6, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    array-length v14, v4

    if-ge v10, v14, :cond_3c

    .line 951
    aget-object v14, v4, v10

    .line 952
    .local v14, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v15, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v15}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 954
    .local v15, "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v11, v13, :cond_33

    .line 955
    iput v13, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_b

    .line 957
    :cond_33
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v11, :cond_34

    .line 958
    iput v12, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_b

    .line 961
    :cond_34
    const/4 v5, 0x1

    .line 962
    const-string v11, "Bad status in Query CF response."

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_b
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v11, :cond_35

    .line 966
    iput v12, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_c

    .line 968
    :cond_35
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v11, v13, :cond_36

    .line 969
    iput v13, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_c

    .line 971
    :cond_36
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v11, v9, :cond_37

    .line 972
    iput v9, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 974
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v11, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_c

    .line 976
    :cond_37
    iget v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v9, 0x3

    if-ne v11, v9, :cond_38

    .line 977
    iput v9, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_c

    .line 979
    :cond_38
    iget v9, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v9, v7, :cond_39

    .line 980
    iput v7, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_c

    .line 982
    :cond_39
    iget v9, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v9, v8, :cond_3a

    .line 983
    iput v8, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_c

    .line 986
    :cond_3a
    const/4 v5, 0x1

    .line 987
    const-string v9, "Bad reason in Query CF response."

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :goto_c
    if-eqz v5, :cond_3b

    .line 1002
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v9, 0x324

    invoke-direct {v8, v9, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1004
    return-void

    .line 1007
    :cond_3b
    iget v9, v14, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v9, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 1008
    new-instance v9, Ljava/lang/String;

    iget-object v11, v14, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 1009
    iget v9, v14, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v9, v15, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 1011
    aput-object v15, v6, v10

    .line 950
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x2

    const/16 v11, 0x324

    goto/16 :goto_a

    .line 1014
    .end local v10    # "i":I
    .end local v14    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v15    # "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_3c
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1016
    .end local v4    # "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v5    # "badCfResponse":Z
    .end local v6    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_d

    .line 1018
    :cond_3d
    const-string v4, "Null response received for Query CF!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x324

    invoke-direct {v5, v6, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1269
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_3e
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
