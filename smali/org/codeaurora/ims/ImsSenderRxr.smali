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
.field private mGeolocationRegistrants:Landroid/os/RegistrantList;

.field private mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field private mInstanceId:Ljava/lang/Integer;

.field private mIsUnsolCallListPresent:Z

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected mMwiRegistrants:Landroid/os/RegistrantList;

.field private mParticipantStatusRegistrants:Landroid/os/RegistrantList;

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

.field private mSsaccRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Landroid/os/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

.field private mVopsRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 1

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    sput-boolean v2, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 261
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

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 712
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 236
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 243
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 244
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 248
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 266
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 267
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 268
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 269
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Landroid/os/RegistrantList;

    .line 270
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    .line 271
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    .line 272
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    .line 273
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    .line 274
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    .line 714
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 715
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 717
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 718
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "ImsSenderRxr"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 719
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 720
    const-string/jumbo v4, "ro.ril.wake_lock_timeout"

    .line 721
    const v5, 0xea60

    .line 720
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 722
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 723
    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 724
    const-string/jumbo v4, "persist.qualcomm.imstestrunner"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 725
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 724
    :cond_0
    sput-boolean v3, Lorg/codeaurora/ims/ImsSenderRxr;->sTestMode:Z

    .line 727
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "IFMsg_Sender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    .line 728
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 730
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 731
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-direct {v3, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    .line 733
    const-string/jumbo v3, "Starting IFMsg_Rxr"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 734
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    .line 735
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiver:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Rxr;

    const-string/jumbo v5, "IFMsg_Rxr"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    .line 736
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 738
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 739
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method private acquireWakeLock()V
    .locals 6

    .prologue
    .line 752
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 753
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 754
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 756
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 757
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 758
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 751
    return-void

    .line 752
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 8
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 889
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 890
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 891
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 893
    iget v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    .line 892
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 894
    const-string/jumbo v5, " mRequestList="

    .line 892
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 898
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 899
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 901
    iget v5, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v5

    .line 900
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 904
    invoke-virtual {v2}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 907
    const/4 v3, 0x0

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 911
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v3, :cond_3

    .line 912
    iput-boolean v6, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 913
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 914
    new-instance v4, Landroid/os/AsyncResult;

    .line 915
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-direct {v4, v7, v7, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 913
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 887
    :cond_3
    return-void

    .line 889
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 7
    .param p1, "toList"    # [Lorg/codeaurora/ims/ServiceStatus;
    .param p2, "fromList"    # Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2636
    if-eqz p2, :cond_4

    .line 2637
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    new-array p1, v3, [Lorg/codeaurora/ims/ServiceStatus;

    .line 2638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Num of SrvUpdates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2640
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2641
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 2642
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v3, p1, v1

    .line 2643
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v4

    iput-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2644
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2645
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 2646
    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2655
    :goto_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2656
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2657
    const-string/jumbo v3, "Partially Enabled Status due to Restrict Cause"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2658
    aget-object v3, p1, v1

    iput v6, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2662
    :goto_2
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2663
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2664
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2639
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2648
    :cond_1
    aget-object v3, p1, v1

    new-array v4, v6, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2649
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v5

    .line 2650
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v3, v5

    .line 2651
    .local v0, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v3, 0xe

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2652
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2653
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    .line 2660
    .end local v0    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_2
    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 2667
    :cond_3
    const-string/jumbo v3, "Null service status in list"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 2671
    .end local v1    # "i":I
    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_4
    return-object p1
.end method

.method private disableSrvStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2545
    const-string/jumbo v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 2548
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {v1, v3, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2547
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2544
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1480
    sparse-switch p0, :sswitch_data_0

    .line 1509
    const-string/jumbo v0, "E_UNKNOWN"

    .line 1512
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1482
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "SUCCESS"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1485
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "E_RADIO_NOT_AVAILABLE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1488
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "E_GENERIC_FAILURE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1491
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "E_REQUEST_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1494
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "E_CANCELLED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1497
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "E_UNUSED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1500
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "E_INVALID_PARAMETER"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1503
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "E_REJECTED_BY_REMOTE"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1506
    .end local v0    # "errorMsg":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "E_NETWORK_NOT_SUPPORTED"

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 1480
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
    .line 3213
    if-nez p0, :cond_0

    .line 3214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3217
    :cond_0
    const-string/jumbo v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3218
    const/4 v0, 0x1

    return v0

    .line 3220
    :cond_1
    const-string/jumbo v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3221
    const/4 v0, 0x2

    return v0

    .line 3251
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 920
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 922
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/IFRequest;

    .line 924
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v3, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 925
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 926
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 927
    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 928
    return-object v1

    .line 921
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    monitor-exit v4

    .line 933
    const/4 v3, 0x0

    return-object v3

    .line 920
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
    .line 2945
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

    .line 2948
    packed-switch p1, :pswitch_data_0

    .line 2963
    :pswitch_0
    const-string/jumbo v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2964
    const/16 v1, 0x3f5

    return v1

    .line 2950
    :pswitch_1
    const/16 v0, 0x1f6

    .line 2966
    .local v0, "failCause":I
    :goto_0
    return v0

    .line 2953
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f5

    .line 2954
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2956
    .end local v0    # "failCause":I
    :pswitch_3
    const/16 v0, 0x1f7

    .line 2957
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2959
    .end local v0    # "failCause":I
    :pswitch_4
    const/16 v0, 0x1f8

    .line 2960
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 2948
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
    .line 2807
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getFailcause()I

    move-result v0

    .line 2808
    .local v0, "failCause":I
    const/4 v1, 0x0

    .line 2809
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

    .line 2811
    sparse-switch v0, :sswitch_data_0

    .line 2938
    const/4 v1, 0x0

    .line 2941
    :goto_0
    :sswitch_0
    return v1

    .line 2815
    :sswitch_1
    const/16 v1, 0x141

    .line 2816
    goto :goto_0

    .line 2818
    :sswitch_2
    const/16 v1, 0x14b

    .line 2819
    goto :goto_0

    .line 2821
    :sswitch_3
    const/16 v1, 0x14c

    .line 2822
    goto :goto_0

    .line 2824
    :sswitch_4
    const/16 v1, 0x14d

    .line 2825
    goto :goto_0

    .line 2827
    :sswitch_5
    const/16 v1, 0x14e

    .line 2828
    goto :goto_0

    .line 2830
    :sswitch_6
    const/16 v1, 0x14f

    .line 2831
    goto :goto_0

    .line 2833
    :sswitch_7
    const/16 v1, 0x150

    .line 2834
    goto :goto_0

    .line 2836
    :sswitch_8
    const/16 v1, 0x151

    .line 2837
    goto :goto_0

    .line 2839
    :sswitch_9
    const/16 v1, 0x152

    .line 2840
    goto :goto_0

    .line 2842
    :sswitch_a
    const/16 v1, 0x153

    .line 2843
    goto :goto_0

    .line 2845
    :sswitch_b
    const/16 v1, 0x154

    .line 2846
    goto :goto_0

    .line 2848
    :sswitch_c
    const/16 v1, 0x155

    .line 2849
    goto :goto_0

    .line 2860
    :sswitch_d
    const/16 v1, 0x160

    .line 2861
    goto :goto_0

    .line 2863
    :sswitch_e
    const/16 v1, 0x161

    .line 2864
    goto :goto_0

    .line 2875
    :sswitch_f
    const/16 v1, 0x169

    .line 2876
    goto :goto_0

    .line 2878
    :sswitch_10
    const/16 v1, 0x16a

    .line 2879
    goto :goto_0

    .line 2882
    :sswitch_11
    const/16 v1, 0x191

    .line 2883
    goto :goto_0

    .line 2885
    :sswitch_12
    const/16 v1, 0x192

    .line 2886
    goto :goto_0

    .line 2888
    :sswitch_13
    const/16 v1, 0x193

    .line 2889
    goto :goto_0

    .line 2891
    :sswitch_14
    const/16 v1, 0x194

    .line 2892
    goto :goto_0

    .line 2895
    :sswitch_15
    const/16 v1, 0x1f5

    .line 2896
    goto :goto_0

    .line 2898
    :sswitch_16
    const/16 v1, 0x152

    .line 2899
    goto :goto_0

    .line 2901
    :sswitch_17
    const/16 v1, 0x150

    .line 2902
    goto :goto_0

    .line 2904
    :sswitch_18
    const/16 v1, 0x3f6

    .line 2905
    goto :goto_0

    .line 2907
    :sswitch_19
    const/16 v1, 0xf1

    .line 2908
    goto :goto_0

    .line 2910
    :sswitch_1a
    const/16 v1, 0x92

    .line 2911
    goto :goto_0

    .line 2913
    :sswitch_1b
    const/16 v1, 0x95

    .line 2914
    goto :goto_0

    .line 2916
    :sswitch_1c
    const/16 v1, 0x1f9

    .line 2917
    goto :goto_0

    .line 2919
    :sswitch_1d
    const/16 v1, 0x16b

    .line 2920
    goto :goto_0

    .line 2922
    :sswitch_1e
    const/16 v1, 0x16c

    .line 2923
    goto :goto_0

    .line 2925
    :sswitch_1f
    const/16 v1, 0x3f7

    .line 2926
    goto :goto_0

    .line 2928
    :sswitch_20
    const/16 v1, 0x3f8

    .line 2929
    goto :goto_0

    .line 2811
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0xf1 -> :sswitch_19
        0x145 -> :sswitch_1d
        0x146 -> :sswitch_1e
        0x17e -> :sswitch_1b
        0x1f7 -> :sswitch_1c
        0x1f9 -> :sswitch_1a
        0x3f2 -> :sswitch_17
        0x3f6 -> :sswitch_18
        0x3f7 -> :sswitch_1f
        0x3f8 -> :sswitch_20
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_5
        0x7d6 -> :sswitch_6
        0x7d7 -> :sswitch_7
        0x7d8 -> :sswitch_8
        0x7d9 -> :sswitch_9
        0x7da -> :sswitch_a
        0x7db -> :sswitch_b
        0x7dc -> :sswitch_c
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_0
        0x7df -> :sswitch_0
        0x7e0 -> :sswitch_d
        0x7e1 -> :sswitch_e
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_f
        0x7e6 -> :sswitch_10
        0xbb9 -> :sswitch_11
        0xbba -> :sswitch_12
        0xbbb -> :sswitch_13
        0xbbc -> :sswitch_14
    .end sparse-switch
.end method

.method private handleSsacInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "ssacInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2520
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2522
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2523
    :catch_0
    move-exception v0

    .line 2524
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v1, "InvalidProtocolBufferException in handleSsacInfo parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2527
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    return-object v3
.end method

.method private handleVopsInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "vopsInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2509
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2511
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2512
    :catch_0
    move-exception v0

    .line 2513
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v1, "InvalidProtocolBufferException in handleVopsInfo parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2516
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    return-object v3
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 1517
    sparse-switch p0, :sswitch_data_0

    .line 1659
    const-string/jumbo v0, "<unknown message>"

    return-object v0

    .line 1519
    :sswitch_0
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1521
    :sswitch_1
    const-string/jumbo v0, "DIAL"

    return-object v0

    .line 1523
    :sswitch_2
    const-string/jumbo v0, "REQUEST_ANSWER"

    return-object v0

    .line 1525
    :sswitch_3
    const-string/jumbo v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 1527
    :sswitch_4
    const-string/jumbo v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 1529
    :sswitch_5
    const-string/jumbo v0, "HANGUP"

    return-object v0

    .line 1531
    :sswitch_6
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1533
    :sswitch_7
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1535
    :sswitch_8
    const-string/jumbo v0, "ImsQmiIF.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1537
    :sswitch_9
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    .line 1539
    :sswitch_a
    const-string/jumbo v0, "UDUB"

    return-object v0

    .line 1541
    :sswitch_b
    const-string/jumbo v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1543
    :sswitch_c
    const-string/jumbo v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1545
    :sswitch_d
    const-string/jumbo v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1547
    :sswitch_e
    const-string/jumbo v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1549
    :sswitch_f
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1551
    :sswitch_10
    const-string/jumbo v0, "DTMF"

    return-object v0

    .line 1553
    :sswitch_11
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    .line 1555
    :sswitch_12
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    .line 1557
    :sswitch_13
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1559
    :sswitch_14
    const-string/jumbo v0, "ImsQmiIF.REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1561
    :sswitch_15
    const-string/jumbo v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 1563
    :sswitch_16
    const-string/jumbo v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1565
    :sswitch_17
    const-string/jumbo v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1567
    :sswitch_18
    const-string/jumbo v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1569
    :sswitch_19
    const-string/jumbo v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1571
    :sswitch_1a
    const-string/jumbo v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1573
    :sswitch_1b
    const-string/jumbo v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1575
    :sswitch_1c
    const-string/jumbo v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1577
    :sswitch_1d
    const-string/jumbo v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1579
    :sswitch_1e
    const-string/jumbo v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1581
    :sswitch_1f
    const-string/jumbo v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1583
    :sswitch_20
    const-string/jumbo v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1585
    :sswitch_21
    const-string/jumbo v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    .line 1587
    :sswitch_22
    const-string/jumbo v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    .line 1589
    :sswitch_23
    const-string/jumbo v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1591
    :sswitch_24
    const-string/jumbo v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1593
    :sswitch_25
    const-string/jumbo v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1595
    :sswitch_26
    const-string/jumbo v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1597
    :sswitch_27
    const-string/jumbo v0, "REQUEST_HOLD"

    return-object v0

    .line 1599
    :sswitch_28
    const-string/jumbo v0, "REQUEST_RESUME"

    return-object v0

    .line 1601
    :sswitch_29
    const-string/jumbo v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 1603
    :sswitch_2a
    const-string/jumbo v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 1605
    :sswitch_2b
    const-string/jumbo v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    .line 1607
    :sswitch_2c
    const-string/jumbo v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    .line 1609
    :sswitch_2d
    const-string/jumbo v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    .line 1611
    :sswitch_2e
    const-string/jumbo v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    .line 1613
    :sswitch_2f
    const-string/jumbo v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    .line 1615
    :sswitch_30
    const-string/jumbo v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    .line 1617
    :sswitch_31
    const-string/jumbo v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    .line 1619
    :sswitch_32
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1621
    :sswitch_33
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1623
    :sswitch_34
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1625
    :sswitch_35
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1627
    :sswitch_36
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1629
    :sswitch_37
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1631
    :sswitch_38
    const-string/jumbo v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1633
    :sswitch_39
    const-string/jumbo v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1635
    :sswitch_3a
    const-string/jumbo v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1637
    :sswitch_3b
    const-string/jumbo v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1639
    :sswitch_3c
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1641
    :sswitch_3d
    const-string/jumbo v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1643
    :sswitch_3e
    const-string/jumbo v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1645
    :sswitch_3f
    const-string/jumbo v0, "UNSOL_MWI"

    return-object v0

    .line 1647
    :sswitch_40
    const-string/jumbo v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    .line 1649
    :sswitch_41
    const-string/jumbo v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    .line 1651
    :sswitch_42
    const-string/jumbo v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    .line 1653
    :sswitch_43
    const-string/jumbo v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    .line 1655
    :sswitch_44
    const-string/jumbo v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    .line 1657
    :sswitch_45
    const-string/jumbo v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    .line 1517
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
        0x1a -> :sswitch_38
        0x1b -> :sswitch_1f
        0x1c -> :sswitch_4
        0x1d -> :sswitch_17
        0x1e -> :sswitch_18
        0x1f -> :sswitch_20
        0x20 -> :sswitch_3
        0x21 -> :sswitch_25
        0x22 -> :sswitch_26
        0x25 -> :sswitch_27
        0x26 -> :sswitch_28
        0x27 -> :sswitch_b
        0x28 -> :sswitch_21
        0x29 -> :sswitch_22
        0x2a -> :sswitch_23
        0x2b -> :sswitch_24
        0x2c -> :sswitch_29
        0x2d -> :sswitch_2a
        0x2e -> :sswitch_2b
        0x30 -> :sswitch_2c
        0x31 -> :sswitch_2d
        0x32 -> :sswitch_2e
        0x33 -> :sswitch_2f
        0x34 -> :sswitch_30
        0x35 -> :sswitch_31
        0xc9 -> :sswitch_33
        0xca -> :sswitch_34
        0xcb -> :sswitch_36
        0xcc -> :sswitch_32
        0xcd -> :sswitch_35
        0xce -> :sswitch_37
        0xcf -> :sswitch_e
        0xd0 -> :sswitch_39
        0xd1 -> :sswitch_3a
        0xd2 -> :sswitch_3b
        0xd3 -> :sswitch_3c
        0xd4 -> :sswitch_3d
        0xd5 -> :sswitch_3e
        0xd6 -> :sswitch_3f
        0xd7 -> :sswitch_41
        0xd8 -> :sswitch_40
        0xd9 -> :sswitch_42
        0xda -> :sswitch_43
        0xdb -> :sswitch_44
        0xdc -> :sswitch_45
    .end sparse-switch
.end method

.method private processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z

    .prologue
    .line 1799
    const/4 v5, 0x0

    .line 1800
    .local v5, "isConferenceUri":Z
    if-eqz p3, :cond_0

    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1801
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1802
    const-string/jumbo v8, "isConferenceUri"

    .line 1801
    invoke-virtual {p3, v7, v8}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1803
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1804
    const/4 v5, 0x1

    .line 1808
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 1809
    .local v4, "isCallPull":Z
    if-eqz p3, :cond_1

    .line 1810
    invoke-virtual {p3}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v4

    .line 1813
    .end local v4    # "isCallPull":Z
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "process dial isConfererenceUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",isCallPull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1814
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 1815
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    if-eqz p3, :cond_2

    .line 1816
    iget v7, p3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1817
    iget v7, p3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1819
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1820
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 1821
    iget-object v7, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v0, v7}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->addExtras(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 1822
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Packing extra string \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1820
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1828
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    .line 1829
    .local v1, "dialIF":Lorg/codeaurora/ims/ImsQmiIF$Dial;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1830
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1831
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1832
    packed-switch p2, :pswitch_data_0

    .line 1839
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1843
    :goto_1
    if-eqz v5, :cond_3

    .line 1844
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1847
    :cond_3
    if-eqz v4, :cond_4

    .line 1848
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1851
    :cond_4
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 1853
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->toByteArray()[B

    move-result-object v2

    .line 1854
    .local v2, "dialb":[B
    return-object v2

    .line 1834
    .end local v2    # "dialb":[B
    :pswitch_0
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_1

    .line 1832
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

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 550
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 552
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 553
    const-string/jumbo v4, "ImsSenderRxr"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return v7

    .line 557
    :cond_1
    add-int/2addr v2, v0

    .line 558
    sub-int/2addr v3, v0

    .line 559
    if-gtz v3, :cond_0

    .line 561
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 562
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 561
    or-int/2addr v4, v5

    .line 563
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 561
    or-int/2addr v4, v5

    .line 564
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 561
    or-int v1, v4, v5

    .line 567
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 568
    move v3, v1

    .line 570
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 572
    if-gez v0, :cond_3

    .line 573
    const-string/jumbo v4, "ImsSenderRxr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    const-string/jumbo v6, " remaining="

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return v7

    .line 578
    :cond_3
    add-int/2addr v2, v0

    .line 579
    sub-int/2addr v3, v0

    .line 580
    if-gtz v3, :cond_2

    .line 582
    return v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 763
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    .line 766
    iget v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->removeMessages(I)V

    .line 768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 762
    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private responseCallFailCause([B)Ljava/lang/Object;
    .locals 4
    .param p1, "callFailB"    # [B

    .prologue
    .line 2184
    const-string/jumbo v2, " responseCallFailCause "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2185
    const/4 v0, 0x0

    .line 2188
    .local v0, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    .line 2190
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

    .line 2195
    .end local v0    # "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    :goto_0
    return-object v0

    .line 2191
    :catch_0
    move-exception v1

    .line 2192
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2193
    const-string/jumbo v2, "InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseCallRingBack([B)Ljava/lang/Object;
    .locals 5
    .param p1, "ringBackB"    # [B

    .prologue
    .line 2200
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2201
    .local v1, "response":[I
    const-string/jumbo v3, " responseCallRingBack "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2204
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;

    move-result-object v2

    .line 2207
    .local v2, "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;->getFlag()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2208
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

    .line 2213
    .end local v2    # "ringbackTone":Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;
    :goto_0
    return-object v1

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2211
    const-string/jumbo v3, "InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseConfig([B)Ljava/lang/Object;
    .locals 4
    .param p1, "response"    # [B

    .prologue
    .line 2369
    const/4 v0, 0x0

    .line 2371
    .local v0, "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    move-result-object v0

    .line 2372
    .local v0, "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasBoolValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2373
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getBoolValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 2374
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasIntValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2375
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 2376
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2377
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getStringValue()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2378
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->hasErrorCause()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2379
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->getErrorCause()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2383
    .end local v0    # "config":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    :catch_0
    move-exception v2

    .line 2384
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2386
    .end local v2    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_3
    :goto_0
    return-object v0

    .line 2381
    :catch_1
    move-exception v1

    .line 2382
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "NullPointerException in responseConfig"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetHanoverConfig([B)Ljava/lang/Object;
    .locals 5
    .param p1, "message"    # [B

    .prologue
    .line 1444
    const/4 v1, 0x0

    .line 1445
    .local v1, "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    if-eqz p1, :cond_1

    array-length v3, p1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 1447
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    move-result-object v1

    .line 1448
    .local v1, "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->hasHoConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1449
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->getHoConfig()I

    move-result v2

    .line 1450
    .local v2, "hoConfig":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseGetHanoverConfig, hoConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 1453
    .end local v2    # "hoConfig":I
    :cond_0
    const-string/jumbo v3, "responseGetHanoverConfig failed"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v1    # "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    :goto_0
    return-object v1

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "handoverConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    :cond_1
    const-string/jumbo v3, "responseGetHanoverConfig failed, message is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetRtpErrorStatistics([B)Ljava/lang/Object;
    .locals 7
    .param p1, "message"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1409
    if-nez p1, :cond_0

    .line 1410
    const-string/jumbo v4, "responseGetRtpErrorStatistics failed, message is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1426
    :goto_0
    return-object v6

    .line 1414
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v1

    .line 1415
    .local v1, "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1416
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v4

    int-to-long v2, v4

    .line 1417
    .local v2, "perCount":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseGetRtpErrorStatistics, perCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1418
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 1420
    .end local v2    # "perCount":J
    :cond_1
    const-string/jumbo v4, "responseGetRtpErrorStatistics failed"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1422
    .end local v1    # "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetRtpStatistics([B)Ljava/lang/Object;
    .locals 7
    .param p1, "message"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1388
    if-nez p1, :cond_0

    .line 1389
    const-string/jumbo v4, "responseGetRtpStatistics failed, message is null"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1405
    :goto_0
    return-object v6

    .line 1393
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;

    move-result-object v1

    .line 1394
    .local v1, "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->hasCount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1395
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;->getCount()I

    move-result v4

    int-to-long v2, v4

    .line 1396
    .local v2, "packetCount":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseGetRtpStatistics, packetCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1397
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 1399
    .end local v2    # "packetCount":J
    :cond_1
    const-string/jumbo v4, "responseGetRtpStatistics failed"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1401
    .end local v1    # "rtpStatData":Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseGetWifiCallingStatus([B)Ljava/lang/Object;
    .locals 4
    .param p1, "message"    # [B

    .prologue
    .line 1430
    const/4 v1, 0x0

    .line 1431
    .local v1, "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1433
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1440
    .end local v1    # "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :goto_0
    return-object v1

    .line 1434
    .restart local v1    # "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1438
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    const-string/jumbo v2, "responseGetWifiCallingStatus failed, message is null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseModifyCall([B)Ljava/lang/Object;
    .locals 6
    .param p1, "message"    # [B

    .prologue
    .line 1368
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1370
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    move-result-object v1

    .line 1371
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1372
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1373
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1374
    iget-object v4, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v5

    iput v5, v4, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1375
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v3

    .line 1376
    .local v3, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1377
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getCallIndex()I

    move-result v4

    iput v4, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1378
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->hasError()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->getError()I

    move-result v4

    :goto_0
    iput v4, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1380
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

    .line 1384
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 1379
    .restart local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .restart local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1381
    .end local v1    # "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    .end local v3    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1382
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private responseSipErrorInfo([B)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # [B

    .prologue
    .line 1465
    const/4 v1, 0x0

    .line 1466
    .local v1, "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 1468
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1475
    .end local v1    # "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :goto_0
    return-object v1

    .line 1469
    .restart local v1    # "sipErrorInfo":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, " Message parsing. InvalidProtocolBufferException "

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1473
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    const-string/jumbo v2, "responseSipErrorInfo failed, message is null"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 1094
    if-nez p2, :cond_0

    .line 1095
    const-string/jumbo v10, ""

    return-object v10

    .line 1100
    :cond_0
    instance-of v10, p2, [I

    if-eqz v10, :cond_2

    move-object v5, p2

    .line 1101
    check-cast v5, [I

    .line 1102
    .local v5, "intArray":[I
    array-length v6, v5

    .line 1103
    .local v6, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_1

    .line 1106
    const/4 v3, 0x1

    .local v3, "i":I
    aget v10, v5, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1107
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 1108
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

    .line 1111
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1137
    .end local v5    # "intArray":[I
    .end local v6    # "length":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v7, "s":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 1113
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    instance-of v10, p2, [Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v9, p2

    .line 1114
    check-cast v9, [Ljava/lang/String;

    .line 1115
    .local v9, "strings":[Ljava/lang/String;
    array-length v6, v9

    .line 1116
    .restart local v6    # "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1117
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    if-lez v6, :cond_3

    .line 1119
    const/4 v3, 0x1

    .restart local v3    # "i":I
    aget-object v10, v9, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 1120
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 1121
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

    .line 1124
    .end local v4    # "i":I
    :cond_3
    const-string/jumbo v10, "}"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1126
    .end local v6    # "length":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "strings":[Ljava/lang/String;
    :cond_4
    const/16 v10, 0xc9

    if-eq p1, v10, :cond_5

    .line 1127
    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    :cond_5
    move-object v0, p2

    .line 1128
    check-cast v0, Ljava/util/ArrayList;

    .line 1129
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1130
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

    .line 1131
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1133
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1135
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
    .line 2059
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

    .line 2060
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2061
    .local v0, "callDetailsIF":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2062
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->setCallDomain(I)Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2064
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;-><init>()V

    .line 2065
    .local v1, "callModifyIF":Lorg/codeaurora/ims/ImsQmiIF$CallModify;
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 2066
    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->setCallIndex(I)Lorg/codeaurora/ims/ImsQmiIF$CallModify;

    .line 2071
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallModify;->toByteArray()[B

    move-result-object v2

    .line 2072
    .local v2, "callModifyb":[B
    return-object v2
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1
    .param p0, "callSubstate"    # I

    .prologue
    .line 3294
    packed-switch p0, :pswitch_data_0

    .line 3305
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 3296
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3298
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 3300
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 3302
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 3294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V
    .locals 5
    .param p1, "info"    # Lorg/codeaurora/ims/ImsQmiIF$Info;
    .param p2, "srvSt"    # Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    .line 2553
    const/4 v1, 0x0

    .line 2555
    .local v1, "numAccessTechUpdate":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusCount()I

    move-result v1

    .line 2557
    new-array v3, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 2559
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2560
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    move-result-object v2

    .line 2561
    .local v2, "update":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v0

    .line 2563
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getNetworkMode()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 2564
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getStatus()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2565
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRestrictionCause()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2566
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2568
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->getRegistered()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2575
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

    .line 2576
    const-string/jumbo v4, " status = "

    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2576
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2577
    const-string/jumbo v4, " restrictCause = "

    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2577
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2578
    const-string/jumbo v4, " registered = "

    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2578
    iget-object v4, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2559
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2571
    :cond_0
    iget-object v3, p2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 2573
    const-string/jumbo v3, "Registered not sent"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2552
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
    .line 1878
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

    .line 1879
    move v2, p2

    .line 1880
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1881
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1882
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1884
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1877
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .prologue
    .line 1946
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

    .line 1947
    move v2, p2

    .line 1948
    .local v2, "callTypeIF":I
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Answer;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;-><init>()V

    .line 1949
    .local v1, "answerIF":Lorg/codeaurora/ims/ImsQmiIF$Answer;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1950
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Answer;

    .line 1951
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Answer;->toByteArray()[B

    move-result-object v0

    .line 1953
    .local v0, "ansb":[B
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1945
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1859
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

    .line 1860
    const-string/jumbo v2, " callDetails= "

    .line 1859
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1861
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B

    move-result-object v0

    .line 1863
    .local v0, "dialb":[B
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1858
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2126
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2125
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 1888
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

    .line 1889
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;-><init>()V

    .line 1890
    .local v0, "deflectCall":Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1891
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;

    .line 1892
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;->toByteArray()[B

    move-result-object v1

    .line 1894
    .local v1, "deflectCallb":[B
    const/16 v2, 0x20

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1887
    return-void
.end method

.method public dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 1869
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

    .line 1870
    const-string/jumbo v2, " callDetails= "

    .line 1869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1870
    const-string/jumbo v2, " isEncrypted= "

    .line 1869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1871
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->processDial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)[B

    move-result-object v0

    .line 1873
    .local v0, "dialb":[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1868
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1711
    const-string/jumbo v3, "IMS INTERFACE:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
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

    .line 1713
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

    .line 1714
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

    .line 1715
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

    .line 1716
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

    .line 1717
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

    .line 1718
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

    .line 1719
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1720
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

    .line 1721
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

    .line 1722
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1723
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

    .line 1724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1725
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 1726
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

    .line 1724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    monitor-exit v4

    .line 1729
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

    .line 1730
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

    .line 1710
    return-void

    .line 1719
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
    .line 1736
    const/4 v6, 0x0

    .line 1738
    .local v6, "msgLen":I
    const/4 v10, 0x0

    .line 1739
    .local v10, "totalPacketLen":I
    invoke-static/range {p1 .. p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1742
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    new-instance v7, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    .line 1743
    .local v7, "msgtag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1744
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1745
    iget v11, v8, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1746
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 1747
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->toByteArray()[B

    move-result-object v9

    .line 1749
    .local v9, "tagb":[B
    if-eqz p3, :cond_0

    .line 1750
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1758
    :cond_0
    array-length v11, v9

    add-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v6

    add-int/lit8 v10, v11, 0x1

    .line 1759
    new-array v11, v10, [B

    iput-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1762
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    .line 1737
    const/4 v12, 0x0

    .line 1762
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

    .line 1763
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v12, v10, -0x4

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1764
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    add-int/lit8 v12, v10, -0x4

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v4

    .line 1766
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    array-length v12, v9

    int-to-byte v12, v12

    aput-byte v12, v11, v5

    .line 1769
    :try_start_0
    iget-object v11, v8, Lorg/codeaurora/ims/IFRequest;->mData:[B

    array-length v12, v9

    const/4 v13, 0x0

    invoke-static {v9, v13, v11, v4, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_0
    if-lez v6, :cond_1

    .line 1780
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

    .line 1790
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

    .line 1791
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

    .line 1793
    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->send(Lorg/codeaurora/ims/IFRequest;)V

    .line 1794
    return-void

    .line 1774
    :catch_0
    move-exception v3

    .line 1775
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1772
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1773
    .local v1, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1770
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v2

    .line 1771
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg tag"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1785
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 1786
    .restart local v3    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, " NullPointerException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1783
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 1784
    .restart local v1    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v11, " ArrayStoreException while parsing msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1781
    .end local v1    # "ex":Ljava/lang/ArrayStoreException;
    :catch_5
    move-exception v2

    .line 1782
    .restart local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v11, " IndexOutOfBoundsException while encoding msg"

    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3128
    const-string/jumbo v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3129
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3127
    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "srcCallId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "destCallId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 2135
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;-><init>()V

    .line 2136
    .local v0, "ectMsg":Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2137
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setEctType(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2138
    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2139
    :cond_0
    if-lez p4, :cond_1

    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->setTargetCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;

    .line 2140
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;->toByteArray()[B

    move-result-object v1

    .line 2141
    .local v1, "ectb":[B
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2134
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2130
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2129
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2994
    const-string/jumbo v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2995
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2993
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3199
    const-string/jumbo v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3200
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3198
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2037
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2036
    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3281
    const-string/jumbo v0, "ImsSenderRxr"

    const-string/jumbo v1, "getHandoverConfig"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    const/16 v0, 0x34

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3280
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2042
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2041
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2011
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2010
    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3255
    const-string/jumbo v0, "getPacketCount"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3256
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3254
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3260
    const-string/jumbo v0, "getPacketErrorCount"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3261
    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3259
    return-void
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3146
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3145
    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3265
    const-string/jumbo v0, "getWifiCallingPreference"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3266
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3264
    return-void
.end method

.method protected handleGeolocation([B)Ljava/lang/Object;
    .locals 4
    .param p1, "geolocationRequest"    # [B

    .prologue
    .line 2432
    const/4 v1, 0x0

    .line 2433
    .local v1, "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2435
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2440
    .end local v1    # "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2436
    .restart local v1    # "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    :catch_0
    move-exception v0

    .line 2437
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in handleGeolocation parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMwi([B)Ljava/lang/Object;
    .locals 4
    .param p1, "mwiNotification"    # [B

    .prologue
    .line 2420
    const/4 v1, 0x0

    .line 2421
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2423
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2428
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :cond_0
    :goto_0
    return-object v1

    .line 2424
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    :catch_0
    move-exception v0

    .line 2425
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in handleMwi parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleParticipantStatusInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "participantStatusInfo"    # [B

    .prologue
    .line 2497
    const/4 v1, 0x0

    .line 2498
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2500
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2505
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2501
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    :catch_0
    move-exception v0

    .line 2502
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRadioStateChange([B)Ljava/lang/Object;
    .locals 5
    .param p1, "radioStateChange"    # [B

    .prologue
    const/4 v4, 0x1

    .line 2390
    const/4 v1, 0x0

    .line 2391
    .local v1, "response":[I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    .line 2393
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v2

    .line 2395
    .local v2, "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2396
    .local v1, "response":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2397
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2408
    const-string/jumbo v3, "Invalid state in Radio State Change"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2416
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :cond_0
    :goto_0
    return-object v1

    .line 2399
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_0
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2412
    .end local v1    # "response":[I
    .end local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :catch_0
    move-exception v0

    .line 2413
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleRadioStateChange parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2402
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "response":[I
    .restart local v2    # "state":Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    :sswitch_1
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    goto :goto_0

    .line 2405
    :sswitch_2
    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2397
    nop

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
    .line 2458
    const/4 v1, 0x0

    .line 2459
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2461
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2466
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2462
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    :catch_0
    move-exception v0

    .line 2463
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleRefreshViceInfo([B)Ljava/lang/Object;
    .locals 4
    .param p1, "viceInfo"    # [B

    .prologue
    .line 2470
    const/4 v1, 0x0

    .line 2471
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2473
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2478
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2474
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    :catch_0
    move-exception v0

    .line 2475
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSrvStatus([B)Ljava/lang/Object;
    .locals 11
    .param p1, "updateList"    # [B

    .prologue
    .line 2583
    const/4 v4, 0x0

    .line 2584
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v3, 0x0

    .line 2586
    .local v3, "num":I
    if-eqz p1, :cond_2

    .line 2588
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v7

    .line 2589
    .local v7, "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoCount()I

    move-result v3

    .line 2590
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2593
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2594
    :try_start_1
    invoke-virtual {v7, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v2

    .line 2595
    .local v2, "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    new-instance v6, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v6}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 2596
    .local v6, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v8

    iput-boolean v8, v6, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 2597
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 2598
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v8

    iput v8, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2599
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2600
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2601
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v8

    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 2603
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

    .line 2604
    iget v9, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 2603
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2604
    const-string/jumbo v9, " userdata = "

    .line 2603
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2604
    iget-object v9, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 2603
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2606
    invoke-direct {p0, v2, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->unpackAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$Info;Lorg/codeaurora/ims/ServiceStatus;)V

    .line 2607
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2593
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "info":Lorg/codeaurora/ims/ImsQmiIF$Info;
    .end local v6    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    move-object v4, v5

    .line 2616
    .end local v1    # "i":I
    .end local v5    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .end local v7    # "statusList":Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    :goto_1
    return-object v4

    .line 2609
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :catch_0
    move-exception v0

    .line 2610
    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_2
    const-string/jumbo v8, "InvalidProtocolBufferException in handleSrvStatus parsing"

    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2614
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto :goto_1

    .line 2609
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
    .locals 5
    .param p1, "notification"    # [B

    .prologue
    .line 2620
    const/4 v1, 0x0

    .line 2621
    .local v1, "mode":[I
    if-eqz p1, :cond_0

    .line 2623
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    move-result-object v2

    .line 2624
    .local v2, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 2625
    .local v1, "mode":[I
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 2626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTtyNotify mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    .end local v1    # "mode":[I
    .end local v2    # "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    :cond_0
    :goto_0
    return-object v1

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in Message Tag parsing "

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleVoWiFiCallQuality([B)Ljava/lang/Object;
    .locals 5
    .param p1, "voWiFiCallQuality"    # [B

    .prologue
    .line 2482
    const/4 v2, 0x0

    .line 2483
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2485
    const/4 v0, 0x0

    .line 2486
    .local v0, "callQuality":Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;

    move-result-object v0

    .line 2487
    .local v0, "callQuality":Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2488
    .local v2, "response":[I
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;->getQuality()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2493
    .end local v0    # "callQuality":Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;
    .end local v2    # "response":[I
    :cond_0
    :goto_0
    return-object v2

    .line 2489
    :catch_0
    move-exception v1

    .line 2490
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleVoWiFiCallQuality parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1958
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

    .line 1959
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1960
    .local v0, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1961
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1962
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v1

    .line 1963
    .local v1, "hangupb":[B
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1957
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2118
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2117
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2122
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2121
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
    .line 1969
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

    .line 1970
    const-string/jumbo v6, "mpty = "

    .line 1969
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1970
    const-string/jumbo v6, "failCause = "

    .line 1969
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1971
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    .line 1976
    .local v3, "hangupIF":Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 1977
    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1979
    :cond_0
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1980
    if-eqz p2, :cond_1

    .line 1981
    invoke-virtual {v3, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 1982
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    .line 1983
    .local v1, "callfail":Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1989
    :cond_2
    :goto_0
    invoke-direct {p0, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->getCallFailCauseForImsReason(I)I

    move-result v0

    .line 1990
    .local v0, "callFailCause":I
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setFailcause(I)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1991
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

    .line 1994
    const/16 v5, 0x3f5

    if-ne v0, v5, :cond_3

    .line 1995
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1997
    .local v2, "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    .line 1998
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

    .line 2000
    .end local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    :cond_3
    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    .line 2005
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->toByteArray()[B

    move-result-object v4

    .line 2006
    .local v4, "hangupb":[B
    const/4 v5, 0x4

    invoke-virtual {p0, v5, p7, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 1968
    return-void

    .line 1984
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

    .line 1985
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    .line 1986
    .restart local v2    # "errorInfoStringMicro":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->setErrorinfo(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    goto :goto_0
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .prologue
    .line 2104
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hold;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;-><init>()V

    .line 2105
    .local v0, "holdIF":Lorg/codeaurora/ims/ImsQmiIF$Hold;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Hold;

    .line 2106
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hold;->toByteArray()[B

    move-result-object v1

    .line 2107
    .local v1, "holdb":[B
    const/16 v2, 0x25

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2103
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .prologue
    .line 1680
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1681
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1683
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1678
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1669
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1667
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 2082
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

    .line 2083
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 2084
    .local v0, "callModifyb":[B
    const/16 v1, 0x12

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2081
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 2076
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

    .line 2077
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallModify(Lorg/codeaurora/ims/CallModify;)[B

    move-result-object v0

    .line 2078
    .local v0, "callModifyb":[B
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2075
    return-void
.end method

.method public processResponse([BI)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x0

    .line 794
    const/4 v7, 0x0

    .line 795
    .local v7, "startIndex":I
    const/4 v0, 0x1

    .line 796
    .local v0, "endIndex":I
    const/4 v5, 0x0

    .line 798
    .local v5, "msg":[B
    const-string/jumbo v9, "processResponse"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 799
    if-lez p2, :cond_0

    .line 800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Response data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1, v11, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 803
    :cond_0
    if-gt v0, p2, :cond_3

    .line 804
    aget-byte v6, p1, v7

    .line 807
    .local v6, "msglen":I
    const/4 v8, 0x0

    .line 808
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    move v7, v0

    .line 809
    add-int/lit8 v0, v6, 0x1

    .line 811
    if-gt v0, p2, :cond_2

    if-lez v6, :cond_2

    .line 813
    new-array v5, v6, [B

    .line 816
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 818
    invoke-static {v5}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 836
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

    .line 837
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v10

    .line 836
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 837
    const-string/jumbo v10, " "

    .line 836
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 837
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v10

    .line 836
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 840
    move v7, v0

    .line 841
    sub-int v6, p2, v0

    .line 842
    add-int/2addr v0, v6

    .line 844
    const/4 v5, 0x0

    .line 845
    .local v5, "msg":[B
    if-gt v0, p2, :cond_1

    if-lez v6, :cond_1

    .line 846
    new-array v5, v6, [B

    .line 848
    .local v5, "msg":[B
    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 860
    .end local v5    # "msg":[B
    :cond_1
    :goto_0
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 868
    const-string/jumbo v9, " Unknown Message Type  "

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 878
    .end local v6    # "msglen":I
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 790
    return-void

    .line 831
    .restart local v5    # "msg":[B
    .restart local v6    # "msglen":I
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_0
    move-exception v1

    .line 832
    .local v1, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v9, "InvalidProtocolBufferException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 833
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 834
    return-void

    .line 827
    .end local v1    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :catch_1
    move-exception v4

    .line 828
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 830
    return-void

    .line 823
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 824
    .local v2, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 826
    return-void

    .line 819
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_3
    move-exception v3

    .line 820
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 822
    return-void

    .line 853
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :catch_4
    move-exception v4

    .line 854
    .restart local v4    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v9, " NullPointerException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 851
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v2

    .line 852
    .restart local v2    # "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v9, " ArrayStoreException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    .end local v2    # "ex":Ljava/lang/ArrayStoreException;
    :catch_6
    move-exception v3

    .line 850
    .restart local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, " IndexOutOfBoundsException while parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 862
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "msg":[B
    :pswitch_0
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 865
    :pswitch_1
    invoke-virtual {p0, v8, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->processSolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V

    goto :goto_1

    .line 873
    .local v5, "msg":[B
    .local v8, "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_2
    const-string/jumbo v9, "Error in parsing msg tag"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 876
    .end local v6    # "msglen":I
    .end local v8    # "tag":Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    :cond_3
    const-string/jumbo v9, "Error in parsing msg tag length"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 860
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

    .line 937
    const/4 v1, 0x0

    .line 939
    .local v1, "found":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v5

    .line 940
    .local v5, "serial":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    .line 941
    .local v0, "error":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v2

    .line 945
    .local v2, "id":I
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v4

    .line 947
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v4, :cond_0

    .line 948
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 949
    const-string/jumbo v8, " error: "

    .line 948
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    return-void

    .line 953
    :cond_0
    const/4 v3, 0x0

    .line 955
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    array-length v7, p2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    .line 958
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 1057
    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1058
    iget v9, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 1057
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :catch_0
    move-exception v6

    .line 1063
    .local v6, "tr":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1064
    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1064
    const-string/jumbo v8, "[SUB"

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1064
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1064
    const-string/jumbo v8, "]"

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1065
    const-string/jumbo v8, " exception, possible invalid response"

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 1068
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1069
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1071
    :cond_2
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1072
    return-void

    .line 960
    .end local v6    # "tr":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1075
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_0
    :pswitch_2
    if-eqz v0, :cond_4

    .line 1076
    invoke-virtual {v4, v0, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1077
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1078
    return-void

    .line 963
    .restart local v3    # "ret":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 964
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_3

    .line 965
    const-string/jumbo v7, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 966
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v7}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 972
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 975
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallFailCause([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 978
    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetClir([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 981
    :pswitch_7
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallForward([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 984
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryCallWaiting([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 987
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseQueryClip([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 990
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 996
    :pswitch_b
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppSvcStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 999
    :pswitch_c
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetRtpStatistics([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1002
    :pswitch_d
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetRtpErrorStatistics([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1005
    :pswitch_e
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetColr([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1008
    :pswitch_f
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetWifiCallingStatus([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1011
    :pswitch_10
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVopsInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1014
    :pswitch_11
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSsacInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1017
    :pswitch_12
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetVoltePref([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1020
    :pswitch_13
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseGetHanoverConfig([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1026
    :pswitch_14
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSipErrorInfo([B)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1054
    :pswitch_15
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseConfig([B)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1081
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

    .line 1082
    const-string/jumbo v8, " "

    .line 1081
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1082
    iget v8, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-direct {p0, v8, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1081
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1084
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_5

    .line 1085
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1086
    iget-object v7, v4, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1089
    :cond_5
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 936
    return-void

    .line 958
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
        :pswitch_14
        :pswitch_2
        :pswitch_2
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
        :pswitch_14
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_2
        :pswitch_15
        :pswitch_15
        :pswitch_2
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_2
        :pswitch_12
        :pswitch_13
        :pswitch_2
    .end packed-switch
.end method

.method protected processUnsolicited(Lorg/codeaurora/ims/ImsQmiIF$MsgTag;[B)V
    .locals 10
    .param p1, "tag"    # Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .param p2, "message"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1159
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    .line 1160
    .local v1, "response":I
    const/4 v2, 0x0

    .line 1163
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 1227
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

    .line 1229
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 1230
    .local v3, "tr":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception processing unsol response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1231
    const-string/jumbo v5, "Exception:"

    .line 1230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1231
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    return-void

    .line 1165
    .end local v3    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_0
    if-eqz p2, :cond_0

    :try_start_1
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallRingBack([B)Ljava/lang/Object;

    move-result-object v2

    .line 1235
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1158
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 1168
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1171
    :pswitch_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 1172
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseCallList([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1175
    :pswitch_4
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseImsRegistration([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1179
    :pswitch_5
    const/4 v2, 0x0

    .line 1180
    goto :goto_0

    .line 1182
    :pswitch_6
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseModifyCall([B)Ljava/lang/Object;

    move-result-object v2

    .line 1183
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1184
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 1185
    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1184
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1188
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseHandover([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1191
    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1194
    :pswitch_9
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSrvStatus([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1197
    :pswitch_a
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleTtyNotify([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1200
    :pswitch_b
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->responseSuppServiceNotification([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1203
    :pswitch_c
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRadioStateChange([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1206
    :pswitch_d
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleMwi([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1209
    :pswitch_e
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleGeolocation([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1212
    :pswitch_f
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleRefreshViceInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1215
    :pswitch_10
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVoWiFiCallQuality([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1218
    :pswitch_11
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleVopsInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1221
    :pswitch_12
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleSsacInfo([B)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 1224
    :pswitch_13
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->handleParticipantStatusInfo([B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 1237
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_14
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1239
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 1240
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1239
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1243
    :pswitch_15
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1244
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 1245
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1244
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1248
    :pswitch_16
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1250
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1251
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    .line 1252
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1251
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1256
    :pswitch_17
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1258
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1259
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v4}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 1264
    :pswitch_18
    const/4 v0, 0x0

    .line 1265
    .local v0, "playtone":Z
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1266
    if-eqz v2, :cond_3

    check-cast v2, [I

    const/4 v4, 0x0

    aget v4, v2, v4

    if-ne v4, v9, :cond_4

    const/4 v0, 0x1

    .line 1267
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1268
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 1269
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1268
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1266
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1273
    .end local v0    # "playtone":Z
    :pswitch_19
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1275
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 1276
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 1277
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1276
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1281
    :pswitch_1a
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1282
    if-eqz v2, :cond_1

    .line 1283
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 1284
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1283
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1288
    :pswitch_1b
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1289
    if-eqz v2, :cond_1

    .line 1290
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 1291
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1290
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1295
    :pswitch_1c
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1296
    if-eqz v2, :cond_1

    .line 1297
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 1298
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1297
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1302
    :pswitch_1d
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1303
    if-eqz v2, :cond_1

    .line 1304
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 1305
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1304
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1309
    :pswitch_1e
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1310
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 1311
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 1312
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1311
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1316
    :pswitch_1f
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1317
    if-eqz v2, :cond_1

    .line 1318
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 1319
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1318
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1323
    :pswitch_20
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1324
    if-eqz v2, :cond_1

    .line 1325
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    .line 1326
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1325
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1330
    :pswitch_21
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1331
    if-eqz v2, :cond_1

    .line 1332
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshViceInfoRegistrants:Landroid/os/RegistrantList;

    .line 1333
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1332
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1337
    :pswitch_22
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1338
    if-eqz v2, :cond_1

    .line 1339
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    .line 1340
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1339
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1344
    :pswitch_23
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1345
    if-eqz v2, :cond_1

    .line 1346
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    .line 1347
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1346
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1351
    :pswitch_24
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1352
    if-eqz v2, :cond_1

    .line 1353
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    .line 1354
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1353
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1358
    :pswitch_25
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1359
    if-eqz v2, :cond_1

    .line 1360
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    .line 1361
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1360
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1235
    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_14
        :pswitch_17
        :pswitch_19
        :pswitch_1
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_23
        :pswitch_25
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3113
    const-string/jumbo v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3114
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3112
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForwardStatus cfReason= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3096
    const-string/jumbo v4, " serviceClass = "

    .line 3095
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3096
    const-string/jumbo v4, "number = "

    .line 3095
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3097
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 3098
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 3099
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3100
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3101
    invoke-virtual {v2, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3102
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3103
    if-eqz p3, :cond_0

    .line 3104
    invoke-virtual {v2, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3105
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3106
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 3107
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v1

    .line 3108
    .local v1, "callForwardQuery":[B
    const/16 v3, 0x16

    invoke-virtual {p0, v3, p4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3094
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3008
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

    .line 3009
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 3010
    .local v0, "callWaitingQuery":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 3011
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->toByteArray()[B

    move-result-object v1

    .line 3012
    .local v1, "callWaitingQueryInfo":[B
    const/16 v2, 0x18

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3007
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3135
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3134
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3032
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3031
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2015
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2014
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3315
    const-string/jumbo v0, "querySsacStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3316
    const/16 v0, 0x31

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3314
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3327
    const-string/jumbo v0, "queryVoltePref"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3328
    const/16 v0, 0x33

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3326
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3310
    const-string/jumbo v0, "queryVopsStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3311
    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3309
    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 348
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 349
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 347
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 312
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 311
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1141
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1142
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1140
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1150
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1151
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1149
    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 366
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 365
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForPhoneId: mInstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UNchanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    return-void

    .line 281
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    .line 282
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->disableSrvStatus()V

    .line 283
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' socket closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 321
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 320
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 330
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 329
    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
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
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 293
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 339
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 338
    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 357
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 356
    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 303
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 302
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2145
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2144
    return-void
.end method

.method protected responseCallList([B)Ljava/lang/Object;
    .locals 19
    .param p1, "callListB"    # [B

    .prologue
    .line 2675
    const/4 v14, 0x0

    .line 2676
    .local v14, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v13, 0x0

    .line 2678
    .local v13, "num":I
    if-eqz p1, :cond_8

    .line 2680
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallList;

    move-result-object v4

    .line 2681
    .local v4, "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributesCount()I

    move-result v13

    .line 2686
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2688
    .end local v14    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v15, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v13, :cond_7

    .line 2689
    :try_start_1
    invoke-virtual {v4, v8}, Lorg/codeaurora/ims/ImsQmiIF$CallList;->getCallAttributes(I)Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;

    move-result-object v3

    .line 2690
    .local v3, "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    new-instance v5, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v5}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 2692
    .local v5, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getState()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/codeaurora/ims/DriverCallIms;->stateFromCall(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2693
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIndex()I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2694
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getToa()I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2695
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMpty()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2696
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsMT()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2697
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getAls()I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2698
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoice()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2699
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsVoicePrivacy()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2700
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2701
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNumberPresentation()I

    move-result v12

    .line 2702
    .local v12, "np":I
    invoke-static {v12}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2703
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2705
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getNamePresentation()I

    move-result v16

    .line 2704
    invoke-static/range {v16 .. v16}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v5, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2706
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasIsEncrypted()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2707
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getIsEncrypted()Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 2712
    :goto_1
    new-instance v16, Lorg/codeaurora/ims/CallDetails;

    invoke-direct/range {v16 .. v16}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2713
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2714
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallDomain()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 2715
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    .line 2716
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCallSubstate()I

    move-result v17

    .line 2715
    invoke-static/range {v17 .. v17}, Lorg/codeaurora/ims/ImsSenderRxr;->toCallSubstateConstants(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 2717
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getMediaId()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 2718
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getExtrasList()Ljava/util/List;

    move-result-object v7

    .line 2719
    .local v7, "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 2720
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    move-object/from16 v17, v0

    .line 2721
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getLocalAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v18

    .line 2720
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2722
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    move-object/from16 v17, v0

    .line 2723
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getPeerAbility()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v18

    .line 2722
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->copySrvStatusList([Lorg/codeaurora/ims/ServiceStatus;Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 2724
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;->getCauseCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 2725
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Call Details = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2729
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v5, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2734
    new-instance v16, Lcom/android/ims/ImsReasonInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 2733
    move-object/from16 v0, v16

    iput-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 2736
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->hasFailCause()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2737
    const/4 v11, 0x0

    .line 2739
    .local v11, "networkError":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2740
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorString()Ljava/lang/String;

    move-result-object v11

    .line 2746
    .local v11, "networkError":Ljava/lang/String;
    const-string/jumbo v16, "Forbidden. Not Authorized for Service"

    .line 2745
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2747
    const-string/jumbo v16, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2748
    new-instance v10, Landroid/content/Intent;

    .line 2749
    const-string/jumbo v16, "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    .line 2748
    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2750
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v16, 0x20000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2755
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "networkError":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasFailcause()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2756
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    .line 2757
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsReasonForCallFailCause(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)I

    move-result v17

    .line 2756
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    .line 2758
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->hasErrorDetails()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2759
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    .line 2760
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;->getFailCause()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;->getSipErrorCode()I

    move-result v17

    .line 2759
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    .line 2764
    :cond_1
    if-eqz v11, :cond_2

    .line 2765
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 2768
    :cond_2
    new-instance v9, Lcom/android/ims/ImsReasonInfo;

    .line 2769
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    move/from16 v16, v0

    .line 2770
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    move/from16 v17, v0

    .line 2771
    iget-object v0, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2768
    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v9, v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2773
    .local v9, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v16, "com.android.imscontection.DISCONNECTED"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2774
    .restart local v10    # "intent":Landroid/content/Intent;
    const/high16 v16, 0x20000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2775
    const-string/jumbo v16, "result"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2776
    const-string/jumbo v16, "stateChanged"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2778
    const-string/jumbo v16, "CallFailCauseResponse sent to upper layer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2784
    .end local v9    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    iget-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 2787
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2788
    const-string/jumbo v16, "InCall VoicePrivacy is enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2688
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 2709
    .end local v7    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v5, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z
    :try_end_1
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2796
    .end local v3    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v12    # "np":I
    :catch_0
    move-exception v6

    .local v6, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    move-object v14, v15

    .line 2797
    .end local v4    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v8    # "i":I
    .end local v15    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_4
    const-string/jumbo v16, "InvalidProtocolBufferException in Message Tag parsing "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2803
    .end local v6    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_5
    return-object v14

    .line 2780
    .restart local v3    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .restart local v4    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .restart local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v7    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v12    # "np":I
    .restart local v15    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_5
    :try_start_2
    const-string/jumbo v16, "CallFailCauseResponse has no int error code!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2790
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2791
    const-string/jumbo v16, "InCall VoicePrivacy is disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2795
    .end local v3    # "call":Lorg/codeaurora/ims/ImsQmiIF$CallList$Call;
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v7    # "extrasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "np":I
    :cond_7
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v15

    .end local v15    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v14, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_5

    .line 2801
    .end local v4    # "callList":Lorg/codeaurora/ims/ImsQmiIF$CallList;
    .end local v8    # "i":I
    .local v14, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .local v14, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_5

    .line 2796
    .local v14, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :catch_1
    move-exception v6

    .restart local v6    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    goto :goto_4
.end method

.method protected responseGetClir([B)Ljava/lang/Object;
    .locals 5
    .param p1, "clirInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2322
    const/4 v2, 0x0

    .line 2324
    .local v2, "response":[I
    if-eqz p1, :cond_0

    .line 2326
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    move-result-object v1

    .line 2328
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2330
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamN()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2331
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->getParamM()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    .end local v2    # "response":[I
    :goto_0
    return-object v2

    .line 2332
    :catch_0
    move-exception v0

    .line 2333
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2338
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v2, "response":[I
    :cond_0
    new-array v2, v3, [I

    .local v2, "response":[I
    goto :goto_0
.end method

.method protected responseGetColr([B)Ljava/lang/Object;
    .locals 3
    .param p1, "colrInfo"    # [B

    .prologue
    .line 2344
    const/4 v1, 0x0

    .line 2346
    .local v1, "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    if-eqz p1, :cond_0

    .line 2348
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2353
    .end local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :cond_0
    :goto_0
    return-object v1

    .line 2349
    .restart local v1    # "info":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseGetVoltePref([B)Ljava/lang/Object;
    .locals 5
    .param p1, "voltePref"    # [B

    .prologue
    const/4 v4, 0x1

    .line 2531
    const/4 v2, 0x0

    .line 2532
    .local v2, "response":[I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v4, :cond_0

    .line 2534
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    move-result-object v1

    .line 2535
    .local v1, "pref":Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 2536
    .local v2, "response":[I
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->getMode()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    .end local v1    # "pref":Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    .end local v2    # "response":[I
    :cond_0
    :goto_0
    return-object v2

    .line 2537
    :catch_0
    move-exception v0

    .line 2538
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v3, "InvalidProtocolBufferException in handleVoWiFiCallQuality parsing"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseHandover([B)Ljava/lang/Object;
    .locals 4
    .param p1, "handoverB"    # [B

    .prologue
    .line 2357
    const/4 v1, 0x0

    .line 2358
    .local v1, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2360
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2365
    .end local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :cond_0
    :goto_0
    return-object v1

    .line 2361
    .restart local v1    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseHandover parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseImsRegistration([B)Ljava/lang/Object;
    .locals 4
    .param p1, "imsRegB"    # [B

    .prologue
    .line 2217
    const-string/jumbo v2, " responseImsRegistration"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2218
    const/4 v1, 0x0

    .line 2219
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2221
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v1

    .line 2222
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

    .line 2229
    .end local v1    # "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :goto_0
    return-object v1

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2227
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "registration":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    :cond_0
    const-string/jumbo v2, "responseImsRegistration error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseQueryCallForward([B)Ljava/lang/Object;
    .locals 11
    .param p1, "callInfoList"    # [B

    .prologue
    .line 2234
    const/4 v5, 0x0

    .line 2235
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v8, 0x0

    .line 2236
    .local v8, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v6, 0x0

    .line 2238
    .local v6, "numInfos":I
    if-eqz p1, :cond_2

    .line 2240
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    move-result-object v4

    .line 2242
    .local v4, "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfoCount()I

    move-result v6

    .line 2243
    new-array v5, v6, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2244
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-array v8, v6, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2245
    .local v8, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 2246
    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->getInfo(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    move-result-object v0

    .line 2249
    .local v0, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    new-instance v9, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v9}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v9, v5, v3

    .line 2250
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2251
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2252
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2253
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getToa()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2254
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2255
    aget-object v9, v5, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getTimeSeconds()I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2256
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerStart()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->hasCallFwdTimerEnd()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2257
    const-string/jumbo v9, "responseQueryCallForward for Timer"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerStart()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v7

    .line 2260
    .local v7, "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    new-instance v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v9}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v9, v8, v3

    .line 2261
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getStatus()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 2262
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getReason()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 2263
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getServiceClass()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 2264
    aget-object v9, v8, v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 2265
    aget-object v9, v8, v3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 2266
    aget-object v9, v8, v3

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 2268
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->getCallFwdTimerEnd()Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    move-result-object v1

    .line 2269
    .local v1, "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    aget-object v9, v8, v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getHour()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 2270
    aget-object v9, v8, v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->getMinute()I

    move-result v10

    iput v10, v9, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    return-object v8

    .line 2245
    .end local v1    # "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    .end local v7    # "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2275
    .end local v0    # "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    .end local v3    # "i":I
    .end local v4    # "infoList":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    .end local v5    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8    # "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :catch_0
    move-exception v2

    .line 2276
    .local v2, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v9, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2281
    .end local v2    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_1
    :goto_1
    return-object v5

    .line 2279
    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    .local v8, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_2
    const/4 v9, 0x0

    new-array v5, v9, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v5, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    goto :goto_1
.end method

.method protected responseQueryCallWaiting([B)Ljava/lang/Object;
    .locals 6
    .param p1, "callWaitingInfo"    # [B

    .prologue
    const/4 v4, 0x0

    .line 2285
    const/4 v1, 0x0

    .line 2287
    .local v1, "response":[I
    if-eqz p1, :cond_1

    .line 2289
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v3

    .line 2291
    .local v3, "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v2

    .line 2293
    .local v2, "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 2294
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 2295
    .local v1, "response":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 2307
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :goto_0
    return-object v1

    .line 2297
    .local v1, "response":[I
    .restart local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .restart local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 2298
    .local v1, "response":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 2299
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->getServiceClass()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2301
    .end local v1    # "response":[I
    .end local v2    # "srvClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .end local v3    # "waitingInfo":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2305
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .local v1, "response":[I
    :cond_1
    new-array v1, v4, [I

    .local v1, "response":[I
    goto :goto_0
.end method

.method protected responseQueryClip([B)Ljava/lang/Object;
    .locals 3
    .param p1, "clipInfo"    # [B

    .prologue
    const/4 v2, 0x0

    .line 2311
    if-eqz p1, :cond_0

    .line 2313
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v1, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2318
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    return-object v2
.end method

.method protected responseSuppServiceNotification([B)Ljava/lang/Object;
    .locals 4
    .param p1, "suppSrvNotification"    # [B

    .prologue
    .line 2445
    const/4 v1, 0x0

    .line 2446
    .local v1, "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2449
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2454
    .end local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :cond_0
    :goto_0
    return-object v1

    .line 2450
    .restart local v1    # "notification":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :catch_0
    move-exception v0

    .line 2451
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in responseSuppServiceNotification parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseSuppSvcStatus([B)Ljava/lang/Object;
    .locals 3
    .param p1, "suppSvcStatusInfo"    # [B

    .prologue
    .line 2970
    const/4 v1, 0x0

    .line 2972
    .local v1, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    if-eqz p1, :cond_0

    .line 2974
    :try_start_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2981
    .end local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :goto_0
    return-object v1

    .line 2975
    .restart local v1    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    :catch_0
    move-exception v0

    .line 2976
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "InvalidProtocolBufferException in message tag parsing"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2979
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
    .line 2111
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Resume;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;-><init>()V

    .line 2112
    .local v0, "resumeIF":Lorg/codeaurora/ims/ImsQmiIF$Resume;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$Resume;

    .line 2113
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Resume;->toByteArray()[B

    move-result-object v1

    .line 2114
    .local v1, "resumeb":[B
    const/16 v2, 0x26

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2110
    return-void
.end method

.method public send(Lorg/codeaurora/ims/IFRequest;)V
    .locals 4
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 776
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 777
    const-string/jumbo v1, "socket connection with ril is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1, v2, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 779
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 780
    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSender:Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;

    invoke-virtual {v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr$IFMsg_Sender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 773
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
    .line 2150
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;-><init>()V

    .line 2151
    .local v0, "configMsg":Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setItem(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2152
    invoke-virtual {v0, p3}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setBoolValue(Z)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2153
    invoke-virtual {v0, p4}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setIntValue(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2154
    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setStringValue(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2155
    :cond_0
    invoke-virtual {v0, p6}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->setErrorCause(I)Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;

    .line 2156
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;->toByteArray()[B

    move-result-object v1

    .line 2158
    .local v1, "configb":[B
    invoke-virtual {p0, p1, p7, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2149
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2162
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 2163
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 2164
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 2166
    .local v1, "dtmfb":[B
    const/16 v2, 0xd

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2161
    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "address"    # Landroid/location/Address;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 1900
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendGeolocationInfo [Lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1901
    const-string/jumbo v6, " | Lon="

    .line 1900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1901
    const-string/jumbo v6, "]"

    .line 1900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    .line 1903
    .local v0, "addressInfo":Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    if-eqz p5, :cond_5

    .line 1904
    invoke-virtual {p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 1905
    .local v3, "info":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1906
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1907
    const-string/jumbo v5, " Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    :cond_0
    invoke-virtual {p5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 1910
    if-eqz v3, :cond_1

    .line 1911
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1912
    const-string/jumbo v5, " State="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    :cond_1
    invoke-virtual {p5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    .line 1915
    if-eqz v3, :cond_2

    .line 1916
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1917
    const-string/jumbo v5, " Country="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    :cond_2
    invoke-virtual {p5}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    .line 1920
    if-eqz v3, :cond_3

    .line 1921
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1922
    const-string/jumbo v5, " Postal Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    :cond_3
    invoke-virtual {p5}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 1925
    if-eqz v3, :cond_4

    .line 1926
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    .line 1927
    const-string/jumbo v5, " Country Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    .end local v3    # "info":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1934
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    .line 1935
    .local v1, "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    invoke-virtual {v1, p1, p2}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1936
    invoke-virtual {v1, p3, p4}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1937
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1938
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->toByteArray()[B

    move-result-object v2

    .line 1940
    .local v2, "geoInfob":[B
    const/16 v5, 0x2e

    invoke-virtual {p0, v5, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1898
    return-void

    .line 1930
    .end local v1    # "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .end local v2    # "geoInfob":[B
    :cond_5
    :try_start_1
    const-string/jumbo v5, " Null Address!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "addressInfo":Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 4
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2047
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

    .line 2049
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    .line 2050
    .local v0, "registerImsIF":Lorg/codeaurora/ims/ImsQmiIF$Registration;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 2052
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->toByteArray()[B

    move-result-object v1

    .line 2054
    .local v1, "registerImsb":[B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2046
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2999
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

    .line 3000
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Clir;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;-><init>()V

    .line 3002
    .local v0, "clirValue":Lorg/codeaurora/ims/ImsQmiIF$Clir;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->setParamN(I)Lorg/codeaurora/ims/ImsQmiIF$Clir;

    .line 3003
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Clir;->toByteArray()[B

    move-result-object v1

    .line 3004
    .local v1, "setCLIRInfo":[B
    const/16 v2, 0x15

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2998
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3204
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

    .line 3205
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    .line 3207
    .local v0, "colrValue":Lorg/codeaurora/ims/ImsQmiIF$Colr;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 3208
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->toByteArray()[B

    move-result-object v1

    .line 3209
    .local v1, "setCOLRInfo":[B
    const/16 v2, 0x22

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3203
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
    .line 3042
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

    .line 3043
    const-string/jumbo v4, "number = "

    .line 3042
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3043
    const-string/jumbo v4, "timeSeconds = "

    .line 3042
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3045
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 3046
    .local v0, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 3047
    .local v1, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3048
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3049
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3050
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3051
    if-eqz p4, :cond_0

    .line 3052
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3053
    :cond_0
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3054
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 3055
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v2

    .line 3056
    .local v2, "setCallForwardInfo":[B
    const/16 v3, 0x17

    invoke-virtual {p0, v3, p6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3041
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
    .line 3063
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

    .line 3064
    const-string/jumbo v7, "number = "

    .line 3063
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3064
    const-string/jumbo v7, "startHour = "

    .line 3063
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3065
    const-string/jumbo v7, "startMinute = "

    .line 3063
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3065
    const-string/jumbo v7, "endHour = "

    .line 3063
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3065
    const-string/jumbo v7, "endMin = "

    .line 3063
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3066
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;-><init>()V

    .line 3068
    .local v1, "callForwardIF":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;-><init>()V

    .line 3069
    .local v2, "callInfo":Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;
    invoke-virtual {v2, p5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3070
    invoke-virtual {v2, p6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setReason(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3071
    invoke-virtual {v2, p7}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3072
    invoke-static/range {p8 .. p8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setToa(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3073
    if-eqz p8, :cond_0

    .line 3074
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3075
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setTimeSeconds(I)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3077
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 3078
    .local v5, "startCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3079
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3080
    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerStart(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3082
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;-><init>()V

    .line 3083
    .local v3, "endCallTimerInfo":Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;
    invoke-virtual {v3, p3}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setHour(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3084
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;->setMinute(I)Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;

    .line 3085
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;->setCallFwdTimerEnd(Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;

    .line 3087
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->addInfo(Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList$CallForwardInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;

    .line 3088
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;->toByteArray()[B

    move-result-object v4

    .line 3089
    .local v4, "setCallForwardInfo":[B
    const/16 v6, 0x17

    move-object/from16 v0, p9

    invoke-virtual {p0, v6, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3062
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3018
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

    .line 3020
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    .line 3021
    .local v2, "setCallWaiting":Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 3022
    .local v1, "sc":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 3023
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 3025
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    .line 3026
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->toByteArray()[B

    move-result-object v0

    .line 3027
    .local v0, "callWaitingSetInfo":[B
    const/16 v3, 0x19

    invoke-virtual {p0, v3, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3017
    return-void

    .line 3024
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
    .line 3141
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 3142
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3140
    return-void

    .line 3141
    .end local v0    # "operation":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "operation":I
    goto :goto_0
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 4
    .param p1, "hoConfig"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3286
    const-string/jumbo v1, "ImsSenderRxr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHandoverConfig hoConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;-><init>()V

    .line 3288
    .local v0, "hoConfigMsg":Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->setHoConfig(I)Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;

    .line 3290
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;->toByteArray()[B

    move-result-object v1

    .line 3289
    const/16 v2, 0x35

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3285
    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 3037
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3036
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 375
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 374
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1706
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

    .line 1707
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1705
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
    .line 2020
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 2021
    .local v1, "srvSetting":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setNetworkMode(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 2022
    invoke-virtual {v1, p4}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 2027
    invoke-virtual {v1, p5}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;->setRestrictionCause(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 2028
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    .line 2029
    .local v0, "srvInfo":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 2030
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 2031
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 2032
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {p0, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2019
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2985
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

    .line 2986
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;-><init>()V

    .line 2987
    .local v1, "svcStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;

    .line 2989
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;->toByteArray()[B

    move-result-object v0

    .line 2990
    .local v0, "suppServiceNotif":[B
    const/16 v2, 0x1b

    invoke-virtual {p0, v2, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2984
    return-void

    .line 2988
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
    .line 3150
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 3151
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3149
    return-void

    .line 3150
    .end local v0    # "operation":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "operation":I
    goto :goto_0
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 4
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUiTTYMode uittyMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3120
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;-><init>()V

    .line 3121
    .local v0, "notify":Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;

    .line 3122
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;->toByteArray()[B

    move-result-object v1

    .line 3123
    .local v1, "setTtyInfo":[B
    const/16 v2, 0x27

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3117
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 3
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiCallingPreference wifiCallingStauts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3272
    const-string/jumbo v2, " wifiCallingPreference : "

    .line 3271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3273
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;-><init>()V

    .line 3274
    .local v0, "wifiCallingInfo":Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 3275
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->setPreference(I)Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;

    .line 3277
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;->toByteArray()[B

    move-result-object v1

    .line 3276
    const/16 v2, 0x2b

    invoke-virtual {p0, v2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3270
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2170
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;-><init>()V

    .line 2171
    .local v0, "dtmfIF":Lorg/codeaurora/ims/ImsQmiIF$Dtmf;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->setDtmf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dtmf;

    .line 2173
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dtmf;->toByteArray()[B

    move-result-object v1

    .line 2175
    .local v1, "dtmfb":[B
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2169
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2179
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2178
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 4
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3188
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

    .line 3190
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 3191
    .local v1, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3192
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3193
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v0

    .line 3194
    .local v0, "supsService":[B
    const/16 v2, 0x1f

    invoke-virtual {p0, v2, p3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3187
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
    .line 3156
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

    .line 3157
    const-string/jumbo v7, "serviceClassValue = "

    .line 3156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3159
    new-instance v5, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;-><init>()V

    .line 3160
    .local v5, "supsServiceStatus":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;
    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setOperationType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3161
    invoke-virtual {v5, p2}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setFacilityType(I)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3163
    new-instance v3, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    .line 3164
    .local v3, "serviceClass":Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    invoke-virtual {v3, p4}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;->setServiceClass(I)Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    .line 3168
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;-><init>()V

    .line 3169
    .local v1, "cbNumListType":Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 3171
    if-eqz p3, :cond_0

    .line 3172
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 3173
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

    .line 3174
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;-><init>()V

    .line 3175
    .local v0, "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    aget-object v6, p3, v2

    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/ImsQmiIF$CbNumList;->setNumber(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$CbNumList;

    .line 3176
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;->addCbNumList(Lorg/codeaurora/ims/ImsQmiIF$CbNumList;)Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;

    .line 3172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3180
    .end local v0    # "cbNumList":Lorg/codeaurora/ims/ImsQmiIF$CbNumList;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->setCbNumListType(Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;)Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;

    .line 3182
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;->toByteArray()[B

    move-result-object v4

    .line 3183
    .local v4, "supsService":[B
    const/16 v6, 0x1f

    invoke-virtual {p0, v6, p5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3155
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2098
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 2099
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 2100
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2096
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;I)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .prologue
    .line 2088
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

    .line 2090
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;-><init>()V

    .line 2091
    .local v0, "switchIF":Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;

    .line 2092
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;->toByteArray()[B

    move-result-object v1

    .line 2093
    .local v1, "switchb":[B
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 2087
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 378
    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 352
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 317
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 316
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1145
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1154
    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 371
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 370
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 325
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 335
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 334
    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 299
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 298
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 343
    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 361
    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 307
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 1689
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

    .line 1688
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 1693
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

    .line 1692
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1697
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

    .line 1696
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 1701
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

    .line 1700
    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVoltePref as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3321
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;-><init>()V

    .line 3322
    .local v0, "prefMsg":Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->setMode(I)Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;

    .line 3323
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {p0, v2, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->encodeMsg(ILandroid/os/Message;[B)V

    .line 3319
    return-void
.end method
