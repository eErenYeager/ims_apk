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
.method static synthetic -get0(Lorg/codeaurora/ims/SmartCallForward;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/SmartCallForward;)Z
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->isAllSubsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->listen()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/SmartCallForward;ILandroid/telephony/PreciseCallState;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/SmartCallForward;->processSmartCallForward(ILandroid/telephony/PreciseCallState;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->unRegisterPhoneStateListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;-><init>(Lorg/codeaurora/ims/SmartCallForward;Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;)V

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iput v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    .line 34
    iput-boolean v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 35
    iput-boolean v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    .line 42
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    .line 43
    sget-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 42
    if-ne v2, v3, :cond_1

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 46
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    .line 47
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 49
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 51
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v0

    .line 52
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v4, v2, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 56
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 55
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    .end local v0    # "i":I
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private enableSmartCallForward(ZILjava/lang/String;)V
    .locals 12
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I
    .param p3, "lineNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableSmartCallForward enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    const-string/jumbo v2, " current callforward status: "

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-boolean v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    if-nez v0, :cond_0

    .line 157
    iput-boolean v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p2

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v4, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    .line 163
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v0, p2

    const/4 v7, 0x4

    move v8, v1

    move-object v9, p3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getLineNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 199
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 201
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim_number_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "lineNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLineNumber phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    return-object v1
.end method

.method private getNextPhoneId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 169
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    .line 170
    .local v0, "nextPhoneId":I
    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-lt p1, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v1, Lorg/codeaurora/ims/SmartCallForward$1;

    invoke-direct {v1, p0, p2}, Lorg/codeaurora/ims/SmartCallForward$1;-><init>(Lorg/codeaurora/ims/SmartCallForward;I)V

    aput-object v1, v0, p1

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getXDivertStatus()Z
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "xdivert_status_key"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 210
    .local v2, "status":Z
    return v2
.end method

.method private isActiveOrHoldingCallPresent(Landroid/telephony/PreciseCallState;)Z
    .locals 3
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result v1

    .line 126
    const/4 v2, 0x2

    .line 125
    if-ne v1, v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllSubsActive()Z
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 193
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/SmartCallForward;->isSlotActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isSlotActive(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "slotActive":Z
    iget-object v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 179
    .local v1, "mgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subInfoRecord$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 182
    .local v3, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 188
    .end local v3    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subInfoRecord$iterator":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private listen()V
    .locals 7

    .prologue
    .line 79
    iget-object v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 80
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 81
    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    const-string/jumbo v5, "Register for call state change"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v5, :cond_1

    .line 83
    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 85
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register for call state change subInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 91
    .local v1, "subId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Register for call state change subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for phone Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/SmartCallForward;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    .line 93
    const/16 v6, 0x800

    .line 92
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "subId":I
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    .line 77
    return-void
.end method

.method private processSmartCallForward(ILandroid/telephony/PreciseCallState;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    .line 130
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 131
    .local v1, "phoneId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 132
    const-string/jumbo v2, "processSmartCallForward invalid phone ID"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->getXDivertStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const-string/jumbo v2, "processSmartCallForward xdivert is not enabled"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/SmartCallForward;->getLineNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "lineNumber":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 143
    const-string/jumbo v2, "processSmartCallForward invalid phone number"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    return-void

    .line 147
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupportedOverWifi()Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupportedOverWifi()Z

    move-result v2

    .line 147
    if-eqz v2, :cond_4

    .line 148
    :cond_3
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/SmartCallForward;->isActiveOrHoldingCallPresent(Landroid/telephony/PreciseCallState;)Z

    move-result v2

    .line 149
    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/SmartCallForward;->getNextPhoneId(I)I

    move-result v3

    .line 147
    invoke-direct {p0, v2, v3, v0}, Lorg/codeaurora/ims/SmartCallForward;->enableSmartCallForward(ZILjava/lang/String;)V

    .line 129
    return-void

    .line 147
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 99
    const-string/jumbo v2, "unRegister for call state change"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-boolean v4, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    .line 102
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 103
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v5, v2, v0

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method
