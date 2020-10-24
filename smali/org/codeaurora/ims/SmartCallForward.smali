.class public Lorg/codeaurora/ims/SmartCallForward;
.super Ljava/lang/Object;
.source "SmartCallForward.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final SIM_NUMBER:Ljava/lang/String; = "sim_number_key"

.field private static final TAG:Ljava/lang/String; = "SmartCallForward"

.field private static final XDIVERT_STATUS:Ljava/lang/String; = "xdivert_status_key"


# instance fields
.field private mCallForwardEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mListenForCallStateEnabled:Z

.field private mPhoneCount:I

.field private mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;-><init>(Lorg/codeaurora/ims/SmartCallForward;Lorg/codeaurora/ims/SmartCallForward$1;)V

    iput-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    .line 36
    iput-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 37
    iput-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    .line 44
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v2, :cond_1

    .line 46
    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    .line 49
    iget v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    new-array v2, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 51
    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 53
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v0

    .line 54
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v1, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/SmartCallForward;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/SmartCallForward;

    .line 28
    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->isAllSubsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/SmartCallForward;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/SmartCallForward;

    .line 28
    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/SmartCallForward;

    .line 28
    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->listen()V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/SmartCallForward;

    .line 28
    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->unRegisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/SmartCallForward;ILandroid/telephony/PreciseCallState;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/SmartCallForward;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/telephony/PreciseCallState;

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/SmartCallForward;->processSmartCallForward(ILandroid/telephony/PreciseCallState;)V

    return-void
.end method

.method private enableSmartCallForward(ZILjava/lang/String;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I
    .param p3, "lineNumber"    # Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSmartCallForward enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current callforward status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCallForward"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 160
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v0, p2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 165
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v0, p2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 168
    :cond_1
    :goto_0
    return-void
.end method

.method private getLineNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "lineNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineNumber phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmartCallForward"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-object v2
.end method

.method private getNextPhoneId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 171
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    .line 172
    .local v0, "nextPhoneId":I
    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-lt v0, v1, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 2
    .param p1, "phoneId"    # I

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v1, Lorg/codeaurora/ims/SmartCallForward$1;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/SmartCallForward$1;-><init>(Lorg/codeaurora/ims/SmartCallForward;)V

    aput-object v1, v0, p1

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getXDivertStatus()Z
    .locals 4

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 211
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "xdivert_status_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 212
    .local v2, "status":Z
    return v2
.end method

.method private isActiveOrHoldingCallPresent(Landroid/telephony/PreciseCallState;)Z
    .locals 3
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .line 125
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 125
    :goto_1
    return v1
.end method

.method private isAllSubsActive()Z
    .locals 2

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 195
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/SmartCallForward;->isSlotActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isSlotActive(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "slotActive":Z
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 181
    .local v1, "mgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 182
    .local v2, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 184
    .local v4, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 186
    goto :goto_1

    .line 188
    .end local v4    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    return v0
.end method

.method private listen()V
    .locals 9

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    .line 81
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 82
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 83
    .local v1, "subMgr":Landroid/telephony/SubscriptionManager;
    const-string v2, "SmartCallForward"

    const-string v3, "Register for call state change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v3, v4, :cond_1

    .line 85
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 87
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v4, :cond_0

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register for call state change subInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 92
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 93
    .local v5, "subId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Register for call state change subId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for phone Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/SmartCallForward;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v7

    const/16 v8, 0x800

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 84
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    .line 98
    return-void
.end method

.method private processSmartCallForward(ILandroid/telephony/PreciseCallState;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;

    .line 132
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 133
    .local v0, "phoneId":I
    const-string v1, "SmartCallForward"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 134
    const-string v2, "processSmartCallForward invalid phone ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->getXDivertStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    const-string v2, "processSmartCallForward xdivert is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/SmartCallForward;->getLineNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "lineNumber":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 145
    const-string v3, "processSmartCallForward invalid phone number"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 149
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupportedOverWifi()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 150
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupportedOverWifi()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/SmartCallForward;->isActiveOrHoldingCallPresent(Landroid/telephony/PreciseCallState;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/SmartCallForward;->getNextPhoneId(I)I

    move-result v3

    .line 149
    invoke-direct {p0, v1, v3, v2}, Lorg/codeaurora/ims/SmartCallForward;->enableSmartCallForward(ZILjava/lang/String;)V

    .line 152
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 5

    .line 101
    const-string v0, "SmartCallForward"

    const-string v1, "unRegister for call state change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    .line 103
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    .line 104
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 105
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    .line 106
    iget-object v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 107
    aget-object v3, v3, v2

    invoke-virtual {v1, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 108
    iget-object v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 105
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
