.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsService$1;
    }
.end annotation


# static fields
.field protected static final EVENT_MODEM_STACK_READY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private final ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private final mBinder:Lcom/android/ims/internal/IImsService$Stub;

.field private mHandler:Landroid/os/Handler;

.field protected mImsPhoneId:I

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsService;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsService;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsService;
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->enforceReadPhoneState(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    .line 51
    const-string/jumbo v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PHONE_STATE:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    .line 219
    new-instance v0, Lorg/codeaurora/ims/ImsService$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$1;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    .line 44
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsService$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$2;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 1
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method private getNumSubscriptions()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method private handleModemStackReady(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method private isMultiModeSupported(I)Z
    .locals 3
    .param p1, "nRatMask"    # I

    .prologue
    const/4 v1, 0x0

    .line 158
    const/16 v0, 0x4008

    .line 160
    .local v0, "nMmMask":I
    and-int/lit16 v2, p1, 0x4008

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "Unknown msg!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 125
    :pswitch_0
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "Received event: EVENT_MODEM_STACK_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->handleModemStackReady(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "Returning mBinder for ImsService binding."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v4, "ImsService created!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v3

    new-array v3, v3, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 84
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v4, Lorg/codeaurora/ims/ImsServiceSub;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v4, v5, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v4, v3, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const-string/jumbo v3, "ims"

    iget-object v4, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const-string/jumbo v3, "android:phone_id"

    iget v4, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 95
    :goto_1
    const/4 v0, 0x1

    .line 96
    .local v0, "defaultSub":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initSubscriptionStatus()V

    .line 99
    return-void

    .line 93
    .end local v0    # "defaultSub":I
    :cond_1
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 111
    return-void
.end method
