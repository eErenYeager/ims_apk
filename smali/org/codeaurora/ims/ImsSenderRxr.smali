.class public final Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;,
        Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final IF_LOGD:Z = true

.field static final IF_LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field static final MAX_COMMAND_BYTES:I = 0x2000

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_IF:Ljava/lang/String; = "qmux_radio/rild_ims"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final TEST_MODE_SOCKET_NAME:Ljava/lang/String; = "imstestrunnersocket"

.field static sTestMode:Z


# instance fields
.field private mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected mMwiRegistrants:Landroid/os/RegistrantList;

.field private mRadioStateRegistrations:Landroid/os/RegistrantList;

.field mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

.field mReceiverThread:Ljava/lang/Thread;

.field private mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field private mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method static synthetic -wrap0(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    .prologue
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->readMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 1
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    sput-boolean v0, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 638
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 238
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 239
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 243
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 261
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 262
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 263
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 264
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Landroid/os/RegistrantList;

    .line 640
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 642
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 643
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "ImsSenderRxr"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 644
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 645
    const-string/jumbo v4, "ro.ril.wake_lock_timeout"

    .line 646
    const v5, 0xea60

    .line 645
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 647
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 648
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 649
    const-string/jumbo v4, "persist.qualcomm.imstestrunner"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 649
    :cond_0
    sput-boolean v3, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 652
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "IFMsg_Sender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    .line 653
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 655
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 656
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-direct {v3, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    .line 658
    const-string/jumbo v3, "Starting IFMsg_Rxr"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 659
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    .line 660
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    const-string/jumbo v5, "IFMsg_Rxr"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    .line 661
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 663
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 664
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 677
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 678
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 679
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 681
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 682
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 683
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 676
    return-void

    .line 677
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 815
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 816
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 817
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 818
    const-string/jumbo v3, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 819
    iget v6, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 818
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 820
    const-string/jumbo v6, " mRequestList="

    .line 818
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 824
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 825
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 826
    const-string/jumbo v3, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 827
    iget v6, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    .line 826
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 830
    invoke-virtual {v2}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 833
    const/4 v3, 0x0

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 813
    return-void

    .line 815
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 8
    .param p1, "toList"    # [Lorg/codeaurora/ims/ServiceStatus;
    .param p2, "fromList"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2183
    if-eqz p2, :cond_4

    .line 2184
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    new-array p1, v3, [Lorg/codeaurora/ims/ServiceStatus;

    .line 2185
    const-string/jumbo v3, "ImsSenderRxr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Num of SrvUpdates = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2187
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2188
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 2189
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v3, p1, v1

    .line 2190
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v4

    iput-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2191
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2192
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v3

    if-lt v3, v7, :cond_1

    .line 2193
    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2202
    :goto_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2203
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2204
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    aget-object v3, p1, v1

    iput v7, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2209
    :goto_2
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2210
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2211
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v3, v4, v6}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2186
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2195
    :cond_1
    aget-object v3, p1, v1

    new-array v4, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2196
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v6

    .line 2197
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v3, v6

    .line 2198
    .local v0, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v3, 0xe

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2199
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2200
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    .line 2207
    .end local v0    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 2214
    :cond_3
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Null service status in list"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2218
    .end local v1    # "i":I
    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_4
    return-object p1
.end method

.method private disableSrvStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2092
    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "disableSrvStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 2095
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {v1, v3, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2094
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2091
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1246
    sparse-switch p0, :sswitch_data_0

    .line 1275
    const-string/jumbo v0, "E_UNKNOWN"

    .line 1278
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1248
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "SUCCESS"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1251
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "E_RADIO_NOT_AVAILABLE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1254
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "E_GENERIC_FAILURE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1257
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "E_REQUEST_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1260
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "E_CANCELLED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1263
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "E_UNUSED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1266
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "E_INVALID_PARAMETER"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1269
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "E_REJECTED_BY_REMOTE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1272
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "E_NETWORK_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x10 -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1e -> :sswitch_8
    .end sparse-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 2702
    if-nez p0, :cond_0

    .line 2703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2706
    :cond_0
    const-string/jumbo v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2707
    const/4 v0, 0x1

    return v0

    .line 2709
    :cond_1
    const-string/jumbo v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2710
    const/4 v0, 0x2

    return v0

    .line 2740
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 838
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 840
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/IFRequest;

    .line 842
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v3, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 843
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 844
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 845
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 846
    return-object v1

    .line 839
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    monitor-exit v4

    .line 851
    const/4 v3, 0x0

    return-object v3

    .line 838
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getCallFailCauseForImsReason(I)I
    .locals 3
    .param p1, "imsReason"    # I

    .prologue
    .line 2428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2431
    packed-switch p1, :pswitch_data_0

    .line 2446
    :pswitch_0
    const-string/jumbo v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2447
    const/16 v1, 0x3f5

    return v1

    .line 2433
    :pswitch_1
    const/16 v0, 0x1f6

    .line 2449
    .local v0, "failCause":I
    :goto_0
    return v0

    .line 2436
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f5

    .line 2437
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2439
    .end local v0    # "failCause":I
    :pswitch_3
    const/16 v0, 0x1f7

    .line 2440
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2442
    .end local v0    # "failCause":I
    :pswitch_4
    const/16 v0, 0x1f8

    .line 2443
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2431
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I
    .locals 4
    .param p1, "failCauseResp"    # Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .prologue
    .line 2327
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v0

    .line 2328
    .local v0, "failCause":I
    const/4 v1, 0x0

    .line 2329
    .local v1, "imsCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call fail cause= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2331
    sparse-switch v0, :sswitch_data_0

    .line 2421
    const/4 v1, 0x0

    .line 2424
    :goto_0
    return v1

    .line 2335
    :sswitch_0
    const/16 v1, 0x141

    .line 2336
    goto :goto_0

    .line 2338
    :sswitch_1
    const/16 v1, 0x14b

    .line 2339
    goto :goto_0

    .line 2341
    :sswitch_2
    const/16 v1, 0x14c

    .line 2342
    goto :goto_0

    .line 2344
    :sswitch_3
    const/16 v1, 0x14d

    .line 2345
    goto :goto_0

    .line 2347
    :sswitch_4
    const/16 v1, 0x14e

    .line 2348
    goto :goto_0

    .line 2350
    :sswitch_5
    const/16 v1, 0x14f

    .line 2351
    goto :goto_0

    .line 2353
    :sswitch_6
    const/16 v1, 0x150

    .line 2354
    goto :goto_0

    .line 2356
    :sswitch_7
    const/16 v1, 0x151

    .line 2357
    goto :goto_0

    .line 2359
    :sswitch_8
    const/16 v1, 0x152

    .line 2360
    goto :goto_0

    .line 2362
    :sswitch_9
    const/16 v1, 0x153

    .line 2363
    goto :goto_0

    .line 2365
    :sswitch_a
    const/16 v1, 0x154

    .line 2366
    goto :goto_0

    .line 2368
    :sswitch_b
    const/16 v1, 0x155

    .line 2369
    goto :goto_0

    .line 2371
    :sswitch_c
    const/16 v1, 0x15f

    .line 2372
    goto :goto_0

    .line 2374
    :sswitch_d
    const/16 v1, 0x160

    .line 2375
    goto :goto_0

    .line 2377
    :sswitch_e
    const/16 v1, 0x161

    .line 2378
    goto :goto_0

    .line 2380
    :sswitch_f
    const/16 v1, 0x169

    .line 2381
    goto :goto_0

    .line 2383
    :sswitch_10
    const/16 v1, 0x16a

    .line 2384
    goto :goto_0

    .line 2387
    :sswitch_11
    const/16 v1, 0x191

    .line 2388
    goto :goto_0

    .line 2390
    :sswitch_12
    const/16 v1, 0x192

    .line 2391
    goto :goto_0

    .line 2393
    :sswitch_13
    const/16 v1, 0x193

    .line 2394
    goto :goto_0

    .line 2396
    :sswitch_14
    const/16 v1, 0x194

    .line 2397
    goto :goto_0

    .line 2404
    :sswitch_15
    const/16 v1, 0x1fe

    .line 2405
    goto :goto_0

    .line 2407
    :sswitch_16
    const/16 v1, 0x152

    .line 2408
    goto :goto_0

    .line 2410
    :sswitch_17
    const/16 v1, 0x150

    .line 2411
    goto :goto_0

    .line 2331
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x3f2 -> :sswitch_17
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_3
        0x7d5 -> :sswitch_4
        0x7d6 -> :sswitch_5
        0x7d7 -> :sswitch_6
        0x7d8 -> :sswitch_7
        0x7d9 -> :sswitch_8
        0x7da -> :sswitch_9
        0x7db -> :sswitch_a
        0x7dc -> :sswitch_b
        0x7dd -> :sswitch_c
        0x7de -> :sswitch_d
        0x7df -> :sswitch_e
        0x7e0 -> :sswitch_f
        0x7e1 -> :sswitch_10
        0xbb9 -> :sswitch_11
        0xbba -> :sswitch_12
        0xbbb -> :sswitch_13
        0xbbc -> :sswitch_14
    .end sparse-switch
.end method

.method private maskAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1408
    const-string/jumbo v0, "<MASKED>"

    return-object v0
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1283
    sparse-switch p0, :sswitch_data_0

    .line 1387
    const-string/jumbo v0, "<unknown message>"

    return-object v0

    .line 1285
    :sswitch_0
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1287
    :sswitch_1
    const-string/jumbo v0, "DIAL"

    return-object v0

    .line 1289
    :sswitch_2
    const-string/jumbo v0, "REQUEST_ANSWER"

    return-object v0

    .line 1291
    :sswitch_3
    const-string/jumbo v0, "HANGUP"

    return-object v0

    .line 1293
    :sswitch_4
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1295
    :sswitch_5
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1297
    :sswitch_6
    const-string/jumbo v0, "ImsQmiIF.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1299
    :sswitch_7
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    .line 1301
    :sswitch_8
    const-string/jumbo v0, "UDUB"

    return-object v0

    .line 1303
    :sswitch_9
    const-string/jumbo v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1305
    :sswitch_a
    const-string/jumbo v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1307
    :sswitch_b
    const-string/jumbo v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1309
    :sswitch_c
    const-string/jumbo v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1311
    :sswitch_d
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1313
    :sswitch_e
    const-string/jumbo v0, "DTMF"

    return-object v0

    .line 1315
    :sswitch_f
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    .line 1317
    :sswitch_10
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    .line 1319
    :sswitch_11
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1321
    :sswitch_12
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1323
    :sswitch_13
    const-string/jumbo v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 1325
    :sswitch_14
    const-string/jumbo v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1327
    :sswitch_15
    const-string/jumbo v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1329
    :sswitch_16
    const-string/jumbo v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1331
    :sswitch_17
    const-string/jumbo v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1333
    :sswitch_18
    const-string/jumbo v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1335
    :sswitch_19
    const-string/jumbo v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1337
    :sswitch_1a
    const-string/jumbo v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1339
    :sswitch_1b
    const-string/jumbo v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1341
    :sswitch_1c
    const-string/jumbo v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1343
    :sswitch_1d
    const-string/jumbo v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1345
    :sswitch_1e
    const-string/jumbo v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1347
    :sswitch_1f
    const-string/jumbo v0, "REQUEST_QUERY_VT_CALL_QUALITY"

    return-object v0

    .line 1349
    :sswitch_20
    const-string/jumbo v0, "REQUEST_SET_VT_CALL_QUALITY"

    return-object v0

    .line 1351
    :sswitch_21
    const-string/jumbo v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1353
    :sswitch_22
    const-string/jumbo v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1355
    :sswitch_23
    const-string/jumbo v0, "REQUEST_HOLD"

    return-object v0

    .line 1357
    :sswitch_24
    const-string/jumbo v0, "REQUEST_RESUME"

    return-object v0

    .line 1359
    :sswitch_25
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1361
    :sswitch_26
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1363
    :sswitch_27
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1365
    :sswitch_28
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1367
    :sswitch_29
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1369
    :sswitch_2a
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1371
    :sswitch_2b
    const-string/jumbo v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1373
    :sswitch_2c
    const-string/jumbo v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1375
    :sswitch_2d
    const-string/jumbo v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1377
    :sswitch_2e
    const-string/jumbo v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1379
    :sswitch_2f
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1381
    :sswitch_30
    const-string/jumbo v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1383
    :sswitch_31
    const-string/jumbo v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1385
    :sswitch_32
    const-string/jumbo v0, "UNSOL_MWI"

    return-object v0

    .line 1283
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_d
        0x6 -> :sswitch_0
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_12
        0xc -> :sswitch_11
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_8
        0x11 -> :sswitch_a
        0x12 -> :sswitch_b
        0x13 -> :sswitch_14
        0x14 -> :sswitch_17
        0x15 -> :sswitch_18
        0x16 -> :sswitch_19
        0x17 -> :sswitch_1a
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_2b
        0x1b -> :sswitch_1d
        0x1d -> :sswitch_15
        0x1e -> :sswitch_16
        0x1f -> :sswitch_1e
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_20
        0x25 -> :sswitch_23
        0x26 -> :sswitch_24
        0x27 -> :sswitch_9
        0xc9 -> :sswitch_26
        0xca -> :sswitch_27
        0xcb -> :sswitch_29
        0xcc -> :sswitch_25
        0xcd -> :sswitch_28
        0xce -> :sswitch_2a
        0xcf -> :sswitch_c
        0xd0 -> :sswitch_2c
        0xd1 -> :sswitch_2d
        0xd2 -> :sswitch_2e
        0xd3 -> :sswitch_2f
        0xd4 -> :sswitch_30
        0xd5 -> :sswitch_31
        0xd6 -> :sswitch_32
    .end sparse-switch
.end method

.method private processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;)[B
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    .line 1538
    const/4 v4, 0x0

    .line 1539
    .local v4, "isConferenceUri":Z
    if-eqz p3, :cond_0

    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1540
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1541
    const-string/jumbo v7, "isConferenceUri"

    .line 1540
    invoke-virtual {p3, v6, v7}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1542
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1543
    const/4 v4, 0x1

    .line 1547
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process dial isConfererenceUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1548
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1549
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    iget v6, p3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1550
    iget v6, p3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1552
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1553
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 1554
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Packing extra string \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1553
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1558
    .end local v3    # "i":I
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    .line 1559
    .local v1, "dialIF":Lorg/codeaurora/ims/ImsQmiIF$Dial;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1560
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1561
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1562
    packed-switch p2, :pswitch_data_0

    .line 1569
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1573
    :goto_1
    if-eqz v4, :cond_2

    .line 1574
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1577
    :cond_2
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->toByteArray()[B

    move-result-object v2

    .line 1578
    .local v2, "dialb":[B
    return-object v2

    .line 1564
    .end local v2    # "dialb":[B
    :pswitch_0
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_1

    .line 1562
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 480
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 482
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 483
    const-string/jumbo v4, "ImsSenderRxr"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return v7

    .line 487
    :cond_1
    add-int/2addr v2, v0

    .line 488
    sub-int/2addr v3, v0

    .line 489
    if-gtz v3, :cond_0

    .line 491
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 492
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 491
    or-int/2addr v4, v5

    .line 493
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 491
    or-int/2addr v4, v5

    .line 494
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 491
    or-int v1, v4, v5

    .line 497
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 498
    move v3, v1

    .line 500
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 502
    if-gez v0, :cond_3

    .line 503
    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 504
    const-string/jumbo v6, " remaining="

    .line 503
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v7

    .line 508
    :cond_3
    add-int/2addr v2, v0

    .line 509
    sub-int/2addr v3, v0

    .line 510
    if-gtz v3, :cond_2

    .line 512
    return v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 688
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    .line 691
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 693
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 687
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private responseCallFailCause([B)Ljava/lang/Object;
    .locals 4
    .param p1, "callFailB"    # [B

    .prologue
    .line 1846
    const-string/jumbo v2, " responseCallFailCause "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1847
    const/4 v0, 0x0

    .line 1850
    .local v0, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    .line 1852
    .local v0, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callfail cause response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    .end local v0    # "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :goto_0
    return-object v0

    .line 1853
    :catch_0
    move-exception v1

    .line 1854
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1855
    const-string/jumbo v2, "InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseCallRingBack([B)Ljava/lang/Object;
    .locals 5
    .param p1, "ringBackB"    # [B

    .prologue
    .line 1862
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 1863
    .local v1, "response":[I
    const-string/jumbo v3, " responseCallRingBack "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1866
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v2

    .line 1869
    .local v2, "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 1870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseCallRingBack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1875
    .end local v2    # "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    :goto_0
    return-object v1

    .line 1871
    :catch_0
    move-exception v0

    .line 1872
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1873
    const-string/jumbo v3, "InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseModifyCall([B)Ljava/lang/Object;
    .locals 6
    .param p1, "message"    # [B

    .prologue
    .line 1206
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1208
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v1

    .line 1209
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1210
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1211
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1212
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    .line 1213
    .local v3, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1214
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v4

    iput v4, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1215
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v4

    :goto_0
    iput v4, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseModifyCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 1216
    .restart local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .restart local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1218
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1219
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private responseQueryVideoCallQuality([B)Ljava/lang/Object;
    .locals 6
    .param p1, "message"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1225
    if-nez p1, :cond_0

    .line 1226
    const-string/jumbo v3, "responseQueryVideoCallQuality failed, message is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1241
    :goto_0
    return-object v5

    .line 1229
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    move-result-object v2

    .line 1230
    .local v2, "vQuality":Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1231
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getQuality()I

    move-result v1

    .line 1232
    .local v1, "quality":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseQueryVideoCallQuality, quality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 1235
    .end local v1    # "quality":I
    :cond_1
    const-string/jumbo v3, "responseQueryVideoCallQuality failed. Quality is not set."

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1237
    .end local v2    # "vQuality":Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 983
    if-nez p2, :cond_0

    .line 984
    const-string/jumbo v10, ""

    return-object v10

    .line 989
    :cond_0
    instance-of v10, p2, [I

    if-eqz v10, :cond_2

    move-object v5, p2

    .line 990
    check-cast v5, [I

    .line 991
    .local v5, "intArray":[I
    array-length v6, v5

    .line 992
    .local v6, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 993
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_1

    .line 995
    const/4 v3, 0x1

    .local v3, "i":I
    aget v10, v5, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    .line 996
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 997
    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget v11, v5, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1000
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1026
    .end local v5    # "intArray":[I
    .end local v6    # "length":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v7, "s":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 1002
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    instance-of v10, p2, [Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v9, p2

    .line 1003
    check-cast v9, [Ljava/lang/String;

    .line 1004
    .local v9, "strings":[Ljava/lang/String;
    array-length v6, v9

    .line 1005
    .restart local v6    # "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1006
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_3

    .line 1008
    const/4 v3, 0x1

    .restart local v3    # "i":I
    aget-object v10, v9, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1009
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 1010
    const-string/jumbo v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-object v11, v9, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 1013
    .end local v4    # "i":I
    :cond_3
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1015
    .end local v6    # "length":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v10, 0xc9

    if-eq p1, v10, :cond_5

    .line 1016
    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    :cond_5
    move-object v0, p2

    .line 1017
    check-cast v0, Ljava/util/ArrayList;

    .line 1018
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 1020
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1022
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1024
    .end local v0    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "dc$iterator":Ljava/util/Iterator;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1
.end method

.method private setCallModify(Lorg/codeaurora/ims/CallModify;)[B
    .locals 5
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 1745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallModify callModify= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1746
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1747
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1748
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1750
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    .line 1751
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1752
    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1757
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->toByteArray()[B

    move-result-object v2

    .line 1758
    .local v2, "callModifyb":[B
    return-object v2
.end method

.method private unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V
    .locals 5
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$Info;
    .param p2, "srvSt"    # Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 2100
    const/4 v1, 0x0

    .line 2102
    .local v1, "numAccessTechUpdate":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v1

    .line 2104
    new-array v3, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2106
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2107
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v2

    .line 2108
    .local v2, "update":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v0

    .line 2110
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2111
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2112
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2113
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2115
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2122
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " networkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2123
    const-string/jumbo v4, " status = "

    .line 2122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2123
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2124
    const-string/jumbo v4, " restrictCause = "

    .line 2122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2124
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2125
    const-string/jumbo v4, " registered = "

    .line 2122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2125
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2106
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2118
    :cond_0
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2120
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Registered not sent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2099
    .end local v2    # "update":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 1606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1607
    move v2, p2

    .line 1608
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1609
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1610
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1612
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1605
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .prologue
    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall callType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " presentation= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1631
    move v2, p2

    .line 1632
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1633
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1634
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1635
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1637
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1629
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addParticipant address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1585
    const-string/jumbo v2, " callDetails= "

    .line 1584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1587
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;)[B

    move-result-object v0

    .line 1589
    .local v0, "dialb":[B
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1582
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1812
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1811
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deflect call to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "connid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1619
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    .line 1620
    .local v0, "deflectCall":Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1621
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1622
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->toByteArray()[B

    move-result-object v1

    .line 1624
    .local v1, "deflectCallb":[B
    const/16 v2, 0x20

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1615
    return-void
.end method

.method public dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dial address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1597
    const-string/jumbo v2, " callDetails= "

    .line 1596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1599
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;)[B

    move-result-object v0

    .line 1601
    .local v0, "dialb":[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1594
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1449
    const-string/jumbo v3, "IMS INTERFACE:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSenderThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mSender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiverThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWakeLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1458
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestMessagesWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1461
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mRequestList count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1463
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 1464
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    monitor-exit v4

    .line 1467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mLastNITZTimeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mTestingEmergencyCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    return-void

    .line 1457
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public encodeMsg(ILandroid/os/Message;[B)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "msg"    # [B

    .prologue
    .line 1474
    const/4 v6, 0x0

    .line 1476
    .local v6, "msgLen":I
    const/4 v10, 0x0

    .line 1477
    .local v10, "totalPacketLen":I
    invoke-static/range {p1 .. p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1480
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    new-instance v7, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    .line 1481
    .local v7, "msgtag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1482
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1483
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1484
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1485
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->toByteArray()[B

    move-result-object v9

    .line 1487
    .local v9, "tagb":[B
    if-eqz p3, :cond_0

    .line 1488
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1496
    :cond_0
    array-length v11, v9

    add-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v6

    add-int/lit8 v10, v11, 0x1

    .line 1497
    new-array v11, v10, [B

    iput-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1500
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1475
    const/4 v12, 0x0

    .line 1500
    const/4 v4, 0x1

    .local v4, "index":I
    iget-object v13, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    const/4 v14, 0x0

    aput-byte v14, v13, v4

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    .line 1501
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v12, v10, -0x4

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1502
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    add-int/lit8 v12, v10, -0x4

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    .line 1504
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    array-length v12, v9

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1507
    :try_start_0
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v11, v4, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :goto_0
    if-lez v6, :cond_1

    .line 1518
    :try_start_1
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    add-int/lit8 v12, v12, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v11, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1529
    :cond_1
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v12}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1530
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Message data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->send(Lorg/codeaurora/ims/IFRequest;)V

    .line 1534
    return-void

    .line 1512
    :catch_0
    move-exception v3

    .line 1513
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1511
    .local v1, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v2

    .line 1509
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1523
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 1524
    .restart local v3    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1521
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 1522
    .restart local v1    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1519
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_5
    move-exception v2

    .line 1520
    .restart local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2605
    const-string/jumbo v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2606
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2604
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1816
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1815
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2477
    const-string/jumbo v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2478
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2476
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2688
    const-string/jumbo v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2689
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2687
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1723
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1722
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1728
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1727
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1697
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1696
    return-void
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2623
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2622
    return-void
.end method

.method protected handleMwi([B)Ljava/lang/Object;
    .locals 4
    .param p1, "mwiNotification"    # [B

    .prologue
    .line 2054
    const/4 v1, 0x0

    .line 2055
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2057
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2062
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :cond_0
    :goto_0
    return-object v1

    .line 2058
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :catch_0
    move-exception v0

    .line 2059
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in handleMwi parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRadioStateChange([B)Ljava/lang/Object;
    .locals 5
    .param p1, "radioStateChange"    # [B

    .prologue
    const/4 v4, 0x1

    .line 2024
    const/4 v1, 0x0

    .line 2025
    .local v1, "response":[I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    .line 2027
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v2

    .line 2029
    .local v2, "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2030
    .local v1, "response":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2031
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2042
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Invalid state in Radio State Change"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :cond_0
    :goto_0
    return-object v1

    .line 2033
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_0
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2046
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleRadioStateChange parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2036
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_1
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    goto :goto_0

    .line 2039
    :sswitch_2
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2031
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleRefreshInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "confInfo"    # [B

    .prologue
    .line 2080
    const/4 v1, 0x0

    .line 2081
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2083
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2088
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2084
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :catch_0
    move-exception v0

    .line 2085
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSrvStatus([B)Ljava/lang/Object;
    .locals 11
    .param p1, "updateList"    # [B

    .prologue
    .line 2130
    const/4 v4, 0x0

    .line 2131
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v3, 0x0

    .line 2133
    .local v3, "num":I
    if-eqz p1, :cond_2

    .line 2135
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v7

    .line 2136
    .local v7, "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    .line 2137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2141
    :try_start_1
    invoke-virtual {v7, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2142
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    new-instance v6, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v6}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 2143
    .local v6, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v8

    iput-boolean v8, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2144
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2145
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2146
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2147
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2148
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2150
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2151
    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2151
    const-string/jumbo v9, " userdata = "

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2151
    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2153
    invoke-direct {p0, v2, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2154
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2140
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    .end local v6    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    move-object v4, v5

    .line 2163
    .end local v1    # "i":I
    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .end local v7    # "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :goto_1
    return-object v4

    .line 2156
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :catch_0
    move-exception v0

    .line 2157
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_2
    const-string/jumbo v8, "InvalidProtocolBufferException in handleSrvStatus parsing"

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2161
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto :goto_1

    .line 2156
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .restart local v1    # "i":I
    .restart local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .restart local v7    # "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    move-object v4, v5

    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto :goto_2
.end method

.method protected handleTtyNotify([B)Ljava/lang/Object;
    .locals 6
    .param p1, "notification"    # [B

    .prologue
    .line 2167
    const/4 v1, 0x0

    .line 2168
    .local v1, "mode":[I
    if-eqz p1, :cond_0

    .line 2170
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v2

    .line 2171
    .local v2, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2172
    .local v1, "mode":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2173
    const-string/jumbo v3, "ImsSenderRxr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleTtyNotify mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2178
    .end local v1    # "mode":[I
    .end local v2    # "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    :cond_0
    :goto_0
    return-object v1

    .line 2174
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hangupConnection index= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1643
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1644
    .local v0, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1645
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1646
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v1

    .line 1647
    .local v1, "hangupb":[B
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1641
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1804
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1803
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1808
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1807
    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "connectionId"    # I
    .param p2, "userUri"    # Ljava/lang/String;
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "mpty"    # Z
    .param p5, "failCause"    # I
    .param p6, "errorInfo"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 1654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason connId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " userUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1655
    const-string/jumbo v6, " confUri= "

    .line 1654
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1655
    const-string/jumbo v6, "mpty = "

    .line 1654
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1655
    const-string/jumbo v6, "failCause = "

    .line 1654
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1657
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1662
    .local v3, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 1663
    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1665
    :cond_0
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1666
    if-eqz p2, :cond_1

    .line 1667
    invoke-virtual {v3, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1668
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 1669
    .local v1, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1675
    :cond_2
    :goto_0
    invoke-direct {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->getCallFailCauseForImsReason(I)I

    move-result v0

    .line 1676
    .local v0, "callFailCause":I
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason callFailCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1680
    const/16 v5, 0x3f5

    if-ne v0, v5, :cond_3

    .line 1681
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1683
    .local v2, "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1686
    .end local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_3
    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1691
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v4

    .line 1692
    .local v4, "hangupb":[B
    const/4 v5, 0x4

    invoke-virtual {p0, v5, p7, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1652
    return-void

    .line 1670
    .end local v0    # "callFailCause":I
    .end local v4    # "hangupb":[B
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangupWithReason errorInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1672
    .restart local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .prologue
    .line 1790
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    .line 1791
    .local v0, "holdIF":Lorg/codeaurora/ims/ImsQmiIF$Hold;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    .line 1792
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->toByteArray()[B

    move-result-object v1

    .line 1793
    .local v1, "holdb":[B
    const/16 v2, 0x25

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1789
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1393
    const-string/jumbo v0, "ImsSenderRxr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-void
.end method

.method public logUnimplemented()V
    .locals 3

    .prologue
    .line 1417
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1418
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1420
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ImsSenderRxr"

    const-string/jumbo v2, "Unimplemented method. Stack trace: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1415
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1397
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyCallConfirm callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1769
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 1770
    .local v0, "callModifyb":[B
    const/16 v1, 0x12

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1767
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "modifyCallInitiate callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1763
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 1764
    .local v0, "callModifyb":[B
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1761
    return-void
.end method

.method public processResponse([BI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 718
    const/4 v7, 0x0

    .line 719
    .local v7, "startIndex":I
    const/4 v0, 0x1

    .line 720
    .local v0, "endIndex":I
    const/4 v5, 0x0

    .line 722
    .local v5, "msg":[B
    const-string/jumbo v9, "processResponse"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 729
    if-gt v0, p2, :cond_2

    .line 730
    aget-byte v6, p1, v7

    .line 733
    .local v6, "msglen":I
    const/4 v8, 0x0

    .line 734
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    move v7, v0

    .line 735
    add-int/lit8 v0, v6, 0x1

    .line 737
    if-gt v0, p2, :cond_1

    if-lez v6, :cond_1

    .line 739
    new-array v5, v6, [B

    .line 742
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 744
    invoke-static {v5}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 762
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 763
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v10

    .line 762
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 763
    const-string/jumbo v10, " "

    .line 762
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 763
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v10

    .line 762
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 766
    move v7, v0

    .line 767
    sub-int v6, p2, v0

    .line 768
    add-int/2addr v0, v6

    .line 770
    const/4 v5, 0x0

    .line 771
    .local v5, "msg":[B
    if-gt v0, p2, :cond_0

    if-lez v6, :cond_0

    .line 772
    new-array v5, v6, [B

    .line 774
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 786
    .end local v5    # "msg":[B
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 794
    const-string/jumbo v9, " Unknown Message Type  "

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 804
    .end local v6    # "msglen":I
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 714
    return-void

    .line 757
    .restart local v5    # "msg":[B
    .restart local v6    # "msglen":I
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_0
    move-exception v1

    .line 758
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v9, "InvalidProtocolBufferException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 760
    return-void

    .line 753
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :catch_1
    move-exception v4

    .line 754
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 756
    return-void

    .line 749
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 750
    .local v2, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 752
    return-void

    .line 745
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_3
    move-exception v3

    .line 746
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 748
    return-void

    .line 779
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_4
    move-exception v4

    .line 780
    .restart local v4    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v2

    .line 778
    .restart local v2    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_6
    move-exception v3

    .line 776
    .restart local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "msg":[B
    :pswitch_0
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 791
    :pswitch_1
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 799
    .local v5, "msg":[B
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_1
    const-string/jumbo v9, "Error in parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 802
    .end local v6    # "msglen":I
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_2
    const-string/jumbo v9, "Error in parsing msg tag length"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 11
    .param p1, "tag"    # Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .param p2, "message"    # [B

    .prologue
    const/4 v10, 0x0

    .line 855
    const/4 v1, 0x0

    .line 857
    .local v1, "found":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v5

    .line 858
    .local v5, "serial":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    .line 859
    .local v0, "error":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v2

    .line 863
    .local v2, "id":I
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v4

    .line 865
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v4, :cond_0

    .line 866
    const-string/jumbo v7, "ImsSenderRxr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 867
    const-string/jumbo v9, " error: "

    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void

    .line 871
    :cond_0
    const/4 v3, 0x0

    .line 873
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    array-length v7, p2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    .line 876
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 945
    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 946
    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 945
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :catch_0
    move-exception v6

    .line 951
    .local v6, "tr":Ljava/lang/Throwable;
    const-string/jumbo v7, "ImsSenderRxr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 952
    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v9

    .line 951
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 953
    const-string/jumbo v9, " exception, possible invalid response"

    .line 951
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 956
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 957
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 959
    :cond_2
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 960
    return-void

    .line 878
    .end local v6    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 963
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_0
    :pswitch_2
    if-eqz v0, :cond_4

    .line 964
    invoke-virtual {v4, v0, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 965
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 966
    return-void

    .line 881
    .restart local v3    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 882
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_3

    .line 883
    const-string/jumbo v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 884
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 890
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 893
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallFailCause([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 896
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetClir([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 899
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallForward([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 902
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallWaiting([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 905
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryClip([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 908
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 913
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppSvcStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 916
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryVideoCallQuality([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 919
    :pswitch_d
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetColr([B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 970
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 971
    const-string/jumbo v8, " "

    .line 970
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 971
    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-direct {p0, v8, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 970
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 973
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_5

    .line 974
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 975
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 978
    :cond_5
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 854
    return-void

    .line 876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 9
    .param p1, "tag"    # Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .param p2, "message"    # [B

    .prologue
    const/4 v8, 0x0

    .line 1048
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    .line 1049
    .local v1, "response":I
    const/4 v2, 0x0

    .line 1052
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 1095
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 1098
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception processing unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1099
    const-string/jumbo v6, "Exception:"

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1099
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1098
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return-void

    .line 1054
    .end local v3    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_0
    if-eqz p2, :cond_0

    :try_start_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallRingBack([B)Ljava/lang/Object;

    move-result-object v2

    .line 1103
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1047
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 1058
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1061
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1065
    :pswitch_4
    const/4 v2, 0x0

    .line 1066
    goto :goto_0

    .line 1068
    :pswitch_5
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseModifyCall([B)Ljava/lang/Object;

    move-result-object v2

    .line 1069
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1070
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 1071
    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1070
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1074
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_6
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseHandover([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1077
    :pswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1080
    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1083
    :pswitch_9
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleTtyNotify([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1086
    :pswitch_a
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppServiceNotification([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1089
    :pswitch_b
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRadioStateChange([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1092
    :pswitch_c
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleMwi([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1106
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1108
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 1109
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1108
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1113
    :pswitch_e
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1114
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 1115
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1114
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1119
    :pswitch_f
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1121
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1122
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    .line 1123
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1122
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1128
    :pswitch_10
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1130
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1131
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 1136
    :pswitch_11
    const/4 v0, 0x0

    .line 1138
    .local v0, "playtone":Z
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1139
    if-eqz v2, :cond_3

    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v0, 0x1

    .line 1140
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1141
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 1142
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1141
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1139
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1147
    .end local v0    # "playtone":Z
    :pswitch_12
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1149
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1150
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 1151
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1150
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1156
    :pswitch_13
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1157
    if-eqz v2, :cond_1

    .line 1158
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 1159
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1158
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1164
    :pswitch_14
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1165
    if-eqz v2, :cond_1

    .line 1166
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 1167
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1166
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1172
    :pswitch_15
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1173
    if-eqz v2, :cond_1

    .line 1174
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 1175
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1174
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1180
    :pswitch_16
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1181
    if-eqz v2, :cond_1

    .line 1182
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 1183
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1182
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1188
    :pswitch_17
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1189
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1190
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 1191
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1190
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1196
    :pswitch_18
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1197
    if-eqz v2, :cond_1

    .line 1198
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 1199
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1198
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1052
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1103
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_1
        :pswitch_18
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2599
    const-string/jumbo v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2600
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2598
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForwardStatus cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2581
    const-string/jumbo v4, "number = "

    .line 2580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2581
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2583
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 2584
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 2585
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2586
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2587
    invoke-virtual {v2, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2588
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2589
    if-eqz p3, :cond_0

    .line 2590
    invoke-virtual {v2, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2591
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2592
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 2593
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v1

    .line 2594
    .local v1, "callForwardQuery":[B
    const/16 v3, 0x16

    invoke-virtual {p0, v3, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2578
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryCallWaiting serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2492
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 2493
    .local v0, "callWaitingQuery":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 2494
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->toByteArray()[B

    move-result-object v1

    .line 2495
    .local v1, "callWaitingQueryInfo":[B
    const/16 v2, 0x18

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2490
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2612
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2611
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2515
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2514
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1701
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1700
    return-void
.end method

.method public queryVideoQuality(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2745
    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "queryVideoQuality"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2744
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 267
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 268
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 266
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1030
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1031
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1029
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1039
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1040
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1038
    return-void
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 276
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 275
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 285
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 286
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 284
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 294
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 293
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1820
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1819
    return-void
.end method

.method protected responseCallList([B)Ljava/lang/Object;
    .locals 15
    .param p1, "callListB"    # [B

    .prologue
    .line 2222
    const/4 v10, 0x0

    .line 2223
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v9, 0x0

    .line 2225
    .local v9, "num":I
    if-eqz p1, :cond_5

    .line 2227
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v1

    .line 2228
    .local v1, "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesCount()I

    move-result v9

    .line 2233
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2235
    .end local v10    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v11, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_4

    .line 2236
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributes(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    .line 2237
    .local v0, "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    new-instance v2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v2}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 2239
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v12

    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->stateFromCall(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2240
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2241
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2242
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2243
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2244
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2245
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2246
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2247
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2248
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v8

    .line 2249
    .local v8, "np":I
    invoke-static {v8}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2250
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2251
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2253
    new-instance v12, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v12}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2254
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2255
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 2256
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 2257
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    .line 2258
    .local v4, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    iput-object v12, v13, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 2259
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v13, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2260
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v14

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v14

    .line 2259
    invoke-direct {p0, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2261
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v13, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2262
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v14

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v14

    .line 2261
    invoke-direct {p0, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2266
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v13, v2, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2271
    new-instance v12, Lcom/android/ims/ImsReasonInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 2270
    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2273
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2274
    const/4 v7, 0x0

    .line 2276
    .local v7, "networkError":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2277
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v7

    .line 2282
    .local v7, "networkError":Ljava/lang/String;
    const-string/jumbo v12, "Forbidden. Not Authorized for Service"

    .line 2281
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2283
    const-string/jumbo v12, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent."

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2284
    new-instance v6, Landroid/content/Intent;

    .line 2285
    const-string/jumbo v12, "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    .line 2284
    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2287
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2291
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "networkError":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2292
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2293
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v13

    invoke-direct {p0, v13}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I

    move-result v13

    .line 2292
    iput v13, v12, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 2296
    if-eqz v7, :cond_1

    .line 2297
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iput-object v7, v12, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 2304
    :cond_1
    :goto_1
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    iget-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v12, :cond_3

    .line 2307
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2308
    const-string/jumbo v12, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2235
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2300
    :cond_2
    const-string/jumbo v12, "CallFailCauseResponse has no int error code!"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2316
    .end local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "np":I
    :catch_0
    move-exception v3

    .local v3, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    move-object v10, v11

    .line 2317
    .end local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v5    # "i":I
    .end local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_3
    const-string/jumbo v12, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2323
    .end local v3    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_4
    return-object v10

    .line 2310
    .restart local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .restart local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v8    # "np":I
    .restart local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_3
    :try_start_2
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2311
    const-string/jumbo v12, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2315
    .end local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "np":I
    :cond_4
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .end local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_4

    .line 2321
    .end local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v5    # "i":I
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_4

    .line 2316
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :catch_1
    move-exception v3

    .restart local v3    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    goto :goto_3
.end method

.method protected responseGetClir([B)Ljava/lang/Object;
    .locals 5
    .param p1, "clirInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1973
    const/4 v2, 0x0

    .line 1975
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 1977
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v1

    .line 1979
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 1981
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1982
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1989
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v2, "response":[I
    :cond_0
    new-array v2, v3, [I

    .local v2, "response":[I
    goto :goto_0
.end method

.method protected responseGetColr([B)Ljava/lang/Object;
    .locals 5
    .param p1, "colrInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1995
    const/4 v2, 0x0

    .line 1997
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 1999
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v1

    .line 2000
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2001
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2006
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v2, "response":[I
    :cond_0
    new-array v2, v3, [I

    .local v2, "response":[I
    goto :goto_0
.end method

.method protected responseHandover([B)Ljava/lang/Object;
    .locals 4
    .param p1, "handoverB"    # [B

    .prologue
    .line 2012
    const/4 v1, 0x0

    .line 2013
    .local v1, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2015
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2020
    .end local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :cond_0
    :goto_0
    return-object v1

    .line 2016
    .restart local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :catch_0
    move-exception v0

    .line 2017
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseImsRegistration([B)Ljava/lang/Object;
    .locals 4
    .param p1, "imsRegB"    # [B

    .prologue
    .line 1879
    const-string/jumbo v2, " responseImsRegistration"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1880
    const/4 v1, 0x0

    .line 1881
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1883
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    .line 1884
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ims registration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    .end local v1    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :goto_0
    return-object v1

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1889
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_0
    const-string/jumbo v2, "ImsSenderRxr"

    const-string/jumbo v3, "responseImsRegistration error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected responseQueryCallForward([B)Ljava/lang/Object;
    .locals 8
    .param p1, "callInfoList"    # [B

    .prologue
    .line 1896
    const/4 v4, 0x0

    .line 1897
    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .line 1899
    .local v5, "numInfos":I
    if-eqz p1, :cond_1

    .line 1901
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v3

    .line 1903
    .local v3, "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoCount()I

    move-result v5

    .line 1904
    new-array v4, v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1905
    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1906
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    .line 1909
    .local v0, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v4, v2

    .line 1910
    aget-object v6, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1911
    aget-object v6, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1912
    aget-object v6, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1913
    aget-object v6, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1914
    aget-object v6, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1915
    aget-object v6, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1918
    .end local v0    # "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .end local v2    # "i":I
    .end local v3    # "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .end local v4    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_0
    move-exception v1

    .line 1919
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v6, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1924
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    :goto_1
    return-object v4

    .line 1922
    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_1
    const/4 v6, 0x0

    new-array v4, v6, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    goto :goto_1
.end method

.method protected responseQueryCallWaiting([B)Ljava/lang/Object;
    .locals 6
    .param p1, "callWaitingInfo"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1928
    const/4 v1, 0x0

    .line 1930
    .local v1, "response":[I
    if-eqz p1, :cond_1

    .line 1932
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v3

    .line 1934
    .local v3, "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    .line 1936
    .local v2, "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 1937
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 1938
    .local v1, "response":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 1950
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :goto_0
    return-object v1

    .line 1940
    .local v1, "response":[I
    .restart local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .restart local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 1941
    .local v1, "response":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 1942
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1944
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :catch_0
    move-exception v0

    .line 1945
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1948
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "response":[I
    :cond_1
    new-array v1, v4, [I

    .local v1, "response":[I
    goto :goto_0
.end method

.method protected responseQueryClip([B)Ljava/lang/Object;
    .locals 5
    .param p1, "clipInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1954
    const/4 v2, 0x0

    .line 1956
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 1958
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    .line 1960
    .local v0, "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 1961
    .local v2, "response":[I
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    .end local v0    # "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 1962
    :catch_0
    move-exception v1

    .line 1963
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1967
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v2, "response":[I
    :cond_0
    new-array v2, v3, [I

    .local v2, "response":[I
    goto :goto_0
.end method

.method protected responseSuppServiceNotification([B)Ljava/lang/Object;
    .locals 4
    .param p1, "suppSrvNotification"    # [B

    .prologue
    .line 2067
    const/4 v1, 0x0

    .line 2068
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2071
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2076
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :cond_0
    :goto_0
    return-object v1

    .line 2072
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseSuppServiceNotification parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseSuppSvcStatus([B)Ljava/lang/Object;
    .locals 3
    .param p1, "suppSvcStatusInfo"    # [B

    .prologue
    .line 2453
    const/4 v1, 0x0

    .line 2455
    .local v1, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    if-eqz p1, :cond_0

    .line 2457
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2464
    .end local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :goto_0
    return-object v1

    .line 2458
    .restart local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :catch_0
    move-exception v0

    .line 2459
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2462
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    const-string/jumbo v2, "responseSuppSvcStatus suppSvcStatusInfo null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .prologue
    .line 1797
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    .line 1798
    .local v0, "resumeIF":Lorg/codeaurora/ims/ImsQmiIF$Resume;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    .line 1799
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->toByteArray()[B

    move-result-object v1

    .line 1800
    .local v1, "resumeb":[B
    const/16 v2, 0x26

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1796
    return-void
.end method

.method public send(Lorg/codeaurora/ims/IFRequest;)V
    .locals 4
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 701
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 702
    invoke-virtual {p1, v2, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 703
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 704
    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 709
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 711
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 698
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1824
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 1825
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 1826
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 1828
    .local v1, "dtmfb":[B
    const/16 v2, 0xd

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1823
    return-void
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 4
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImsRegistration imsRegState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1735
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 1736
    .local v0, "registerImsIF":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 1738
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->toByteArray()[B

    move-result-object v1

    .line 1740
    .local v1, "registerImsb":[B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1732
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCLIR clirmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2483
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    .line 2485
    .local v0, "clirValue":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 2486
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->toByteArray()[B

    move-result-object v1

    .line 2487
    .local v1, "setCLIRInfo":[B
    const/16 v2, 0x15

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2481
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCOLR presentationValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2694
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    .line 2696
    .local v0, "colrValue":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 2697
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->toByteArray()[B

    move-result-object v1

    .line 2698
    .local v1, "setCOLRInfo":[B
    const/16 v2, 0x22

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2692
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 2526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallForward cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2527
    const-string/jumbo v4, "number = "

    .line 2526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2527
    invoke-direct {p0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2527
    const-string/jumbo v4, "timeSeconds = "

    .line 2526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2529
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 2530
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 2531
    .local v1, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2532
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2533
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2534
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2535
    if-eqz p4, :cond_0

    .line 2536
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2537
    :cond_0
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2538
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 2539
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v2

    .line 2540
    .local v2, "setCallForwardInfo":[B
    const/16 v3, 0x17

    invoke-virtual {p0, v3, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2524
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .prologue
    .line 2547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCallForwardUncondTimer cfReason= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " serviceClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2548
    const-string/jumbo v7, "number = "

    .line 2547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2548
    const-string/jumbo v7, "startHour = "

    .line 2547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2549
    const-string/jumbo v7, "startMinute = "

    .line 2547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2549
    const-string/jumbo v7, "endHour = "

    .line 2547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2549
    const-string/jumbo v7, "endMin = "

    .line 2547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2550
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 2552
    .local v1, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 2553
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v2, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2554
    invoke-virtual {v2, p6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2555
    invoke-virtual {v2, p7}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2556
    invoke-static/range {p8 .. p8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2557
    if-eqz p8, :cond_0

    .line 2558
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2559
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2561
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 2562
    .local v5, "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2563
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2564
    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2566
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 2567
    .local v3, "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v3, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2568
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2569
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2571
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 2572
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v4

    .line 2573
    .local v4, "setCallForwardInfo":[B
    const/16 v6, 0x17

    move-object/from16 v0, p9

    invoke-virtual {p0, v6, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2546
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCallWaiting enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2503
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    .line 2504
    .local v2, "setCallWaiting":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 2505
    .local v1, "sc":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 2506
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 2508
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 2509
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->toByteArray()[B

    move-result-object v0

    .line 2510
    .local v0, "callWaitingSetInfo":[B
    const/16 v3, 0x19

    invoke-virtual {p0, v3, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2500
    return-void

    .line 2507
    .end local v0    # "callWaitingSetInfo":[B
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2618
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2619
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2617
    return-void

    .line 2618
    .end local v0    # "operation":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "operation":I
    goto :goto_0
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2520
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2519
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 303
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 302
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1445
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1442
    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;IIII)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "srvType"    # I
    .param p3, "network"    # I
    .param p4, "enabled"    # I
    .param p5, "restrictCause"    # I

    .prologue
    .line 1706
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 1707
    .local v1, "srvSetting":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1708
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1713
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1714
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    .line 1715
    .local v0, "srvInfo":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1716
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1717
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1718
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p0, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1705
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSuppServiceNotifications enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2469
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    .line 2470
    .local v1, "svcStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 2472
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->toByteArray()[B

    move-result-object v0

    .line 2473
    .local v0, "suppServiceNotif":[B
    const/16 v2, 0x1b

    invoke-virtual {p0, v2, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2467
    return-void

    .line 2471
    .end local v0    # "suppServiceNotif":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2637
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2638
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2636
    return-void

    .line 2637
    .end local v0    # "operation":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "operation":I
    goto :goto_0
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 5
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2627
    const-string/jumbo v2, "ImsSenderRxr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUiTTYMode uittyMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    .line 2630
    .local v0, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    .line 2631
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->toByteArray()[B

    move-result-object v1

    .line 2632
    .local v1, "setTtyInfo":[B
    const/16 v2, 0x27

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2626
    return-void
.end method

.method public setVideoQuality(ILandroid/os/Message;)V
    .locals 4
    .param p1, "quality"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2751
    const-string/jumbo v1, "ImsSenderRxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoQuality quality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;-><init>()V

    .line 2753
    .local v0, "msgQuality":Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    .line 2754
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2750
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1832
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 1833
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 1835
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 1837
    .local v1, "dtmfb":[B
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1831
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1841
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1840
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 4
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suppSvcStatus operationType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " facility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2679
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 2680
    .local v1, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2681
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2682
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v0

    .line 2683
    .local v0, "supsService":[B
    const/16 v2, 0x1f

    invoke-virtual {p0, v2, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2676
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClassValue"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "suppSvcStatus operationType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " facility = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2644
    const-string/jumbo v7, "serviceClassValue = "

    .line 2643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2646
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 2647
    .local v5, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2648
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2650
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 2651
    .local v3, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 2655
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 2656
    .local v1, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 2658
    if-eqz p3, :cond_0

    .line 2659
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 2661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "icbnum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v2

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->maskAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "at index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2663
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    .line 2664
    .local v0, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    aget-object v6, p3, v2

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 2665
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 2659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2669
    .end local v0    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2671
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v4

    .line 2672
    .local v4, "supsService":[B
    const/16 v6, 0x1f

    invoke-virtual {p0, v6, p5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2642
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1784
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 1785
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 1786
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1782
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;I)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchWaitingOrHoldingAndActive callType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1776
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 1777
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    .line 1778
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 1779
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1773
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 306
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 271
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1034
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1043
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 280
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 289
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 299
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 298
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1429
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1433
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1437
    return-void
.end method
