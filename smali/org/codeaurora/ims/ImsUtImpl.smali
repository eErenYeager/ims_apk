.class public Lorg/codeaurora/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
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
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsUtImpl;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsUtImpl;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Landroid/os/AsyncResult;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 41
    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1
    .param p1, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 88
    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 94
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 95
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 102
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public static createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 2
    .param p0, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "senderRxr value is null in createUtInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 123
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 126
    :cond_1
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
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

    .line 181
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 182
    return v1

    .line 184
    :cond_0
    if-ne p1, v1, :cond_1

    .line 185
    return v2

    .line 187
    :cond_1
    if-ne p1, v2, :cond_2

    .line 188
    return v3

    .line 190
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 191
    return v4

    .line 193
    :cond_3
    if-ne p1, v3, :cond_4

    .line 194
    return v5

    .line 196
    :cond_4
    if-ne p1, v5, :cond_5

    .line 197
    const/16 v0, 0x8

    return v0

    .line 199
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 200
    const/16 v0, 0x9

    return v0

    .line 202
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 203
    const/16 v0, 0xa

    return v0

    .line 205
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 206
    const/16 v0, 0xb

    return v0

    .line 208
    :cond_8
    if-ne p1, v4, :cond_9

    .line 209
    const/16 v0, 0xc

    return v0

    .line 212
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method private getIdForRequest()I
    .locals 2

    .prologue
    .line 541
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 542
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 543
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 545
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

    .line 555
    if-nez p1, :cond_0

    .line 556
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-object v6

    .line 559
    :cond_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 560
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-object v6

    .line 566
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    .line 567
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Improper exception type in AsyncResult!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-object v6

    .line 572
    :cond_2
    const/4 v0, 0x0

    .line 575
    .local v0, "code":I
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 577
    .local v3, "genericError":Lcom/android/ims/ImsReasonInfo;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/RuntimeException;

    .line 578
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "error":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 580
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-object v3

    .line 587
    :cond_3
    const-string/jumbo v4, "E_GENERIC_FAILURE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 588
    return-object v3

    .line 589
    :cond_4
    const-string/jumbo v4, "E_NETWORK_NOT_SUPPORTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 590
    const/16 v0, 0x322

    .line 597
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

    .line 599
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v4, v0, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    return-object v4

    .line 592
    :cond_5
    const-string/jumbo v4, "ImsUtImpl"

    const-string/jumbo v5, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-object v3
.end method

.method public static getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "sUtImpl is null in getUtInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 141
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 142
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method public getIcbAction(I)I
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 361
    if-nez p1, :cond_0

    .line 362
    const/4 v0, 0x2

    return v0

    .line 363
    :cond_0
    if-ne p1, v0, :cond_1

    .line 364
    return v0

    .line 365
    :cond_1
    if-ne p1, v1, :cond_2

    .line 366
    const/4 v0, 0x5

    return v0

    .line 367
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 368
    return v1

    .line 370
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIP()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    const-string/jumbo v1, "queryCLIP"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 303
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 304
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for queryCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, -0x1

    return v1

    .line 308
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    .line 309
    return v0
.end method

.method public queryCLIR()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 286
    const-string/jumbo v1, "queryCLIR"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 288
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 289
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for queryCLIR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, -0x1

    return v1

    .line 293
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    .line 294
    return v0
.end method

.method public queryCOLP()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 331
    const-string/jumbo v1, "queryCOLP"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 333
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 334
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for queryCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, -0x1

    return v1

    .line 338
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string/jumbo v2, "COLP"

    .line 339
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 338
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    .line 340
    return v0
.end method

.method public queryCOLR()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    const-string/jumbo v1, "queryCOLR"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 318
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 319
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for queryCOLR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, -0x1

    return v1

    .line 323
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    .line 324
    return v0
.end method

