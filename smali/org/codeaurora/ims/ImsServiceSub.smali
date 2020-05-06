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

.field private final EVENT_MWI:I

.field private final EVENT_REFRESH_CONF_INFO:I

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

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field private mPhoneId:I

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

.field private mServiceIdTable:Ljava/util/Map;
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
.method static synthetic -get0(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleConferenceResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap10(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "updateList"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 114
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

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    .line 57
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 58
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 59
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->MAX_FEATURES_SUPPORTED:I

    .line 64
    iput v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 65
    iput v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 68
    const/4 v0, 0x5

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 69
    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 70
    const/4 v0, 0x7

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 71
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 72
    const/16 v0, 0x9

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 74
    const/16 v0, 0xb

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 76
    const/16 v0, 0xc

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 77
    const/16 v0, 0xd

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 78
    const/16 v0, 0xe

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 79
    const/16 v0, 0xf

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CONFERENCE:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRVCC_STATE_CHANGED:I

    .line 87
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 106
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 110
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    .line 115
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 116
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 118
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    .line 134
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p2, p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 144
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 148
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 149
    return-void

    .line 88
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 96
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

.method private createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 343
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$1;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 354
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsServiceSubcreateFeatureCapabilityCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 355
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method

.method private createVoiceMessageUpdateCallbackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "count"    # I

    .prologue
    .line 370
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;I)V

    .line 380
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsServiceSubcreateVoiceMessageUpdateCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 381
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 382
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x1

    .line 558
    const-string/jumbo v7, "ImsServiceSub"

    const-string/jumbo v8, ">handleCalls"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v4, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 562
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 573
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v5, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v1, "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v0, :cond_3

    .line 577
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "dc$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 578
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string/jumbo v7, "ImsServiceSub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleCalls: dc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz v2, :cond_2

    iget-object v7, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v7, :cond_2

    .line 580
    iget-object v7, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 581
    iget-object v7, v2, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-ne v7, v10, :cond_2

    .line 582
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 563
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v1    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v3    # "dc$iterator":Ljava/util/Iterator;
    .end local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_0

    .line 570
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_1
    return-void

    .line 584
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v1    # "csvtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v3    # "dc$iterator":Ljava/util/Iterator;
    .restart local v5    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 593
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v3    # "dc$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 594
    .local v6, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v6, :cond_5

    .line 602
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 603
    const-string/jumbo v7, "ImsServiceSub"

    const-string/jumbo v8, "Call for non-registered service class MMTEL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_4
    :goto_2
    return-void

    .line 607
    :cond_5
    invoke-virtual {v6, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method private handleConferenceResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleConferenceResult(Landroid/os/AsyncResult;)V

    .line 178
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 616
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 619
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 621
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 622
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V

    .line 634
    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 626
    .restart local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void

    .line 631
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
    .line 768
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

    .line 770
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 771
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 772
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 981
    if-eqz p1, :cond_4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 982
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 983
    .local v0, "arMwiUpdate":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 984
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 985
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 986
    .local v3, "mwiIF":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryCount()I

    move-result v4

    .line 987
    .local v4, "summaryCount":I
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    new-array v6, v4, [Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 988
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMwiNotification summaryCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 991
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    new-instance v6, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v6}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    aput-object v6, v5, v2

    .line 992
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 993
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v6

    .line 992
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 994
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 995
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v6

    .line 994
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 996
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 997
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v6

    .line 996
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 998
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 999
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v6

    .line 998
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 1000
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 1001
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v6

    .line 1000
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 1002
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Message Summary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1003
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, v8, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Lorg/codeaurora/ims/Mwi;->summaryToString(Lorg/codeaurora/ims/Mwi$MwiMessageSummary;)Ljava/lang/String;

    move-result-object v7

    .line 1002
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1006
    :cond_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailCount()I

    move-result v1

    .line 1007
    .local v1, "detailsCount":I
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMwiNotification detailsCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    new-array v6, v1, [Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    .line 1009
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1010
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    new-instance v6, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v6}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    aput-object v6, v5, v2

    .line 1011
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1012
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v6

    .line 1011
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 1013
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1014
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    .line 1013
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 1015
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1016
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 1015
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 1017
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 1018
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1019
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v6

    .line 1018
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 1020
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1021
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v6

    .line 1020
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 1022
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1023
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v6

    .line 1022
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 1024
    const-string/jumbo v5, "ImsServiceSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Message Details = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1025
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v8, v8, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Lorg/codeaurora/ims/Mwi;->detailsToString(Lorg/codeaurora/ims/Mwi$MwiMessageDetails;)Ljava/lang/String;

    move-result-object v7

    .line 1024
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1027
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    .line 1037
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    .end local v1    # "detailsCount":I
    .end local v2    # "i":I
    .end local v3    # "mwiIF":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .end local v4    # "summaryCount":I
    :goto_2
    return-void

    .line 1029
    .restart local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :cond_2
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "handleMwiNotification arMwiUpdate.result null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1032
    :cond_3
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "handleMwiNotification arMwiUpdate exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1035
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :cond_4
    const-string/jumbo v5, "ImsServiceSub"

    const-string/jumbo v6, "handleMwiNotification msg null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
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
    .line 392
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v5, 0x0

    .line 393
    .local v5, "isVtEnabled":Z
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetFeatures()V

    .line 394
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "update$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/codeaurora/ims/ServiceStatus;

    .line 395
    .local v12, "update":Lorg/codeaurora/ims/ServiceStatus;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v14, :cond_1

    .line 396
    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Lorg/codeaurora/ims/ServiceStatus;->status:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 397
    const-string/jumbo v16, " isValid = "

    .line 396
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 397
    iget-boolean v0, v12, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    move/from16 v16, v0

    .line 396
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    if-eqz v12, :cond_0

    iget-boolean v14, v12, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v14, :cond_0

    iget v14, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 399
    const/4 v10, 0x0

    .line 400
    .local v10, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget v14, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0xb

    if-ne v14, v15, :cond_a

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v15, 0x4

    aget-object v10, v14, v15

    .line 405
    .local v10, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :goto_0
    iget-boolean v14, v12, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v14, v10, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 406
    iget v14, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v14, v10, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 407
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v14, :cond_2

    .line 408
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v14, v14

    new-array v14, v14, [B

    iput-object v14, v10, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 409
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v15, v12, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v15, v15

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    iput-object v14, v10, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 411
    :cond_2
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v14, :cond_0

    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    if-lez v14, :cond_0

    .line 412
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    new-array v14, v14, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v14, v10, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 414
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v14, :cond_3

    .line 415
    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Call Type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Lorg/codeaurora/ims/ServiceStatus;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "has num updates = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 416
    iget-object v0, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    .line 415
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    iget-object v1, v10, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 419
    .local v1, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v14, v14

    if-ge v4, v14, :cond_0

    .line 421
    iget-object v14, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 420
    aget-object v2, v14, v4

    .line 422
    .local v2, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v14, :cond_4

    .line 423
    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "StatusForAccessTech networkMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 424
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    move/from16 v16, v0

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 425
    const-string/jumbo v16, " registered = "

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 425
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    move/from16 v16, v0

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 426
    const-string/jumbo v16, " status = "

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 426
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    move/from16 v16, v0

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 427
    const-string/jumbo v16, " restrictCause = "

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 427
    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    move/from16 v16, v0

    .line 423
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_4
    new-instance v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v14}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v14, v1, v4

    .line 429
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 430
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 431
    iget v14, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 432
    iget v14, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v14, :cond_b

    .line 433
    aget-object v14, v1, v4

    const/4 v15, 0x1

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 437
    :goto_2
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v14, v10, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 438
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 439
    const/4 v3, -0x1

    .line 440
    .local v3, "feature":I
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x12

    if-eq v14, v15, :cond_c

    .line 441
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 442
    .local v7, "modeWifi":Z
    :goto_3
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    .line 443
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v14, v15, :cond_f

    const/4 v6, 0x1

    .line 444
    .local v6, "modeLte":Z
    :goto_4
    if-nez v7, :cond_5

    if-eqz v6, :cond_9

    .line 445
    :cond_5
    iget v14, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-nez v14, :cond_11

    .line 446
    if-eqz v6, :cond_10

    .line 447
    const/4 v3, 0x0

    .line 458
    :goto_5
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    .line 459
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_15

    .line 460
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v3, v14, v3

    .line 461
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 462
    const/4 v15, -0x1

    .line 461
    aput v15, v14, v3

    .line 464
    const/4 v14, 0x1

    .line 463
    if-eq v3, v14, :cond_7

    .line 466
    const/4 v14, 0x3

    .line 465
    if-ne v3, v14, :cond_8

    .line 467
    :cond_7
    const/4 v5, 0x1

    .line 469
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v14, :cond_9

    .line 470
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

    .line 419
    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 403
    .end local v1    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v3    # "feature":I
    .end local v4    # "i":I
    .end local v6    # "modeLte":Z
    .end local v7    # "modeWifi":Z
    .local v10, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    iget v15, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    aget-object v10, v14, v15

    .local v10, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    goto/16 :goto_0

    .line 435
    .restart local v1    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v2    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v4    # "i":I
    :cond_b
    aget-object v14, v1, v4

    iget v15, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v15, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto/16 :goto_2

    .line 440
    .restart local v3    # "feature":I
    :cond_c
    const/4 v7, 0x1

    .restart local v7    # "modeWifi":Z
    goto :goto_3

    .line 441
    .end local v7    # "modeWifi":Z
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "modeWifi":Z
    goto :goto_3

    .line 442
    :cond_e
    const/4 v6, 0x1

    .restart local v6    # "modeLte":Z
    goto :goto_4

    .line 443
    .end local v6    # "modeLte":Z
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "modeLte":Z
    goto :goto_4

    .line 448
    :cond_10
    const/4 v3, 0x2

    goto :goto_5

    .line 449
    :cond_11
    iget v14, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0xb

    if-ne v14, v15, :cond_13

    .line 450
    if-eqz v6, :cond_12

    .line 451
    const/4 v3, 0x4

    goto :goto_5

    .line 452
    :cond_12
    const/4 v3, 0x5

    goto :goto_5

    .line 454
    :cond_13
    if-eqz v6, :cond_14

    .line 455
    const/4 v3, 0x1

    goto :goto_5

    .line 456
    :cond_14
    const/4 v3, 0x3

    goto :goto_5

    .line 471
    :cond_15
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v14, :cond_16

    .line 472
    aget-object v14, v1, v4

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 474
    :cond_16
    if-eqz v5, :cond_17

    .line 475
    const/4 v14, 0x1

    .line 474
    if-eq v3, v14, :cond_9

    .line 477
    const/4 v14, 0x3

    .line 476
    if-eq v3, v14, :cond_9

    .line 478
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v3, v14, v3

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 480
    const/4 v15, -0x1

    .line 479
    aput v15, v14, v3

    .line 481
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->DBG:Z

    if-eqz v14, :cond_9

    .line 482
    const-string/jumbo v14, "ImsServiceSub"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "disabledFeature = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 490
    .end local v1    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v3    # "feature":I
    .end local v4    # "i":I
    .end local v6    # "modeLte":Z
    .end local v7    # "modeWifi":Z
    .end local v10    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v12    # "update":Lorg/codeaurora/ims/ServiceStatus;
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "r$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 491
    .local v8, "r":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/codeaurora/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_7

    .line 493
    .end local v8    # "r":Lcom/android/ims/internal/IImsRegistrationListener;
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 494
    .local v11, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v11, :cond_1a

    .line 495
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVTGloballySupported()Z

    move-result v14

    invoke-virtual {v11, v14}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVtCapability(Z)V

    .line 499
    :goto_8
    return-void

    .line 497
    :cond_1a
    const-string/jumbo v14, "handleSrvStatusUpdate tracker is null so not updating global VT capability"

    invoke-static {v14}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 642
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleSuppSvc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 645
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 648
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 649
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V

    .line 660
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 653
    .restart local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 658
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

    .line 667
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleTtyModeChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 669
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 670
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

    .line 673
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 674
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 675
    aget v2, v0, v5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 683
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 677
    .restart local v0    # "mode":[I
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void

    .line 681
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

    .line 153
    new-array v1, v5, [Lorg/codeaurora/ims/ServiceStatus;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 155
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v2, v1, v0

    .line 160
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v2, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 161
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v2, v1, v3

    .line 162
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/16 v2, 0xe

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 163
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 164
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/4 v2, 0x2

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 165
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 547
    instance-of v0, p1, Ljava/lang/RuntimeException;

    .line 546
    if-eqz v0, :cond_0

    .line 548
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 549
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 546
    :goto_0
    return v0

    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSrvTypeValid(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    const/16 v2, 0xb

    if-ne p1, v2, :cond_0

    .line 361
    return v0

    .line 363
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-le p1, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 973
    const-string/jumbo v0, "ImsServiceSub"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 977
    const-string/jumbo v0, "ImsServiceSub"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void
.end method

.method private resetFeatures()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v2, v1, v0

    .line 387
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v2, v1, v0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method private updateVoiceMail()V
    .locals 7

    .prologue
    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v4, v4, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 1042
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v4, v4, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v4, v4, v1

    iget v4, v4, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v4, :cond_1

    .line 1043
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v4, v4, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v4, v4, v1

    iget v4, v4, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/lit8 v4, v4, 0x0

    .line 1044
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v1

    iget v5, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 1043
    add-int v0, v4, v5

    .line 1050
    :cond_0
    const-string/jumbo v4, "ImsServiceSub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateVoiceMail count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1053
    .local v2, "r":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-direct {p0, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->createVoiceMessageUpdateCallbackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V

    goto :goto_1

    .line 1041
    .end local v2    # "r":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1055
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 719
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 720
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 725
    :goto_0
    return-void

    .line 723
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
    .line 1058
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    :goto_0
    return-void

    .line 1061
    :cond_0
    const-string/jumbo v0, "ImsServiceSub"

    const-string/jumbo v1, "addRegistrationListener invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 226
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 227
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, " Invalid service ID - cannot create profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    :goto_0
    return-object v0

    .line 231
    .restart local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    .end local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-direct {v0, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 247
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 248
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

    .line 252
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 250
    .restart local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "mediaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 702
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
    .line 691
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 692
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

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 283
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 284
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

    .line 288
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 286
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
    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, "serviceId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 195
    const/4 v6, -0x2

    .line 211
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

    .line 212
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 213
    return v6

    .line 197
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 198
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 199
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 200
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .end local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(ILandroid/app/PendingIntent;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 201
    .restart local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVTGloballySupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVtCapability(Z)V

    .line 202
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_1
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 209
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v6

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->setIncomingCallIntent(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    return v0
.end method

.method public getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lorg/codeaurora/ims/ImsUtImpl;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public handleRefreshConfInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 732
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "handleRefreshConfInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 734
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 735
    .local v0, "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 736
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V

    .line 750
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 739
    .restart local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "ImsServiceSub"

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void

    .line 743
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    if-eqz p1, :cond_2

    .line 744
    const-string/jumbo v2, "ImsServiceSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    const-string/jumbo v4, "with result = "

    .line 744
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 744
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
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

    .line 502
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v0

    if-eq v1, v0, :cond_0

    .line 504
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v2

    if-ne v1, v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForPhoneId(I)V

    .line 311
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 759
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 760
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 3
    .param p1, "sct"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method public setPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 292
    const-string/jumbo v1, "ImsServiceSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPhoneId old Phone Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", new Phone Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    if-eq v1, p1, :cond_1

    .line 294
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 298
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 299
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 300
    const/16 v3, 0x10

    .line 299
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 303
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 261
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    .line 262
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 261
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 263
    .local v0, "oldListener":Lcom/android/ims/internal/IImsRegistrationListener;
    if-eqz v0, :cond_0

    .line 264
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 268
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_1

    .line 269
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

    .line 273
    :goto_0
    return-void

    .line 271
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
    .line 306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 307
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 537
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 536
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 538
    return-void
.end method

.method public turnOnIms()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 514
    const-string/jumbo v2, "volte_vt_enabled"

    .line 512
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 517
    .local v0, "enhanced4GMode":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 518
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, v4, v6, v3, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 521
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, v3, v6, v3, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 524
    const-string/jumbo v1, "ImsServiceSub"

    const-string/jumbo v2, "turnOnIms() : Enhanced4gLTEmode disabled -> disable VoLTE/ViLTE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 528
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 527
    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 529
    return-void
.end method
