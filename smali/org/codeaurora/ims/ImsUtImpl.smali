.class public Lorg/codeaurora/ims/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
    }
.end annotation


# static fields
.field static final CF_REASON_ALL:I = 0x4

.field static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field static final CF_REASON_BUSY:I = 0x1

.field static final CF_REASON_NOT_REACHABLE:I = 0x3

.field static final CF_REASON_NO_REPLY:I = 0x2

.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_QUERY_CB:I = 0xd

.field private static final EVENT_QUERY_CF:I = 0x1

.field private static final EVENT_QUERY_CLIP:I = 0x7

.field private static final EVENT_QUERY_CLIR:I = 0x5

.field private static final EVENT_QUERY_COLP:I = 0xb

.field private static final EVENT_QUERY_COLR:I = 0x9

.field private static final EVENT_QUERY_CW:I = 0x3

.field private static final EVENT_UPDATE_CB:I = 0xe

.field private static final EVENT_UPDATE_CF:I = 0x2

.field private static final EVENT_UPDATE_CLIP:I = 0x8

.field private static final EVENT_UPDATE_CLIR:I = 0x6

.field private static final EVENT_UPDATE_COLP:I = 0xc

.field private static final EVENT_UPDATE_COLR:I = 0xa

.field private static final EVENT_UPDATE_CW:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final MAX_REQUESTS_PENDING:I = 0x32

.field static final SERVICE_CLASS_DATA:I = 0x2

.field static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field static final SERVICE_CLASS_FAX:I = 0x4

.field static final SERVICE_CLASS_MAX:I = 0x80

.field static final SERVICE_CLASS_NONE:I = 0x0

.field static final SERVICE_CLASS_PACKET:I = 0x40

.field static final SERVICE_CLASS_PAD:I = 0x80

.field static final SERVICE_CLASS_SMS:I = 0x8

.field static final SERVICE_CLASS_VOICE:I = 0x1

.field static final UT_ERROR_GENERIC:Ljava/lang/String; = "E_GENERIC_FAILURE"

.field static final UT_ERROR_NETWORK_UNSUPPORTED:Ljava/lang/String; = "E_NETWORK_NOT_SUPPORTED"

.field private static requestId:I

.field private static sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 38
    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1
    .param p1, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 85
    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 91
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 92
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 100
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public static createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 2
    .param p0, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "senderRxr value is null in createUtInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 112
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 107
    :cond_1
    return-void
.end method

.method private getFacilityFromCbType(I)I
    .locals 6
    .param p1, "cbType"    # I

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 170
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 171
    return v1

    .line 173
    :cond_0
    if-ne p1, v1, :cond_1

    .line 174
    return v2

    .line 176
    :cond_1
    if-ne p1, v2, :cond_2

    .line 177
    return v3

    .line 179
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 180
    return v4

    .line 182
    :cond_3
    if-ne p1, v3, :cond_4

    .line 183
    return v5

    .line 185
    :cond_4
    if-ne p1, v5, :cond_5

    .line 186
    const/16 v0, 0x8

    return v0

    .line 188
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 189
    const/16 v0, 0x9

    return v0

    .line 191
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 192
    const/16 v0, 0xa

    return v0

    .line 194
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 195
    const/16 v0, 0xb

    return v0

    .line 197
    :cond_8
    if-ne p1, v4, :cond_9

    .line 198
    const/16 v0, 0xc

    return v0

    .line 201
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method private getIdForRequest()I
    .locals 2

    .prologue
    .line 562
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 563
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 564
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 566
    :cond_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    return v0
.end method

