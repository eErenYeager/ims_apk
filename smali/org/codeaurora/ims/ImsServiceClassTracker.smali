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

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 52
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    .line 42
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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 55
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 62
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 63
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 92
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    .line 93
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 94
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createServiceId()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    .line 95
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 96
    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 100
    iput-object p5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 91
    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 868
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 867
    return-void
.end method

.method private cleanupConferenceAttempt()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 170
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 168
    return-void
.end method

.method private createIncomingCallIntent(Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "android:imsServiceId"

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .prologue
    .line 114
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

    .line 624
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 628
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v4, :cond_0

    .line 629
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCallSessionWithMptyBitSet session = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 630
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v7, v7, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toString()Ljava/lang/String;

    move-result-object v7

    .line 629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 634
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 635
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 634
    if-eqz v4, :cond_7

    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 637
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 638
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 639
    .local v0, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    const-string/jumbo v4, "ImsServiceClassTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 640
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v7

    .line 639
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 640
    const-string/jumbo v7, ", isMultiparty = "

    .line 639
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 640
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v7

    .line 639
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_2

    .line 644
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_3

    .line 646
    :cond_2
    if-ne p1, v8, :cond_4

    .line 647
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Foreground Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 648
    return-object v3

    .line 645
    :cond_3
    :try_start_2
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_2

    .line 649
    :cond_4
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_5

    .line 650
    if-ne p1, v9, :cond_5

    .line 651
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Background Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 652
    return-object v3

    .line 653
    :cond_5
    :try_start_3
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_6

    .line 654
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_1

    .line 655
    :cond_6
    if-nez p1, :cond_1

    .line 656
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Ringing Conference callSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 657
    return-object v3

    .line 663
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

    .line 664
    :cond_8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 663
    if-eqz v4, :cond_a

    .line 665
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 666
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 667
    .restart local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 668
    if-ne p1, v8, :cond_8

    .line 669
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Foreground ImsCallSession found during Conference setup"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 670
    return-object v3

    .line 673
    :cond_9
    if-ne p1, v9, :cond_8

    .line 674
    :try_start_5
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v6, "Background ImsCallSession found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 624
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

    .line 678
    return-object v10
.end method

.method private handleSrvccStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 890
    packed-switch p1, :pswitch_data_0

    .line 905
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

    .line 906
    const-string/jumbo v2, ", mNeedIgnoreCalls = "

    .line 905
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 906
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 905
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void

    .line 892
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 895
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    goto :goto_0

    .line 899
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 902
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 890
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
    .line 910
    const-string/jumbo v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 914
    const-string/jumbo v0, "ImsServiceClassTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 862
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

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

    .line 861
    .end local v0    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 873
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

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

    .line 874
    .local v0, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 872
    .end local v0    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private parsePhoneNumbers([Ljava/lang/String;)V
    .locals 5
    .param p1, "history"    # [Ljava/lang/String;

    .prologue
    .line 530
    if-nez p1, :cond_0

    .line 531
    const-string/jumbo v3, "parsePhoneNumbers: History is null."

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    .line 532
    return-void

    .line 535
    :cond_0
    const-string/jumbo v3, "(.*?)(\\+?\\d+)((?s).*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 536
    .local v2, "p":Ljava/util/regex/Pattern;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 537
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 538
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 536
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_1
    const-string/jumbo v3, ""

    aput-object v3, p1, v0

    .line 542
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

    .line 529
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    return-void
.end method

.method private sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 5
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z

    .prologue
    .line 880
    :try_start_0
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "sending Incoming call intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 882
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallIntent(Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v3

    .line 881
    const/16 v4, 0x65

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 883
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
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


# virtual methods
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
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
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

    .line 308
    const/4 v0, -0x1

    .line 309
    .local v0, "state":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 310
    aget v0, p1, v2

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculateOverallSrvccState imsSrvccState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string/jumbo v2, " CS SRVCC state = "

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->log(Ljava/lang/String;)V

    .line 314
    if-eq v0, v3, :cond_2

    .line 317
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    if-ne v0, v3, :cond_1

    .line 319
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    goto :goto_0
.end method

.method public createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 502
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p1, p2, v1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 503
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 504
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 505
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 506
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 508
    return-object v0

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "mediaId"    # I

    .prologue
    .line 805
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

    .line 806
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 807
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 808
    return-object v2

    .line 811
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 519
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

    .line 521
    return-object v0

    .line 518
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 5
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
    .line 785
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v3, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v3

    .line 788
    :cond_0
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

    .line 789
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 790
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 791
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_2
    return-object v3
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 122
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
    .line 328
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v2, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_f

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 333
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 334
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v11

    .line 335
    :try_start_0
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 336
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    .line 335
    if-eqz v10, :cond_1

    .line 337
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 338
    .local v9, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallee()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 339
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v12, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v10, v12, :cond_0

    .line 342
    const-string/jumbo v10, "ImsServiceClassTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Found match call session in temp list, s = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string/jumbo v10, "ImsServiceClassTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Index in call list is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :try_start_1
    iget v10, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10, v9}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v12

    .line 348
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 334
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v9    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 344
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v9    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v12

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v9    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    monitor-exit v11

    .line 353
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v11

    .line 354
    :try_start_4
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v12, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    monitor-exit v11

    .line 358
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v10, v11, :cond_3

    .line 359
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v10, v11, :cond_7

    .line 360
    :cond_3
    :goto_2
    iget-boolean v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 358
    if-eqz v10, :cond_4

    .line 361
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 363
    :cond_4
    const-string/jumbo v10, "ImsServiceClassTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SRVCC mNeedIgnoreCalls = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz v0, :cond_8

    .line 368
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 415
    :cond_5
    :goto_3
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v10, v11, :cond_6

    iget-boolean v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-eqz v10, :cond_e

    .line 330
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 353
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_2
    move-exception v10

    monitor-exit v11

    throw v10

    .line 360
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_7
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v10, v11, :cond_4

    goto :goto_2

    .line 369
    :cond_8
    iget-boolean v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-nez v10, :cond_5

    .line 370
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v10, v11, :cond_6

    .line 375
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1, v10, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 376
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    const/4 v5, 0x0

    .line 377
    .local v5, "isUnknown":Z
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 378
    iget-boolean v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 379
    iget-boolean v10, v1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v10, :cond_a

    .line 380
    const-string/jumbo v10, "ImsServiceClassTracker"

    const-string/jumbo v11, "MT Call creating a new call session"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v10, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v11, 0x0

    invoke-direct {p0, v0, v10, v11}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 410
    :cond_9
    :goto_5
    if-eqz v5, :cond_5

    .line 411
    iget v10, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v11, 0x1

    invoke-direct {p0, v0, v10, v11}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto :goto_3

    .line 382
    :cond_a
    iget-boolean v10, v1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v10, :cond_d

    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v10, v11, :cond_d

    .line 383
    const-string/jumbo v10, "ImsServiceClassTracker"

    const-string/jumbo v11, "Conference Call creating a new call session"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v5, 0x1

    .line 386
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v11

    .line 388
    :try_start_5
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    .line 387
    if-eqz v10, :cond_c

    .line 389
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 390
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 391
    .local v8, "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-boolean v10, v8, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz v10, :cond_b

    .line 392
    const-string/jumbo v10, "ImsServiceClassTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Set New Session as Id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/conference/ConfInfo;)V

    .line 394
    const/4 v5, 0x0

    .line 398
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v8    # "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_c
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v12, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v11

    .line 400
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 401
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 402
    iget v10, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 403
    if-eqz v5, :cond_9

    .line 404
    const-string/jumbo v10, "ImsServiceClassTracker"

    const-string/jumbo v11, "Phantom conference call Scenario"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 386
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_3
    move-exception v10

    monitor-exit v11

    throw v10

    .line 406
    :cond_d
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v11, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v10, v11, :cond_9

    .line 407
    const-string/jumbo v10, "ImsServiceClassTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MO phantom Call Scenario. State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 416
    .end local v5    # "isUnknown":Z
    :cond_e
    iget v10, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 423
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_f
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v11

    .line 425
    :try_start_6
    iget-object v10, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_10
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    .line 424
    if-eqz v10, :cond_11

    .line 426
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 427
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_10

    .line 432
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 433
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v10}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    .line 423
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_4
    move-exception v10

    monitor-exit v11

    throw v10

    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_11
    monitor-exit v11

    .line 327
    return-void
.end method

.method public handleConferenceResult(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    .line 174
    if-eqz p1, :cond_2

    .line 175
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 179
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 180
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    .line 181
    const-string/jumbo v6, "Conference Failed"

    .line 180
    invoke-direct {v5, v7, v7, v6}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 178
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 182
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 184
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 183
    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 187
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 188
    iput-boolean v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    goto :goto_0

    .line 190
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    return-void

    .line 192
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->processConferenceResult()V

    .line 173
    :cond_2
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V
    .locals 13
    .param p1, "handover"    # Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .prologue
    const/4 v3, 0x0

    .line 683
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "in handleHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v11, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    invoke-direct {v11, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)V

    .line 685
    .local v11, "response":Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 687
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 691
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 695
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 699
    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 700
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v9

    .line 701
    .local v9, "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 705
    :cond_3
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 706
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;[B)[B

    .line 707
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 710
    .end local v9    # "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :cond_4
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 711
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    :cond_5
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 715
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 717
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

    .line 718
    const-string/jumbo v3, " tarTech: "

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 718
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 718
    const-string/jumbo v3, " extraType: "

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 718
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 719
    const-string/jumbo v3, " extraInfo: "

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 719
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v3

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 719
    const-string/jumbo v3, " ErrorCode: "

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    const-string/jumbo v3, " errorMessage: "

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v12, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v12

    .line 722
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 723
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 722
    if-eqz v1, :cond_9

    .line 724
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 725
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 726
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_8

    .line 727
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    .line 728
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v4

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v5

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v6

    .line 729
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v7

    .line 727
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 721
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 696
    :cond_7
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSrvccStateChanged(I)V

    .line 697
    return-void

    .line 731
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_8
    :try_start_1
    const-string/jumbo v1, "ImsServiceClassTracker"

    const-string/jumbo v2, "No more call sessions found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_9
    monitor-exit v12

    .line 682
    return-void
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 482
    if-eqz p1, :cond_1

    .line 483
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v2, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 484
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 481
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-void

    .line 487
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    const-string/jumbo v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 490
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
    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, "confInfoBytes":[B
    const/4 v3, -0x1

    .line 585
    .local v3, "state":I
    const/4 v0, 0x0

    .line 586
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 589
    .local v2, "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 591
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 592
    .local v1, "confInfoBytes":[B
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 593
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v3

    .line 602
    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 606
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

    .line 615
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 616
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "Update UI for Conference"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    .line 582
    :goto_1
    return-void

    .line 600
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v1    # "confInfoBytes":[B
    .restart local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 619
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "confInfoBytes":[B
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_2
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "No CallSession with Multiparty bit set is found. Some Error!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleRingbackTone(Z)V
    .locals 6
    .param p1, "tone"    # Z

    .prologue
    .line 765
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in handleRingbackTone tone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 767
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 766
    if-eqz v3, :cond_1

    .line 768
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 769
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 770
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRingbackTone(Z)V

    goto :goto_0

    .line 773
    :cond_0
    const-string/jumbo v3, "ImsServiceClassTracker"

    const-string/jumbo v4, "No more call sessions found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    return-void
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V
    .locals 7
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .prologue
    .line 555
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSuppSvcUnsol connId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 558
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 559
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_2

    .line 560
    new-instance v2, Lcom/android/ims/ImsSuppServiceNotification;

    invoke-direct {v2}, Lcom/android/ims/ImsSuppServiceNotification;-><init>()V

    .line 561
    .local v2, "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v3

    iput v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    .line 562
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v3

    iput v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    .line 563
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v3

    iput v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    .line 564
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 565
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "forwardedCallHistory":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    :cond_0
    :goto_0
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "forwardedCallHistory":Ljava/lang/String;
    .end local v2    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :goto_1
    monitor-exit v4

    .line 554
    return-void

    .line 567
    .restart local v1    # "forwardedCallHistory":Ljava/lang/String;
    .restart local v2    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 568
    iget-object v3, v2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->parsePhoneNumbers([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "forwardedCallHistory":Ljava/lang/String;
    .end local v2    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 573
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No call session found for number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 744
    const/4 v1, 0x0

    .line 747
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 749
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

    .line 748
    if-eqz v4, :cond_1

    .line 750
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 751
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 752
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 753
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v5

    .line 759
    if-nez v1, :cond_2

    .line 760
    const-string/jumbo v4, "ImsServiceClassTracker"

    const-string/jumbo v5, "No Active call session found for TTY mode change"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_2
    return-void

    .line 747
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
    .line 445
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

    .line 447
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 448
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 450
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

    .line 449
    if-eqz v4, :cond_1

    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
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

    .line 453
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 455
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

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 448
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

    .line 444
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
    .line 478
    return-void
.end method

.method public processConferenceResult()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 198
    const-string/jumbo v5, "ImsServiceClassTracker"

    const-string/jumbo v6, "Conference response received. Processing final result."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "foundActiveCall":Z
    const/4 v3, 0x0

    .line 207
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

    .line 206
    if-eqz v5, :cond_2

    .line 208
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 211
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_1

    .line 214
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 216
    const/4 v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_0

    .line 218
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    if-nez v2, :cond_3

    .line 230
    :cond_3
    if-nez v3, :cond_4

    .line 231
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v7, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 237
    :cond_4
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v5, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v5, :cond_5

    .line 238
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 239
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 238
    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 246
    :goto_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 245
    if-eqz v5, :cond_6

    .line 247
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 250
    .restart local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 251
    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    goto :goto_2

    .line 241
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_5
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v5, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_1

    .line 256
    :cond_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 197
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
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 838
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
    .line 260
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

    .line 262
    new-instance v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 263
    const/4 v3, 0x1

    iput-boolean v3, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 269
    iget-object v3, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 276
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

    .line 275
    if-eqz v3, :cond_3

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 281
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    .line 283
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_2

    .line 284
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 289
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    .line 286
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_1

    .line 295
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v3, p0}, Lorg/codeaurora/ims/ImsServiceSub;->sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 259
    return-void
.end method

.method setIncomingCallIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 857
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 856
    return-void
.end method

.method public updateVtCapability(Z)V
    .locals 6
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 149
    const-string/jumbo v3, "ImsServiceClassTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVtCapability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVtSupportedGlobally:Z

    .line 151
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 152
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

    .line 153
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 154
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVtGlobalCapability(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
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

    .line 148
    return-void
.end method
