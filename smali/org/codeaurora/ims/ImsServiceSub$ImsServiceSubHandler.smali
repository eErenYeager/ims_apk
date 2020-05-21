.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
.super Landroid/os/Handler;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceSubHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 776
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 777
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 778
    return-void
.end method

.method private createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;ILandroid/telephony/ims/ImsReasonInfo;I)V
    .locals 7
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "registrationState"    # I
    .param p3, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p4, "imsRadioTech"    # I

    .prologue
    .line 788
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;ILcom/android/ims/internal/IImsRegistrationListener;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 808
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v6, Ljava/lang/Thread;

    const-string/jumbo v1, "ImsServiceSubRegCallbackThread"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 809
    .local v6, "t":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 810
    return-void
.end method

.method private getRilRadioTech(Lorg/codeaurora/ims/ImsQmiIF$Registration;)I
    .locals 3

    .line 1282
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech()Z

    move-result v0

    const/16 v1, 0xe

    if-nez v0, :cond_0

    .line 1283
    return v1

    .line 1287
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getRadioTech()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v2, 0x13

    if-eq p1, v2, :cond_1

    .line 1296
    goto :goto_0

    .line 1293
    :cond_1
    nop

    .line 1294
    move v1, v0

    goto :goto_0

    .line 1289
    :cond_2
    nop

    .line 1290
    nop

    .line 1299
    :goto_0
    return v1
.end method

.method private handleImsStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 813
    const-string/jumbo v8, "handleImsStateChanged"

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap9(Ljava/lang/String;)V

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "errorCode":I
    const/4 v1, 0x0

    .line 816
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v6, 0x2

    .line 817
    .local v6, "regState":I
    const/4 v2, 0x0

    .line 818
    .local v2, "imsRat":I
    if-eqz p1, :cond_4

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v8, v8, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    if-eqz v8, :cond_4

    .line 819
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 821
    .local v7, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v0

    .line 823
    :goto_0
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 825
    .end local v1    # "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v6

    .line 827
    :goto_2
    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->getRilRadioTech(Lorg/codeaurora/ims/ImsQmiIF$Registration;)I

    move-result v2
    
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getRilRadioTech= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8
    
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    
    const-string/jumbo v9, "ImsServiceSub"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    .line 829
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v8, v8, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceSub;->-get0(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 835
    .end local v7    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_0
    :goto_3
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 836
    const/16 v8, 0x3e8

    .line 835
    invoke-direct {v3, v8, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 838
    .local v3, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->-get1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "regListener$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 839
    .local v4, "regListener":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-direct {p0, v4, v6, v3, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;ILandroid/telephony/ims/ImsReasonInfo;I)V

    goto :goto_4

    .line 822
    .end local v3    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "regListener":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v5    # "regListener$iterator":Ljava/util/Iterator;
    .restart local v1    # "errorMessage":Ljava/lang/String;
    .restart local v7    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 824
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 826
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x2

    goto :goto_2

    .line 832
    .end local v7    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .restart local v1    # "errorMessage":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "handleImsStateChanged error"

    invoke-static {v8}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap10(Ljava/lang/String;)V

    goto :goto_3

    .line 842
    .end local v1    # "errorMessage":Ljava/lang/String;
    .restart local v3    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .restart local v5    # "regListener$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 867
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Message received: what = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 967
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 872
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 873
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 875
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, v5, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 877
    :cond_1
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 881
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 882
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 885
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 886
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 887
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "Request turn on/off IMS failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 893
    .local v1, "arResult":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 895
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 896
    .local v3, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v3}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap5(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 898
    .end local v3    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "IMS Service Status Update failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap8(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto :goto_0

    .line 903
    .end local v1    # "arResult":Landroid/os/AsyncResult;
    :pswitch_5
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "Received event: EVENT_GET_STATUS_UPDATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 905
    .local v2, "arResultSrv":Landroid/os/AsyncResult;
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 907
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 908
    .restart local v3    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v3}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap5(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 910
    .end local v3    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_3
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "IMS Service Status Update failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap8(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 918
    .end local v2    # "arResultSrv":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 919
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap0(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 922
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 923
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap0(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 926
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 927
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 930
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 931
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap7(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 934
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 935
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleRefreshConfInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 938
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 939
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap2(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 942
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 943
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap1(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 946
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 947
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 948
    .local v4, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v4, :cond_4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 949
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->calculateOverallSrvccState([I)V

    goto/16 :goto_0

    .line 951
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error EVENT_SRVCC_STATE_CHANGED tracker is null or srvcc exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 952
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 951
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap10(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 957
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 958
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lorg/codeaurora/ims/CallModify;

    invoke-static {v6, v5}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V

    goto/16 :goto_0

    .line 960
    :cond_5
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 964
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5, p1}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap4(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
