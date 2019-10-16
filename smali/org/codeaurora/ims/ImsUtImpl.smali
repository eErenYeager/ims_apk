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
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 92
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 93
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 94
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 98
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerProxy;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerProxy;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 99
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 106
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerProxy;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    return-object p0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createUtInterface(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1

    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string p0, "ImsUtImpl"

    const-string p1, "senderRxr value is null in createUtInterface()"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 127
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    sput-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 130
    :cond_1
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private getFacilityFromCbType(I)I
    .locals 3

    .line 192
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 193
    return v0

    .line 195
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    .line 196
    return v1

    .line 198
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v1, :cond_2

    .line 199
    return v0

    .line 201
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v1, :cond_3

    .line 202
    return v2

    .line 204
    :cond_3
    const/4 v1, 0x7

    if-ne p1, v0, :cond_4

    .line 205
    return v1

    .line 207
    :cond_4
    const/16 v0, 0x8

    if-ne p1, v1, :cond_5

    .line 208
    return v0

    .line 210
    :cond_5
    const/16 v1, 0x9

    if-ne p1, v0, :cond_6

    .line 211
    return v1

    .line 213
    :cond_6
    const/16 v0, 0xa

    if-ne p1, v1, :cond_7

    .line 214
    return v0

    .line 216
    :cond_7
    if-ne p1, v0, :cond_8

    .line 217
    const/16 p1, 0xb

    return p1

    .line 219
    :cond_8
    if-ne p1, v2, :cond_9

    .line 220
    const/16 p1, 0xc

    return p1

    .line 223
    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method private getIdForRequest()I
    .locals 2

    .line 574
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 575
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 576
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 578
    :cond_0
    sget v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    return v0
.end method

.method private getImsReasonInfoFromResponseError(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 3

    .line 588
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 589
    const-string p1, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    return-object v0

    .line 592
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 593
    const-string p1, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    return-object v0

    .line 599
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 600
    const-string p1, "getImsReasonInfoFromResponseError :: Improper exception type in AsyncResult!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    return-object v0

    .line 605
    :cond_2
    nop

    .line 608
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 610
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/RuntimeException;

    .line 611
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 612
    if-nez p1, :cond_3

    .line 613
    const-string p1, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    return-object v0

    .line 620
    :cond_3
    const-string v2, "E_GENERIC_FAILURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 621
    return-object v0

    .line 622
    :cond_4
    const-string v2, "E_NETWORK_NOT_SUPPORTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    .line 623
    const/16 p1, 0x322

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsReasonInfoFromResponseError :: ImsReasonInfo code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    return-object v0

    .line 625
    :cond_5
    const-string p1, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    return-object v0
.end method

.method public static getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 2

    .line 133
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "ImsUtImpl"

    const-string v1, "sUtImpl is null in getUtInterface()"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsUtImpl;->sUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 145
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    .line 146
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method public getIcbAction(I)I
    .locals 2

    .line 386
    if-nez p1, :cond_0

    .line 387
    const/4 p1, 0x2

    return p1

    .line 388
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 389
    return v0

    .line 390
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 391
    const/4 p1, 0x5

    return p1

    .line 392
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 393
    return v0

    .line 395
    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 8

    .line 238
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 239
    nop

    .line 241
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 242
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 243
    const-string p1, "Invalid request id for queryCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    return v1

    .line 248
    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    .line 249
    nop

    .line 278
    move v1, v6

    goto :goto_0

    .line 251
    :cond_1
    if-ne p1, v7, :cond_2

    .line 252
    nop

    .line 278
    move v1, v7

    goto :goto_0

    .line 254
    :cond_2
    if-ne p1, v5, :cond_3

    .line 255
    nop

    .line 278
    move v1, v5

    goto :goto_0

    .line 257
    :cond_3
    if-ne p1, v4, :cond_4

    .line 258
    nop

    .line 278
    move v1, v4

    goto :goto_0

    .line 260
    :cond_4
    if-ne p1, v3, :cond_5

    .line 261
    nop

    .line 278
    move v1, v3

    goto :goto_0

    .line 263
    :cond_5
    if-ne p1, v2, :cond_6

    .line 264
    nop

    .line 278
    move v1, v2

    goto :goto_0

    .line 266
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    .line 271
    nop

    .line 278
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 281
    invoke-virtual {v2, v7, v0, v6, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 278
    invoke-virtual {p1, v1, p3, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 282
    return v0

    .line 274
    :cond_7
    const-string p1, "Invalid condition for queryCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    return v1
.end method

.method public queryCallBarring(I)I
    .locals 1

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result p1

    return p1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 8

    .line 160
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 162
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 163
    const-string p1, "Invalid request id for queryCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    return v1

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v4

    .line 169
    if-ne v4, v1, :cond_1

    .line 170
    const-string p1, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    return v1

    .line 174
    :cond_1
    const/16 p1, 0xb

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-ne v4, p1, :cond_2

    .line 175
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 179
    invoke-virtual {p2, v2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 175
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-virtual {v6, v2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 181
    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 186
    :goto_0
    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public queryCallWaiting()I
    .locals 5

    .line 289
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 291
    if-gez v0, :cond_0

    .line 292
    const-string v0, "Invalid request id for queryCallWaiting."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    const/4 v0, -0x1

    return v0

    .line 295
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    .line 296
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 295
    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    .line 297
    return v0
.end method

.method public queryClip()I
    .locals 5

    .line 319
    const-string v0, "queryClip"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 321
    if-gez v0, :cond_0

    .line 322
    const-string v0, "Invalid request id for queryCLIP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    const/4 v0, -0x1

    return v0

    .line 326
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    .line 327
    return v0
.end method

.method public queryClir()I
    .locals 5

    .line 304
    const-string v0, "queryClir"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 306
    if-gez v0, :cond_0

    .line 307
    const-string v0, "Invalid request id for queryCLIR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    const/4 v0, -0x1

    return v0

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    .line 312
    return v0
.end method

.method public queryColp()I
    .locals 6

    .line 349
    const-string v0, "queryColp()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 351
    if-gez v0, :cond_0

    .line 352
    const-string v0, "Invalid request id for queryCLIP."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    const/4 v0, -0x1

    return v0

    .line 356
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "COLP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 357
    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 356
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    .line 358
    return v0
.end method

.method public queryColr()I
    .locals 5

    .line 334
    const-string v0, "queryColr"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 336
    if-gez v0, :cond_0

    .line 337
    const-string v0, "Invalid request id for queryCOLR."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    const/4 v0, -0x1

    return v0

    .line 341
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    .line 342
    return v0
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 3

    .line 563
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerProxy:Lorg/codeaurora/ims/ImsUtListenerProxy;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 565
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 0

    .line 369
    const-string p1, "Unsupported API transact() called."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    const/4 p1, -0x1

    return p1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringForServiceClass(III[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 0

    .line 377
    const/4 p1, 0x0

    return p1
.end method

.method public updateCallBarringForServiceClass(III[Ljava/lang/String;)I
    .locals 8

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallBarring"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 412
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 413
    const-string p1, "Invalid request id for updateCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    return v1

    .line 418
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v4

    .line 419
    if-ne v4, v1, :cond_1

    .line 420
    const-string p1, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    return v1

    .line 424
    :cond_1
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v3

    .line 426
    const/16 p1, 0xb

    const/4 p2, 0x0

    const/16 v1, 0xe

    if-ne v4, p1, :cond_2

    .line 427
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v6, 0x1

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 431
    invoke-virtual {p1, v1, v0, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 427
    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v5, 0x0

    iget-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 435
    invoke-virtual {p1, v1, v0, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 433
    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 438
    :goto_0
    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 8

    .line 446
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 448
    if-gez v0, :cond_0

    .line 449
    const-string p1, "Invalid request id for updateCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    const/4 p1, -0x1

    return p1

    .line 453
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 458
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 453
    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 459
    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 12

    move-object v0, p0

    .line 467
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 468
    if-gez v1, :cond_0

    .line 469
    const-string v1, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    const/4 v0, -0x1

    return v0

    .line 473
    :cond_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v9, 0x1

    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 477
    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 473
    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 478
    return v1
.end method

.method public updateCallWaiting(ZI)I
    .locals 5

    .line 485
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallWaiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 487
    if-gez v0, :cond_0

    .line 488
    const-string p1, "Invalid request id for updateCallForward."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    const/4 p1, -0x1

    return p1

    .line 491
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 493
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 491
    invoke-virtual {v1, p1, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    .line 494
    return v0
.end method

.method public updateClip(Z)I
    .locals 6

    .line 516
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateClip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 518
    if-gez v0, :cond_0

    .line 519
    const-string p1, "Invalid request id for updateCLIP."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    const/4 p1, -0x1

    return p1

    .line 522
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "CLIP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 524
    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 522
    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 525
    return v0
.end method

.method public updateClir(I)I
    .locals 5

    .line 501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateClir"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 503
    if-gez v0, :cond_0

    .line 504
    const-string p1, "Invalid request id for updateCLIR."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    const/4 p1, -0x1

    return p1

    .line 507
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 508
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 507
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    .line 509
    return v0
.end method

.method public updateColp(Z)I
    .locals 6

    .line 547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateColp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 549
    if-gez v0, :cond_0

    .line 550
    const-string p1, "Invalid request id for updateCOLP."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    const/4 p1, -0x1

    return p1

    .line 553
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "COLP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 555
    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 553
    invoke-virtual {v1, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 556
    return v0
.end method

.method public updateColr(I)I
    .locals 5

    .line 532
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateColr"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 534
    if-gez v0, :cond_0

    .line 535
    const-string p1, "Invalid request id for updateCOLR."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    const/4 p1, -0x1

    return p1

    .line 538
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 539
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 538
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    .line 540
    return v0
.end method
