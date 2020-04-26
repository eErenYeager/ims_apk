.class public Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/IImsCallSessionListener$Stub;
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

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    .line 29
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "Constructor: start handler thread for callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V
    .locals 2
    .param p1, "copyFrom"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    .line 36
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "Copy Constructor: Pass the thread and callback handler refs."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 39
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 495
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 498
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 499
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 494
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 511
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

    .line 510
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 418
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 420
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 416
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .prologue
    .line 437
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 438
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$19;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    .line 449
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 436
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 129
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$5;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 142
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 128
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 149
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$6;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 162
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 148
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 193
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$8;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 205
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 192
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 212
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$9;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 223
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 211
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 230
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 231
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$10;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 241
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 229
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 425
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 427
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "activeCallSession"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 327
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 328
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$15;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    .line 339
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 326
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 351
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 352
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$16;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 363
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 350
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 305
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 306
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$14;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 317
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 304
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiParty"    # Z

    .prologue
    .line 462
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 463
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$20;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 474
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 460
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .prologue
    .line 65
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 77
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 63
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 428
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 430
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 264
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$12;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 275
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 263
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 281
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 282
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 292
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 280
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 247
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$11;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 258
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 246
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 46
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 57
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 45
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 85
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$3;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 97
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 83
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .prologue
    .line 392
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 393
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$18;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 403
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 391
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 104
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$4;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 116
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 103
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "ttyMode"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 171
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$7;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;I)V

    .line 182
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 169
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 408
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 410
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .prologue
    .line 372
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 373
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$17;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 383
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 371
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
    .line 122
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 484
    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    const-string/jumbo v2, "dispose"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$21;-><init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;)V

    .line 491
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 504
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "posting to handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    :cond_0
    return-void
.end method

.method startThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 479
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "ImsCallSessionListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 480
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 478
    return-void
.end method
