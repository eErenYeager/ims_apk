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

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

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
    .line 54
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    .line 46
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

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 59
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 66
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 67
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 98
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    .line 99
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 100
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createServiceId()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    .line 101
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 102
    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 106
    iput-object p5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p3, "notify"    # Z

    .prologue
    .line 961
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 962
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 964
    if-eqz p3, :cond_0

    .line 965
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 960
    :cond_0
    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cleanupConferenceAttempt()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 186
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 184
    return-void
.end method

.method private createIncomingCallIntent(Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "android:imsServiceId"

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string/jumbo v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->currentMaxServiceId:I

    return v0
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 10
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 732
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 736
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v4, :cond_0

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCallSessionWithMptyBitSet session = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 738
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toString()Ljava/lang/String;

    move-result-object v6

    .line 737
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 742
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 743
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 742
    if-eqz v4, :cond_7

    .line 744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 745
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 746
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    .line 747
    .local v0, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 748
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v6

    .line 747
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 748
    const-string/jumbo v6, ", isMultiparty = "

    .line 747
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 748
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v6

    .line 747
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 751
    const-string/jumbo v4, "ImsCallSession found with Multiparty bit set"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_2

    .line 753
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_3

    .line 755
    :cond_2
    if-ne p1, v7, :cond_4

    .line 756
    const-string/jumbo v4, "Foreground Conference callSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 757
    return-object v3

    .line 754
    :cond_3
    :try_start_2
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_2

    .line 758
    :cond_4
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_5

    .line 759
    if-ne p1, v8, :cond_5

    .line 760
    const-string/jumbo v4, "Background Conference callSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 761
    return-object v3

    .line 762
    :cond_5
    :try_start_3
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_6

    .line 763
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_1

    .line 764
    :cond_6
    if-nez p1, :cond_1

    .line 765
    const-string/jumbo v4, "Ringing Conference callSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 766
    return-object v3

    .line 772
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

    .line 773
    :cond_8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 772
    if-eqz v4, :cond_a

    .line 774
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 775
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 776
    .restart local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 777
    if-ne p1, v7, :cond_8

    .line 778
    const-string/jumbo v4, "Foreground ImsCallSession found during Conference setup"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 779
    return-object v3

    .line 782
    :cond_9
    if-ne p1, v8, :cond_8

    .line 783
    :try_start_5
    const-string/jumbo v4, "Background ImsCallSession found"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 732
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

    .line 787
    return-object v9
.end method

.method private handleSrvccStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 986
    packed-switch p1, :pswitch_data_0

    .line 1001
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleSrvccStateChanged mSrvccStateFromIms = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1002
    const-string/jumbo v1, ", mNeedIgnoreCalls = "

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1002
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    return-void

    .line 988
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 991
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    goto :goto_0

    .line 995
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 998
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 955
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

    .line 956
    .local v0, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 954
    .end local v0    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 970
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

    .line 971
    .local v0, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 969
    .end local v0    # "listener":Lorg/codeaurora/ims/ICallListListener;
    :cond_0
    return-void
.end method

.method private parsePhoneNumbers([Ljava/lang/String;)V
    .locals 5
    .param p1, "history"    # [Ljava/lang/String;

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    const-string/jumbo v3, "parsePhoneNumbers: History is null."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    return-void

    .line 612
    :cond_0
    const-string/jumbo v3, "(.*?)(\\+?\\d+)((?s).*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 613
    .local v2, "p":Ljava/util/regex/Pattern;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 614
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 615
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 613
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    const-string/jumbo v3, ""

    aput-object v3, p1, v0

    .line 619
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

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 606
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    return-void
.end method

.method private updateCallDeflectCapability(Z)V
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 500
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallDeflectCapability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 504
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 505
    const-string/jumbo v2, "qti.ims.call_deflect"

    .line 503
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    .end local v0    # "value":I
    :cond_0
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method


# virtual methods
.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :goto_0
    return-void

    .line 922
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

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateOverallSrvccState([I)V
    .locals 4
    .param p1, "ret"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 325
    const/4 v0, -0x1

    .line 326
    .local v0, "state":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 327
    aget v0, p1, v2

    .line 329
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculateOverallSrvccState imsSrvccState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    const-string/jumbo v2, " CS SRVCC state = "

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    if-eq v0, v3, :cond_2

    .line 334
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    if-ne v0, v3, :cond_1

    .line 336
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    goto :goto_0
.end method

.method public createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 7
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 577
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 578
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    move-object v1, p1

    move-object v2, p2

    move-object v5, p0

    .line 577
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 579
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 580
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 581
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 585
    return-object v0

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .prologue
    .line 826
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 827
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

    .line 828
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 829
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    monitor-exit v4

    .line 830
    return-object v2

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    monitor-exit v4

    .line 834
    const/4 v3, 0x0

    return-object v3

    .line 826
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
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 596
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

    .line 598
    return-object v0

    .line 595
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 7
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
    .line 798
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v4, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v4

    .line 801
    :cond_0
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 802
    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "session$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 803
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 804
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 801
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v3    # "session$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "session$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v6

    .line 809
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v6

    .line 810
    :try_start_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 811
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 812
    .restart local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 813
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 809
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v6

    .line 817
    return-object v4
.end method

.method public getCallsListToClear()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 345
    const/4 v4, 0x0

    .line 348
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v6

    .line 353
    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 352
    if-eqz v5, :cond_0

    .line 354
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 355
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 356
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 357
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v5, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 358
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 359
    new-instance v5, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v5}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v5, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 360
    iget-object v5, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v7

    iput v7, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 361
    iget-object v5, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v7

    iput v7, v5, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 363
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    const/16 v7, 0x83

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 362
    iput-object v5, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 364
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 351
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    monitor-exit v6

    .line 367
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 370
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_1
    return-object v4
.end method

.method public getServiceClass()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceId:I

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 16
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
    .line 378
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v9, 0x0

    .line 379
    .local v9, "hasIncomingOrWaiting":Z
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v7, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v10, 0x0

    .end local v9    # "hasIncomingOrWaiting":Z
    .local v10, "i":I
    :goto_0
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_11

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 384
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    if-nez v9, :cond_0

    .line 385
    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms;->isIncomingOrWaiting()Z

    move-result v9

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 389
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 390
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 389
    if-eqz v3, :cond_2

    .line 391
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 392
    .local v15, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_1

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found match call session in temp list, s = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index in call list is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget v3, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 399
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 388
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v15    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    monitor-exit v4

    .line 404
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 405
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v5, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    monitor-exit v4

    .line 409
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_4

    .line 410
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_8

    .line 411
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 409
    if-eqz v3, :cond_5

    .line 412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 414
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SRVCC mNeedIgnoreCalls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    if-eqz v1, :cond_9

    .line 419
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 469
    :cond_6
    :goto_3
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-eqz v3, :cond_10

    .line 381
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 404
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 411
    .restart local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_8
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_5

    goto :goto_2

    .line 420
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-nez v3, :cond_6

    .line 421
    const/4 v11, 0x0

    .line 422
    .local v11, "isUnknown":Z
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_7

    .line 427
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 428
    .restart local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 429
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v1, v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 430
    iget-boolean v3, v2, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v3, :cond_b

    .line 431
    const-string/jumbo v3, "MT Call creating a new call session"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iget v3, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 464
    :cond_a
    :goto_5
    if-eqz v11, :cond_6

    .line 465
    iget v3, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto :goto_3

    .line 433
    :cond_b
    iget-boolean v3, v2, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v3, :cond_f

    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_f

    .line 434
    const-string/jumbo v3, "Conference Call creating a new call session"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    const/4 v11, 0x1

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 439
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 438
    if-eqz v3, :cond_d

    .line 440
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 441
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 442
    .local v14, "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-boolean v3, v14, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz v3, :cond_c

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set New Session as Id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 445
    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 446
    invoke-virtual {v14, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 447
    invoke-virtual {v14, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 449
    const/4 v11, 0x0

    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v14    # "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_d
    monitor-exit v4

    .line 454
    if-eqz v11, :cond_e

    .line 455
    const-string/jumbo v3, "Phantom conference call Scenario"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    :goto_6
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_5

    .line 437
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 457
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_e
    iget v3, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    goto :goto_6

    .line 460
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_f
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_a

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MO phantom Call Scenario. State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 470
    .end local v11    # "isUnknown":Z
    :cond_10
    iget v3, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 475
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateCallDeflectCapability(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 482
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_12
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 481
    if-eqz v3, :cond_13

    .line 483
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 484
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12

    .line 489
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 490
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    .line 480
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_13
    monitor-exit v4

    .line 377
    return-void
.end method

.method public handleConferenceResult(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 190
    if-eqz p1, :cond_2

    .line 191
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 194
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v3

    .line 195
    .local v3, "reason":Lcom/android/ims/ImsReasonInfo;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 196
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v5, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 195
    invoke-virtual {v4, v5, v3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 197
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 199
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 198
    if-eqz v4, :cond_0

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 202
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 203
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 204
    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    goto :goto_0

    .line 206
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    return-void

    .line 208
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v3    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->processConferenceResult()V

    .line 189
    :cond_2
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V
    .locals 14
    .param p1, "handover"    # Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .prologue
    .line 838
    const-string/jumbo v1, "in handleHandover"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    new-instance v11, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)V

    .line 840
    .local v11, "response":Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 842
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 846
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 850
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 854
    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 855
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v9

    .line 856
    .local v9, "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 857
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getType()I

    move-result v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I

    .line 860
    :cond_3
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->hasExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 861
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;[B)[B

    .line 862
    invoke-virtual {v9}, Lorg/codeaurora/ims/ImsQmiIF$Extra;->getExtraInfo()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 865
    .end local v9    # "extra":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :cond_4
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 866
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 869
    :cond_5
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 870
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-set1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 873
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    const-string/jumbo v2, " tarTech: "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    const-string/jumbo v2, " extraType: "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    const-string/jumbo v2, " extraInfo: "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v2

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    const-string/jumbo v2, " ErrorCode: "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 876
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 876
    const-string/jumbo v2, " errorMessage: "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 876
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    const/4 v12, 0x0

    .line 879
    .local v12, "showHandoverToast":Z
    iget-object v13, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v13

    .line 880
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 881
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_7
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 880
    if-eqz v1, :cond_a

    .line 882
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 883
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 884
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_9

    .line 885
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v2

    .line 886
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v3

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v4

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B

    move-result-object v5

    .line 887
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;

    move-result-object v7

    .line 885
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    .line 888
    if-nez v12, :cond_7

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isInCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    .line 889
    const/4 v12, 0x1

    goto :goto_0

    .line 851
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v12    # "showHandoverToast":Z
    :cond_8
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSrvccStateChanged(I)V

    .line 852
    return-void

    .line 892
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .restart local v12    # "showHandoverToast":Z
    :cond_9
    :try_start_1
    const-string/jumbo v1, "No more call sessions found"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 879
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_a
    monitor-exit v13

    .line 897
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v12, :cond_c

    .line 898
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 899
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_b

    .line 900
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_c

    .line 901
    :cond_b
    invoke-static {v11}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->-get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_c

    .line 902
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 903
    const v3, 0x7f040009

    .line 902
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 903
    const/4 v3, 0x1

    .line 902
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 837
    :cond_c
    return-void
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 554
    if-eqz p1, :cond_1

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 557
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

    .line 559
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 553
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 562
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    const-string/jumbo v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    const-string/jumbo v1, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V
    .locals 6
    .param p1, "confRefreshInfo"    # Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, "confInfoBytes":[B
    const/4 v3, -0x1

    .line 667
    .local v3, "state":I
    const/4 v0, 0x0

    .line 668
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz p1, :cond_0

    .line 669
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 671
    .local v2, "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 673
    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 674
    .local v1, "confInfoBytes":[B
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 675
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->hasConfCallState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->getConfCallState()I

    move-result v3

    .line 684
    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 688
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "confInfoBytes":[B
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRefreshConfInfo: confCallState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callSession = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 698
    const-string/jumbo v4, "Update UI for Conference"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    .line 664
    :goto_1
    return-void

    .line 682
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v1    # "confInfoBytes":[B
    .restart local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "confInfoBytes":[B
    .end local v2    # "refreshConfInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_2
    const-string/jumbo v4, "No CallSession with Multiparty bit set is found. Some Error!!!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V
    .locals 7
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .prologue
    .line 632
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

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 635
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getConnId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 636
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_3

    .line 637
    const/4 v2, 0x0

    .line 638
    .local v2, "startOnHoldLocalTone":Z
    new-instance v3, Lcom/android/ims/ImsSuppServiceNotification;

    invoke-direct {v3}, Lcom/android/ims/ImsSuppServiceNotification;-><init>()V

    .line 639
    .local v3, "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNotificationType()I

    move-result v4

    iput v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    .line 640
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getCode()I

    move-result v4

    iput v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    .line 641
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getIndex()I

    move-result v4

    iput v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    .line 642
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 643
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHistoryInfo()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "forwardedCallHistory":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->hasHoldTone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->getHoldTone()Z

    move-result v2

    .line 651
    .end local v2    # "startOnHoldLocalTone":Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 652
    const-string/jumbo v6, " startOnHoldLocalTone = "

    .line 651
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "forwardedCallHistory":Ljava/lang/String;
    .end local v3    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :goto_1
    monitor-exit v5

    .line 631
    return-void

    .line 645
    .restart local v1    # "forwardedCallHistory":Ljava/lang/String;
    .restart local v2    # "startOnHoldLocalTone":Z
    .restart local v3    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 646
    iget-object v4, v3, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->parsePhoneNumbers([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "forwardedCallHistory":Ljava/lang/String;
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "suppServiceInfo":Lcom/android/ims/ImsSuppServiceNotification;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 655
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    :try_start_2
    const-string/jumbo v4, "No call session found for number: "

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 714
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 716
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

    .line 715
    if-eqz v4, :cond_1

    .line 717
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 718
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 719
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 720
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v5

    .line 726
    if-nez v1, :cond_2

    .line 727
    const-string/jumbo v4, "No Active call session found for TTY mode change"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    :cond_2
    return-void

    .line 714
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 7
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClosed for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 518
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 520
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

    .line 519
    if-eqz v4, :cond_1

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 522
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "List is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " session is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing session on close "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v5

    .line 533
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 534
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 535
    :try_start_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 536
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 535
    if-eqz v4, :cond_4

    .line 537
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 538
    .local v3, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-ne v3, p1, :cond_3

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing session on close "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 542
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 534
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    monitor-exit v5

    .line 514
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_5
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 510
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 550
    return-void
.end method

.method public processConferenceResult()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 214
    const-string/jumbo v5, "Conference response received. Processing final result."

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "foundActiveCall":Z
    const/4 v3, 0x0

    .line 223
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

    .line 222
    if-eqz v5, :cond_2

    .line 224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 227
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_1

    .line 230
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 232
    const/4 v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_0

    .line 234
    const/4 v3, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_2
    if-nez v2, :cond_3

    .line 246
    :cond_3
    if-nez v3, :cond_4

    .line 247
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v7, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 253
    :cond_4
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v5, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v5, :cond_5

    .line 254
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 255
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 254
    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 262
    :goto_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 261
    if-eqz v5, :cond_6

    .line 263
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 265
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 266
    .restart local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 267
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 268
    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    goto :goto_2

    .line 257
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_5
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v5, v7}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_1

    .line 273
    :cond_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 213
    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 932
    if-nez p1, :cond_0

    .line 933
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 931
    :goto_0
    return-void

    .line 941
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

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "hostSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Conference request being requested by session = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 280
    const/4 v3, 0x1

    iput-boolean v3, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 286
    iget-object v3, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 293
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

    .line 292
    if-eqz v3, :cond_3

    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 298
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    .line 300
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_2

    .line 301
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 306
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v3

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    .line 303
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v0, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_1

    .line 312
    .end local v0    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v3, p0}, Lorg/codeaurora/ims/ImsServiceSub;->sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 276
    return-void
.end method

.method public sendIncomingCallIntent(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 5
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z

    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 978
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallIntent(Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v3

    .line 977
    const/16 v4, 0x65

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 979
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incoming Call intent Canceled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setIncomingCallIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 950
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 949
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 5
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVoiceSupported"    # Z

    .prologue
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFeatureCapabilities video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " voice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 157
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 158
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 159
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

    .line 160
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 161
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
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

    .line 154
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 5

    .prologue
    .line 167
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v4

    .line 168
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

    .line 169
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 170
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLowBatteryStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
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

    .line 166
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 6
    .param p1, "quality"    # I

    .prologue
    .line 1011
    const/4 v1, 0x0

    .line 1014
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 1016
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 1015
    if-eqz v4, :cond_0

    .line 1017
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1018
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v1, v0

    .line 1019
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVoWiFiCallQuality(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1014
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    monitor-exit v5

    .line 1010
    return-void
.end method
