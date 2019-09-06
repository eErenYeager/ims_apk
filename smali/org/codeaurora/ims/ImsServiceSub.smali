.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;,
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
    }
.end annotation


# static fields
.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final CODE_SERVICE_CLASS_NOT_SUPPORTED:I = -0x2

.field private static final EVENT_GET_PACKET_COUNT:I = 0x12

.field private static final EVENT_GET_PACKET_ERROR_COUNT:I = 0x13

.field private static final SERVICE_TYPE_MAX:I = 0x5

.field private static sTaskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final EVENT_CALL_DEFLECT:I

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CALL_TRANSFER:I

.field private final EVENT_CONFERENCE:I

.field private final EVENT_GEOLOCATION_INFO_REQUEST:I

.field private final EVENT_GEOLOCATION_RESPONSE:I

.field private final EVENT_GET_CALL_FORWARD_TIMER:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_HANDOVER_CONFIG:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_GET_VOLTE_PREF:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_MWI:I

.field private final EVENT_PARTICIPANT_STATUS_INFO:I

.field private final EVENT_REFRESH_CONF_INFO:I

.field private final EVENT_REFRESH_VICE_INFO:I

.field private final EVENT_SET_CALL_FORWARD_TIMER:I

.field private final EVENT_SET_HANDOVER_CONFIG:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SET_VOLTE_PREF:I

.field private final EVENT_SRVCC_STATE_CHANGED:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SSAC_CHANGED:I

.field private final EVENT_SSAC_RESPONSE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final EVENT_VOPS_CHANGED:I

.field private final EVENT_VOPS_RESPONSE:I

.field private final EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

.field private final MAX_FEATURES_SUPPORTED:I

.field private final SSAC_VOICE_BARRING_ZERO:I

.field private mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mContext:Landroid/content/Context;

