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
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    .line 594
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 595
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 594
    return-void
.end method

.method private createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 634
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 645
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsServiceSubcreateFeatureCapabilityCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 646
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 633
    return-void
.end method

.method private createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "registrationState"    # I
    .param p3, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 605
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;ILcom/android/ims/internal/IImsRegistrationListener;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 625
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsServiceSubRegCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 626
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 604
    return-void
.end method

.method private handleImsStateChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 838
    const-string/jumbo v7, "ImsServiceSub"

    const-string/jumbo v8, "handleImsStateChanged"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    if-eqz p1, :cond_3

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v7, v7, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    if-eqz v7, :cond_3

    .line 840
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 842
    .local v6, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v0

    .line 844
    .local v0, "errorCode":I
    :goto_0
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 846
    :goto_1
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v5

    .line 848
    .local v5, "regState":I
    :goto_2
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 849
    const/16 v7, 0x3e8

    .line 848
    invoke-direct {v2, v7, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 851
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsServiceSub;->-get1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "regListener$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 852
    .local v3, "regListener":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-direct {p0, v3, v5, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 843
    .end local v0    # "errorCode":I
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "regListener":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v4    # "regListener$iterator":Ljava/util/Iterator;
    .end local v5    # "regState":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "errorCode":I
    goto :goto_0

    .line 845
    :cond_1
    const/4 v1, 0x0

    .local v1, "errorMessage":Ljava/lang/String;
    goto :goto_1

    .line 847
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x2

    .restart local v5    # "regState":I
    goto :goto_2

    .line 855
    .end local v0    # "errorCode":I
    .end local v5    # "regState":I
    .end local v6    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_3
    const-string/jumbo v7, "ImsServiceSub"

    const-string/jumbo v8, "handleImsStateChanged error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_4
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v12, 0x0

    .line 661
    .local v12, "voipDisabledAllRats":Z
    const/4 v13, 0x0

    .line 662
    .local v13, "vtDisabledAllRats":Z
    const/4 v11, 0x0

    .line 663
    .local v11, "utDisabledAllRats":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v15, 0x6

    new-array v15, v15, [I

    fill-array-data v15, :array_0

    iput-object v15, v14, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v15, 0x6

    new-array v15, v15, [I

    fill-array-data v15, :array_1

    iput-object v15, v14, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 679
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "update$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codeaurora/ims/ServiceStatus;

    .line 680
    .local v9, "update":Lorg/codeaurora/ims/ServiceStatus;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get0(Lorg/codeaurora/ims/ImsServiceSub;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lorg/codeaurora/ims/ServiceStatus;->status:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 681
    const-string/jumbo v16, " isValid = "

    .line 680
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 681
    iget-boolean v0, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    move/from16 v16, v0

    .line 680
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    if-eqz v9, :cond_0

    iget-boolean v14, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v14, :cond_0

    iget v14, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->isSrvTypeValid(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 683
    const/4 v7, 0x0

    .line 684
    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget v14, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0xb

    if-ne v14, v15, :cond_9

    .line 685
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v7, v14, v15

    .line 689
    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :goto_0
    iget-boolean v14, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v14, v7, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 690
    iget v14, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v14, v7, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 691
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v14, :cond_2

    .line 692
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v14, v14

    new-array v14, v14, [B

    iput-object v14, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 693
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v15, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v15, v15

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    iput-object v14, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 695
    :cond_2
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v14, :cond_0

    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    if-lez v14, :cond_0

    .line 696
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    new-array v14, v14, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v14, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 698
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get0(Lorg/codeaurora/ims/ImsServiceSub;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Call Type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lorg/codeaurora/ims/ServiceStatus;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "has num updates = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 699
    iget-object v0, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    .line 698
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_3
    iget-object v1, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 702
    .local v1, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    if-ge v4, v14, :cond_0

    .line 704
    iget-object v14, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 703
    aget-object v2, v14, v4

    .line 705
    .local v2, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get0(Lorg/codeaurora/ims/ImsServiceSub;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "StatusForAccessTech networkMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 706
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    move/from16 v16, v0

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 707
    const-string/jumbo v16, " registered = "

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 707
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    move/from16 v16, v0

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 708
    const-string/jumbo v16, " status = "

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 708
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    move/from16 v16, v0

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 709
    const-string/jumbo v16, " restrictCause = "

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 709
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    move/from16 v16, v0

    .line 705
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_4
    new-instance v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v14}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v14, v1, v4

    .line 711
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 712
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 713
    iget v14, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    .line 714
    iget v14, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v14, :cond_a

    .line 715
    aget-object v14, v1, v4

    const/4 v15, 0x1

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 719
    :goto_2
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v14, v7, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 720
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 721
    const/4 v3, -0x1

    .line 722
    .local v3, "feature":I
    iget v14, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    packed-switch v14, :pswitch_data_0

    .line 780
    :cond_5
    :goto_3
    :pswitch_0
    if-eqz v3, :cond_6

    .line 781
    const/4 v14, 0x1

    if-ne v3, v14, :cond_17

    .line 786
    :cond_6
    :goto_4
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    .line 787
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_18

    .line 788
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v3, v14, v3

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 790
    const/4 v15, -0x1

    .line 789
    aput v15, v14, v3

    .line 791
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get0(Lorg/codeaurora/ims/ImsServiceSub;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "enabledFeature = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 687
    .end local v1    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v3    # "feature":I
    .end local v4    # "i":I
    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get2(Lorg/codeaurora/ims/ImsServiceSub;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v14

    iget v15, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    aget-object v7, v14, v15

    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    goto/16 :goto_0

    .line 717
    .restart local v1    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v2    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v4    # "i":I
    :cond_a
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_2

    .line 724
    .restart local v3    # "feature":I
    :pswitch_1
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v14, v15, :cond_b

    .line 725
    const/4 v3, 0x0

    goto :goto_3

    .line 726
    :cond_b
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-eq v14, v15, :cond_c

    .line 727
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x12

    if-ne v14, v15, :cond_d

    .line 728
    :cond_c
    const/4 v3, 0x2

    .line 727
    goto :goto_3

    .line 729
    :cond_d
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 730
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v14, :cond_e

    .line 731
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 732
    :cond_e
    const/4 v12, 0x1

    .line 733
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 739
    :pswitch_2
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v14, v15, :cond_f

    .line 740
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 741
    :cond_f
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-eq v14, v15, :cond_10

    .line 742
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x12

    if-ne v14, v15, :cond_11

    .line 743
    :cond_10
    const/4 v3, 0x5

    .line 742
    goto/16 :goto_3

    .line 744
    :cond_11
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 745
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v14, :cond_12

    .line 746
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 747
    :cond_12
    const/4 v11, 0x1

    .line 748
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 761
    :pswitch_3
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v14, v15, :cond_13

    .line 762
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 763
    :cond_13
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-eq v14, v15, :cond_14

    .line 764
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x12

    if-ne v14, v15, :cond_15

    .line 765
    :cond_14
    const/4 v3, 0x3

    .line 764
    goto/16 :goto_3

    .line 766
    :cond_15
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 767
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v14, :cond_16

    .line 768
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 769
    :cond_16
    const/4 v13, 0x1

    .line 770
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 782
    :cond_17
    const/4 v14, 0x2

    if-eq v3, v14, :cond_6

    .line 783
    const/4 v14, 0x3

    if-eq v3, v14, :cond_6

    .line 784
    const/4 v14, 0x4

    if-eq v3, v14, :cond_6

    .line 785
    const/4 v14, 0x5

    if-ne v3, v14, :cond_8

    goto/16 :goto_4

    .line 792
    :cond_18
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v14, :cond_19

    .line 793
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 794
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v3, v14, v3

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 796
    const/4 v15, -0x1

    .line 795
    aput v15, v14, v3

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get0(Lorg/codeaurora/ims/ImsServiceSub;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "disabledFeature = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", voipDisabledAllRats = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 798
    const-string/jumbo v16, " ,vtDisabledAllRats = "

    .line 797
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 799
    const-string/jumbo v16, " ,utDisabledAllRats = "

    .line 797
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_1a
    if-eqz v12, :cond_1b

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 802
    const/4 v15, 0x2

    .line 801
    const/16 v16, 0x2

    aput v15, v14, v16

    .line 803
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 804
    const/4 v15, -0x1

    .line 803
    const/16 v16, 0x2

    aput v15, v14, v16

    .line 806
    :cond_1b
    if-eqz v13, :cond_1c

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 808
    const/4 v15, 0x3

    .line 807
    const/16 v16, 0x3

    aput v15, v14, v16

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 810
    const/4 v15, -0x1

    .line 809
    const/16 v16, 0x3

    aput v15, v14, v16

    .line 813
    :cond_1c
    if-eqz v11, :cond_8

    .line 814
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 815
    const/4 v15, 0x5

    .line 814
    const/16 v16, 0x5

    aput v15, v14, v16

    .line 816
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v14, v14, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 817
    const/4 v15, -0x1

    .line 816
    const/16 v16, 0x5

    aput v15, v14, v16

    goto/16 :goto_5

    .line 825
    .end local v1    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v3    # "feature":I
    .end local v4    # "i":I
    .end local v7    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v9    # "update":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap0(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "r$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 827
    .local v5, "r":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_6

    .line 829
    .end local v5    # "r":Lcom/android/ims/internal/IImsRegistrationListener;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 830
    .local v8, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v8, :cond_1f

    .line 831
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsServiceSub;->isVTGloballySupported()Z

    move-result v14

    invoke-virtual {v8, v14}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVtCapability(Z)V

    .line 659
    :goto_7
    return-void

    .line 833
    :cond_1f
    const-string/jumbo v14, "ImsServiceSub"

    const-string/jumbo v15, "tracker null so not updating global VTcapability"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 663
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 671
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isSrvTypeValid(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 651
    const/16 v2, 0xb

    if-ne p1, v2, :cond_0

    .line 652
    return v0

    .line 654
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-le p1, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 861
    const-string/jumbo v6, "ImsServiceSub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message received: what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 958
    const-string/jumbo v6, "ImsServiceSub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 867
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 868
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 871
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 872
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 873
    const-string/jumbo v6, "ImsServiceSub"

    const-string/jumbo v7, "Request turn on/off IMS failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string/jumbo v6, "ImsServiceSub"

    const-string/jumbo v7, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 879
    .local v1, "arResult":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 881
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 882
    .local v4, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 884
    .end local v4    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_1
    const-string/jumbo v6, "ImsServiceSub"

    const-string/jumbo v7, "IMS Service Status Update failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap8(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto :goto_0

    .line 889
    .end local v1    # "arResult":Landroid/os/AsyncResult;
    :pswitch_4
    const-string/jumbo v6, "ImsServiceSub"

    const-string/jumbo v7, "Received event: EVENT_GET_STATUS_UPDATE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 891
    .local v2, "arResultSrv":Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 893
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 894
    .restart local v4    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 896
    .end local v4    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    const-string/jumbo v6, "ImsServiceSub"

    const-string/jumbo v7, "IMS Service Status Update failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap8(Lorg/codeaurora/ims/ImsServiceSub;)V

    goto :goto_0

    .line 904
    .end local v2    # "arResultSrv":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 905
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap1(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 908
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 909
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap1(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 912
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 913
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 916
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 917
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleRefreshConfInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 920
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 921
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap5(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 924
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 925
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 928
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 929
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap2(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 932
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 933
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6, v0}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap7(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 936
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 937
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceSub;->-get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 938
    .local v5, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v5, :cond_3

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    .line 939
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->calculateOverallSrvccState([I)V

    goto/16 :goto_0

    .line 941
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error EVENT_SRVCC_STATE_CHANGED tracker is null or srvcc exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 942
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 941
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 947
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    .line 948
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lorg/codeaurora/ims/CallModify;

    invoke-static {v7, v6}, Lorg/codeaurora/ims/ImsServiceSub;->-wrap4(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V

    goto/16 :goto_0

    .line 950
    :cond_4
    const-string/jumbo v6, "ImsServiceSub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 954
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 955
    .local v3, "listerner":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    goto/16 :goto_0

    .line 864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method
