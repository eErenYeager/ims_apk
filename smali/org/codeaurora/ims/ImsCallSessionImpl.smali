.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final synthetic -org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I = null

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x9

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x8

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xb

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionImpl"

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3


# instance fields
.field private mCallId:I

.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

.field private mContext:Landroid/content/Context;

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Lcom/android/ims/ImsConferenceState;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsConfInProgress:Z

.field public mIsConferenceHostSession:Z

.field private mIsVtGloballyAllowed:Z

.field public mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mStateChangeReportingAllowed:Z

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method private static synthetic -getorg-codeaurora-ims-DriverCallIms$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->-org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->-org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/DriverCallIms$State;->values()[Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->-org-codeaurora-ims-DriverCallIms$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic -set1(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p4, "isVideoCapable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 81
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 82
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 84
    new-instance v1, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v1, v4, v5}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 86
    new-instance v1, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v1, v4, v5}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 88
    new-instance v1, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v1}, Lcom/android/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 89
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 90
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 92
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 95
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 96
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 97
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 98
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Lcom/android/ims/ImsConferenceState;

    .line 99
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    .line 105
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 107
    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 108
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 109
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 119
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 120
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 121
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 123
    if-nez p4, :cond_0

    .line 124
    const/high16 v1, 0x7f020000

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v0

    .line 125
    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 126
    iput-boolean p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 127
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    .local v0, "shallCreateVideoProvider":Z
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 4
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p6, "isVideoCapable"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p4, p3, p5, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 153
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 155
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 156
    new-instance v0, Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 1
    .param p1, "call"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z

    .prologue
    .line 163
    invoke-direct {p0, p3, p2, p4, p5}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 166
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 167
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 168
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 171
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 173
    new-instance v0, Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/conference/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 174
    return-void
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1058
    if-nez p1, :cond_0

    .line 1059
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void

    .line 1062
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1072
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1073
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1074
    const/4 v1, 0x0

    .line 1075
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1076
    .local v2, "keyAndValue":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1078
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 1079
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    .line 1080
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, "keyAndValue":[Ljava/lang/String;
    aget-object v4, v2, v6

    if-eqz v4, :cond_2

    .line 1087
    aget-object v4, v2, v6

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1088
    aget-object v4, v2, v6

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    aget-object v1, v3, v7

    .line 1104
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    aget-object v5, v2, v7

    invoke-virtual {v4, v1, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1091
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v6

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1094
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Bad extra string from lower layers!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1098
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is null in CallDetails Extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void

    .line 1108
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private extractProfileExtrasIntoCallDetails(Lcom/android/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V
    .locals 8
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "details"    # Lorg/codeaurora/ims/CallDetails;

    .prologue
    .line 1331
    iget-object v6, p1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "OemCallExtras"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1332
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1333
    const/4 v1, 0x0

    .line 1334
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 1335
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1339
    .local v3, "i":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "extraString":Ljava/lang/String;
    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1340
    .local v4, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v1, "extraString":Ljava/lang/String;
    aput-object v1, v2, v3

    .line 1344
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1341
    .end local v1    # "extraString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1346
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 1350
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 1348
    :cond_2
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getRadioTechFromCallMode(I)I
    .locals 1
    .param p1, "callMode"    # I

    .prologue
    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1200
    :pswitch_0
    const/4 v0, 0x0

    .line 1202
    .local v0, "radioTech":I
    :goto_0
    return v0

    .line 1193
    .end local v0    # "radioTech":I
    :pswitch_1
    const/16 v0, 0xe

    .line 1194
    .restart local v0    # "radioTech":I
    goto :goto_0

    .line 1197
    .end local v0    # "radioTech":I
    :pswitch_2
    const/16 v0, 0x12

    .line 1198
    .restart local v0    # "radioTech":I
    goto :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    const/4 v3, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "cause":I
    if-eqz p2, :cond_0

    .line 293
    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, p2, v2

    .line 294
    .local v1, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v1, :cond_1

    iget v5, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_1

    iget-object v5, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_1

    .line 295
    iget-object v5, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 296
    iget-object v2, v1, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v2, v2, v3

    iget v0, v2, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 301
    .end local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    return v0

    .line 293
    .restart local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isConfigEnabled(I)Z
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1672
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isImsCallSessionAlive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 759
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 760
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 761
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v1, :cond_0

    .line 762
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 759
    :cond_0
    return v0
.end method

.method private isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .prologue
    const/4 v2, 0x0

    .line 269
    const/4 v0, 0x1

    .line 270
    .local v0, "allowed":Z
    if-eqz p2, :cond_1

    .line 271
    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p2, v2

    .line 272
    .local v1, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v1, :cond_2

    iget v4, v1, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_2

    .line 273
    iget v2, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    if-eqz v2, :cond_0

    .line 274
    iget v2, v1, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 281
    .end local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    return v0

    .line 271
    .restart local v1    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSessionValid()Z
    .locals 3

    .prologue
    .line 747
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 748
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 749
    const-string/jumbo v1, "ImsCallSessionImpl"

    const-string/jumbo v2, "Session is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    return v0

    .line 747
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isValid":Z
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1638
    const-string/jumbo v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1642
    const-string/jumbo v0, "ImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, "audioQuality":I
    if-nez p0, :cond_0

    .line 1118
    const/4 v1, 0x0

    return v1

    .line 1120
    :cond_0
    const-string/jumbo v1, "QCELP13K"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1122
    const/4 v0, 0x3

    .line 1155
    :goto_0
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return v0

    .line 1120
    :cond_1
    const-string/jumbo v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1125
    const/4 v0, 0x4

    .line 1126
    goto :goto_0

    .line 1120
    :cond_2
    const-string/jumbo v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1128
    const/4 v0, 0x5

    .line 1129
    goto :goto_0

    .line 1120
    :cond_3
    const-string/jumbo v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1131
    const/4 v0, 0x6

    .line 1132
    goto :goto_0

    .line 1120
    :cond_4
    const-string/jumbo v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1134
    const/4 v0, 0x7

    .line 1135
    goto :goto_0

    .line 1120
    :cond_5
    const-string/jumbo v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1137
    const/4 v0, 0x1

    .line 1138
    goto :goto_0

    .line 1120
    :cond_6
    const-string/jumbo v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1140
    const/4 v0, 0x2

    .line 1141
    goto :goto_0

    .line 1120
    :cond_7
    const-string/jumbo v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1143
    const/16 v0, 0x8

    .line 1144
    goto :goto_0

    .line 1120
    :cond_8
    const-string/jumbo v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1146
    const/16 v0, 0x9

    .line 1147
    goto :goto_0

    .line 1120
    :cond_9
    const-string/jumbo v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1149
    const/16 v0, 0xa

    .line 1150
    goto :goto_0

    .line 1152
    :cond_a
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 1165
    const/4 v0, 0x0

    .line 1166
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 1186
    :goto_0
    :pswitch_0
    return v0

    .line 1168
    :pswitch_1
    const/16 v0, 0xa

    .line 1169
    goto :goto_0

    .line 1171
    :pswitch_2
    const/4 v0, 0x0

    .line 1172
    goto :goto_0

    .line 1174
    :pswitch_3
    const/4 v0, 0x3

    .line 1175
    goto :goto_0

    .line 1177
    :pswitch_4
    const/4 v0, 0x1

    .line 1178
    goto :goto_0

    .line 1180
    :pswitch_5
    const/4 v0, 0x2

    .line 1181
    goto :goto_0

    .line 1183
    :pswitch_6
    const/4 v0, 0x4

    .line 1184
    goto :goto_0

    .line 1166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 2
    .param p1, "isVideoCallingEnabled"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 139
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 141
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 144
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifySessionClosed()V
    .locals 4

    .prologue
    .line 236
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 237
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 238
    .local v0, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 241
    return-void
.end method

.method private notifySessionDisconnected()V
    .locals 4

    .prologue
    .line 228
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 230
    .local v0, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 233
    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 611
    const-string/jumbo v0, "CD-04"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/16 v0, 0x44c

    return v0

    .line 614
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v0, 0x3

    .line 473
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    new-instance v2, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 475
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 476
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 477
    const-string/jumbo v4, "Codec"

    .line 476
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 478
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 478
    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v5, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 485
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v5, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 491
    :goto_1
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    new-instance v2, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 493
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 494
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v2, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    if-ne v2, v5, :cond_4

    .line 496
    :goto_2
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 493
    invoke-direct {p0, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v0

    iput v0, v1, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 499
    :cond_1
    return-void

    .line 482
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v6, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 489
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v6, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_1

    .line 495
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 10
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1210
    if-nez p1, :cond_0

    .line 1211
    const-string/jumbo v3, "updateImsCallProfile called with dc null"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1212
    return-void

    .line 1215
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v3, :cond_1

    .line 1216
    new-instance v3, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v3}, Lcom/android/ims/ImsCallProfile;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1219
    :cond_1
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v3, :cond_3

    .line 1220
    const/4 v0, 0x0

    .line 1222
    .local v0, "callMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1223
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v2, v3, v1

    .line 1224
    .local v2, "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    iget v3, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v3, v4, :cond_4

    .line 1225
    iget-object v3, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v7

    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1231
    .end local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v4, "CallRadioTech"

    .line 1232
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1231
    invoke-virtual {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .end local v0    # "callMode":I
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v4, "oi"

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v4, "cna"

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v4, "oir"

    .line 1238
    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-static {v5}, Lcom/android/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v5

    .line 1237
    invoke-virtual {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1239
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v4, "cnap"

    .line 1240
    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-static {v5}, Lcom/android/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v5

    .line 1239
    invoke-virtual {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1242
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    packed-switch v3, :pswitch_data_0

    .line 1274
    :goto_1
    :pswitch_0
    return-void

    .line 1222
    .restart local v0    # "callMode":I
    .restart local v1    # "i":I
    .restart local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    .end local v0    # "callMode":I
    .end local v1    # "i":I
    .end local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :pswitch_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v8, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1245
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v6, v3, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 1249
    :pswitch_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iput v9, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1250
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v6, v3, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 1254
    :pswitch_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1255
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1256
    const/4 v4, 0x3

    .line 1255
    iput v4, v3, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 1259
    :pswitch_4
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v4, 0x5

    iput v4, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1260
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v9, v3, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 1264
    :pswitch_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const/4 v4, 0x6

    iput v4, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1265
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v8, v3, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 1270
    :pswitch_6
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v3, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v7, v3, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 1242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "hasChanged":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v2, :cond_0

    .line 312
    new-instance v2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v2, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 313
    const/4 v1, 0x1

    .line 328
    :goto_0
    const-string/jumbo v2, "ImsCallSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLocalDc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v1

    .line 315
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v0

    .line 318
    .local v0, "changedProperties":I
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_1

    .line 319
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 322
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v3, v3, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 321
    invoke-virtual {v2, p0, v3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 326
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1391
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1394
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1395
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    .line 1394
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;I)V

    .line 1396
    return-void
.end method

.method public addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 197
    return-void

    .line 194
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate listener, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 770
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Close!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Received Session Close request while it is alive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eq v0, v4, :cond_3

    .line 777
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-nez v0, :cond_4

    .line 778
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 780
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 785
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 788
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 789
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 792
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 793
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 794
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 795
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 796
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 797
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 798
    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 799
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 800
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 801
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 802
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 803
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 804
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 805
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 806
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 808
    :cond_3
    return-void

    .line 783
    :cond_4
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Not clearing listener, ongoing merge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .prologue
    .line 1404
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1406
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1407
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1406
    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 1408
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 1500
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1502
    :cond_0
    return-void
.end method

.method public getCallDomain()I
    .locals 2

    .prologue
    .line 926
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    return v1

    .line 928
    :cond_0
    const/4 v0, 0x3

    .line 929
    .local v0, "callDomain":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 932
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 847
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 973
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/conference/ConfInfo;
    .locals 1

    .prologue
    .line 1607
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1608
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    return-object v0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 958
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 961
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Null mDc! Returning null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-object v2
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .prologue
    .line 977
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 978
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 3

    .prologue
    .line 914
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    return v1

    .line 916
    :cond_0
    const/16 v0, 0xa

    .line 917
    .local v0, "callType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_2

    .line 918
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 922
    :cond_1
    :goto_0
    return v0

    .line 919
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 920
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v1, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    goto :goto_0
.end method

.method getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .prologue
    .line 902
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v1

    .line 904
    :cond_0
    const/4 v0, 0x0

    .line 905
    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 910
    .end local v0    # "state":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_1
    :goto_0
    return-object v0

    .line 907
    .restart local v0    # "state":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 908
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    goto :goto_0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 857
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 858
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 826
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 827
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    :cond_1
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 877
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 879
    :cond_0
    const/4 v0, 0x0

    .line 881
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 884
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "ImsCallSessionImpl"

    const-string/jumbo v2, "Call Profile null! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 1

    .prologue
    .line 867
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 896
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 897
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1569
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 1571
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 1572
    const-string/jumbo v0, "getVideoCallProvider: Video call provider is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1573
    return-object v1

    .line 1576
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 574
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hoType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string/jumbo v3, " targetTech: "

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 579
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result v0

    .line 581
    .local v0, "error":I
    packed-switch p1, :pswitch_data_0

    .line 603
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled hoType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    :pswitch_0
    return-void

    .line 585
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 586
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v2, v0, v4, p7}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 585
    invoke-virtual {v1, p0, p2, p3, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 590
    :pswitch_2
    const-string/jumbo v1, "ImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HO Failure for WWAN->IWLAN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-ne p4, v5, :cond_1

    .line 592
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v2, "handoverInfo"

    invoke-virtual {v1, v2, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 595
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 596
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v2, v0, v4, p7}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 595
    invoke-virtual {v1, p0, p2, p3, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 599
    :pswitch_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 600
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v2, v0, v4, p7}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 599
    invoke-virtual {v1, p0, p2, p3, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 837
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 838
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1449
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1451
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "hold requested."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    .line 1453
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1512
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1514
    :cond_0
    aget-object v0, p1, v4

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1515
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1516
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1515
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 1517
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1425
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1426
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isConfInProgress()Z
    .locals 1

    .prologue
    .line 1281
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1282
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    .line 1000
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1002
    :cond_0
    const/4 v0, 0x0

    .line 1003
    .local v0, "isInCall":Z
    invoke-static {}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-getorg-codeaurora-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1013
    :goto_0
    :pswitch_0
    return v0

    .line 1010
    :pswitch_1
    const/4 v0, 0x1

    .line 1011
    goto :goto_0

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 987
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 988
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 989
    return v1

    .line 991
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 953
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 954
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    :cond_1
    return v0
.end method

.method public merge()V
    .locals 1

    .prologue
    .line 1475
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1479
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 1480
    return-void
.end method

.method public muteStateReporting()V
    .locals 3

    .prologue
    .line 333
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call session state reporting muted! session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 335
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 2
    .param p1, "confInfoBytes"    # [B

    .prologue
    .line 1590
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/conference/ConfInfo;->updateConfXmlBytes([B)V

    .line 1593
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/conference/ConfInfo;->getConfUriList()Lcom/android/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Lcom/android/ims/ImsConferenceState;

    .line 1594
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 1596
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Lcom/android/ims/ImsConferenceState;

    .line 1595
    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 1598
    :cond_1
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 560
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TTY mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 244
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 247
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 248
    .local v0, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 251
    return-void
.end method

.method onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 256
    const-string/jumbo v0, "onReceivedModifyCall: Ignoring session modification request."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 260
    return-void
.end method

.method public reject(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1417
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1419
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reject "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1421
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1420
    const/4 v4, 0x0

    move-object v3, v2

    move v5, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1422
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 220
    return-void

    .line 217
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Listener not found, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1527
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1528
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1531
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v1, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1530
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x1f5

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1532
    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 1046
    if-eqz p1, :cond_0

    .line 1047
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 1050
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 1048
    invoke-virtual {v0, p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1055
    :goto_0
    return-void

    .line 1052
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    .line 1053
    const-string/jumbo v1, "Null confCallSession! Not calling callSessionMergeStarted"

    .line 1052
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1463
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1465
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "resume requested."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    .line 1467
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1543
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1545
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(CLandroid/os/Message;)V

    .line 1546
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1585
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1587
    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/conference/ConfInfo;)V
    .locals 1
    .param p1, "confInfo"    # Lorg/codeaurora/ims/conference/ConfInfo;

    .prologue
    .line 1601
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1603
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/conference/ConfInfo;

    .line 1604
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 1024
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1025
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 1026
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1034
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1036
    :cond_0
    return-void
.end method

.method public setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .prologue
    .line 1289
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1290
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1291
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v5, 0x1

    .line 1303
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1305
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    iput v4, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1306
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v4, p2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput-object v4, v3, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1308
    iput v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1309
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1313
    const-string/jumbo v3, "oir"

    invoke-virtual {p2, v3}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    .line 1314
    .local v0, "clir":I
    const/4 v2, 0x3

    .line 1320
    .local v2, "domain":I
    new-instance v1, Lorg/codeaurora/ims/CallDetails;

    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    .line 1322
    const/4 v4, 0x0

    .line 1320
    invoke-direct {v1, v3, v2, v4}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1323
    .local v1, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-direct {p0, p2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractProfileExtrasIntoCallDetails(Lcom/android/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V

    .line 1325
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1326
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1325
    invoke-virtual {v3, p1, v0, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 1327
    return-void
.end method

.method public startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1364
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 1366
    :cond_0
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1367
    iput v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1368
    aget-object v3, p1, v6

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1372
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1373
    .local v1, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "isConferenceUri"

    .line 1374
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1373
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    invoke-static {v1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "mMoExtras":[Ljava/lang/String;
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    .line 1378
    const/4 v4, 0x3

    .line 1377
    invoke-direct {v0, v3, v4, v2}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1379
    .local v0, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v4, p1, v6

    .line 1380
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1379
    invoke-virtual {v3, v4, v6, v0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 1381
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1556
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(CLandroid/os/Message;)V

    .line 1558
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1564
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1565
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(Landroid/os/Message;)V

    .line 1566
    return-void
.end method

.method public terminate(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1435
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1437
    :cond_0
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "terminate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1439
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1438
    const/4 v4, 0x0

    move-object v3, v2

    move v5, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1440
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1634
    invoke-super {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1629
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1629
    const-string/jumbo v1, " mCallProfile="

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1629
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1629
    const-string/jumbo v1, " mLocalCallProfile="

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1629
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1630
    const-string/jumbo v1, " mRemoteCallProfile="

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1630
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unMuteStateReporting()V
    .locals 3

    .prologue
    .line 338
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call session state reporting unmuted. session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 340
    return-void
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1490
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1491
    :cond_0
    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 9
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 348
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCall for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    .line 353
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_4

    const/4 v0, 0x1

    .line 355
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 356
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 358
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v4, :cond_1

    .line 359
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v4, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 362
    :cond_1
    invoke-static {}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-getorg-codeaurora-ims-DriverCallIms$StateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v5}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 463
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    .line 464
    .local v1, "hasChanged":Z
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_10

    const/4 v2, 0x1

    .line 465
    .local v2, "isCallNotEnded":Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Call details updated. currentCallDetails= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 467
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v5, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 467
    const-string/jumbo v5, " to newCallDetails= "

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 467
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 470
    :cond_3
    return-void

    .line 353
    .end local v0    # "areStatesSame":Z
    .end local v1    # "hasChanged":Z
    .end local v2    # "isCallNotEnded":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "areStatesSame":Z
    goto :goto_0

    .line 352
    .end local v0    # "areStatesSame":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "areStatesSame":Z
    goto :goto_0

    .line 364
    :pswitch_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v4, :cond_6

    .line 366
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Phantom call!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput v8, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 368
    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 369
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_2

    .line 370
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_1

    .line 372
    :cond_6
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_7

    .line 373
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_8

    .line 376
    :cond_7
    iput v8, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 377
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v5, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 379
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 380
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_2

    .line 381
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 374
    :cond_8
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_7

    .line 375
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_7

    .line 385
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_9

    .line 386
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Call being resumed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iput-boolean v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 389
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_2

    .line 390
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 393
    :cond_9
    const-string/jumbo v4, "ImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Call resumed skipped, conf status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 397
    :pswitch_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_2

    .line 398
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "Call being held."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_2

    .line 400
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto/16 :goto_1

    .line 405
    :pswitch_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v4, :cond_2

    .line 406
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "MO Dialing call!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 408
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_2

    .line 409
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 410
    new-instance v5, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v5}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 409
    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_1

    .line 416
    :pswitch_3
    const/4 v4, 0x2

    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 417
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v4, :cond_a

    .line 418
    const-string/jumbo v4, "ImsCallSessionImpl"

    const-string/jumbo v5, "MO Alerting call!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 421
    :cond_a
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_2

    .line 423
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 424
    new-instance v3, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 425
    .local v3, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-eqz v4, :cond_b

    .line 426
    iput v7, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 428
    :cond_b
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_2

    .line 429
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v4, p0, v3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_1

    .line 436
    .end local v3    # "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_1

    .line 440
    :pswitch_5
    const/16 v4, 0x8

    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 441
    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v4, :cond_f

    .line 442
    if-eqz p1, :cond_d

    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_d

    .line 443
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v4, v4, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_c

    .line 444
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_e

    .line 445
    :cond_c
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 446
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    const/16 v6, 0x1fe

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 445
    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 459
    :cond_d
    :goto_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_1

    .line 449
    :cond_e
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 450
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Lcom/android/ims/ImsReasonInfo;

    .line 449
    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 454
    :cond_f
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_d

    .line 455
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .line 456
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    iget v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 455
    invoke-virtual {v4, p0, v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 464
    .restart local v1    # "hasChanged":Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "isCallNotEnded":Z
    goto/16 :goto_2

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    .line 502
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 507
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 508
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 510
    :cond_1
    return-void
.end method

.method updateSuppServiceInfo(Lcom/android/ims/ImsSuppServiceNotification;Z)V
    .locals 4
    .param p1, "suppSvcNotification"    # Lcom/android/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .prologue
    const/4 v3, 0x0

    .line 521
    const-string/jumbo v0, "ImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    const-string/jumbo v2, " startOnHoldLocalTone = "

    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 530
    iget v0, p1, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    packed-switch v0, :pswitch_data_0

    .line 549
    const-string/jumbo v0, "ImsCallSessionImpl"

    const-string/jumbo v1, "Non-Hold/Resume supp svc code received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 533
    :pswitch_0
    if-eqz p2, :cond_1

    .line 534
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iput v3, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 537
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_0

    .line 541
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v0, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v0, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 544
    const/4 v1, 0x3

    .line 543
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 546
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateVtGlobalCapability(Z)V
    .locals 2
    .param p1, "isVtEnabled"    # Z

    .prologue
    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVtGlobalCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1615
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eq v0, p1, :cond_1

    .line 1616
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 1617
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 1618
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1619
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 1620
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1625
    :cond_1
    return-void
.end method
