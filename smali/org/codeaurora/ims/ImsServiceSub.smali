.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
    }
.end annotation


# static fields
.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static final SERVICE_TYPE_MAX:I = 0x5


# instance fields
.field private DBG:Z

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CONFERENCE:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_LISTENER_REGISTERED:I

.field private final EVENT_REFRESH_CONF_INFO:I

.field private final EVENT_RINGBACK_TONE:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SRVCC_STATE_CHANGED:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final MAX_FEATURES_SUPPORTED:I

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mContext:Landroid/content/Context;

.field mDisabledFeatures:[I

.field mEnabledFeatures:[I

.field private mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

.field private mImsConfig:Lcom/android/ims/internal/IImsConfig;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

.field private mSrvIdRegListenerTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSub:I

.field private mTrackerTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceClassTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsServiceSub;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsServiceSub;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    return-object v0
.end method

.method static synthetic -get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->dumpEnabledDisabledFeatures()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleConferenceResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleRingbackTone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    .line 46
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    .line 55
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 56
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 57
    iput v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 58
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 60
    iput v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 62
    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 63
    const/4 v0, 0x7

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 65
    const/16 v0, 0x9

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 67
    const/16 v0, 0xb

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 68
    const/16 v0, 0xc

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_LISTENER_REGISTERED:I

    .line 69
    const/16 v0, 0xd

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_RINGBACK_TONE:I

    .line 71
    const/16 v0, 0xe

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 72
    const/16 v0, 0xf

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 73
    const/16 v0, 0x10

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CONFERENCE:I

    .line 74
    const/16 v0, 0x11

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRVCC_STATE_CHANGED:I

    .line 75
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->MAX_FEATURES_SUPPORTED:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 103
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 102
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 106
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    .line 111
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 112
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    .line 115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-virtual {v0, v1, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 138
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 110
    return-void

    .line 85
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 93
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private dumpEnabledDisabledFeatures()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 516
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    if-eqz v2, :cond_0

    .line 517
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 518
    .local v0, "feature":I
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Feature enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "feature":I
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 523
    .restart local v0    # "feature":I
    const-string/jumbo v4, "ImsServiceSub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Feature disabled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "feature":I
    :cond_1
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 343
    const-string/jumbo v3, "ImsServiceSub"

    const-string/jumbo v4, ">handleCalls"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v1, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 347
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 362
    .local v0, "callList":Ljava/util/ArrayList;
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 363
    .local v2, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v2, :cond_2

    .line 371
    const-string/jumbo v3, "ImsServiceSub"

    const-string/jumbo v4, "Call for non-registered service class"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 348
    .end local v0    # "callList":Ljava/util/ArrayList;
    .end local v2    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "callList":Ljava/util/ArrayList;
    goto :goto_0

    .line 355
    .end local v0    # "callList":Ljava/util/ArrayList;
    :cond_1
    return-void

    .line 375
    .restart local v0    # "callList":Ljava/util/ArrayList;
    .restart local v2    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_2
    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 341
    return-void
.end method

.method private handleConferenceResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleConferenceResult(Landroid/os/AsyncResult;)V

    .line 155
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 403
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 406
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 408
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 409
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V

    .line 402
    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 413
    .restart local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 417
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :cond_1
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AsyncResult exception in handleHandover- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 586
    const-string/jumbo v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCallModifyRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 589
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 585
    return-void
.end method

.method private handleRingbackTone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 385
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleRingbackTone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 387
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 388
    .local v0, "ringbackTone":Z
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 391
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRingbackTone(Z)V

    .line 384
    .end local v0    # "ringbackTone":Z
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 394
    .restart local v0    # "ringbackTone":Z
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 398
    .end local v0    # "ringbackTone":Z
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "AsyncResult exception in handleRingbackTone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 428
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleSuppSvc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 431
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 434
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 435
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V

    .line 427
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 439
    .restart local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 444
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :cond_1
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "AsyncResult exception in handleSuppSvc."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTtyModeChange(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 453
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleTtyModeChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 455
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 456
    .local v0, "mode":[I
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 460
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 461
    aget v2, v0, v5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 452
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 463
    .restart local v0    # "mode":[I
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .line 467
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initServiceStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 498
    new-array v1, v5, [Lorg/codeaurora/ims/ServiceStatus;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 500
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v2, v1, v0

    .line 506
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v2, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 507
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v2, v1, v3

    .line 508
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/16 v2, 0xe

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 509
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 510
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/4 v2, 0x2

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 511
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    instance-of v0, p1, Ljava/lang/RuntimeException;

    .line 331
    if-eqz v0, :cond_0

    .line 333
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 334
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 331
    :goto_0
    return v0

    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 964
    const-string/jumbo v0, "ImsServiceSub"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 968
    const-string/jumbo v0, "ImsServiceSub"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 562
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 563
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 561
    :goto_0
    return-void

    .line 566
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 972
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    :cond_0
    const-string/jumbo v0, "ImsServiceSub"

    const-string/jumbo v1, "addRegistrationListener invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 209
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 210
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, " Invalid service ID - cannot create profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-object v0

    .line 214
    .restart local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    goto :goto_0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 230
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 231
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid service Id - cannot create Call Session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 233
    .restart local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "mediaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 545
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 3
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
    .line 534
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 535
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfig:Lcom/android/ims/internal/IImsConfig;

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 266
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 267
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid service Id - cannot get pending session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 269
    .restart local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 7
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, "serviceId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 174
    const/4 v6, -0x2

    .line 194
    :cond_0
    :goto_0
    const-string/jumbo v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getServiceId returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 196
    return v6

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 177
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 178
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_2

    .line 179
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .end local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(ILandroid/app/PendingIntent;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 180
    .restart local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVTGloballySupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVtCapability(Z)V

    .line 181
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-static {v1, p3}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->-wrap0(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 188
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v6

    .line 189
    if-eqz p3, :cond_0

    .line 190
    const-string/jumbo v1, "ImsServiceSub"

    const-string/jumbo v2, "send new listener registered event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 185
    :cond_2
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->setIncomingCallIntent(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    return v0
.end method

.method public getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lorg/codeaurora/ims/ImsUtImpl;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public handleRefreshConfInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 476
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleRefreshConfInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 478
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 479
    .local v0, "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 480
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V

    .line 475
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 483
    .restart local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 487
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    if-eqz p1, :cond_2

    .line 488
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 489
    const-string/jumbo v4, "with result = "

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 489
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_2
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Failed @handleRefreshConfInfo --> AsyncResult is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isVTGloballySupported()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v0

    if-eq v1, v0, :cond_0

    .line 144
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v2

    if-ne v1, v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 577
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 578
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 576
    :goto_0
    return-void

    .line 581
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 3
    .param p1, "sct"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 152
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method public setRegistrants()V
    .locals 5

    .prologue
    .line 275
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 276
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 277
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    .line 278
    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 277
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 244
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    .line 245
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 244
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 246
    .local v0, "oldListener":Lcom/android/ims/internal/IImsRegistrationListener;
    if-eqz v0, :cond_0

    .line 247
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 251
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_1

    .line 252
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid service Id - cannot set reg listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceClass()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 281
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 314
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 313
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 312
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 305
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 304
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 303
    return-void
.end method