.field mDisabledFeatures:[I

.field mEnabledFeatures:[I

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field private mPhoneId:I

.field private mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

.field private mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegCallbackHandler:Landroid/os/Handler;

.field private mRegHandlerThread:Landroid/os/HandlerThread;

.field private mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

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
.method static synthetic -get0(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap11(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic -wrap12(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap13(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleQueryVoltePrefResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap14(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleRefreshViceInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap15(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "updateList"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap16(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvccResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap17(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap18(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsac(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap19(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getAllRegListeners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap21(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUpdateVoltePrefResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap22(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVoWiFiCallQuality(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap23(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap24(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVops(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap25(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic -wrap26(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap27(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap28(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetPacketCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap29(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetPacketErrorCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap30(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap31(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap32(Lorg/codeaurora/ims/ImsServiceSub;Lcom/android/ims/ImsReasonInfo;I)V
    .locals 0
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .param p2, "regState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(Lcom/android/ims/ImsReasonInfo;I)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallDeflectResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallTransferResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleConferenceResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationRequest(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap9(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "sub"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    .line 81
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 82
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 83
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 84
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 86
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 87
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 88
    iput v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->SSAC_VOICE_BARRING_ZERO:I

    .line 93
    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->MAX_FEATURES_SUPPORTED:I

    .line 107
    iput v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 110
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 111
    const/4 v0, 0x5

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 112
    iput v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 113
    const/4 v0, 0x7

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 114
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 115
    const/16 v0, 0x9

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 116
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 117
    const/16 v0, 0xb

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 119
    const/16 v0, 0xc

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 120
    const/16 v0, 0xd

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 121
    const/16 v0, 0xe

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 122
    const/16 v0, 0xf

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CONFERENCE:I

    .line 123
    const/16 v0, 0x10

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_CALL_FORWARD_TIMER:I

    .line 124
    const/16 v0, 0x11

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_TIMER:I

    .line 127
    const/16 v0, 0x14

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_DEFLECT:I

    .line 128
    const/16 v0, 0x15

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRVCC_STATE_CHANGED:I

    .line 129
    const/16 v0, 0x16

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_INFO_REQUEST:I

    .line 130
    const/16 v0, 0x17

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_RESPONSE:I

    .line 131
    const/16 v0, 0x18

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

    .line 132
    const/16 v0, 0x19

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_TRANSFER:I

    .line 133
    const/16 v0, 0x1a

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_CHANGED:I

    .line 134
    const/16 v0, 0x1b

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_CHANGED:I

    .line 135
    const/16 v0, 0x1c

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_RESPONSE:I

    .line 136
    const/16 v0, 0x1d

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_RESPONSE:I

    .line 137
    const/16 v0, 0x1e

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_VICE_INFO:I

    .line 138
    const/16 v0, 0x1f

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PARTICIPANT_STATUS_INFO:I

    .line 139
    const/16 v0, 0x20

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_VOLTE_PREF:I

    .line 140
    const/16 v0, 0x21

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_VOLTE_PREF:I

    .line 141
    const/16 v0, 0x22

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_HANDOVER_CONFIG:I

    .line 142
    const/16 v0, 0x23

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_HANDOVER_CONFIG:I

    .line 151
    iput v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 152
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 160
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 172
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 176
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    .line 179
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    .line 184
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    .line 185
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 186
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 187
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "RegHandlerThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegHandlerThread:Landroid/os/HandlerThread;

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 207
    const/16 v2, 0x18

    .line 206
    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 213
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    .line 216
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 219
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/parser/ImsViceParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 222
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 229
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-static {v0, v1, v4, v4}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(Landroid/content/Context;IZZ)V

    .line 236
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 239
    new-instance v0, Lorg/codeaurora/ims/QtiImsExt;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lorg/codeaurora/ims/QtiImsExt;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 183
    return-void

    .line 152
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

    .line 160
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

.method private broadcastVopsSsacIntent()V
    .locals 3

    .prologue
    .line 1987
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1988
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1989
    const-string/jumbo v1, "Vops"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1990
    const-string/jumbo v1, "Ssac"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "broadcastVopsSsacIntent Vops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1992
    const-string/jumbo v2, " , Ssac = "

    .line 1991
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1992
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 1991
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1993
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1986
    return-void
.end method

.method private canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 894
    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 895
    :cond_2
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_1

    .line 896
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private convertQtiImsTransferTypeToImsQmiType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 759
    packed-switch p1, :pswitch_data_0

    .line 767
    :pswitch_0
    return p1

    .line 761
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 763
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 765
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getAllRegListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2101
    .local v0, "list":Ljava/util/LinkedList;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2102
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2104
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2105
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2107
    :cond_1
    return-object v0
.end method

.method private getCallsListToClear()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "mmTelCallsList":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 301
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 302
    const-string/jumbo v2, "Call for non-registered service class MMTEL"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .end local v0    # "mmTelCallsList":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 305
    .restart local v0    # "mmTelCallsList":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 1788
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0

    .line 1791
    :cond_0
    const-string/jumbo v0, "getImsConfigListener returns null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1792
    return-object v1
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 1566
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1567
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2120
    const/4 v0, 0x0

    .line 2121
    .local v0, "status":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2123
    const/4 v0, 0x1

    .line 2125
    :cond_0
    return v0
.end method

.method private handleCallDeflectResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1669
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1672
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1673
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1675
    const/4 v1, 0x1

    .line 1677
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCallDeflectResponse: Result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1680
    if-eqz v0, :cond_1

    .line 1682
    :try_start_0
    invoke-interface {v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallDeflectResponse(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_0
    return-void

    .line 1683
    :catch_0
    move-exception v2

    .line 1684
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "handleCallDeflectResponse exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1687
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v3, "handleCallDeflectResponse: no listener is available"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCallTransferResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1765
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1768
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1769
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1771
    const/4 v1, 0x1

    .line 1773
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCallTransferResponse: Result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1776
    if-eqz v0, :cond_1

    .line 1778
    :try_start_0
    invoke-interface {v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallTransferResponse(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :goto_0
    return-void

    .line 1779
    :catch_0
    move-exception v2

    .line 1780
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "handleCallTransferResponse exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1783
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v3, "handleCallTransferResponse: no listener is available"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 954
    const-string/jumbo v6, ">handleCalls"

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 957
    .local v3, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 958
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 969
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v4, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v0, :cond_2

    .line 972
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dc$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/DriverCallIms;

    .line 973
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCalls: dc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 959
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v1    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v2    # "dc$iterator":Ljava/util/Iterator;
    .end local v4    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_0

    .line 966
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_1
    return-void

    .line 982
    .restart local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .restart local v4    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_2
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 983
    .local v5, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v5, :cond_4

    .line 991
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 992
    const-string/jumbo v6, "Call for non-registered service class MMTEL"

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    :cond_3
    :goto_2
    return-void

    .line 996
    :cond_4
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->updateCallTransferInfo(Ljava/util/ArrayList;)V

    .line 998
    invoke-virtual {v5, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method private handleConferenceResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleConferenceResult(Landroid/os/AsyncResult;)V

    .line 281
    return-void
.end method

.method private handleGeolocationRequest(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1701
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    .line 1702
    .local v6, "geoInfo":Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    if-nez v6, :cond_0

    .line 1703
    const-string/jumbo v0, "handleGeolocationRequest :: Null AsyncResult!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1704
    return-void

    .line 1707
    :cond_0
    :try_start_0
    sget-object v8, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1708
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLat()D

    move-result-wide v2

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLon()D

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;-><init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V

    .line 1707
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :goto_0
    return-void

    .line 1709
    :catch_0
    move-exception v7

    .line 1710
    .local v7, "rex":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleGeolocationRequest :: Failure to start GeocoderTask thread for [lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1711
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLat()D

    move-result-wide v2

    .line 1710
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1712
    const-string/jumbo v1, " | long="

    .line 1710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1712
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLon()D

    move-result-wide v2

    .line 1710
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1712
    const-string/jumbo v1, "]!\n"

    .line 1710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v7}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleGeolocationResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1692
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1693
    const-string/jumbo v0, "handleGeolocationResponse :: Error response!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1691
    :cond_0
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1011
    const-string/jumbo v2, "handleHandover"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    const/4 v0, 0x0

    .line 1013
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1014
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 1016
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1017
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1018
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/ImsQmiIF$Handover;)V

    .line 1010
    .end local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1021
    .restart local v0    # "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "Message for non-registered service class"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    return-void

    .line 1026
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    .local v0, "handover":Lorg/codeaurora/ims/ImsQmiIF$Handover;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AsyncResult exception in handleHandover- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCallModifyRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1166
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 1162
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1796
    if-eqz p1, :cond_4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 1797
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1798
    .local v0, "arMwiUpdate":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 1799
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 1800
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    .line 1801
    .local v3, "mwiIF":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryCount()I

    move-result v4

    .line 1802
    .local v4, "summaryCount":I
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    new-array v6, v4, [Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 1803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMwiNotification summaryCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1805
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1806
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    new-instance v6, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v6}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    aput-object v6, v5, v2

    .line 1807
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 1808
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v6

    .line 1807
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 1809
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 1810
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v6

    .line 1809
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 1811
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 1812
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v6

    .line 1811
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 1813
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 1814
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v6

    .line 1813
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 1815
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v5, v5, v2

    .line 1816
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v6

    .line 1815
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 1817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Message Summary = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1818
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v7, v7, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/Mwi;->summaryToString(Lorg/codeaurora/ims/Mwi$MwiMessageSummary;)Ljava/lang/String;

    move-result-object v6

    .line 1817
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1805
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1821
    :cond_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailCount()I

    move-result v1

    .line 1822
    .local v1, "detailsCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMwiNotification detailsCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1823
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    new-array v6, v1, [Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    .line 1824
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1825
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    new-instance v6, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v6}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    aput-object v6, v5, v2

    .line 1826
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1827
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getToAddress()Ljava/lang/String;

    move-result-object v6

    .line 1826
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 1828
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1829
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    .line 1828
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 1830
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1831
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 1830
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 1832
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getDate()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 1833
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1834
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getPriority()I

    move-result v6

    .line 1833
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 1835
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1836
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageId()Ljava/lang/String;

    move-result-object v6

    .line 1835
    iput-object v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 1837
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v5, v5, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v5, v5, v2

    .line 1838
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;->getMessageType()I

    move-result v6

    .line 1837
    iput v6, v5, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 1839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Message Details = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1840
    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v7, v7, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:[Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/Mwi;->detailsToString(Lorg/codeaurora/ims/Mwi$MwiMessageDetails;)Ljava/lang/String;

    move-result-object v6

    .line 1839
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1824
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1842
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    .line 1795
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    .end local v1    # "detailsCount":I
    .end local v2    # "i":I
    .end local v3    # "mwiIF":Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .end local v4    # "summaryCount":I
    :goto_2
    return-void

    .line 1844
    .restart local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :cond_2
    const-string/jumbo v5, "handleMwiNotification arMwiUpdate.result null"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1847
    :cond_3
    const-string/jumbo v5, "handleMwiNotification arMwiUpdate exception"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1850
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :cond_4
    const-string/jumbo v5, "handleMwiNotification msg null"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleQueryVoltePrefResponse(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 2146
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2147
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I

    move-result v3

    .line 2148
    .local v3, "result":I
    const/4 v2, 0x2

    .line 2149
    .local v2, "preference":I
    if-nez v3, :cond_0

    .line 2151
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2152
    .local v1, "pref":[I
    aget v2, v1, v5

    .line 2154
    .end local v1    # "pref":[I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleQueryVoltePrefResponse: result-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2157
    if-eqz v0, :cond_1

    .line 2159
    :try_start_0
    invoke-interface {v0, v3, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceQueried(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    :goto_0
    return-void

    .line 2160
    :catch_0
    move-exception v4

    .line 2161
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "handleQueryVoltePrefResponse exception!"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2164
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v5, "handleQueryVoltePrefResponse: no listener is available"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRefreshViceInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 1880
    if-eqz p2, :cond_1

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1881
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;

    .line 1883
    .local v1, "viceInfo":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;->getViceInfoUri()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    .line 1885
    .local v0, "refreshViceInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    const/4 v2, 0x0

    .line 1887
    .local v2, "viceInfoBytes":[B
    if-eqz v0, :cond_0

    .line 1888
    invoke-virtual {v0}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    if-ltz v3, :cond_0

    .line 1889
    invoke-virtual {v0}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v3

    new-array v2, v3, [B

    .line 1890
    .local v2, "viceInfoBytes":[B
    invoke-virtual {v0, v2, v4}, Lcom/google/protobuf/micro/ByteStringMicro;->copyTo([BI)V

    .line 1891
    invoke-direct {p0, v2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->processViceInfo([BLorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 1879
    .end local v0    # "refreshViceInfoUri":Lcom/google/protobuf/micro/ByteStringMicro;
    .end local v1    # "viceInfo":Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;
    .end local v2    # "viceInfoBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    const-string/jumbo v3, "handleRefreshViceInfo exception"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 13
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
    .line 521
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    const/4 v4, 0x0

    .line 522
    .local v4, "isVideoEnabled":Z
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetFeatures()V

    .line 523
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "update$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codeaurora/ims/ServiceStatus;

    .line 524
    .local v9, "update":Lorg/codeaurora/ims/ServiceStatus;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 525
    const-string/jumbo v12, " isValid = "

    .line 524
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 525
    iget-boolean v12, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 524
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    if-eqz v9, :cond_0

    iget-boolean v11, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v11, :cond_0

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {p0, v11}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 527
    const/4 v7, 0x0

    .line 528
    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_7

    .line 529
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v12, 0x4

    aget-object v7, v11, v12

    .line 533
    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :goto_0
    iget-boolean v11, v9, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v11, v7, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 534
    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v11, v7, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 535
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v11, :cond_1

    .line 536
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v11, v11

    new-array v11, v11, [B

    iput-object v11, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 537
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v12, v9, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    iput-object v11, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 539
    :cond_1
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v11, :cond_0

    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 540
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    new-array v11, v11, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v11, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 542
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Call Type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "has num updates = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 543
    iget-object v12, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v12, v12

    .line 542
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 546
    .local v0, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    if-ge v3, v11, :cond_0

    .line 548
    iget-object v11, v9, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 547
    aget-object v1, v11, v3

    .line 549
    .local v1, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "StatusForAccessTech networkMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 550
    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 551
    const-string/jumbo v12, " registered = "

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 551
    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 552
    const-string/jumbo v12, " status = "

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 552
    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 553
    const-string/jumbo v12, " restrictCause = "

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 553
    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 549
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    new-instance v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v11}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v11, v0, v3

    .line 555
    aget-object v11, v0, v3

    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 556
    aget-object v11, v0, v3

    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 557
    iget v11, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 558
    iget v11, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v11, :cond_8

    .line 559
    aget-object v11, v0, v3

    const/4 v12, 0x1

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 563
    :goto_2
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v11, v7, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 564
    aget-object v11, v0, v3

    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 565
    const/4 v2, -0x1

    .line 566
    .local v2, "feature":I
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_9

    .line 567
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v12, 0x13

    if-ne v11, v12, :cond_a

    const/4 v6, 0x1

    .line 568
    .local v6, "modeWifi":Z
    :goto_3
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b

    .line 569
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v12, 0xe

    if-ne v11, v12, :cond_c

    const/4 v5, 0x1

    .line 570
    .local v5, "modeLte":Z
    :goto_4
    if-nez v6, :cond_2

    if-eqz v5, :cond_6

    .line 571
    :cond_2
    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-nez v11, :cond_e

    .line 572
    if-eqz v5, :cond_d

    .line 573
    const/4 v2, 0x0

    .line 584
    :goto_5
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 585
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    .line 586
    :cond_3
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v2, v11, v2

    .line 587
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 588
    const/4 v12, -0x1

    .line 587
    aput v12, v11, v2

    .line 590
    const/4 v11, 0x1

    .line 589
    if-eq v2, v11, :cond_4

    .line 592
    const/4 v11, 0x3

    .line 591
    if-ne v2, v11, :cond_5

    .line 593
    :cond_4
    const/4 v4, 0x1

    .line 595
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "enabledFeature = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 531
    .end local v0    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v1    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "feature":I
    .end local v3    # "i":I
    .end local v5    # "modeLte":Z
    .end local v6    # "modeWifi":Z
    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    :cond_7
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    iget v12, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    aget-object v7, v11, v12

    .local v7, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    goto/16 :goto_0

    .line 561
    .restart local v0    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v1    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v3    # "i":I
    :cond_8
    aget-object v11, v0, v3

    iget v12, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_2

    .line 566
    .restart local v2    # "feature":I
    :cond_9
    const/4 v6, 0x1

    .restart local v6    # "modeWifi":Z
    goto :goto_3

    .line 567
    .end local v6    # "modeWifi":Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "modeWifi":Z
    goto :goto_3

    .line 568
    :cond_b
    const/4 v5, 0x1

    .restart local v5    # "modeLte":Z
    goto :goto_4

    .line 569
    .end local v5    # "modeLte":Z
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "modeLte":Z
    goto :goto_4

    .line 574
    :cond_d
    const/4 v2, 0x2

    goto :goto_5

    .line 575
    :cond_e
    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_10

    .line 576
    if-eqz v5, :cond_f

    .line 577
    const/4 v2, 0x4

    goto :goto_5

    .line 578
    :cond_f
    const/4 v2, 0x5

    goto :goto_5

    .line 580
    :cond_10
    if-eqz v5, :cond_11

    .line 581
    const/4 v2, 0x1

    goto :goto_5

    .line 582
    :cond_11
    const/4 v2, 0x3

    goto :goto_5

    .line 596
    :cond_12
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v11, :cond_13

    .line 597
    aget-object v11, v0, v3

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    .line 599
    :cond_13
    if-eqz v4, :cond_14

    .line 600
    const/4 v11, 0x1

    .line 599
    if-eq v2, v11, :cond_6

    .line 602
    const/4 v11, 0x3

    .line 601
    if-eq v2, v11, :cond_6

    .line 603
    :cond_14
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v2, v11, v2

    .line 604
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 605
    const/4 v12, -0x1

    .line 604
    aput v12, v11, v2

    .line 606
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "disabledFeature = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 614
    .end local v0    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v1    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "feature":I
    .end local v3    # "i":I
    .end local v5    # "modeLte":Z
    .end local v6    # "modeWifi":Z
    .end local v7    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v9    # "update":Lorg/codeaurora/ims/ServiceStatus;
    :cond_15
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 615
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 616
    .local v8, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v8, :cond_16

    .line 617
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v11

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v12

    invoke-virtual {v8, v11, v12}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 633
    :goto_7
    iget-object v11, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v11}, Lorg/codeaurora/ims/ImsServiceSub;->processViceInfoOnFeatureCapabilityChange(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 520
    return-void

    .line 619
    :cond_16
    const-string/jumbo v11, "handleSrvStatusUpdate tracker is null so not updating global VT capability"

    invoke-static {p0, v11}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private handleSrvccResponse(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 286
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 287
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->calculateOverallSrvccState([I)V

    .line 285
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error EVENT_SRVCC_STATE_CHANGED tracker is null or srvcc exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSsac(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 1975
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1976
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 1978
    .local v0, "ssacInd":Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSsac voice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 1980
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 1974
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :goto_0
    return-void

    .line 1982
    :cond_1
    const-string/jumbo v1, "handleSsac exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 2030
    if-eqz p2, :cond_2

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 2031
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 2033
    .local v1, "ssacInd":Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSsacResponse voice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2036
    if-eqz p1, :cond_1

    .line 2038
    :try_start_0
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-interface {p1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifySsacStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    .end local v1    # "ssacInd":Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :cond_1
    :goto_0
    return-void

    .line 2039
    .restart local v1    # "ssacInd":Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :catch_0
    move-exception v0

    .line 2040
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2044
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ssacInd":Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    :cond_2
    const-string/jumbo v2, "handleSsacResponse exception"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1037
    const-string/jumbo v2, "handleSuppSvc"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1040
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;

    .line 1043
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1044
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1045
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;)V

    .line 1036
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1048
    .restart local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "Message for non-registered service class"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    return-void

    .line 1053
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;
    :cond_1
    const-string/jumbo v2, "AsyncResult exception in handleSuppSvc."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleTtyModeChange(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 1062
    const-string/jumbo v2, "handleTtyModeChange"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1064
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1065
    .local v0, "mode":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1069
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1070
    aget v2, v0, v5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 1061
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1072
    .restart local v0    # "mode":[I
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "Message for non-registered service class"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    return-void

    .line 1076
    .end local v0    # "mode":[I
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUpdateVoltePrefResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2129
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2130
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I

    move-result v1

    .line 2131
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUpdateVoltePrefResponse: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2134
    if-eqz v0, :cond_0

    .line 2136
    :try_start_0
    invoke-interface {v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceUpdated(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    :goto_0
    return-void

    .line 2137
    :catch_0
    move-exception v2

    .line 2138
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "handleUpdateVoltePrefResponse exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2141
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v3, "handleUpdateVoltePrefResponse: no listener is available"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleVoWiFiCallQuality(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 1937
    if-eqz p1, :cond_2

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1938
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1939
    .local v1, "voWifiCallQuality":[I
    aget v2, v1, v4

    if-eqz v2, :cond_1

    .line 1940
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1941
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1942
    aget v2, v1, v4

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVoWiFiCallQuality(I)V

    .line 1936
    .end local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    .end local v1    # "voWifiCallQuality":[I
    :goto_0
    return-void

    .line 1944
    .restart local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    .restart local v1    # "voWifiCallQuality":[I
    :cond_0
    const-string/jumbo v2, "Wifi Quality Error -- tracker is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1947
    .end local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleVoWiFiCallQuality received VoWiFIQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1948
    aget v3, v1, v4

    .line 1947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1951
    .end local v1    # "voWifiCallQuality":[I
    :cond_2
    const-string/jumbo v2, "handleVoWiFiCallQuality response is not valid"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleVops(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1964
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1965
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    .line 1967
    .local v0, "vops":Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->getIsVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 1968
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 1963
    .end local v0    # "vops":Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :goto_0
    return-void

    .line 1970
    :cond_0
    const-string/jumbo v1, "handleVops exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2011
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 2012
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;

    .line 2014
    .local v1, "vops":Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;->getIsVopsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Vops Response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    if-eqz p1, :cond_0

    .line 2019
    :try_start_0
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-interface {p1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyVopsStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    .end local v1    # "vops":Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :cond_0
    :goto_0
    return-void

    .line 2020
    .restart local v1    # "vops":Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2025
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "vops":Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;
    :cond_1
    const-string/jumbo v2, "handleVopsResponse exception"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initServiceStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 258
    new-array v1, v5, [Lorg/codeaurora/ims/ServiceStatus;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 260
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v2, v1, v0

    .line 265
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v2, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 266
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v2}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v2, v1, v3

    .line 267
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/16 v2, 0xe

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 268
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 269
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v3

    const/4 v2, 0x2

    iput v2, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 270
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v1, v1, v0

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 877
    if-eqz p1, :cond_0

    .line 878
    instance-of v0, p1, Ljava/lang/RuntimeException;

    .line 877
    if-eqz v0, :cond_0

    .line 879
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 880
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 877
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

    .line 487
    const/16 v2, 0xb

    if-ne p1, v2, :cond_0

    .line 488
    return v0

    .line 490
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-le p1, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private isVideoSupported()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 637
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v0

    if-eq v1, v0, :cond_0

    .line 639
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v1, v1, v2

    if-ne v1, v2, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 644
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v2, v2, v3

    if-ne v2, v3, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 646
    goto :goto_0
.end method

.method private notifyFeatureCapabilityChange()V
    .locals 2

    .prologue
    .line 467
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 480
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_0
    return-void
.end method

.method private notifyVoiceMessageCountUpdate(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 496
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$2;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;I)V

    .line 508
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    :cond_0
    return-void
.end method

.method private onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 15
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1606
    const/4 v2, 0x0

    .line 1607
    .local v2, "startHour":I
    const/4 v3, 0x0

    .line 1608
    .local v3, "endHour":I
    const/4 v4, 0x0

    .line 1609
    .local v4, "startMinute":I
    const/4 v5, 0x0

    .line 1610
    .local v5, "endMinute":I
    const/4 v6, 0x0

    .line 1611
    .local v6, "reason":I
    const/4 v7, 0x0

    .line 1612
    .local v7, "status":I
    const/4 v8, 0x0

    .line 1613
    .local v8, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1615
    .local v9, "serviceClass":I
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1616
    const-string/jumbo v1, "get CF Timer error!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    const/4 v1, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v14}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :goto_0
    return-void

    .line 1619
    :catch_0
    move-exception v13

    .line 1620
    .local v13, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onUTReqFailed exception!"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1624
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1625
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v1, :cond_1

    .line 1626
    const-string/jumbo v1, "onGetCallForwardTimerDone ImsCallForwardTimerInfo instance! "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1628
    .local v11, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v12, 0x0

    .end local v8    # "number":Ljava/lang/String;
    .local v12, "i":I
    :goto_1
    array-length v1, v11

    if-ge v12, v1, :cond_2

    .line 1629
    aget-object v1, v11, v12

    iget v2, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1630
    aget-object v1, v11, v12

    iget v3, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1631
    aget-object v1, v11, v12

    iget v4, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1632
    aget-object v1, v11, v12

    iget v5, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1633
    aget-object v1, v11, v12

    iget v6, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1634
    aget-object v1, v11, v12

    iget v7, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1635
    aget-object v1, v11, v12

    iget-object v8, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1636
    .local v8, "number":Ljava/lang/String;
    aget-object v1, v11, v12

    iget v9, v1, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1628
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1638
    .end local v11    # "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v12    # "i":I
    .local v8, "number":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v1, :cond_2

    .line 1639
    const-string/jumbo v1, "onGetCallForwardTimerDone CallForwardInfo instance! "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1641
    .local v10, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v12, 0x0

    .end local v8    # "number":Ljava/lang/String;
    .restart local v12    # "i":I
    :goto_2
    array-length v1, v10

    if-ge v12, v1, :cond_2

    .line 1642
    aget-object v1, v10, v12

    iget v6, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1643
    aget-object v1, v10, v12

    iget v7, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1644
    aget-object v1, v10, v12

    iget-object v8, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1645
    .local v8, "number":Ljava/lang/String;
    aget-object v1, v10, v12

    iget v9, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1641
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1650
    .end local v8    # "number":Ljava/lang/String;
    .end local v10    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v12    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 1651
    if-nez v6, :cond_4

    move-object/from16 v1, p1

    .line 1653
    :try_start_1
    invoke-interface/range {v1 .. v9}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1605
    :cond_3
    :goto_3
    return-void

    .line 1655
    :catch_1
    move-exception v13

    .line 1656
    .restart local v13    # "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "onGetCallForwardTimerDone exception!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1660
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_4
    const/16 v1, 0x324

    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v14}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1661
    :catch_2
    move-exception v13

    .line 1662
    .restart local v13    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onUTReqFailed exception!"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2169
    if-eqz p1, :cond_2

    .line 2171
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v1

    .line 2172
    .local v1, "status":I
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 2173
    const/4 v0, 0x0

    .line 2175
    .local v0, "result":I
    :goto_1
    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetHandoverConfig(II)V

    .line 2168
    .end local v0    # "result":I
    .end local v1    # "status":I
    :goto_2
    return-void

    .line 2171
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2174
    .restart local v1    # "status":I
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "result":I
    goto :goto_1

    .line 2176
    .end local v0    # "result":I
    .end local v1    # "status":I
    :catch_0
    move-exception v2

    .line 2177
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetHandoverConfigDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 2180
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v3, "onGetHandoverConfigDone listener is not valid !!!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onGetPacketCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1538
    if-eqz p1, :cond_2

    .line 1540
    :try_start_0
    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v2

    .line 1541
    .local v2, "status":I
    iget-object v4, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    .line 1542
    .local v0, "result":J
    :goto_1
    invoke-interface {p1, v2, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetPacketCount(IJ)V

    .line 1537
    .end local v0    # "result":J
    .end local v2    # "status":I
    :goto_2
    return-void

    .line 1540
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1541
    .restart local v2    # "status":I
    :cond_1
    iget-object v4, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "result":J
    goto :goto_1

    .line 1543
    .end local v0    # "result":J
    .end local v2    # "status":I
    :catch_0
    move-exception v3

    .line 1544
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetPacketCountDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1547
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v4, "onGetPacketCountDone listener is not valid !!!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onGetPacketErrorCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1552
    if-eqz p1, :cond_2

    .line 1554
    :try_start_0
    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v2

    .line 1555
    .local v2, "status":I
    iget-object v4, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    .line 1556
    .local v0, "result":J
    :goto_1
    invoke-interface {p1, v2, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetPacketErrorCount(IJ)V

    .line 1551
    .end local v0    # "result":J
    .end local v2    # "status":I
    :goto_2
    return-void

    .line 1554
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1555
    .restart local v2    # "status":I
    :cond_1
    iget-object v4, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "result":J
    goto :goto_1

    .line 1557
    .end local v0    # "result":J
    .end local v2    # "status":I
    :catch_0
    move-exception v3

    .line 1558
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetPacketErrorCountDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1561
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v4, "onGetPacketErrorCountDone listener is not valid !!!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1571
    const/4 v1, 0x0

    .line 1572
    .local v1, "status":I
    if-eqz p1, :cond_1

    .line 1573
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1574
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;

    .line 1575
    .local v0, "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetCallForwardTimerDone Failure cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1577
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->hasFailureCause()Z

    move-result v4

    .line 1576
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1580
    :try_start_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    .line 1579
    const/16 v4, 0x324

    invoke-interface {p1, v4, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    :goto_0
    return-void

    .line 1581
    :catch_0
    move-exception v2

    .line 1582
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUTReqFailed exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1587
    .end local v0    # "response":Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1588
    const-string/jumbo v3, "set CF Timer error!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1570
    :cond_1
    :goto_1
    return-void

    .line 1591
    :catch_1
    move-exception v2

    .line 1592
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUTReqFailed exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1595
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v3, "set CF Timer success!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1597
    :try_start_2
    invoke-interface {p1, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetCallForwardUncondTimer(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1598
    :catch_2
    move-exception v2

    .line 1599
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetCallForwardTimerDone exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2185
    if-eqz p1, :cond_1

    .line 2187
    :try_start_0
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 2188
    .local v0, "status":I
    invoke-interface {p1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetHandoverConfig(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    .end local v0    # "status":I
    :goto_1
    return-void

    .line 2187
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2189
    :catch_0
    move-exception v1

    .line 2190
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetHandoverConfigDone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2193
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v2, "onSetHandoverConfigDone listener is not valid !!!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processViceInfo([BLorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "viceInfoBytes"    # [B
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 1901
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateViceXmlBytes([B)V

    .line 1902
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 1903
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v3

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v4

    .line 1902
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallPullInfo(ZZ)Ljava/util/List;

    move-result-object v0

    .line 1905
    .local v0, "dialogIds":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1907
    :try_start_0
    new-instance v2, Lorg/codeaurora/ims/QtiViceInfo;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/QtiViceInfo;-><init>(Ljava/util/List;)V

    invoke-interface {p2, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyRefreshViceInfo(Lorg/codeaurora/ims/QtiViceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :goto_0
    return-void

    .line 1908
    :catch_0
    move-exception v1

    .line 1909
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1912
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "handleRefreshViceInfo listener null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processViceInfoOnFeatureCapabilityChange(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p1, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/codeaurora/ims/internal/IQtiImsExtListener;>;"
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 1921
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v5

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v6

    .line 1920
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallPullInfo(ZZ)Ljava/util/List;

    move-result-object v0

    .line 1924
    .local v0, "dialogIds":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1925
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1927
    .local v2, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :try_start_0
    new-instance v4, Lorg/codeaurora/ims/QtiViceInfo;

    invoke-direct {v4, v0}, Lorg/codeaurora/ims/QtiViceInfo;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyRefreshViceInfo(Lorg/codeaurora/ims/QtiViceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1928
    :catch_0
    move-exception v1

    .line 1929
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1917
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private resetFeatures()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 515
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v2, v1, v0

    .line 516
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v2, v1, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-void
.end method

.method private sendBroadcastForDisconnected(Lcom/android/ims/ImsReasonInfo;I)V
    .locals 3
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;
    .param p2, "regState"    # I

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.imscontection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1172
    const-string/jumbo v1, "stateChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1173
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1174
    const-string/jumbo v1, "sendBroadcastForDisconnected"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    return-void
.end method

.method private updateCallTransferInfo(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 901
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallTransferEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 902
    return-void

    .line 905
    :cond_0
    const/4 v2, 0x0

    .line 907
    .local v2, "nTransferableCalls":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dc$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    .line 908
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 909
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transfer is possible for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    packed-switch v2, :pswitch_data_0

    .line 945
    :cond_3
    return-void

    .line 923
    :pswitch_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    .line 924
    .restart local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 925
    const/4 v3, 0x3

    iput v3, v0, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    goto :goto_1

    .line 932
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :pswitch_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    .line 933
    .restart local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 934
    const/4 v3, 0x7

    iput v3, v0, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    goto :goto_2

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVoiceMail()V
    .locals 4

    .prologue
    .line 1855
    const/4 v0, 0x0

    .line 1856
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v2, v2, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1857
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v2, v2, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v2, :cond_1

    .line 1858
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v2, v2, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/lit8 v2, v2, 0x0

    .line 1859
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v3, v3, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:[Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 1858
    add-int v0, v2, v3

    .line 1865
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoiceMail count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1867
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V

    .line 1854
    return-void

    .line 1856
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 1114
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1115
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 1113
    :goto_0
    return-void

    .line 1118
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 2082
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    :cond_0
    const-string/jumbo v0, "addRegistrationListener invalid parameters"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2081
    :goto_0
    return-void

    .line 2083
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 356
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 357
    const-string/jumbo v2, " Invalid service ID - cannot create profile"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    :goto_0
    return-object v0

    .line 361
    .restart local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    .end local v0    # "profile":Lcom/android/ims/ImsCallProfile;
    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    .local v0, "profile":Lcom/android/ims/ImsCallProfile;
    goto :goto_0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 377
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid service Id - cannot create Call Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 380
    .restart local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    const-string/jumbo v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 246
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegHandlerThread:Landroid/os/HandlerThread;

    .line 247
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRegCallbackHandler:Landroid/os/Handler;

    .line 249
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 242
    return-void
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "mediaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1096
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1097
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCallForwardUncondTimer reason is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 696
    const-string/jumbo v1, "serviceClass = "

    .line 695
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 698
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 697
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 694
    return-void
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
    .line 1086
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1087
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
    .line 437
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 862
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getHandoverConfig(Landroid/os/Message;)V

    .line 861
    return-void
.end method

.method public getImsPhoneId()I
    .locals 1

    .prologue
    .line 2007
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    return v0
.end method

.method public getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 702
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getPacketCount(Landroid/os/Message;)V

    .line 701
    return-void
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 707
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getPacketErrorCount(Landroid/os/Message;)V

    .line 706
    return-void
.end method

.method public getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 394
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v1, :cond_0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid service Id - cannot get pending session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .end local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    return-object v0

    .line 397
    .restart local v0    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0
.end method

.method public getQtiImsExtBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExt;->getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 7
    .param p1, "serviceClass"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, "serviceId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 326
    const/4 v6, -0x2

    .line 341
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceId returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 343
    return v6

    .line 328
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 329
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .end local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(ILandroid/app/PendingIntent;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 331
    .restart local v0    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 332
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 339
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getServiceId()I

    move-result v6

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->setIncomingCallIntent(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSub:I

    return v0
.end method

.method public getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lorg/codeaurora/ims/ImsUtImpl;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public handleParticipantStatusInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2054
    if-eqz p1, :cond_3

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 2056
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    .line 2057
    .local v3, "participantInfo":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 2058
    .local v4, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_1

    .line 2060
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "participant listeners size= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2061
    const-string/jumbo v8, " isTrackerPresent = "

    .line 2060
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2061
    if-eqz v4, :cond_2

    .line 2060
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2062
    return-void

    .line 2059
    :cond_1
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleParticipantStatusInfo operation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2065
    const-string/jumbo v6, " status = "

    .line 2064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2065
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v6

    .line 2064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2065
    const-string/jumbo v6, " participant = "

    .line 2064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2066
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v6

    .line 2064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2066
    const-string/jumbo v6, " ect = "

    .line 2064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2066
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v6

    .line 2064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2067
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2070
    .local v1, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :try_start_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v5

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v6

    .line 2071
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v8

    .line 2069
    invoke-interface {v1, v5, v6, v7, v8}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyParticipantStatusInfo(IILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    move v5, v6

    .line 2061
    goto/16 :goto_0

    .line 2077
    .end local v3    # "participantInfo":Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .end local v4    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_3
    const-string/jumbo v5, "ParticipantStatusInfo exception"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    :cond_4
    return-void
.end method

.method public handleRefreshConfInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1127
    const-string/jumbo v2, "handleRefreshConfInfo"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1129
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;

    .line 1130
    .local v0, "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1131
    .local v1, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;)V

    .line 1126
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1134
    .restart local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .restart local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_0
    const-string/jumbo v2, "Message for non-registered service class"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1138
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;
    .end local v1    # "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    :cond_1
    if-eqz p1, :cond_2

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1140
    const-string/jumbo v3, "with result = "

    .line 1139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1140
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_2
    const-string/jumbo v2, "Failed @handleRefreshConfInfo --> AsyncResult is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 656
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 2002
    const-string/jumbo v0, "querySsacStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->querySsacStatus(Landroid/os/Message;)V

    .line 2001
    return-void
.end method

.method public queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 2115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVoltePref(Landroid/os/Message;)V

    .line 2114
    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 1997
    const-string/jumbo v0, "queryVopsStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVopsStatus(Landroid/os/Message;)V

    .line 1996
    return-void
.end method

.method public registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1956
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1955
    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 1876
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1875
    return-void
.end method

.method public registerForPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForPhoneId(I)V

    .line 420
    return-void
.end method

.method public registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 1871
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForViceRefreshInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1872
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .prologue
    .line 1154
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1155
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 1153
    :goto_0
    return-void

    .line 1158
    :cond_0
    const-string/jumbo v1, "ImsServiceClassTracker not found."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 2092
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvClassRegListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2091
    :goto_0
    return-void

    .line 2095
    :cond_0
    const-string/jumbo v0, "removeRegistrationListener invalid parameters"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 749
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 751
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const-string/jumbo v1, "resumePendingCall: no call is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    return-void

    .line 755
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->resumePendingCall(I)V

    .line 746
    return-void
.end method

.method public sendCallDeflectRequest(Ljava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 6
    .param p1, "deflectNumber"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 715
    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 716
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 718
    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 721
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 723
    const-string/jumbo v3, "sendCallDeflectRequest: no call is available to deflect"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    if-eqz p2, :cond_1

    .line 727
    const/4 v3, 0x1

    .line 726
    :try_start_0
    invoke-interface {p2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallDeflectResponse(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v2

    .line 729
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "sendCallDeflectRequest exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v3, "sendCallDeflectRequest: no listener is available"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 736
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 737
    .local v0, "nCallId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCallDeflectRequest: call ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 738
    const-string/jumbo v4, "is requested to "

    .line 737
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 742
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 741
    invoke-virtual {v3, v0, p1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendCallTransferRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    const/16 v5, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 772
    const/4 v7, 0x1

    .line 774
    .local v7, "returnError":Z
    packed-switch p1, :pswitch_data_0

    .line 845
    :goto_0
    :pswitch_0
    if-eqz v7, :cond_0

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallTransferRequest: Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    if-eqz p3, :cond_9

    .line 851
    const/4 v0, 0x1

    .line 850
    :try_start_0
    invoke-interface {p3, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallTransferResponse(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :cond_0
    :goto_1
    return-void

    .line 778
    :pswitch_1
    if-nez p2, :cond_1

    .line 780
    const-string/jumbo v0, "sendCallTransferRequest: no target number"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 783
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v8

    .line 785
    .local v8, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v8

    .line 790
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    const-string/jumbo v0, "sendCallTransferRequest: no call available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_3
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 795
    const/4 v7, 0x0

    .line 796
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 797
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 798
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->convertQtiImsTransferTypeToImsQmiType(I)I

    move-result v2

    .line 799
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v3, p2

    .line 796
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 802
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallTransferRequest: transfer not allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    .end local v8    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v8

    .line 812
    .restart local v8    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 814
    const-string/jumbo v0, "sendCallTransferRequest: no active call available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :cond_5
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 817
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 818
    .local v6, "nCallId":I
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v8

    .line 819
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 821
    const-string/jumbo v0, "sendCallTransferRequest: no held call available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    :cond_6
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 824
    const/4 v7, 0x0

    .line 825
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 826
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 827
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->convertQtiImsTransferTypeToImsQmiType(I)I

    move-result v2

    .line 828
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v4, v6

    .line 825
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 830
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallTransferRequest: held call transfer isnot allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 831
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 835
    .end local v6    # "nCallId":I
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallTransferRequest: active call transfer isnot allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    .end local v8    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :catch_0
    move-exception v9

    .line 853
    .local v9, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "sendCallTransferRequest: exception!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 856
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_9
    const-string/jumbo v0, "sendCallTransferRequest: no listener is available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 3
    .param p1, "sct"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 278
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 274
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 687
    const-string/jumbo v1, "setCallForwardUncondTimer"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 690
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 688
    invoke-virtual/range {v1 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 686
    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 867
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 868
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 867
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setHandoverConfig(ILandroid/os/Message;)V

    .line 866
    return-void
.end method

.method public setPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPhoneId old Phone Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new Phone Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    if-eq v1, p1, :cond_1

    .line 405
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    .line 408
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 409
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 410
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 411
    const/16 v3, 0x15

    .line 410
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 412
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 402
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 446
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceIdTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 447
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-nez v0, :cond_0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid service Id - cannot set reg listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSrvIdRegListenerTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 416
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 681
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 680
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 679
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 672
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 671
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 670
    return-void
.end method

.method public unregisterForCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1960
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1959
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTrackerTable:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 662
    .local v0, "tracker":Lorg/codeaurora/ims/ImsServiceClassTracker;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateLowBatteryStatus()V

    .line 660
    :cond_0
    return-void
.end method

.method public updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .prologue
    .line 2111
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->updateVoltePref(ILandroid/os/Message;)V

    .line 2110
    return-void
.end method