.method public queryCallBarring(I)I
    .locals 7
    .param p1, "cbType"    # I

    .prologue
    const/16 v5, 0xd

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 149
    const-string/jumbo v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v6

    .line 151
    .local v6, "id":I
    if-gez v6, :cond_0

    .line 152
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Invalid request id for queryCallBarring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v3

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 158
    .local v2, "facility":I
    if-ne v2, v3, :cond_1

    .line 159
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v3

    .line 163
    :cond_1
    const/16 v0, 0xb

    if-ne v2, v0, :cond_2

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 168
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v6, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 166
    const/4 v3, 0x0

    .line 167
    const/4 v4, 0x1

    .line 164
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 175
    :goto_0
    return v6

    .line 170
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 172
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v6, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 7
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    const-string/jumbo v2, "queryCallForward"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 221
    const/4 v1, -0x1

    .line 223
    .local v1, "reason":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 224
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 225
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for queryCallForward."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v6

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    const/4 v1, 0x0

    .line 260
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 263
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 260
    invoke-virtual {v2, v1, v5, p2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 264
    return v0

    .line 233
    :cond_1
    if-ne p1, v5, :cond_2

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 237
    const/4 v1, 0x2

    goto :goto_0

    .line 239
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 240
    const/4 v1, 0x3

    goto :goto_0

    .line 242
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 243
    const/4 v1, 0x4

    goto :goto_0

    .line 245
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 246
    const/4 v1, 0x5

    goto :goto_0

    .line 248
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    .line 253
    const/4 v1, -0x1

    goto :goto_0

    .line 256
    :cond_7
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "Invalid condition for queryCallForward."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v6
.end method

.method public queryCallWaiting()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    const-string/jumbo v1, "queryCallWaiting"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 273
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 274
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for queryCallWaiting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, -0x1

    return v1

    .line 277
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 278
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    .line 279
    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 532
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 351
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Unsupported API transact() called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 483
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCLIP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 485
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 486
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCLIP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v1, -0x1

    return v1

    .line 489
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string/jumbo v2, "CLIP"

    .line 491
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 489
    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 492
    return v0
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 468
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCLIR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 470
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 471
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCLIR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, -0x1

    return v1

    .line 474
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 475
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 474
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    .line 476
    return v0
.end method

.method public updateCOLP(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 514
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCOLP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 516
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 517
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCOLP."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v1, -0x1

    return v1

    .line 520
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string/jumbo v2, "COLP"

    .line 522
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 520
    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 523
    return v0
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCOLR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 501
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 502
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCOLR."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v1, -0x1

    return v1

    .line 505
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 506
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 505
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    .line 507
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

    .line 377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v4, "updateCallBarring"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v6

    .line 379
    .local v6, "id":I
    if-gez v6, :cond_0

    .line 380
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v3, "Invalid request id for updateCallBarring."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v5

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 386
    .local v2, "facility":I
    if-ne v2, v5, :cond_1

    .line 387
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v3, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v5

    .line 391
    :cond_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v1

    .line 393
    .local v1, "cbAction":I
    const/16 v0, 0xb

    if-ne v2, v0, :cond_2

    .line 394
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 398
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v6, v7, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 397
    const/4 v4, 0x1

    move-object v3, p3

    .line 394
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 405
    :goto_0
    return v6

    .line 400
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 402
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v6, v7, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 400
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

    .line 413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v7

    .line 415
    .local v7, "id":I
    if-gez v7, :cond_0

    .line 416
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Invalid request id for updateCallForward."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, -0x1

    return v0

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 425
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p5

    .line 420
    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 426
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
    .line 434
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v10

    .line 435
    .local v10, "id":I
    if-gez v10, :cond_0

    .line 436
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v0, -0x1

    return v0

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 444
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 442
    const/4 v7, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 440
    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 445
    return v10
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "updateCallWaiting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 454
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 455
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "Invalid request id for updateCallForward."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, -0x1

    return v1

    .line 458
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 460
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 458
    invoke-virtual {v1, p1, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    .line 461
    return v0
.end method