.method private getImsReasonInfoFromResponseError(Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 576
    if-nez p1, :cond_0

    .line 577
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-object v6

    .line 580
    :cond_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 581
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-object v6

    .line 587
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    .line 588
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Improper exception type in AsyncResult!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-object v6

    .line 593
    :cond_2
    const/4 v0, 0x0

    .line 596
    .local v0, "code":I
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 598
    .local v3, "genericError":Lcom/android/ims/ImsReasonInfo;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    .line 599
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "error":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 601
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-object v3

    .line 608
    :cond_3
    const-string/jumbo v4, "E_GENERIC_FAILURE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 609
    return-object v3

    .line 610
    :cond_4
    const-string/jumbo v4, "E_NETWORK_NOT_SUPPORTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 611
    const/16 v0, 0x322

    .line 618
    const-string/jumbo v4, "ImsUtImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getImsReasonInfoFromResponseError :: ImsReasonInfo code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v4, v0, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    return-object v4

    .line 613
    :cond_5
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-object v3
.end method

.method public static getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_0

    .line 119
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "sUtImpl is null in getUtInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 130
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 131
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public getIcbAction(I)I
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 382
    if-nez p1, :cond_0

    .line 383
    const/4 v0, 0x2

    return v0

    .line 384
    :cond_0
    if-ne p1, v0, :cond_1

    .line 385
    return v0

    .line 386
    :cond_1
    if-ne p1, v1, :cond_2

    .line 387
    const/4 v0, 0x5

    return v0

    .line 388
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 389
    return v1

    .line 391
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIP()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v4, "queryCLIP"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 314
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 315
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for queryCLIP."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, -0x1

    return v2

    .line 309
    .end local v1    # "id":I
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "queryCLIP"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "id":I
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    .line 320
    return v1
.end method

.method public queryCLIR()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 288
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v4, "queryCLIR"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 294
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 295
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for queryCLIR."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v2, -0x1

    return v2

    .line 289
    .end local v1    # "id":I
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "queryCLIR"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "id":I
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    .line 300
    return v1
.end method

.method public queryCOLP()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v4, "queryCOLP"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 354
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 355
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for queryCLIP."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v2, -0x1

    return v2

    .line 349
    .end local v1    # "id":I
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "queryCOLP"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "id":I
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string/jumbo v3, "COLP"

    .line 360
    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1, v6, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 359
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    .line 361
    return v1
.end method

.method public queryCOLR()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 328
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v4, "queryCOLR"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 334
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 335
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for queryCOLR."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v2, -0x1

    return v2

    .line 329
    .end local v1    # "id":I
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "queryCOLR"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "id":I
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    .line 340
    return v1
.end method

.method public queryCallBarring(I)I
    .locals 8
    .param p1, "cbType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 140
    const-string/jumbo v3, "queryCallBarring"

    .line 139
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v7

    .line 146
    .local v7, "id":I
    if-gez v7, :cond_0

    .line 147
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Invalid request id for queryCallBarring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v4

    .line 141
    .end local v7    # "id":I
    :catch_0
    move-exception v6

    .line 143
    .local v6, "e":Ljava/lang/SecurityException;
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "queryCallBarring"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v6    # "e":Ljava/lang/SecurityException;
    .restart local v7    # "id":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 153
    .local v2, "facility":I
    if-ne v2, v4, :cond_1

    .line 154
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v4

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 162
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v7, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 158
    const/4 v1, 0x3

    .line 160
    const/4 v3, 0x0

    .line 161
    const/4 v4, 0x1

    .line 158
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 164
    return v7
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 9
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 211
    const-string/jumbo v5, "queryCallForward"

    .line 210
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    const/4 v2, -0x1

    .line 218
    .local v2, "reason":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 219
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 220
    const-string/jumbo v3, "ImsUtImpl"

    const-string/jumbo v4, "Invalid request id for queryCallForward."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v8

    .line 212
    .end local v1    # "id":I
    .end local v2    # "reason":I
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v5, "queryCallForward"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "id":I
    .restart local v2    # "reason":I
    :cond_0
    if-nez p1, :cond_1

    .line 226
    const/4 v2, 0x0

    .line 255
    :goto_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 258
    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v1, v6, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 255
    invoke-virtual {v3, v2, v7, p2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 259
    return v1

    .line 228
    :cond_1
    if-ne p1, v7, :cond_2

    .line 229
    const/4 v2, 0x1

    goto :goto_1

    .line 231
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 232
    const/4 v2, 0x2

    goto :goto_1

    .line 234
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 235
    const/4 v2, 0x3

    goto :goto_1

    .line 237
    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 238
    const/4 v2, 0x4

    goto :goto_1

    .line 240
    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 241
    const/4 v2, 0x5

    goto :goto_1

    .line 243
    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_7

    .line 248
    const/4 v2, -0x1

    goto :goto_1

    .line 251
    :cond_7
    const-string/jumbo v3, "ImsUtImpl"

    const-string/jumbo v4, "Invalid condition for queryCallForward."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v8
.end method

.method public queryCallWaiting()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 267
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 268
    const-string/jumbo v4, "queryCallWaiting"

    .line 267
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 274
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 275
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for queryCallWaiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, -0x1

    return v2

    .line 269
    .end local v1    # "id":I
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v4, "queryCallWaiting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "id":I
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 279
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 278
    invoke-virtual {v2, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    .line 280
    return v1
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 550
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 372
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Unsupported API transact() called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 504
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCLIP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 506
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 507
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, -0x1

    return v1

    .line 510
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string/jumbo v2, "CLIP"

    .line 512
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 510
    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 513
    return v0
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 489
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCLIR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 491
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 492
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCLIR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v1, -0x1

    return v1

    .line 495
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 496
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 495
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    .line 497
    return v0
.end method

.method public updateCOLP(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 535
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCOLP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 537
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 538
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCOLP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v1, -0x1

    return v1

    .line 541
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string/jumbo v2, "COLP"

    .line 543
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 541
    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 544
    return v0
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCOLR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 522
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 523
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCOLR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, -0x1

    return v1

    .line 526
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 527
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 526
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    .line 528
    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 9
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v4, "updateCallBarring"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v6

    .line 400
    .local v6, "id":I
    if-gez v6, :cond_0

    .line 401
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for updateCallBarring."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v5

    .line 406
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 407
    .local v2, "facility":I
    if-ne v2, v5, :cond_1

    .line 408
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v3, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v5

    .line 412
    :cond_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v1

    .line 414
    .local v1, "cbAction":I
    const/16 v0, 0xb

    if-ne v2, v0, :cond_2

    .line 415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 419
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v6, v7, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 418
    const/4 v4, 0x1

    move-object v3, p3

    .line 415
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 426
    :goto_0
    return v6

    .line 421
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 423
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v6, v7, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 421
    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .prologue
    const/4 v3, 0x0

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v7

    .line 436
    .local v7, "id":I
    if-gez v7, :cond_0

    .line 437
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Invalid request id for updateCallForward."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, -0x1

    return v0

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 446
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p5

    .line 441
    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 447
    return v7
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v10

    .line 456
    .local v10, "id":I
    if-gez v10, :cond_0

    .line 457
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, -0x1

    return v0

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 465
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 463
    const/4 v7, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 461
    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 466
    return v10
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v4, 0x0

    .line 473
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCallWaiting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 475
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 476
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCallForward."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v1, -0x1

    return v1

    .line 479
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 481
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 479
    invoke-virtual {v1, p1, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    .line 482
    return v0
.end method
