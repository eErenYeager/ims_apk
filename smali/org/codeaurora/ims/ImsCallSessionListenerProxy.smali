.class public Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;
.source "ImsCallSessionListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionListenerProxy"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Lcom/android/ims/internal/IImsCallSessionListener;


# direct methods
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;-><init>()V

    .line 47
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "Constructor: start handler thread for callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 2
    .param p1, "copyFrom"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;-><init>()V

    .line 54
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "Copy Constructor: Pass the thread and callback handler refs."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 564
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 567
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 568
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 570
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 492
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 494
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 490
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 511
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 512
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 523
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 525
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 165
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 178
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 180
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 185
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 198
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 200
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 266
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 278
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 280
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 285
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 296
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 298
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 303
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 304
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 314
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 316
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 499
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 501
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "activeCallSession"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 400
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 401
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    .line 412
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 414
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 424
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 425
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 436
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 438
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 378
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 379
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 390
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 392
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiParty"    # Z

    .prologue
    .line 536
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 537
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 548
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 550
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 83
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 95
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 97
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 502
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 504
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 337
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 338
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 348
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 350
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 354
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 355
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 365
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 367
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 320
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 331
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 333
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reason"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 64
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 75
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 77
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 103
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 115
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 117
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 147
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 158
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 160
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reason"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 122
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 134
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 136
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "ttyMode"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;I)V

    .line 217
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 219
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 482
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 484
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 445
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 446
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 456
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 458
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 142
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 553
    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    const-string/jumbo v2, "dispose"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    .line 560
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 573
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "posting to handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    :cond_0
    return-void
.end method
