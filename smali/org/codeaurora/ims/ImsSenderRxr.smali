.class public final Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsPhoneCommandsInterface;


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

.field static final SOCKET_NAME_IF:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final TEST_MODE_SOCKET_NAME:Ljava/lang/String; = "imstestrunnersocket"

.field static sTestMode:Z


# instance fields
.field private mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field private mInstanceId:Ljava/lang/Integer;

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
.method static synthetic -get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    return-object v0
.end method

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
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    sput-boolean v2, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "qmux_radio/rild_ims0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "qmux_radio/rild_ims1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "qmux_radio/rild_ims2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->SOCKET_NAME_IF:[Ljava/lang/String;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 656
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

    .line 658
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 659
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 661
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 662
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "ImsSenderRxr"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 663
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 664
    const-string/jumbo v4, "ro.ril.wake_lock_timeout"

    .line 665
    const v5, 0xea60

    .line 664
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 666
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 667
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 668
    const-string/jumbo v4, "persist.qualcomm.imstestrunner"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 668
    :cond_0
    sput-boolean v3, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 671
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "IFMsg_Sender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    .line 672
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 674
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 675
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-direct {v3, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    .line 677
    const-string/jumbo v3, "Starting IFMsg_Rxr"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 678
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    .line 679
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    const-string/jumbo v5, "IFMsg_Rxr"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    .line 680
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 682
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 683
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 696
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 697
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 698
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 700
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 701
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 704
    return-void

    .line 696
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
    .line 834
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 835
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 836
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 837
    const-string/jumbo v3, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 838
    iget v6, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 839
    const-string/jumbo v6, " mRequestList="

    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 843
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 844
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 845
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

    .line 846
    iget v6, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    .line 845
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 849
    invoke-virtual {v2}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 852
    const/4 v3, 0x0

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 854
    return-void

    .line 834
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

    .line 2251
    if-eqz p2, :cond_4

    .line 2252
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    new-array p1, v3, [Lorg/codeaurora/ims/ServiceStatus;

    .line 2253
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

    .line 2254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2255
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2256
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 2257
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v3, p1, v1

    .line 2258
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v4

    iput-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2259
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2260
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v3

    if-lt v3, v7, :cond_1

    .line 2261
    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2270
    :goto_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2271
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2272
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    aget-object v3, p1, v1

    iput v7, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2277
    :goto_2
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2278
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2279
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v3, v4, v6}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2254
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2263
    :cond_1
    aget-object v3, p1, v1

    new-array v4, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2264
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v6

    .line 2265
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v3, v6

    .line 2266
    .local v0, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v3, 0xe

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2267
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2268
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    .line 2275
    .end local v0    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 2282
    :cond_3
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Null service status in list"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2286
    .end local v1    # "i":I
    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_4
    return-object p1
.end method

.method private disableSrvStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2160
    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "disableSrvStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 2163
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {v1, v3, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2162
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2165
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1272
    sparse-switch p0, :sswitch_data_0

    .line 1301
    const-string/jumbo v0, "E_UNKNOWN"

    .line 1304
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1274
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "SUCCESS"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1277
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "E_RADIO_NOT_AVAILABLE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1280
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "E_GENERIC_FAILURE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1283
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "E_REQUEST_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1286
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "E_CANCELLED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1289
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "E_UNUSED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1292
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "E_INVALID_PARAMETER"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1295
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "E_REJECTED_BY_REMOTE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1298
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "E_NETWORK_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1272
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
    .line 2769
    if-nez p0, :cond_0

    .line 2770
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2773
    :cond_0
    const-string/jumbo v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2774
    const/4 v0, 0x1

    return v0

    .line 2776
    :cond_1
    const-string/jumbo v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2777
    const/4 v0, 0x2

    return v0

    .line 2807
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 857
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 859
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/IFRequest;

    .line 861
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v3, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 862
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 864
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 865
    return-object v1

    .line 858
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    monitor-exit v4

    .line 870
    const/4 v3, 0x0

    return-object v3

    .line 857
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
    .line 2499
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

    .line 2502
    packed-switch p1, :pswitch_data_0

    .line 2517
    :pswitch_0
    const-string/jumbo v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2518
    const/16 v1, 0x3f5

    return v1

    .line 2504
    :pswitch_1
    const/16 v0, 0x1f6

    .line 2520
    .local v0, "failCause":I
    :goto_0
    return v0

    .line 2507
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f5

    .line 2508
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2510
    .end local v0    # "failCause":I
    :pswitch_3
    const/16 v0, 0x1f7

    .line 2511
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2513
    .end local v0    # "failCause":I
    :pswitch_4
    const/16 v0, 0x1f8

    .line 2514
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2502
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
    .line 2397
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v0

    .line 2398
    .local v0, "failCause":I
    const/4 v1, 0x0

    .line 2399
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

    .line 2401
    sparse-switch v0, :sswitch_data_0

    .line 2492
    const/4 v1, 0x0

    .line 2495
    :goto_0
    return v1

    .line 2405
    :sswitch_0
    const/16 v1, 0x141

    .line 2406
    goto :goto_0

    .line 2408
    :sswitch_1
    const/16 v1, 0x14b

    .line 2409
    goto :goto_0

    .line 2411
    :sswitch_2
    const/16 v1, 0x14c

    .line 2412
    goto :goto_0

    .line 2414
    :sswitch_3
    const/16 v1, 0x14d

    .line 2415
    goto :goto_0

    .line 2417
    :sswitch_4
    const/16 v1, 0x14e

    .line 2418
    goto :goto_0

    .line 2420
    :sswitch_5
    const/16 v1, 0x14f

    .line 2421
    goto :goto_0

    .line 2423
    :sswitch_6
    const/16 v1, 0x150

    .line 2424
    goto :goto_0

    .line 2426
    :sswitch_7
    const/16 v1, 0x151

    .line 2427
    goto :goto_0

    .line 2429
    :sswitch_8
    const/16 v1, 0x152

    .line 2430
    goto :goto_0

    .line 2432
    :sswitch_9
    const/16 v1, 0x153

    .line 2433
    goto :goto_0

    .line 2435
    :sswitch_a
    const/16 v1, 0x154

    .line 2436
    goto :goto_0

    .line 2438
    :sswitch_b
    const/16 v1, 0x155

    .line 2439
    goto :goto_0

    .line 2441
    :sswitch_c
    const/16 v1, 0x15f

    .line 2442
    goto :goto_0

    .line 2444
    :sswitch_d
    const/16 v1, 0x160

    .line 2445
    goto :goto_0

    .line 2447
    :sswitch_e
    const/16 v1, 0x161

    .line 2448
    goto :goto_0

    .line 2450
    :sswitch_f
    const/16 v1, 0x169

    .line 2451
    goto :goto_0

    .line 2453
    :sswitch_10
    const/16 v1, 0x16a

    .line 2454
    goto :goto_0

    .line 2457
    :sswitch_11
    const/16 v1, 0x191

    .line 2458
    goto :goto_0

    .line 2460
    :sswitch_12
    const/16 v1, 0x192

    .line 2461
    goto :goto_0

    .line 2463
    :sswitch_13
    const/16 v1, 0x193

    .line 2464
    goto :goto_0

    .line 2466
    :sswitch_14
    const/16 v1, 0x194

    .line 2467
    goto :goto_0

    .line 2470
    :sswitch_15
    const/16 v1, 0x1f5

    .line 2471
    goto :goto_0

    .line 2473
    :sswitch_16
    const/16 v1, 0x152

    .line 2474
    goto :goto_0

    .line 2476
    :sswitch_17
    const/16 v1, 0x150

    .line 2477
    goto :goto_0

    .line 2479
    :sswitch_18
    const/16 v1, 0x3f6

    .line 2480
    goto :goto_0

    .line 2482
    :sswitch_19
    const/16 v1, 0xf1

    .line 2483
    goto :goto_0

    .line 2401
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0xf1 -> :sswitch_19
        0x3f2 -> :sswitch_17
        0x3f6 -> :sswitch_18
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

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1309
    sparse-switch p0, :sswitch_data_0

    .line 1421
    const-string/jumbo v0, "<unknown message>"

    return-object v0

    .line 1311
    :sswitch_0
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1313
    :sswitch_1
    const-string/jumbo v0, "DIAL"

    return-object v0

    .line 1315
    :sswitch_2
    const-string/jumbo v0, "REQUEST_ANSWER"

    return-object v0

    .line 1317
    :sswitch_3
    const-string/jumbo v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 1319
    :sswitch_4
    const-string/jumbo v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 1321
    :sswitch_5
    const-string/jumbo v0, "HANGUP"

    return-object v0

    .line 1323
    :sswitch_6
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1325
    :sswitch_7
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1327
    :sswitch_8
    const-string/jumbo v0, "ImsQmiIF.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1329
    :sswitch_9
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    .line 1331
    :sswitch_a
    const-string/jumbo v0, "UDUB"

    return-object v0

    .line 1333
    :sswitch_b
    const-string/jumbo v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1335
    :sswitch_c
    const-string/jumbo v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1337
    :sswitch_d
    const-string/jumbo v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1339
    :sswitch_e
    const-string/jumbo v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1341
    :sswitch_f
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1343
    :sswitch_10
    const-string/jumbo v0, "DTMF"

    return-object v0

    .line 1345
    :sswitch_11
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    .line 1347
    :sswitch_12
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    .line 1349
    :sswitch_13
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1351
    :sswitch_14
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1353
    :sswitch_15
    const-string/jumbo v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 1355
    :sswitch_16
    const-string/jumbo v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1357
    :sswitch_17
    const-string/jumbo v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1359
    :sswitch_18
    const-string/jumbo v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1361
    :sswitch_19
    const-string/jumbo v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1363
    :sswitch_1a
    const-string/jumbo v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1365
    :sswitch_1b
    const-string/jumbo v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1367
    :sswitch_1c
    const-string/jumbo v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1369
    :sswitch_1d
    const-string/jumbo v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1371
    :sswitch_1e
    const-string/jumbo v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1373
    :sswitch_1f
    const-string/jumbo v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1375
    :sswitch_20
    const-string/jumbo v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1377
    :sswitch_21
    const-string/jumbo v0, "REQUEST_QUERY_VT_CALL_QUALITY"

    return-object v0

    .line 1379
    :sswitch_22
    const-string/jumbo v0, "REQUEST_SET_VT_CALL_QUALITY"

    return-object v0

    .line 1381
    :sswitch_23
    const-string/jumbo v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1383
    :sswitch_24
    const-string/jumbo v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1385
    :sswitch_25
    const-string/jumbo v0, "REQUEST_HOLD"

    return-object v0

    .line 1387
    :sswitch_26
    const-string/jumbo v0, "REQUEST_RESUME"

    return-object v0

    .line 1389
    :sswitch_27
    const-string/jumbo v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 1391
    :sswitch_28
    const-string/jumbo v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 1393
    :sswitch_29
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1395
    :sswitch_2a
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1397
    :sswitch_2b
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1399
    :sswitch_2c
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1401
    :sswitch_2d
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1403
    :sswitch_2e
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1405
    :sswitch_2f
    const-string/jumbo v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1407
    :sswitch_30
    const-string/jumbo v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1409
    :sswitch_31
    const-string/jumbo v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1411
    :sswitch_32
    const-string/jumbo v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1413
    :sswitch_33
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1415
    :sswitch_34
    const-string/jumbo v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1417
    :sswitch_35
    const-string/jumbo v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1419
    :sswitch_36
    const-string/jumbo v0, "UNSOL_MWI"

    return-object v0

    .line 1309
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_f
        0x6 -> :sswitch_0
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_14
        0xc -> :sswitch_13
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_a
        0x11 -> :sswitch_c
        0x12 -> :sswitch_d
        0x13 -> :sswitch_16
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1b
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_2f
        0x1b -> :sswitch_1f
        0x1c -> :sswitch_4
        0x1d -> :sswitch_17
        0x1e -> :sswitch_18
        0x1f -> :sswitch_20
        0x20 -> :sswitch_3
        0x21 -> :sswitch_23
        0x22 -> :sswitch_24
        0x23 -> :sswitch_21
        0x24 -> :sswitch_22
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_b
        0x2c -> :sswitch_27
        0x2d -> :sswitch_28
        0xc9 -> :sswitch_2a
        0xca -> :sswitch_2b
        0xcb -> :sswitch_2d
        0xcc -> :sswitch_29
        0xcd -> :sswitch_2c
        0xce -> :sswitch_2e
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_30
        0xd1 -> :sswitch_31
        0xd2 -> :sswitch_32
        0xd3 -> :sswitch_33
        0xd4 -> :sswitch_34
        0xd5 -> :sswitch_35
        0xd6 -> :sswitch_36
    .end sparse-switch
.end method

.method private processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;)[B
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    .line 1564
    const/4 v4, 0x0

    .line 1565
    .local v4, "isConferenceUri":Z
    if-eqz p3, :cond_0

    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1566
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1567
    const-string/jumbo v7, "isConferenceUri"

    .line 1566
    invoke-virtual {p3, v6, v7}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1568
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1569
    const/4 v4, 0x1

    .line 1573
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

    .line 1574
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1575
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    if-eqz p3, :cond_1

    .line 1576
    iget v6, p3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1577
    iget v6, p3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1579
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1580
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 1581
    iget-object v6, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1582
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

    .line 1580
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1588
    .end local v3    # "i":I
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    .line 1589
    .local v1, "dialIF":Lorg/codeaurora/ims/ImsQmiIF$Dial;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1590
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1591
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1592
    packed-switch p2, :pswitch_data_0

    .line 1599
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1603
    :goto_1
    if-eqz v4, :cond_2

    .line 1604
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1607
    :cond_2
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->toByteArray()[B

    move-result-object v2

    .line 1608
    .local v2, "dialb":[B
    return-object v2

    .line 1594
    .end local v2    # "dialb":[B
    :pswitch_0
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_1

    .line 1592
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

    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 493
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 495
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 496
    const-string/jumbo v4, "ImsSenderRxr"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v7

    .line 500
    :cond_1
    add-int/2addr v2, v0

    .line 501
    sub-int/2addr v3, v0

    .line 502
    if-gtz v3, :cond_0

    .line 504
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 505
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 504
    or-int/2addr v4, v5

    .line 506
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 504
    or-int/2addr v4, v5

    .line 507
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 504
    or-int v1, v4, v5

    .line 510
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 511
    move v3, v1

    .line 513
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 515
    if-gez v0, :cond_3

    .line 516
    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 517
    const-string/jumbo v6, " remaining="

    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return v7

    .line 521
    :cond_3
    add-int/2addr v2, v0

    .line 522
    sub-int/2addr v3, v0

    .line 523
    if-gtz v3, :cond_2

    .line 525
    return v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 708
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    .line 710
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 715
    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private responseCallFailCause([B)Ljava/lang/Object;
    .locals 4
    .param p1, "callFailB"    # [B

    .prologue
    .line 1881
    const-string/jumbo v2, " responseCallFailCause "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1882
    const/4 v0, 0x0

    .line 1885
    .local v0, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    .line 1887
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

    .line 1892
    .end local v0    # "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :goto_0
    return-object v0

    .line 1888
    :catch_0
    move-exception v1

    .line 1889
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1890
    const-string/jumbo v2, "InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseCallRingBack([B)Ljava/lang/Object;
    .locals 5
    .param p1, "ringBackB"    # [B

    .prologue
    .line 1897
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 1898
    .local v1, "response":[I
    const-string/jumbo v3, " responseCallRingBack "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1901
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v2

    .line 1904
    .local v2, "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 1905
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

    .line 1910
    .end local v2    # "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    :goto_0
    return-object v1

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1908
    const-string/jumbo v3, "InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseConfig([B)Ljava/lang/Object;
    .locals 4
    .param p1, "response"    # [B

    .prologue
    .line 2071
    const/4 v0, 0x0

    .line 2073
    .local v0, "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    .line 2074
    .local v0, "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2075
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 2076
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2077
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 2078
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2079
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2080
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2081
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2085
    .end local v0    # "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    :catch_0
    move-exception v2

    .line 2086
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2088
    .end local v2    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_3
    :goto_0
    return-object v0

    .line 2083
    :catch_1
    move-exception v1

    .line 2084
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "NullPointerException in responseConfig"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseModifyCall([B)Ljava/lang/Object;
    .locals 6
    .param p1, "message"    # [B

    .prologue
    .line 1231
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1233
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v1

    .line 1234
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1235
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1236
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1237
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1238
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    .line 1239
    .local v3, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1240
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v4

    iput v4, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1241
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v4

    :goto_0
    iput v4, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1243
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

    .line 1247
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 1242
    .restart local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .restart local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1244
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1245
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

    .line 1251
    if-nez p1, :cond_0

    .line 1252
    const-string/jumbo v3, "responseQueryVideoCallQuality failed, message is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1267
    :goto_0
    return-object v5

    .line 1255
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    move-result-object v2

    .line 1256
    .local v2, "vQuality":Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->hasQuality()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1257
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->getQuality()I

    move-result v1

    .line 1258
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

    .line 1259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 1261
    .end local v1    # "quality":I
    :cond_1
    const-string/jumbo v3, "responseQueryVideoCallQuality failed. Quality is not set."

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1263
    .end local v2    # "vQuality":Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    :catch_0
    move-exception v0

    .line 1264
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

    .line 1008
    if-nez p2, :cond_0

    .line 1009
    const-string/jumbo v10, ""

    return-object v10

    .line 1014
    :cond_0
    instance-of v10, p2, [I

    if-eqz v10, :cond_2

    move-object v5, p2

    .line 1015
    check-cast v5, [I

    .line 1016
    .local v5, "intArray":[I
    array-length v6, v5

    .line 1017
    .local v6, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_1

    .line 1019
    const/4 v3, 0x0

    .line 1020
    .local v3, "i":I
    const/4 v3, 0x1

    aget v10, v5, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1021
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 1022
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

    .line 1025
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1051
    .end local v5    # "intArray":[I
    .end local v6    # "length":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v7, "s":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 1027
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    instance-of v10, p2, [Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v9, p2

    .line 1028
    check-cast v9, [Ljava/lang/String;

    .line 1029
    .local v9, "strings":[Ljava/lang/String;
    array-length v6, v9

    .line 1030
    .restart local v6    # "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1031
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_3

    .line 1032
    const/4 v3, 0x0

    .line 1033
    .restart local v3    # "i":I
    const/4 v3, 0x1

    aget-object v10, v9, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1034
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 1035
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

    .line 1038
    .end local v4    # "i":I
    :cond_3
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1040
    .end local v6    # "length":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v10, 0xc9

    if-eq p1, v10, :cond_5

    .line 1041
    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    :cond_5
    move-object v0, p2

    .line 1042
    check-cast v0, Ljava/util/ArrayList;

    .line 1043
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
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

    .line 1045
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1047
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1049
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
    .line 1767
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

    .line 1768
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1769
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1770
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1772
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    .line 1773
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1774
    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 1779
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->toByteArray()[B

    move-result-object v2

    .line 1780
    .local v2, "callModifyb":[B
    return-object v2
.end method

.method private unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V
    .locals 5
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$Info;
    .param p2, "srvSt"    # Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 2168
    const/4 v1, 0x0

    .line 2170
    .local v1, "numAccessTechUpdate":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v1

    .line 2172
    new-array v3, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2174
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2175
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v2

    .line 2176
    .local v2, "update":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v0

    .line 2178
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2179
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2180
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2181
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2183
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2190
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

    .line 2191
    const-string/jumbo v4, " status = "

    .line 2190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2191
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2192
    const-string/jumbo v4, " restrictCause = "

    .line 2190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2192
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2193
    const-string/jumbo v4, " registered = "

    .line 2190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2193
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2174
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2186
    :cond_0
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2188
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Registered not sent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2195
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
    .line 1632
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

    .line 1633
    move v2, p2

    .line 1634
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1635
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1636
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1638
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1639
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .prologue
    .line 1654
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

    .line 1655
    move v2, p2

    .line 1656
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1657
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1658
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1659
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1661
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1662
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addParticipant address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1614
    const-string/jumbo v2, " callDetails= "

    .line 1613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1615
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;)[B

    move-result-object v0

    .line 1617
    .local v0, "dialb":[B
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1618
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1834
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1835
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deflect call to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "connid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1643
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    .line 1644
    .local v0, "deflectCall":Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1645
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1646
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->toByteArray()[B

    move-result-object v1

    .line 1648
    .local v1, "deflectCallb":[B
    const/16 v2, 0x20

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1649
    return-void
.end method

.method public dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dial address= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "clirMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1624
    const-string/jumbo v2, " callDetails= "

    .line 1623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1625
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;)[B

    move-result-object v0

    .line 1627
    .local v0, "dialb":[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1628
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1475
    const-string/jumbo v3, "IMS INTERFACE:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
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

    .line 1477
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

    .line 1478
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

    .line 1479
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

    .line 1480
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

    .line 1481
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

    .line 1482
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

    .line 1483
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1484
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

    .line 1485
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

    .line 1486
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1487
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

    .line 1488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1489
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 1490
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

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    monitor-exit v4

    .line 1493
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

    .line 1494
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

    .line 1495
    return-void

    .line 1483
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
    .line 1500
    const/4 v6, 0x0

    .line 1501
    .local v6, "msgLen":I
    const/4 v4, 0x0

    .line 1502
    .local v4, "index":I
    const/4 v10, 0x0

    .line 1503
    .local v10, "totalPacketLen":I
    invoke-static/range {p1 .. p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1506
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    new-instance v7, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    .line 1507
    .local v7, "msgtag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1508
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1509
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1510
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1511
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->toByteArray()[B

    move-result-object v9

    .line 1513
    .local v9, "tagb":[B
    if-eqz p3, :cond_0

    .line 1514
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1522
    :cond_0
    array-length v11, v9

    add-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v6

    add-int/lit8 v10, v11, 0x1

    .line 1523
    new-array v11, v10, [B

    iput-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1526
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1501
    const/4 v12, 0x0

    .line 1526
    const/4 v4, 0x1

    iget-object v13, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    const/4 v14, 0x0

    aput-byte v14, v13, v4

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    .line 1527
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v12, v10, -0x4

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1528
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    add-int/lit8 v12, v10, -0x4

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    .line 1530
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    array-length v12, v9

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1533
    :try_start_0
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v11, v4, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :goto_0
    if-lez v6, :cond_1

    .line 1544
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

    .line 1555
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

    .line 1556
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

    .line 1559
    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->send(Lorg/codeaurora/ims/IFRequest;)V

    .line 1560
    return-void

    .line 1538
    :catch_0
    move-exception v3

    .line 1539
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1536
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1537
    .local v1, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v2

    .line 1535
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1549
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 1550
    .restart local v3    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1547
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 1548
    .restart local v1    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1545
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_5
    move-exception v2

    .line 1546
    .restart local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2682
    const-string/jumbo v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2683
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2684
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1838
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1839
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2548
    const-string/jumbo v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2549
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2550
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2755
    const-string/jumbo v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2756
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2757
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1745
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1746
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1750
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1751
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1719
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1720
    return-void
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2700
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2701
    return-void
.end method

.method protected handleMwi([B)Ljava/lang/Object;
    .locals 4
    .param p1, "mwiNotification"    # [B

    .prologue
    .line 2122
    const/4 v1, 0x0

    .line 2123
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2125
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2130
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :cond_0
    :goto_0
    return-object v1

    .line 2126
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :catch_0
    move-exception v0

    .line 2127
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

    .line 2092
    const/4 v1, 0x0

    .line 2093
    .local v1, "response":[I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    .line 2095
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v2

    .line 2097
    .local v2, "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2098
    .local v1, "response":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2099
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2110
    const-string/jumbo v3, "ImsSenderRxr"

    const-string/jumbo v4, "Invalid state in Radio State Change"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :cond_0
    :goto_0
    return-object v1

    .line 2101
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_0
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2114
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :catch_0
    move-exception v0

    .line 2115
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleRadioStateChange parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2104
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_1
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    goto :goto_0

    .line 2107
    :sswitch_2
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2099
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
    .line 2148
    const/4 v1, 0x0

    .line 2149
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2151
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2156
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2152
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :catch_0
    move-exception v0

    .line 2153
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSrvStatus([B)Ljava/lang/Object;
    .locals 11
    .param p1, "updateList"    # [B

    .prologue
    .line 2198
    const/4 v4, 0x0

    .line 2199
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v3, 0x0

    .line 2201
    .local v3, "num":I
    if-eqz p1, :cond_2

    .line 2203
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v7

    .line 2204
    .local v7, "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    .line 2205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2209
    :try_start_1
    invoke-virtual {v7, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2210
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    new-instance v6, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v6}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 2211
    .local v6, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v8

    iput-boolean v8, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2212
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2213
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2214
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2215
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2216
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2218
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

    .line 2219
    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2218
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2219
    const-string/jumbo v9, " userdata = "

    .line 2218
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2219
    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2218
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2221
    invoke-direct {p0, v2, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2222
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2208
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    .end local v6    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    move-object v4, v5

    .line 2231
    .end local v1    # "i":I
    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .end local v7    # "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :goto_1
    return-object v4

    .line 2224
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :catch_0
    move-exception v0

    .line 2225
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_2
    const-string/jumbo v8, "InvalidProtocolBufferException in handleSrvStatus parsing"

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2229
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto :goto_1

    .line 2224
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
    .line 2235
    const/4 v1, 0x0

    .line 2236
    .local v1, "mode":[I
    if-eqz p1, :cond_0

    .line 2238
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v2

    .line 2239
    .local v2, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2240
    .local v1, "mode":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2241
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

    .line 2246
    .end local v1    # "mode":[I
    .end local v2    # "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    :cond_0
    :goto_0
    return-object v1

    .line 2242
    :catch_0
    move-exception v0

    .line 2243
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
    .line 1666
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

    .line 1667
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1668
    .local v0, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1669
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1670
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v1

    .line 1671
    .local v1, "hangupb":[B
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1672
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1826
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1827
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1830
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1831
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
    .line 1677
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

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " confUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1678
    const-string/jumbo v6, "mpty = "

    .line 1677
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1678
    const-string/jumbo v6, "failCause = "

    .line 1677
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1679
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1684
    .local v3, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 1685
    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1687
    :cond_0
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1688
    if-eqz p2, :cond_1

    .line 1689
    invoke-virtual {v3, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1690
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 1691
    .local v1, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1692
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

    .line 1693
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1694
    .local v2, "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1697
    .end local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_2
    invoke-direct {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->getCallFailCauseForImsReason(I)I

    move-result v0

    .line 1698
    .local v0, "callFailCause":I
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1699
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

    .line 1702
    const/16 v5, 0x3f5

    if-ne v0, v5, :cond_3

    .line 1703
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1705
    .restart local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1706
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

    .line 1708
    .end local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_3
    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1713
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v4

    .line 1714
    .local v4, "hangupb":[B
    const/4 v5, 0x4

    invoke-virtual {p0, v5, p7, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1715
    return-void
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .prologue
    .line 1812
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    .line 1813
    .local v0, "holdIF":Lorg/codeaurora/ims/ImsQmiIF$Hold;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    .line 1814
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->toByteArray()[B

    move-result-object v1

    .line 1815
    .local v1, "holdb":[B
    const/16 v2, 0x25

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1816
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1427
    const-string/jumbo v0, "ImsSenderRxr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void
.end method

.method public logUnimplemented()V
    .locals 3

    .prologue
    .line 1443
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1444
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1446
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ImsSenderRxr"

    const-string/jumbo v2, "Unimplemented method. Stack trace: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1449
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1435
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 1790
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

    .line 1791
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 1792
    .local v0, "callModifyb":[B
    const/16 v1, 0x12

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1793
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 1784
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

    .line 1785
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 1786
    .local v0, "callModifyb":[B
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1787
    return-void
.end method

.method public processResponse([BI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 736
    const/4 v6, 0x1

    .line 737
    .local v6, "msglen":I
    const/4 v7, 0x0

    .line 738
    .local v7, "startIndex":I
    const/4 v0, 0x1

    .line 739
    .local v0, "endIndex":I
    const/4 v5, 0x0

    .line 741
    .local v5, "msg":[B
    const-string/jumbo v9, "processResponse"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 748
    if-gt v0, p2, :cond_2

    .line 749
    aget-byte v6, p1, v7

    .line 752
    const/4 v8, 0x0

    .line 753
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    move v7, v0

    .line 754
    add-int/lit8 v0, v6, 0x1

    .line 756
    if-gt v0, p2, :cond_1

    if-lez v6, :cond_1

    .line 758
    new-array v5, v6, [B

    .line 761
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 763
    invoke-static {v5}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 781
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

    .line 782
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v10

    .line 781
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 782
    const-string/jumbo v10, " "

    .line 781
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 782
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v10

    .line 781
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 785
    move v7, v0

    .line 786
    sub-int v6, p2, v0

    .line 787
    add-int/2addr v0, v6

    .line 789
    const/4 v5, 0x0

    .line 790
    .local v5, "msg":[B
    if-gt v0, p2, :cond_0

    if-lez v6, :cond_0

    .line 791
    new-array v5, v6, [B

    .line 793
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 805
    .end local v5    # "msg":[B
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 813
    const-string/jumbo v9, " Unknown Message Type  "

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 823
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 824
    return-void

    .line 776
    .restart local v5    # "msg":[B
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_0
    move-exception v1

    .line 777
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v9, "InvalidProtocolBufferException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 778
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 779
    return-void

    .line 772
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :catch_1
    move-exception v4

    .line 773
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 775
    return-void

    .line 768
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 769
    .local v2, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 770
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 771
    return-void

    .line 764
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_3
    move-exception v3

    .line 765
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 767
    return-void

    .line 798
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_4
    move-exception v4

    .line 799
    .restart local v4    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v2

    .line 797
    .restart local v2    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_6
    move-exception v3

    .line 795
    .restart local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 807
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "msg":[B
    :pswitch_0
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 810
    :pswitch_1
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 818
    .local v5, "msg":[B
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_1
    const-string/jumbo v9, "Error in parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 821
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_2
    const-string/jumbo v9, "Error in parsing msg tag length"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 805
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

    .line 874
    const/4 v1, 0x0

    .line 876
    .local v1, "found":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v5

    .line 877
    .local v5, "serial":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    .line 878
    .local v0, "error":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v2

    .line 882
    .local v2, "id":I
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v4

    .line 884
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v4, :cond_0

    .line 885
    const-string/jumbo v7, "ImsSenderRxr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 886
    const-string/jumbo v9, " error: "

    .line 885
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void

    .line 890
    :cond_0
    const/4 v3, 0x0

    .line 892
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    array-length v7, p2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    .line 895
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 970
    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 971
    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 970
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :catch_0
    move-exception v6

    .line 976
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

    .line 977
    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v9}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v9

    .line 976
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 977
    const-string/jumbo v9, "[SUB"

    .line 976
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 977
    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 976
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 977
    const-string/jumbo v9, "]"

    .line 976
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 978
    const-string/jumbo v9, " exception, possible invalid response"

    .line 976
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 981
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 982
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 984
    :cond_2
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 985
    return-void

    .line 897
    .end local v6    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 988
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_0
    :pswitch_2
    if-eqz v0, :cond_4

    .line 989
    invoke-virtual {v4, v0, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 990
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 991
    return-void

    .line 900
    .restart local v3    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 901
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_3

    .line 902
    const-string/jumbo v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 903
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 909
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 912
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallFailCause([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 915
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetClir([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 918
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallForward([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 921
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallWaiting([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 924
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryClip([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 927
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 932
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppSvcStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 935
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryVideoCallQuality([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 938
    :pswitch_d
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetColr([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 967
    :pswitch_e
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseConfig([B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 995
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

    .line 996
    const-string/jumbo v8, " "

    .line 995
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 996
    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-direct {p0, v8, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 995
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 998
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_5

    .line 999
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1000
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1003
    :cond_5
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1004
    return-void

    .line 895
    nop

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
        :pswitch_2
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method protected processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 9
    .param p1, "tag"    # Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .param p2, "message"    # [B

    .prologue
    const/4 v8, 0x0

    .line 1073
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    .line 1074
    .local v1, "response":I
    const/4 v2, 0x0

    .line 1077
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 1120
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

    .line 1122
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 1123
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception processing unsol response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1124
    const-string/jumbo v6, "Exception:"

    .line 1123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1124
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 1079
    .end local v3    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_0
    if-eqz p2, :cond_0

    :try_start_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallRingBack([B)Ljava/lang/Object;

    move-result-object v2

    .line 1128
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1228
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 1083
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1086
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1090
    :pswitch_4
    const/4 v2, 0x0

    .line 1091
    goto :goto_0

    .line 1093
    :pswitch_5
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseModifyCall([B)Ljava/lang/Object;

    move-result-object v2

    .line 1094
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1095
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 1096
    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1095
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1099
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_6
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseHandover([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1102
    :pswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1105
    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1108
    :pswitch_9
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleTtyNotify([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1111
    :pswitch_a
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppServiceNotification([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1114
    :pswitch_b
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRadioStateChange([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1117
    :pswitch_c
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleMwi([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1131
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_d
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1133
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 1134
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1133
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1138
    :pswitch_e
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1139
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 1140
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1139
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 1144
    :pswitch_f
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1146
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1147
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    .line 1148
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1147
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1153
    :pswitch_10
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1155
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1156
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 1161
    :pswitch_11
    const/4 v0, 0x0

    .line 1163
    .local v0, "playtone":Z
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1164
    if-eqz v2, :cond_3

    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v0, 0x1

    .line 1165
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1166
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 1167
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1166
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1164
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1172
    .end local v0    # "playtone":Z
    :pswitch_12
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1174
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1175
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 1176
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1175
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1181
    :pswitch_13
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1182
    if-eqz v2, :cond_1

    .line 1183
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 1184
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1183
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1189
    :pswitch_14
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1190
    if-eqz v2, :cond_1

    .line 1191
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 1192
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1191
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1197
    :pswitch_15
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1198
    if-eqz v2, :cond_1

    .line 1199
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 1200
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1199
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1205
    :pswitch_16
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1206
    if-eqz v2, :cond_1

    .line 1207
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 1208
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1207
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1213
    :pswitch_17
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1214
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1215
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 1216
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1215
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1221
    :pswitch_18
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1222
    if-eqz v2, :cond_1

    .line 1223
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 1224
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1223
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1077
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

    .line 1128
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
    .line 2667
    const-string/jumbo v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2668
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2669
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForwardStatus cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2650
    const-string/jumbo v4, " serviceClass = "

    .line 2649
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2650
    const-string/jumbo v4, "number = "

    .line 2649
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2651
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 2652
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 2653
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2654
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2655
    invoke-virtual {v2, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2656
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2657
    if-eqz p3, :cond_0

    .line 2658
    invoke-virtual {v2, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2659
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2660
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 2661
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v1

    .line 2662
    .local v1, "callForwardQuery":[B
    const/16 v3, 0x16

    invoke-virtual {p0, v3, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2664
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2562
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

    .line 2563
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 2564
    .local v0, "callWaitingQuery":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 2565
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->toByteArray()[B

    move-result-object v1

    .line 2566
    .local v1, "callWaitingQueryInfo":[B
    const/16 v2, 0x18

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2568
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2689
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2690
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2586
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2587
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1723
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1724
    return-void
.end method

.method public queryVideoQuality(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2812
    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "queryVideoQuality"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2814
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 280
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 282
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1055
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1056
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1057
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1064
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1065
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1066
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 268
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    .line 269
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "ImsSenderRxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' socket closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 289
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 291
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 298
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 300
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 307
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 308
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 309
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1842
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1843
    return-void
.end method

.method protected responseCallList([B)Ljava/lang/Object;
    .locals 15
    .param p1, "callListB"    # [B

    .prologue
    .line 2290
    const/4 v10, 0x0

    .line 2291
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v9, 0x0

    .line 2293
    .local v9, "num":I
    if-eqz p1, :cond_5

    .line 2295
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v1

    .line 2296
    .local v1, "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesCount()I

    move-result v9

    .line 2301
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2303
    .end local v10    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v11, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_4

    .line 2304
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributes(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v0

    .line 2305
    .local v0, "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    new-instance v2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v2}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 2307
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v12

    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->stateFromCall(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2308
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2309
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2310
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2311
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2312
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2313
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2314
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v12

    iput-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2315
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2316
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v8

    .line 2317
    .local v8, "np":I
    invoke-static {v8}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2318
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2320
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v12

    .line 2319
    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2322
    new-instance v12, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v12}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2323
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2324
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 2325
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 2326
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v13

    iput v13, v12, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 2327
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v4

    .line 2328
    .local v4, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    iput-object v12, v13, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 2329
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v13, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2330
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v14

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v14

    .line 2329
    invoke-direct {p0, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2331
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v13, v13, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2332
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v14

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v14

    .line 2331
    invoke-direct {p0, v13, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2336
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v13, v2, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2341
    new-instance v12, Lcom/android/ims/ImsReasonInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 2340
    iput-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2343
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2344
    const/4 v7, 0x0

    .line 2346
    .local v7, "networkError":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasNetworkErrorString()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2347
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getNetworkErrorString()Ljava/lang/String;

    move-result-object v7

    .line 2352
    .local v7, "networkError":Ljava/lang/String;
    const-string/jumbo v12, "Forbidden. Not Authorized for Service"

    .line 2351
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2353
    const-string/jumbo v12, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent."

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2354
    new-instance v6, Landroid/content/Intent;

    .line 2355
    const-string/jumbo v12, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    .line 2354
    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2356
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2357
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2361
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "networkError":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v12

    invoke-virtual {v12}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2362
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2363
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v13

    invoke-direct {p0, v13}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I

    move-result v13

    .line 2362
    iput v13, v12, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 2366
    if-eqz v7, :cond_1

    .line 2367
    iget-object v12, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    iput-object v7, v12, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 2374
    :cond_1
    :goto_1
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    iget-boolean v12, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v12, :cond_3

    .line 2377
    iget-object v12, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2378
    const-string/jumbo v12, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2303
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2370
    :cond_2
    const-string/jumbo v12, "CallFailCauseResponse has no int error code!"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2386
    .end local v0    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v4    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "np":I
    :catch_0
    move-exception v3

    .local v3, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    move-object v10, v11

    .line 2387
    .end local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v5    # "i":I
    .end local v11    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_3
    const-string/jumbo v12, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2393
    .end local v3    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_4
    return-object v10

    .line 2380
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

    .line 2381
    const-string/jumbo v12, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2385
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

    .line 2391
    .end local v1    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v5    # "i":I
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_4

    .line 2386
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

    .line 2020
    const/4 v2, 0x0

    .line 2022
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2024
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v1

    .line 2026
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2028
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2029
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 2030
    :catch_0
    move-exception v0

    .line 2031
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2036
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

    .line 2042
    const/4 v2, 0x0

    .line 2044
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2046
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v1

    .line 2047
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2048
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2053
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
    .line 2059
    const/4 v1, 0x0

    .line 2060
    .local v1, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2062
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2067
    .end local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :cond_0
    :goto_0
    return-object v1

    .line 2063
    .restart local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :catch_0
    move-exception v0

    .line 2064
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseImsRegistration([B)Ljava/lang/Object;
    .locals 4
    .param p1, "imsRegB"    # [B

    .prologue
    .line 1914
    const-string/jumbo v2, " responseImsRegistration"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1915
    const/4 v1, 0x0

    .line 1916
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1918
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    .line 1919
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

    .line 1926
    .end local v1    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :goto_0
    return-object v1

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1924
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_0
    const-string/jumbo v2, "ImsSenderRxr"

    const-string/jumbo v3, "responseImsRegistration error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected responseQueryCallForward([B)Ljava/lang/Object;
    .locals 9
    .param p1, "callInfoList"    # [B

    .prologue
    .line 1931
    const/4 v4, 0x0

    .line 1932
    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .line 1934
    .local v5, "numInfos":I
    if-eqz p1, :cond_2

    .line 1936
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v3

    .line 1938
    .local v3, "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoCount()I

    move-result v5

    .line 1939
    new-array v4, v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1940
    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1941
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    .line 1944
    .local v0, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v4, v2

    .line 1945
    aget-object v7, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1946
    aget-object v7, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1947
    aget-object v7, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1948
    aget-object v7, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1949
    aget-object v7, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1950
    aget-object v7, v4, v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1951
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1952
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v7

    .line 1951
    if-eqz v7, :cond_0

    .line 1954
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1940
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1965
    .end local v0    # "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .end local v2    # "i":I
    .end local v3    # "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .end local v4    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_0
    move-exception v1

    .line 1966
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v7, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1971
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_1
    :goto_1
    return-object v4

    .line 1969
    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/4 v7, 0x0

    new-array v4, v7, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v4, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    goto :goto_1
.end method

.method protected responseQueryCallWaiting([B)Ljava/lang/Object;
    .locals 6
    .param p1, "callWaitingInfo"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1975
    const/4 v1, 0x0

    .line 1977
    .local v1, "response":[I
    if-eqz p1, :cond_1

    .line 1979
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v3

    .line 1981
    .local v3, "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    .line 1983
    .local v2, "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 1984
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 1985
    .local v1, "response":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 1997
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :goto_0
    return-object v1

    .line 1987
    .local v1, "response":[I
    .restart local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .restart local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 1988
    .local v1, "response":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 1989
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1991
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1995
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

    .line 2001
    const/4 v2, 0x0

    .line 2003
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2005
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    .line 2007
    .local v0, "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2008
    .local v2, "response":[I
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    .end local v0    # "clipStatus":Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 2009
    :catch_0
    move-exception v1

    .line 2010
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2014
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
    .line 2135
    const/4 v1, 0x0

    .line 2136
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2139
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2144
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :cond_0
    :goto_0
    return-object v1

    .line 2140
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :catch_0
    move-exception v0

    .line 2141
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseSuppServiceNotification parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseSuppSvcStatus([B)Ljava/lang/Object;
    .locals 3
    .param p1, "suppSvcStatusInfo"    # [B

    .prologue
    .line 2524
    const/4 v1, 0x0

    .line 2526
    .local v1, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    if-eqz p1, :cond_0

    .line 2528
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2535
    .end local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :goto_0
    return-object v1

    .line 2529
    .restart local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :catch_0
    move-exception v0

    .line 2530
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2533
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
    .line 1819
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    .line 1820
    .local v0, "resumeIF":Lorg/codeaurora/ims/ImsQmiIF$Resume;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    .line 1821
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->toByteArray()[B

    move-result-object v1

    .line 1822
    .local v1, "resumeb":[B
    const/16 v2, 0x26

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1823
    return-void
.end method

.method public send(Lorg/codeaurora/ims/IFRequest;)V
    .locals 4
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 720
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 721
    invoke-virtual {p1, v2, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 722
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 723
    return-void

    .line 726
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 731
    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 1847
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    .line 1848
    .local v0, "configMsg":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 1849
    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 1850
    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 1851
    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 1852
    :cond_0
    invoke-virtual {v0, p6}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 1853
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->toByteArray()[B

    move-result-object v1

    .line 1855
    .local v1, "configb":[B
    invoke-virtual {p0, p1, p7, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1856
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1859
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 1860
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 1861
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 1863
    .local v1, "dtmfb":[B
    const/16 v2, 0xd

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1864
    return-void
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 4
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1755
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

    .line 1757
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 1758
    .local v0, "registerImsIF":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 1760
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->toByteArray()[B

    move-result-object v1

    .line 1762
    .local v1, "registerImsb":[B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1764
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2553
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

    .line 2554
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    .line 2556
    .local v0, "clirValue":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 2557
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->toByteArray()[B

    move-result-object v1

    .line 2558
    .local v1, "setCLIRInfo":[B
    const/16 v2, 0x15

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2559
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2760
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

    .line 2761
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    .line 2763
    .local v0, "colrValue":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 2764
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->toByteArray()[B

    move-result-object v1

    .line 2765
    .local v1, "setCOLRInfo":[B
    const/16 v2, 0x22

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2766
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
    .line 2596
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

    .line 2597
    const-string/jumbo v4, "number = "

    .line 2596
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2597
    const-string/jumbo v4, "timeSeconds = "

    .line 2596
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2599
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 2600
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 2601
    .local v1, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2602
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2603
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2604
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2605
    if-eqz p4, :cond_0

    .line 2606
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2607
    :cond_0
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2608
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 2609
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v2

    .line 2610
    .local v2, "setCallForwardInfo":[B
    const/16 v3, 0x17

    invoke-virtual {p0, v3, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2612
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
    .line 2617
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

    .line 2618
    const-string/jumbo v7, "number = "

    .line 2617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2618
    const-string/jumbo v7, "startHour = "

    .line 2617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2619
    const-string/jumbo v7, "startMinute = "

    .line 2617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2619
    const-string/jumbo v7, "endHour = "

    .line 2617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2619
    const-string/jumbo v7, "endMin = "

    .line 2617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2620
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 2622
    .local v1, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 2623
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v2, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2624
    invoke-virtual {v2, p6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2625
    invoke-virtual {v2, p7}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2626
    invoke-static/range {p8 .. p8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2627
    if-eqz p8, :cond_0

    .line 2628
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2629
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2631
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 2632
    .local v5, "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2633
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2634
    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2636
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 2637
    .local v3, "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v3, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2638
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 2639
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 2641
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 2642
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v4

    .line 2643
    .local v4, "setCallForwardInfo":[B
    const/16 v6, 0x17

    move-object/from16 v0, p9

    invoke-virtual {p0, v6, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2645
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2572
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

    .line 2574
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    .line 2575
    .local v2, "setCallWaiting":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 2576
    .local v1, "sc":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 2577
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 2579
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 2580
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->toByteArray()[B

    move-result-object v0

    .line 2581
    .local v0, "callWaitingSetInfo":[B
    const/16 v3, 0x19

    invoke-virtual {p0, v3, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2583
    return-void

    .line 2578
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
    .line 2695
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2696
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2697
    return-void

    .line 2695
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
    .line 2591
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2592
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 316
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 317
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1470
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

    .line 1471
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1472
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
    .line 1728
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 1729
    .local v1, "srvSetting":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1730
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1735
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1736
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    .line 1737
    .local v0, "srvInfo":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1738
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1739
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1740
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p0, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1741
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2539
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

    .line 2540
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    .line 2541
    .local v1, "svcStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 2543
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->toByteArray()[B

    move-result-object v0

    .line 2544
    .local v0, "suppServiceNotif":[B
    const/16 v2, 0x1b

    invoke-virtual {p0, v2, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2545
    return-void

    .line 2542
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
    .line 2704
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2705
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2706
    return-void

    .line 2704
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
    .line 2672
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

    .line 2674
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    .line 2675
    .local v0, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    .line 2676
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->toByteArray()[B

    move-result-object v1

    .line 2677
    .local v1, "setTtyInfo":[B
    const/16 v2, 0x27

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2679
    return-void
.end method

.method public setVideoQuality(ILandroid/os/Message;)V
    .locals 4
    .param p1, "quality"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2818
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

    .line 2819
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;-><init>()V

    .line 2820
    .local v0, "msgQuality":Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->setQuality(I)Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;

    .line 2821
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2822
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1867
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 1868
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 1870
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 1872
    .local v1, "dtmfb":[B
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1873
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1876
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1877
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 4
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2744
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

    .line 2746
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 2747
    .local v1, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2748
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2749
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v0

    .line 2750
    .local v0, "supsService":[B
    const/16 v2, 0x1f

    invoke-virtual {p0, v2, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2752
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
    .line 2710
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

    .line 2711
    const-string/jumbo v7, "serviceClassValue = "

    .line 2710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2713
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 2714
    .local v5, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2715
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2717
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 2718
    .local v3, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 2722
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 2723
    .local v1, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 2725
    if-eqz p3, :cond_0

    .line 2726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 2728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "icbnum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v2

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

    .line 2730
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    .line 2731
    .local v0, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    aget-object v6, p3, v2

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 2732
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 2726
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2736
    .end local v0    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 2738
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v4

    .line 2739
    .local v4, "supsService":[B
    const/16 v6, 0x1f

    invoke-virtual {p0, v6, p5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2741
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1806
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 1807
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 1808
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1809
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;I)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 1796
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

    .line 1798
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 1799
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    .line 1800
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 1801
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1802
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 321
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 286
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1061
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1070
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 295
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 303
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 304
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 313
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 1452
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

    .line 1453
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 1456
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

    .line 1457
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1460
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

    .line 1461
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1464
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

    .line 1465
    return-void
.end method
