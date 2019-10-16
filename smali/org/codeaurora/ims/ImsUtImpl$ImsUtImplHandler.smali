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

    .line 637
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 638
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 639
    return-void
.end method

.method private handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 9

    .line 643
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 645
    array-length v0, p1

    const/16 v1, 0x324

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 646
    const-string p1, "ImsCallForwardTimerInfo[] has no elements!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object p1

    iget p2, p2, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 650
    return-void

    .line 653
    :cond_0
    nop

    .line 656
    array-length v0, p1

    new-array v0, v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 659
    move v4, v2

    move v5, v4

    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_5

    .line 660
    aget-object v6, p1, v4

    .line 661
    new-instance v7, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 663
    iget v8, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-ne v8, v3, :cond_1

    .line 664
    iput v3, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 666
    :cond_1
    iget v8, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v8, :cond_2

    .line 667
    iput v2, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 670
    :cond_2
    nop

    .line 671
    const-string v5, "Bad status in Query CFUT response."

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    move v5, v3

    :goto_1
    iget v8, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v8, :cond_3

    .line 675
    iput v2, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_2

    .line 678
    :cond_3
    nop

    .line 679
    const-string v5, "Bad reason in Query CFUT response."

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    move v5, v3

    :goto_2
    if-eqz v5, :cond_4

    .line 683
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object p1

    iget p2, p2, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 686
    return-void

    .line 689
    :cond_4
    new-instance v8, Ljava/lang/String;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 693
    aput-object v7, v0, v4

    .line 659
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 696
    :cond_5
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object p1

    iget p2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 699
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/16 v5, 0x324

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    .line 804
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 805
    if-eqz v0, :cond_42

    .line 806
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_0

    .line 807
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    return-void

    .line 811
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 812
    const-string v1, "Update CB error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 817
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 815
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 820
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 821
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 822
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    const-string v1, "SuppSvcResponse has failure for CB update."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    .line 825
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 826
    invoke-static {v0, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 825
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 828
    return-void

    .line 829
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 830
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 832
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 833
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB update failed with error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 837
    return-void

    .line 839
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 840
    goto/16 :goto_e

    .line 843
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 709
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 710
    if-eqz v0, :cond_42

    .line 711
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_5

    .line 712
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    return-void

    .line 716
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 717
    const-string v1, "Query CB error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 722
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 720
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 725
    :cond_6
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 726
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 727
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 728
    const-string v1, "SuppSvcResponse has failure for CB query."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 731
    invoke-static {v0, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 730
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 733
    return-void

    .line 734
    :cond_7
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 735
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 737
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 738
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB query failed with error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 742
    return-void

    .line 744
    :cond_8
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_9

    .line 745
    const-string v0, "No service status info in response for CB query."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 751
    :cond_9
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListTypeCount()I

    move-result v1

    .line 753
    if-lez v1, :cond_c

    .line 754
    const/4 v2, 0x0

    .line 755
    move-object v3, v2

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_b

    .line 756
    nop

    .line 757
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getCbNumListType(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    move-result-object v3

    .line 758
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumListCount()I

    move-result v4

    .line 759
    new-array v5, v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 760
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->hasServiceClass()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 761
    nop

    .line 762
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v7

    .line 763
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    .line 764
    if-eqz v4, :cond_a

    .line 765
    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_a

    .line 766
    nop

    .line 767
    invoke-virtual {v3, v7}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->getCbNumList(I)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    move-result-object v8

    .line 768
    new-instance v9, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v9}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 769
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 770
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->getStatus()I

    move-result v8

    iput v8, v9, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 771
    aput-object v9, v5, v7

    .line 765
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 755
    :cond_a
    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    .line 776
    :cond_b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v3}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 778
    goto :goto_3

    .line 779
    :cond_c
    new-array v1, v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 780
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 781
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v3

    if-nez v3, :cond_d

    .line 782
    iput v6, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_2

    .line 783
    :cond_d
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 784
    iput v4, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 786
    :cond_e
    :goto_2
    aput-object v2, v1, v6

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success callback Query Anonymous CB, status= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 793
    :goto_3
    goto/16 :goto_e

    .line 795
    :cond_f
    const-string v0, "Null response received for Query CB!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1164
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1165
    if-eqz v0, :cond_42

    .line 1166
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_10

    .line 1167
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1168
    return-void

    .line 1170
    :cond_10
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_11

    .line 1171
    const-string v1, "Query COLP error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1176
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1174
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1179
    :cond_11
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_42

    .line 1182
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1183
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1184
    const-string v0, "SuppSvcResponse has failure for COLP query."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1187
    invoke-static {v0, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1186
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1189
    goto/16 :goto_4

    :cond_12
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1190
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1192
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1193
    const-string v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COLP query failed with error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1197
    goto :goto_4

    .line 1199
    :cond_13
    new-instance v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1200
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1201
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1202
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1203
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getStatus()I

    move-result v0

    iput v0, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    const-string v0, "imsSsInfo"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1209
    const-string v0, "Success callback called for Query COLP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1214
    :cond_14
    :goto_4
    goto/16 :goto_e

    .line 1134
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1135
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 1136
    if-eqz v0, :cond_42

    .line 1137
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_15

    .line 1138
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    return-void

    .line 1141
    :cond_15
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_16

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error for Query Event= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1147
    invoke-static {v0, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1146
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1150
    goto/16 :goto_e

    :cond_16
    if-eqz v1, :cond_42

    .line 1151
    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1152
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1154
    const-string v2, "imsSsInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success callback on Query event= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1159
    goto/16 :goto_e

    .line 1103
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1104
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    .line 1106
    if-eqz v0, :cond_42

    .line 1107
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_17

    .line 1108
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    return-void

    .line 1111
    :cond_17
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_18

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error for Query Event= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    .line 1116
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1117
    invoke-static {v0, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1116
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1120
    goto/16 :goto_e

    :cond_18
    if-eqz v1, :cond_42

    .line 1121
    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1122
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1124
    const-string v2, "imsSsInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success callback on Query event= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1129
    goto/16 :goto_e

    .line 1223
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1224
    if-eqz v0, :cond_42

    .line 1225
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_19

    .line 1226
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    return-void

    .line 1229
    :cond_19
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1e

    .line 1230
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1a

    .line 1231
    const-string v1, "Update CLIR error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1233
    :cond_1a
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b

    .line 1234
    const-string v1, "Update CLIP error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1236
    :cond_1b
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1c

    .line 1237
    const-string v1, "Update COLR error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1239
    :cond_1c
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1d

    .line 1240
    const-string v1, "Update COLP error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    :cond_1d
    :goto_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1246
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1244
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1249
    :cond_1e
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_23

    .line 1252
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_20

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1f

    goto :goto_6

    .line 1278
    :cond_1f
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 1253
    :cond_20
    :goto_6
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1254
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1255
    const-string v1, "SuppSvcResponse has failure for CLIP/COLP update."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    .line 1258
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1259
    invoke-static {v0, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1258
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1261
    goto :goto_7

    :cond_21
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1262
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1265
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1266
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SuppSvc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1271
    goto :goto_7

    .line 1273
    :cond_22
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 1275
    :goto_7
    goto/16 :goto_e

    .line 1282
    :cond_23
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 1074
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1075
    if-eqz v0, :cond_42

    .line 1076
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_24

    .line 1077
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    return-void

    .line 1080
    :cond_24
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_26

    .line 1081
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_25

    .line 1082
    const-string v1, "Query CLIR error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    :cond_25
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1088
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1086
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1091
    :cond_26
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_42

    .line 1092
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1093
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1094
    const-string v2, "queryClir"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1095
    const-string v0, "Calling success callback for Query CLIR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1098
    goto/16 :goto_e

    .line 1018
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1019
    if-eqz v0, :cond_42

    .line 1020
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gez v1, :cond_27

    .line 1021
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    return-void

    .line 1024
    :cond_27
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_28

    .line 1025
    const-string v1, "Query CW error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1029
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1027
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1032
    :cond_28
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    .line 1033
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1035
    new-array v1, v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 1036
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1038
    aget v3, v0, v6

    if-ne v3, v4, :cond_2a

    .line 1039
    aget v0, v0, v4

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_29

    .line 1040
    iput v4, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 1042
    :cond_29
    iput v6, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_8

    .line 1045
    :cond_2a
    aget v0, v0, v6

    if-nez v0, :cond_2b

    .line 1046
    iput v6, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1058
    :goto_8
    aput-object v2, v1, v6

    .line 1060
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1063
    goto/16 :goto_e

    .line 1049
    :cond_2b
    const-string v0, "No service status received for CallWaitingInfo."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1053
    return-void

    .line 1065
    :cond_2c
    const-string v0, "Null response received for Query CW!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 850
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 851
    if-eqz v0, :cond_42

    .line 852
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2d

    .line 853
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    return-void

    .line 856
    :cond_2d
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_32

    .line 857
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_2e

    .line 858
    const-string v1, "Update CF error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 860
    :cond_2e
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_2f

    .line 861
    const-string v1, "Update CW error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    :cond_2f
    :goto_9
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_31

    .line 867
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 869
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasErrorDetails()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    .line 873
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 874
    invoke-static {v1, v5}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 873
    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 876
    goto :goto_a

    :cond_30
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 877
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 880
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 881
    const-string v1, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SuppSvc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed with error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 889
    :cond_31
    :goto_a
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 891
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 889
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 895
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success callback called for msg.what= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 903
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 904
    if-eqz v0, :cond_42

    .line 905
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-gez v7, :cond_33

    .line 906
    const-string p1, "Invalid message id received in handleMessage."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    return-void

    .line 909
    :cond_33
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_34

    .line 910
    const-string v1, "Query CF error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 914
    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 912
    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 917
    :cond_34
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_41

    .line 918
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v7, v7, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v7, :cond_35

    .line 919
    const-string v1, "Handle CFUT response"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 921
    return-void

    .line 923
    :cond_35
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 925
    array-length v7, v0

    if-ge v7, v4, :cond_36

    .line 926
    const-string v0, "CallForwardInfo[] has no elements!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 930
    return-void

    .line 933
    :cond_36
    nop

    .line 936
    array-length v7, v0

    new-array v7, v7, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 939
    move v8, v6

    move v9, v8

    :goto_b
    array-length v10, v0

    if-ge v8, v10, :cond_40

    .line 940
    aget-object v10, v0, v8

    .line 941
    new-instance v11, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v11}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 943
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v12, v4, :cond_37

    .line 944
    iput v4, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_c

    .line 946
    :cond_37
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v12, :cond_38

    .line 947
    iput v6, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_c

    .line 950
    :cond_38
    nop

    .line 951
    const-string v9, "Bad status in Query CF response."

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    move v9, v4

    :goto_c
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v12, :cond_39

    .line 955
    iput v6, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_d

    .line 957
    :cond_39
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v12, v4, :cond_3a

    .line 958
    iput v4, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_d

    .line 960
    :cond_3a
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v12, v2, :cond_3b

    .line 961
    iput v2, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 963
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v12, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_d

    .line 965
    :cond_3b
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3c

    .line 966
    iput v13, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_d

    .line 968
    :cond_3c
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v12, v1, :cond_3d

    .line 969
    iput v1, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_d

    .line 971
    :cond_3d
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v12, v3, :cond_3e

    .line 972
    iput v3, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_d

    .line 975
    :cond_3e
    nop

    .line 976
    const-string v9, "Bad reason in Query CF response."

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    move v9, v4

    :goto_d
    if-eqz v9, :cond_3f

    .line 991
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 994
    return-void

    .line 997
    :cond_3f
    iget v12, v10, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v12, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 998
    new-instance v12, Ljava/lang/String;

    iget-object v13, v10, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 999
    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v10, v11, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 1001
    aput-object v11, v7, v8

    .line 939
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1004
    :cond_40
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v7}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1007
    goto :goto_e

    .line 1009
    :cond_41
    const-string v0, "Null response received for Query CF!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsUtListenerProxy;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1289
    :cond_42
    :goto_e
    return-void

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
