.class public Lorg/codeaurora/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;,
        Lorg/codeaurora/ims/ImsCallModification$PauseState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "VideoCall_ImsCallModification"

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private callModifyRequest:Lorg/codeaurora/ims/CallModify;

.field private mAvpCallType:I

.field private mAvpRetryAllowed:Z

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsLocallyPaused:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsCallModification;)I
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsCallModification;Z)Z
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic -set1(Lorg/codeaurora/ims/ImsCallModification;I)I
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "rilCallType"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsCallModification;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsCallModification;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 3
    .param p1, "imsCallSessionImpl"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 42
    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 44
    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 51
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 62
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 65
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 75
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 76
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 77
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private clearPendingModify()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 248
    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearPendingVTMultiTask imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 222
    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 3
    .param p1, "rilCallType"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 112
    return-void
.end method

.method public static hasError(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "ret":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 211
    return v0

    .line 213
    :cond_0
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 215
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOldAndNewPauseRequestSame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 216
    return v0

    .line 214
    :cond_1
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 2
    .param p1, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 81
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 82
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 4
    .param p1, "callType"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "allowed":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_0

    .line 400
    const-string/jumbo v1, "callModifyRequest is null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 401
    return v2

    .line 404
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    if-nez v1, :cond_4

    .line 405
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v1, v3, :cond_4

    .line 406
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 407
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 410
    :cond_1
    const/4 v0, 0x1

    .line 414
    :cond_2
    :goto_0
    return v0

    .line 408
    :cond_3
    if-eq p1, v3, :cond_1

    .line 409
    if-eqz p1, :cond_1

    .line 411
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, v1, :cond_2

    .line 412
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 587
    const-string/jumbo v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 591
    const-string/jumbo v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 4
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 378
    return-void

    .line 385
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    .line 386
    invoke-static {p3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-direct {v0, p2, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 387
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    invoke-direct {v1, v0, v2}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    .line 389
    .local v1, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v2, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Overwriting callModifyRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with callModify:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 393
    :cond_1
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 394
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v2, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 395
    return-void
.end method

.method private notifyVideoPaused(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 311
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 312
    .local v0, "vcp":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 313
    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 3

    .prologue
    .line 115
    const/16 v0, 0xa

    .line 116
    .local v0, "rilCallType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    .line 117
    const/4 v0, 0x4

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_0

    .line 120
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    goto :goto_0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const-string/jumbo v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_2

    .line 235
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    .line 236
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    .line 238
    :cond_2
    const-string/jumbo v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retryAvpUpgrade(Z)V
    .locals 4
    .param p1, "shouldNotifyUser"    # Z

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryAvpUpgrade: AVPF failed so retrying using AVP. mAvpCallType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string/jumbo v2, " shouldNotifyUser="

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 324
    return-void
.end method

.method private shouldRetryVideoPause()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 225
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toRilCallType(I)I
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 96
    const/16 v0, 0xa

    .line 97
    .local v0, "rilCallType":I
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 98
    const/4 v0, 0x4

    .line 105
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 100
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toRilCallType unexpected calltype for VT multitask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerOrQueueVTMultitask callType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " conn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 89
    .local v0, "isPauseRequested":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 90
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_0

    .line 91
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    .line 93
    :cond_0
    return-void

    .line 87
    .end local v0    # "isPauseRequested":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPauseRequested":Z
    goto :goto_0

    .line 89
    :cond_2
    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    goto :goto_1
.end method

.method private updatePreviousVTCallType()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 328
    .local v0, "callType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 329
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 331
    :cond_0
    :goto_0
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating mPrevVideoCallType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 334
    :cond_1
    return-void

    .line 330
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private validateCanModifyConnectionType(Landroid/os/Message;I)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .prologue
    const/4 v8, 0x0

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCanModifyConnectionType newCallType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 128
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 129
    .local v0, "currCallType":I
    if-ne p2, v0, :cond_0

    const/4 v5, 0x1

    .line 131
    .local v5, "modifyToCurrCallType":Z
    :goto_0
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    .local v2, "index":I
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    .line 133
    .local v3, "isIndexValid":Z
    :goto_1
    if-eqz v3, :cond_2

    xor-int/lit8 v4, v5, 0x1

    .line 135
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCanModifyConnectionType currCallType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 136
    const-string/jumbo v7, " index="

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 136
    const-string/jumbo v7, " modifyToCurrCallType="

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_3

    return v4

    .line 129
    .end local v2    # "index":I
    .end local v3    # "isIndexValid":Z
    .end local v5    # "modifyToCurrCallType":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "modifyToCurrCallType":Z
    goto :goto_0

    .line 132
    .restart local v2    # "index":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isIndexValid":Z
    goto :goto_1

    .line 133
    :cond_2
    const/4 v4, 0x0

    .local v4, "isValid":Z
    goto :goto_2

    .line 139
    .end local v4    # "isValid":Z
    :cond_3
    if-nez v4, :cond_4

    .line 140
    if-eqz v5, :cond_5

    const/4 v1, 0x0

    .line 142
    :goto_3
    invoke-static {p1, v8, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v6

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_4
    return v4

    .line 141
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v6, "Can\'t modify call."

    invoke-direct {v1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .local v1, "exception":Ljava/lang/Exception;
    goto :goto_3
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;)V
    .locals 4
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Confirming call type change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 430
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput p1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 435
    if-eqz p2, :cond_1

    .line 436
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 438
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 441
    .end local v0    # "newMsg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeConnectionType  newCallType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newExtras= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 343
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    iput p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 352
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 353
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v3, :cond_3

    .line 354
    invoke-direct {p0, v2, p2}, Lorg/codeaurora/ims/ImsCallModification;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-direct {p0, v2, p2, p3}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 358
    :cond_3
    const-string/jumbo v3, "VideoCall_ImsCallModification"

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 361
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string/jumbo v0, "Pending callModifyRequest so not sending modify request down"

    .line 364
    .local v0, "errorStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, "ex":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_0

    .line 366
    invoke-static {p1, v6, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 367
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isAvpRetryAllowed()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return v0
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 5
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .prologue
    const/4 v4, 0x0

    .line 154
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedCallModify("

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

    .line 156
    const/4 v0, 0x0

    .line 159
    .local v0, "ret":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v1, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    iget v2, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    if-ne v1, v2, :cond_3

    .line 162
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 163
    iget-object v2, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 162
    if-ne v1, v2, :cond_3

    .line 164
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 165
    iget-object v2, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 164
    if-ne v1, v2, :cond_3

    .line 166
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 160
    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v2, p1, Lorg/codeaurora/ims/CallModify;->error:I

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->error:I

    .line 169
    const/4 v0, 0x1

    .line 198
    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 202
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->hasError(Lorg/codeaurora/ims/CallModify;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 205
    :cond_2
    return-void

    .line 171
    .restart local v0    # "ret":Z
    :cond_3
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    const-string/jumbo v3, ", Received Request:"

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_4
    iget-object v1, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v4, v1}, Lorg/codeaurora/ims/ImsCallModification;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v0

    .line 178
    .local v0, "ret":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_5

    .line 179
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 187
    .end local v0    # "ret":Z
    :goto_1
    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange()V

    goto :goto_0

    .line 181
    .restart local v0    # "ret":Z
    :cond_5
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    .local v0, "ret":Z
    goto :goto_1
.end method

.method public rejectConnectionTypeChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 448
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v3, :cond_0

    .line 449
    const-string/jumbo v3, "VideoCall_ImsCallModification"

    const-string/jumbo v4, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 451
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    const-string/jumbo v3, "VideoCall_ImsCallModification"

    const-string/jumbo v4, "rejectConnectionTypeChange callModifyRequest timed out."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 454
    return-void

    .line 456
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    .line 457
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v4

    .line 456
    invoke-direct {v0, v3, v4, v5}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 459
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 460
    .local v1, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 461
    new-instance v3, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v3, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v3, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 463
    const-string/jumbo v3, "VideoCall_ImsCallModification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rejecting Change request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallModification;->callModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " keep as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 466
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v3, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 467
    return-void
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .prologue
    const/4 v5, 0x0

    .line 258
    const/4 v3, 0x2

    .line 262
    .local v3, "videoPauseState":I
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 266
    :cond_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    const-string/jumbo v4, "videocall: update: Not a videocall CASE"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 269
    iput v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 270
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    :cond_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 273
    .local v0, "isAvpRetryDialingCase":Z
    if-eqz v0, :cond_2

    .line 276
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v4

    iput v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 278
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    .line 279
    .local v1, "isAvpRetryUpgradeCase":Z
    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    .line 280
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "videocall AVP RETRY CASE dc= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " conn= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->retryAvpUpgrade(Z)V

    .line 290
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType()V

    .line 292
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v4}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    .line 305
    .local v2, "newDetails":Lorg/codeaurora/ims/CallDetails;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 306
    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 308
    :cond_5
    return-void

    .end local v2    # "newDetails":Lorg/codeaurora/ims/CallDetails;
    :cond_6
    move v4, v5

    .line 281
    goto :goto_0

    .line 282
    :cond_7
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 284
    const-string/jumbo v4, "videocall Video Paused CASE"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_8
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    const-string/jumbo v4, "videocall Video Resumed CASE"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
