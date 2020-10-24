.class public Lorg/codeaurora/ims/ImsServiceStateReceiver;
.super Ljava/lang/Object;
.source "ImsServiceStateReceiver.java"


# static fields
.field private static final ACTION_WIFI_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "org.codeaurora.wifibearer.WIFI_CONNECTION_STATE"

.field private static final DBG:Z = true

.field private static final IMS_HD_ICON:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceStateReceiver"

.field private static final SLOT_VOWIFI:Ljava/lang/String; = "vowifi"

.field private static final WIFI_STATUS:Ljava/lang/String; = "Wifi_Status"

.field private static mIsWifiCallIntentSent:Z

.field private static mNotificationMgr:Landroid/app/NotificationManager;

.field private static mShowHDIcon:Z

.field private static mShowWifiIcon:Z

.field private static mStatusBarManager:Landroid/app/StatusBarManager;

.field private static mVoWiFiCallQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 35
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 37
    sput-object v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 39
    sput-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowWifiIcon:Z

    .line 40
    sput-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mIsWifiCallIntentSent:Z

    .line 42
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mVoWiFiCallQuality:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResourceIdFromVoWiFiQuality(I)Ljava/lang/Integer;
    .locals 3
    .param p0, "voWiFiQuality"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "resourceId":Ljava/lang/Integer;
    const/4 v1, 0x1

    const v2, 0x7f020002

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_0
    const v1, 0x7f020003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    goto :goto_0

    .line 215
    :cond_1
    const v1, 0x7f020001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    goto :goto_0

    .line 212
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    nop

    .line 224
    :goto_0
    return-object v0
.end method

.method private static isCallExistsWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z
    .locals 2
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 145
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static isShowHDIconSupported(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "showHDIcon":Z
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 96
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 97
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 97
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    nop

    .line 100
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 99
    invoke-static {p0, v2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    .local v2, "subRes":Landroid/content/res/Resources;
    const v3, 0x7f010005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 103
    .end local v2    # "subRes":Landroid/content/res/Resources;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowHDIconSupported config showHDIcon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsServiceStateReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method private static isVolteCallExistWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z
    .locals 4
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "isVolteCallPresent":Z
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 167
    .local v2, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVolteCall(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 169
    goto :goto_1

    .line 171
    .end local v2    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    return v0
.end method

.method private static isVolteCallPresent(Lorg/codeaurora/ims/ImsServiceSub;)Z
    .locals 2
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 153
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isVolteCallExistWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z

    move-result v0

    .line 155
    .local v0, "isVolteCallPresent":Z
    if-nez v0, :cond_1

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isVolteCallExistWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 157
    return v0
.end method

.method private static sendWifiIconIntent(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showWifiIcon"    # Z

    .line 180
    sget-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mIsWifiCallIntentSent:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendWifiIconIntent with showWifiIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceStateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sput-boolean p1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mIsWifiCallIntentSent:Z

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.wifibearer.WIFI_CONNECTION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Wifi_Status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 186
    return-void
.end method

.method private static showHDIcon(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showHDIcon"    # Z

    .line 70
    sget-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 73
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 77
    :cond_1
    sput-boolean p1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 78
    sget-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    const/16 v1, 0x3e8

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 84
    const/high16 v2, 0x7f020000

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 86
    .local v2, "notification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 87
    sget-object v3, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 88
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 91
    :goto_0
    return-void
.end method

.method private static declared-synchronized showVoWifiCallQualityIcon(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 193
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    sput-object v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 196
    :cond_0
    const-string v1, "ImsServiceStateReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showVoWifiCallQualityIcon : showWifiIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowWifiIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " voWiFiCallQuality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mVoWiFiCallQuality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-boolean v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowWifiIcon:Z

    if-eqz v1, :cond_1

    .line 200
    sget v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mVoWiFiCallQuality:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->getResourceIdFromVoWiFiQuality(I)Ljava/lang/Integer;

    move-result-object v1

    .line 201
    .local v1, "resourceId":Ljava/lang/Integer;
    sget-object v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "vowifi"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 202
    .end local v1    # "resourceId":Ljava/lang/Integer;
    goto :goto_0

    .line 203
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "vowifi"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 205
    :goto_0
    sget-boolean v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowWifiIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 191
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateHDIcon(Landroid/content/Context;IZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "isVideoCapable"    # Z
    .param p3, "isVoiceCapable"    # Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHDIcon isVideo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVoice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " show HD Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceStateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isShowHDIconSupported(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 62
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Landroid/content/Context;Z)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Landroid/content/Context;Z)V

    .line 67
    :goto_0
    return-void
.end method

.method public static validateAndUpdateWifiIconIndicator(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voWifiCallQuality"    # I

    .line 108
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sput p1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mVoWiFiCallQuality:I

    .line 110
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showVoWifiCallQualityIcon(Landroid/content/Context;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public static validateAndUpdateWifiIconStatus(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isVoiceSupportedOverWifi"    # Z
    .param p3, "isVideoSupportedOverWifi"    # Z

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "wifiIconStatus":Z
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isCallExistsWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 121
    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isCallExistsWithState(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/DriverCallIms$State;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    :cond_1
    const/4 v0, 0x1

    .line 126
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->sendWifiIconIntent(Landroid/content/Context;Z)V

    .line 128
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->isVolteCallPresent(Lorg/codeaurora/ims/ImsServiceSub;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    move v0, v2

    .line 131
    sget-boolean v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowWifiIcon:Z

    if-eq v2, v0, :cond_4

    .line 132
    sput-boolean v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowWifiIcon:Z

    .line 133
    invoke-static {p1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showVoWifiCallQualityIcon(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    sput v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mVoWiFiCallQuality:I

    .line 138
    :cond_4
    return-void
.end method
