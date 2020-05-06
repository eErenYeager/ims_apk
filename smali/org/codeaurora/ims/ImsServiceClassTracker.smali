.class public Lorg/codeaurora/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;,
        Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static final EVENT_CONFERENCE:I = 0x1

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceClassTracker"

.field private static currentMaxServiceId:I


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field private mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingCallIntent:Landroid/app/PendingIntent;

.field private mIsVtSupportedGlobally:Z

.field private mNeedIgnoreCalls:Z

.field private mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClass:I

.field private mServiceId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    .line 41
    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 54
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 61
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 62
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 93
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    .line 94
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 95
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createServiceId()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    .line 96
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 97
    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    .line 101
    iput-object p5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 102
    return-void
.end method

.method private cleanupConferenceAttempt()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 171
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 172
    return-void
.end method

.method private createIncomingCallIntent(Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "android:imsServiceId"

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return v0
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 11
    .param p1, "state"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 660
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 664
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v4, :cond_0

    .line 665
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCallSessionWithMptyBitSet session = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 666
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v7, v7, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toString()Ljava/lang/String;

    move-result-object v7

    .line 665
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 670
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 671
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 670
    if-eqz v4, :cond_7

    .line 672
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 673
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 674
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 675
    .local v0, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 676
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v7

    .line 675
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 676
    const-string/jumbo v7, ", isMultiparty = "

    .line 675
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 676
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v7

    .line 675
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 679
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "ImsCallSession found with Multiparty bit set"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_2

    .line 681
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_3

    .line 683
    :cond_2
    if-ne p1, v8, :cond_4

    .line 684
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Foreground Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 685
    return-object v3

    .line 682
    :cond_3
    :try_start_2
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_2

    .line 686
    :cond_4
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_5

    .line 687
    if-ne p1, v9, :cond_5

    .line 688
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Background Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 689
    return-object v3

    .line 690
    :cond_5
    :try_start_3
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_6

    .line 691
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_1

    .line 692
    :cond_6
    if-nez p1, :cond_1

    .line 693
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Ringing Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 694
    return-object v3

    .line 700
    .end local v0    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_7
    :try_start_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 701
    :cond_8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 700
    if-eqz v4, :cond_a

    .line 702
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 703
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 704
    .restart local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 705
    if-ne p1, v8, :cond_8

    .line 706
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Foreground ImsCallSession found during Conference setup"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 707
    return-object v3

    .line 710
    :cond_9
    if-ne p1, v9, :cond_8

    .line 711
    :try_start_5
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Background ImsCallSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 660
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_a
    monitor-exit v5

    .line 715
    return-object v10
.end method

.method private handleSrvccStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 891
    packed-switch p1, :pswitch_data_0

    .line 906
    :goto_0
    const-string/jumbo v0, "ImsServiceClassTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSrvccStateChanged mSrvccStateFromIms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 907
    const-string/jumbo v2, ", mNeedIgnoreCalls = "

    .line 906
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 907
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 906
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void

    .line 893
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 896
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    goto :goto_0

    .line 900
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 903
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 911
    const-string/jumbo v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 915
    const-string/jumbo v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 862
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ICallListListener;

    .line 863
    .local v0, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 865
    .end local v0    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 875
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ICallListListener;

    .line 876
    .local v0, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 878
    .end local v0    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private parsePhoneNumbers([Ljava/lang/String;)V
    .locals 5
    .param p1, "history"    # [Ljava/lang/String;

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    const-string/jumbo v3, "parsePhoneNumbers: History is null."

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 537
    return-void

    .line 540
    :cond_0
    const-string/jumbo v3, "(.*?)(\\+?\\d+)((?s).*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 541
    .local v2, "p":Ljava/util/regex/Pattern;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 542
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 543
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 541
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    const-string/jumbo v3, ""

    aput-object v3, p1, v0

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsePhoneNumbers: string format incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 550
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    return-void
.end method


# virtual methods
.method public addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 868
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 871
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 872
    return-void

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 820
    if-nez p1, :cond_0

    .line 821
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateOverallSrvccState([I)V
    .locals 4
    .param p1, "ret"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 309
    const/4 v0, -0x1

    .line 310
    .local v0, "state":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 311
    aget v0, p1, v2

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculateOverallSrvccState imsSrvccState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v2, " CS SRVCC state = "

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 315
    if-eq v0, v3, :cond_2

    .line 318
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    if-ne v0, v3, :cond_1

    .line 320
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    goto :goto_0
.end method

.method public createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 7
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 506
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 507
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    .line 506
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 508
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 509
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 510
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 511
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 513
    return-object v0

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .prologue
    .line 747
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 748
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 749
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 750
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v4

    .line 751
    return-object v2

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    monitor-exit v4

    .line 755
    const/4 v3, 0x0

    return-object v3

    .line 747
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 524
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    monitor-exit v2

    .line 526
    return-object v0

    .line 523
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v3, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v3

    .line 728
    :cond_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 729
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 730
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 731
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 732
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 728
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v5

    .line 738
    return-object v3
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v6, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_e

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 334
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 335
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 336
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 337
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 336
    if-eqz v2, :cond_1

    .line 338
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 339
    .local v13, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v4, :cond_0

    .line 342
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found match call session in temp list, s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index in call list is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v2, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v13}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 346
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 335
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v13    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v3

    .line 351
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 352
    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v4, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    monitor-exit v3

    .line 356
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_3

    .line 357
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_7

    .line 358
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 356
    if-eqz v2, :cond_4

    .line 359
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 361
    :cond_4
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SRVCC mNeedIgnoreCalls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v0, :cond_8

    .line 366
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 414
    :cond_5
    :goto_3
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_6

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 415
    iget v2, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 351
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 358
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_7
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 367
    :cond_8
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-nez v2, :cond_5

    .line 368
    const/4 v9, 0x0

    .line 369
    .local v9, "isUnknown":Z
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_6

    .line 374
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 375
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 376
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 377
    iget-boolean v2, v1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v2, :cond_a

    .line 378
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "MT Call creating a new call session"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v2, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 409
    :cond_9
    :goto_4
    if-eqz v9, :cond_5

    .line 410
    iget v2, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto :goto_3

    .line 380
    :cond_a
    iget-boolean v2, v1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v3, :cond_d

    .line 381
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "Conference Call creating a new call session"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v9, 0x1

    .line 384
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 386
    :try_start_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 385
    if-eqz v2, :cond_c

    .line 387
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 388
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 389
    .local v12, "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-boolean v2, v12, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz v2, :cond_b

    .line 390
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set New Session as Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/conference/ConfInfo;)V

    .line 392
    invoke-virtual {v12, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 393
    invoke-virtual {v12, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 395
    const/4 v9, 0x0

    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v12    # "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_c
    monitor-exit v3

    .line 400
    iget v2, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 401
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 402
    if-eqz v9, :cond_9

    .line 403
    const-string/jumbo v2, "ImsServiceClassTracker"

    const-string/jumbo v3, "Phantom conference call Scenario"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 384
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 405
    :cond_d
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_9

    .line 406
    const-string/jumbo v2, "ImsServiceClassTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MO phantom Call Scenario. State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 422
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v9    # "isUnknown":Z
    :cond_e
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 424
    :try_start_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_f
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 423
    if-eqz v2, :cond_10

    .line 425
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 426
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    .line 431
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 432
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    .line 422
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_10
    monitor-exit v3

    .line 436
    return-void
.end method

.method public handleConferenceResult(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    .line 175
    if-eqz p1, :cond_2

    .line 176
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 180
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 181
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    .line 182
    const-string/jumbo v6, "Conference Failed"

    .line 181
    invoke-direct {v5, v7, v7, v6}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 179
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 183
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 185
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 184
    if-eqz v3, :cond_0

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 188
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 189
    iput-boolean v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    goto :goto_0

    .line 191
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    return-void

    .line 193
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->processConferenceResult()V

    .line 196
    :cond_2
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V
    .locals 13
    .param p1, "handover"    # Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .prologue
    const/4 v3, 0x0

    .line 759
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "in handleHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v11, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    invoke-direct {v11, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)V

    .line 761
    .local v11, "response":Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 763
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 767
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 771
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 772
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSrvccStateChanged(I)V

    .line 773
    return-void

    .line 775
    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 776
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v9

    .line 777
    .local v9, "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 778
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 781
    :cond_3
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 782
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;[B)[B

    .line 783
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 786
    .end local v9    # "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :cond_4
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 787
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    :cond_5
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 791
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    :cond_6
    const-string/jumbo v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    const-string/jumbo v3, " tarTech: "

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    const-string/jumbo v3, " extraType: "

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 795
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 796
    const-string/jumbo v3, " extraInfo: "

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 796
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 796
    const-string/jumbo v3, " ErrorCode: "

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    const-string/jumbo v3, " errorMessage: "

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v12

    .line 799
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 800
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 799
    if-eqz v1, :cond_8

    .line 801
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 802
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 803
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_7

    .line 804
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    .line 805
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v4

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v5

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v6

    .line 806
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v7

    .line 804
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 798
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 808
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_7
    :try_start_1
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "No more call sessions found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_8
    monitor-exit v12

    .line 812
    return-void
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 483
    if-eqz p1, :cond_1

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 486
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    monitor-exit v2

    .line 488
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 496
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-void

    .line 485
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 491
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    const-string/jumbo v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    const-string/jumbo v1, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V
    .locals 7
    .param p1, "confRefreshInfo"    # Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "confInfoBytes":[B
    const/4 v3, -0x1

    .line 595
    .local v3, "state":I
    const/4 v0, 0x0

    .line 596
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 599
    .local v2, "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 601
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 602
    .local v1, "confInfoBytes":[B
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 603
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 604
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v3

    .line 612
    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 616
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "confInfoBytes":[B
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_0
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRefreshConfInfo: confCallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", callSession = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 626
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "Update UI for Conference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    .line 631
    :goto_1
    return-void

    .line 610
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v1    # "confInfoBytes":[B
    .restart local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 629
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "confInfoBytes":[B
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_2
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "No CallSession with Multiparty bit set is found. Some Error!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V
    .locals 8
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .prologue
    .line 560
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSuppSvcUnsol connId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 563
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 564
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_2

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, "startOnHoldLocalTone":Z
    new-instance v3, Lcom/android/ims/ImsSuppServiceNotification;

    invoke-direct {v3}, Lcom/android/ims/ImsSuppServiceNotification;-><init>()V

    .line 567
    .local v3, "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v4

    iput v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    .line 568
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v4

    iput v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    .line 569
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v4

    iput v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    .line 570
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "forwardedCallHistory":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 573
    const-string/jumbo v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 574
    iget-object v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->parsePhoneNumbers([Ljava/lang/String;)V

    .line 576
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v2

    .line 579
    .end local v2    # "startOnHoldLocalTone":Z
    :cond_1
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 580
    const-string/jumbo v7, " startOnHoldLocalTone = "

    .line 579
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v0, v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "forwardedCallHistory":Ljava/lang/String;
    .end local v3    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :goto_0
    monitor-exit v5

    .line 586
    return-void

    .line 583
    :cond_2
    :try_start_1
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "No call session found for number: "

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 639
    const/4 v1, 0x0

    .line 642
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 644
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 643
    if-eqz v4, :cond_1

    .line 645
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 646
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 647
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 648
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v5

    .line 654
    if-nez v1, :cond_2

    .line 655
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "No Active call session found for TTY mode change"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2
    return-void

    .line 642
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 8
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 444
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClosed for session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 447
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 449
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 448
    if-eqz v4, :cond_1

    .line 450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 451
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "List is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " session is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 454
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing session on close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 456
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v5

    .line 462
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 463
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 464
    :try_start_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 465
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 464
    if-eqz v4, :cond_4

    .line 466
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 467
    .local v3, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-ne v3, p1, :cond_3

    .line 469
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing session on close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 471
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 463
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    monitor-exit v5

    .line 476
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_5
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 440
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 480
    return-void
.end method

.method public processConferenceResult()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 199
    const-string/jumbo v5, "ImsServiceClassTracker"

    const-string/jumbo v6, "Conference response received. Processing final result."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "foundActiveCall":Z
    const/4 v3, 0x0

    .line 208
    .local v3, "foundHeldCall":Z
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 207
    if-eqz v5, :cond_2

    .line 209
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 212
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_1

    .line 215
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 217
    const/4 v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_0

    .line 219
    const/4 v3, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    if-nez v3, :cond_3

    .line 232
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v7, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 238
    :cond_3
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v5, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v5, :cond_4

    .line 239
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 240
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 239
    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 247
    :goto_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 246
    if-eqz v5, :cond_5

    .line 248
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 251
    .restart local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 252
    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    goto :goto_2

    .line 242
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v5, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_1

    .line 257
    :cond_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 258
    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 839
    if-nez p1, :cond_0

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 6
    .param p1, "hostSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 261
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Conference request being requested by session = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 264
    const/4 v3, 0x1

    iput-boolean v3, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 270
    iget-object v3, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 277
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 276
    if-eqz v3, :cond_3

    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 280
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 282
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    .line 284
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_2

    .line 285
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 290
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    .line 287
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_1

    .line 296
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v3, p0}, Lorg/codeaurora/ims/ImsServiceSub;->sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 297
    return-void
.end method

.method public sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 5
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 883
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallIntent(Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v3

    .line 882
    const/16 v4, 0x65

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 884
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "ImsServiceClassTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incoming Call intent Canceled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setIncomingCallIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 857
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 858
    return-void
.end method

.method public updateVtCapability(Z)V
    .locals 5
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVtCapability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 151
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 152
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 153
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 155
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 158
    return-void
.end method
