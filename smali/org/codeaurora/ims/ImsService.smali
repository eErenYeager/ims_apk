.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/compat/ImsService;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsService$imsMMTelFeature;
    }
.end annotation


# static fields
.field private static final ACTION_GET_RADIO_ACCESS_FAMILY_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private final ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final QTI_IMS_DEFLECT_ENABLED:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field protected mImsPhoneId:I

.field protected mIsReceiverRegistered:Z

.field protected mNumMultiModeStacks:I

.field private mNumPhonesCache:I

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/telephony/ims/compat/ImsService;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    .line 69
    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

    .line 70
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 71
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 72
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PHONE_STATE:Ljava/lang/String;

    .line 73
    const-string v0, "qti.ims.call_deflect"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->QTI_IMS_DEFLECT_ENABLED:Ljava/lang/String;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    .line 78
    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    .line 80
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsService;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsService;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsService;I)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->isMultiModeSupported(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->enforceReadPhoneState(Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 1

    .line 100
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 102
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method private getNumSlots()I
    .locals 2

    .line 93
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    .line 96
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return v0
.end method

.method private getNumSubscriptions()I
    .locals 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method private initCallDeflectStatus()V
    .locals 3

    .line 171
    nop

    .line 172
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qti.ims.call_deflect"

    .line 171
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    return-void
.end method

.method private isMultiModeSupported(I)Z
    .locals 0

    .line 246
    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private switchImsPhoneByPhoneId(I)V
    .locals 4

    .line 180
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switschImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-ne v0, p1, :cond_1

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " UNchanged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: ImsPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput p1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 195
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget v1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/ImsServiceSub;->registerForPhoneId(I)V

    .line 198
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    .line 199
    :goto_0
    const/high16 v1, 0x20000000

    if-ge v0, p1, :cond_3

    .line 200
    iget v2, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq v2, v0, :cond_2

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    const-string v1, "android:phone_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    const-string v0, "android:phone_id"

    iget v1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method private switchImsPhoneBySubId(I)V
    .locals 3

    .line 217
    nop

    .line 223
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 229
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchImsPhoneBySubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    .line 236
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 132
    const-string v0, "android.telephony.ims.compat.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string p1, "Returning mImsServiceController for ImsService binding"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object p1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v1, "Invalid Intent action in onBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 110
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onCreate()V

    .line 111
    const-string v0, "ImsService compat created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 114
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v3, Lorg/codeaurora/ims/ImsServiceSub;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v1

    .line 113
    move v1, v4

    goto :goto_0

    .line 120
    :cond_0
    const-string v1, "qti.ims.ext"

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v2, v2, v0

    .line 121
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 124
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v1, v0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 127
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initCallDeflectStatus()V

    .line 128
    return-void
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v1, "onCreateMMTelImsFeature :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 149
    new-instance v0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;

    invoke-direct {v0, p0, p0, p1}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;-><init>(Lorg/codeaurora/ims/ImsService;Landroid/content/Context;I)V

    .line 150
    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const-string v1, "onCreateMMTelImsFeature :: Invalid phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    const-string v0, "Ims Service Destroyed Successfully..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onDestroy()V

    .line 166
    return-void
.end method
