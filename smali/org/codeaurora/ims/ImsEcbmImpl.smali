.class public Lorg/codeaurora/ims/ImsEcbmImpl;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;
    }
.end annotation


# instance fields
.field private final EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I

.field private final EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "isEntered"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 5
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    .line 19
    iput v3, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I

    .line 20
    iput v4, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I

    .line 23
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;

    invoke-direct {v0, p0, v2}, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 28
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 26
    return-void
.end method

.method private createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "isEntered"    # Z

    .prologue
    .line 52
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/codeaurora/ims/ImsEcbmImpl$1;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V

    .line 66
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ImsEcbmImpl:EcbmCallBackThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 67
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 41
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 37
    return-void
.end method
