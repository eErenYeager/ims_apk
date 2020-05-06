.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;,
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ACCESS_PROVISIONED_VAL:I = 0x4

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0x2

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsConfigImpl"


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private final mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mSubId:I


# direct methods
.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "accessType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onAccessProvisionedValDone(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 45
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 55
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 56
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsConfigImplHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 63
    const-string/jumbo v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 65
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateVideoCallFeatureAvailability()V

    .line 66
    return-void
.end method

.method private enableVideoCalling(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 436
    const-string/jumbo v2, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Video call feature is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 440
    .local v0, "enableVideoCalling":I
    :goto_1
    const/4 v1, 0x1

    .line 441
    const/16 v2, 0xd

    .line 440
    invoke-virtual {p0, v1, v2, v0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 443
    const/4 v1, 0x3

    .line 444
    const/16 v2, 0x12

    .line 443
    invoke-virtual {p0, v1, v2, v0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 445
    return-void

    .line 436
    .end local v0    # "enableVideoCalling":I
    :cond_0
    const-string/jumbo v1, "disabled"

    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enableVideoCalling":I
    goto :goto_1
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 177
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "AsyncResult is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-object v2

    .line 178
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 180
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    .line 180
    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    return-object v0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 171
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 172
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onAccessProvisionedValDone(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "accessType"    # I

    .prologue
    .line 116
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 117
    .local v0, "response":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 118
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 119
    monitor-enter v0

    .line 120
    :try_start_0
    const-string/jumbo v1, "ImsConfigImpl"

    const-string/jumbo v2, "Notifyall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 123
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 129
    .local v1, "status":I
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 130
    const/4 v0, -0x1

    .line 132
    .local v0, "result":I
    :goto_1
    invoke-interface {p1, v1, v0}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V

    .line 137
    .end local v0    # "result":I
    .end local v1    # "status":I
    :cond_0
    :goto_2
    return-void

    .line 128
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 131
    .restart local v1    # "status":I
    :cond_2
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "result":I
    goto :goto_1

    .line 133
    .end local v0    # "result":I
    .end local v1    # "status":I
    :catch_0
    move-exception v2

    .line 134
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetVideoCallQualityDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 151
    if-eqz p1, :cond_1

    .line 153
    :try_start_0
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v2

    .line 154
    .local v2, "status":I
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 155
    .local v0, "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    iget v4, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    iget v5, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    iget v6, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-interface {p1, v4, v5, v6, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 156
    if-nez v2, :cond_1

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "item"

    iget v5, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string/jumbo v4, "value"

    iget v5, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 161
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "ImsConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetFeatureResponseDone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 143
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "status":I
    :cond_0
    :goto_1
    return-void

    .line 142
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetVideoCallQualityDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "event"    # I
    .param p4, "boolVal"    # Z
    .param p5, "intVal"    # I
    .param p6, "strVal"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    .line 239
    .local v10, "request":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToProto(I)I

    move-result v2

    .line 242
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 241
    const/4 v6, 0x0

    move v1, p1

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 240
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 244
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :goto_0
    :try_start_1
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 247
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    monitor-exit v10

    .line 256
    return-object v10

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    :catch_1
    move-exception v8

    .line 254
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, -0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    return-object v10

    .line 255
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v0

    .line 256
    return-object v10
.end method

.method private static toProtoCallType(I)I
    .locals 1
    .param p0, "featureType"    # I

    .prologue
    .line 402
    packed-switch p0, :pswitch_data_0

    .line 409
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 405
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toProtoRadioTech(I)I
    .locals 1
    .param p0, "featureType"    # I

    .prologue
    .line 420
    sparse-switch p0, :sswitch_data_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 422
    :sswitch_0
    const/16 v0, 0xe

    return v0

    .line 424
    :sswitch_1
    const/16 v0, 0x13

    return v0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateVideoCallFeatureAvailability()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 366
    const-string/jumbo v5, "volte_vt_enabled"

    .line 364
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, "enhanced4GMode":I
    if-eq v2, v7, :cond_0

    .line 369
    const-string/jumbo v4, "ImsConfigImpl"

    const-string/jumbo v5, "Video calls are disabled by enhanced 4G config."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->enableVideoCalling(Z)V

    .line 371
    return-void

    .line 374
    :cond_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 376
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 378
    :goto_1
    if-nez v1, :cond_3

    .line 379
    const-string/jumbo v4, "ImsConfigImpl"

    const-string/jumbo v5, "Video calls are disabled by carrier config."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->enableVideoCalling(Z)V

    .line 381
    return-void

    .line 375
    :cond_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 377
    .end local v0    # "carrierConfig":Landroid/os/PersistableBundle;
    :cond_2
    const-string/jumbo v4, "carrier_vt_available_bool"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "carrierVtAvailable":Z
    goto :goto_1

    .line 384
    .end local v1    # "carrierVtAvailable":Z
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 385
    const v5, 0x112003b

    .line 384
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 386
    .local v3, "videoCallAvailable":Z
    if-nez v3, :cond_4

    .line 387
    const-string/jumbo v4, "ImsConfigImpl"

    const-string/jumbo v5, "Video calls are disabled by device config."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->enableVideoCalling(Z)V

    .line 389
    return-void

    .line 392
    :cond_4
    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsConfigImpl;->enableVideoCalling(Z)V

    .line 393
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 334
    const-string/jumbo v0, "getFeatureValue"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterValue(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 275
    const-string/jumbo v0, "getProvisionedStringValue"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "Invalid API request for item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-object v6

    .line 280
    :cond_0
    const/16 v1, 0x2d

    .line 281
    const/4 v3, 0x4

    move-object v0, p0

    move v2, p1

    move v5, v4

    .line 280
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 282
    .local v7, "result":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const/4 v8, 0x0

    .line 284
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 285
    return-object v8

    .line 283
    :cond_1
    iget-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .local v8, "retVal":Ljava/lang/String;
    goto :goto_0
.end method

.method public getProvisionedValue(I)I
    .locals 9
    .param p1, "item"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 261
    const-string/jumbo v0, "getProvisionedValue"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 262
    invoke-static {p1, v2}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "Invalid API request for item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v2

    .line 266
    :cond_0
    const/16 v1, 0x2d

    .line 267
    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v5, v4

    .line 266
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 268
    .local v7, "result":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const/4 v8, -0x1

    .line 270
    .local v8, "retVal":I
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 271
    return v8

    .line 269
    .end local v8    # "retVal":I
    :cond_1
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .restart local v8    # "retVal":I
    goto :goto_0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 201
    const-string/jumbo v0, "getVideoQuality"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "getVideoQuality"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVideoQuality(Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 1

    .prologue
    .line 340
    const-string/jumbo v0, "getVolteProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 8
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    const/4 v5, 0x0

    .line 347
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v7, "setFeatureValue"

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->toProtoCallType(I)I

    move-result v2

    .line 349
    .local v2, "srvType":I
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 350
    const/4 v4, 0x2

    .line 351
    .local v4, "enable":I
    :goto_0
    invoke-static {p2}, Lorg/codeaurora/ims/ImsConfigImpl;->toProtoRadioTech(I)I

    move-result v3

    .line 353
    .local v3, "radioTech":I
    if-eqz v3, :cond_1

    .line 354
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServiceStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 356
    new-instance v6, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    invoke-direct {v6, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    .line 355
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 357
    .local v1, "message":Landroid/os/Message;
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 361
    .end local v1    # "message":Landroid/os/Message;
    :goto_1
    return-void

    .line 350
    .end local v3    # "radioTech":I
    .end local v4    # "enable":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "enable":I
    goto :goto_0

    .line 359
    .restart local v3    # "radioTech":I
    :cond_1
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v5, "Invalid request...Unknown radio technology."

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 10
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 314
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setProvisionedStringValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "Invalid API request for item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_0
    const/16 v1, 0x2c

    .line 320
    const/4 v3, 0x4

    move-object v0, p0

    move v2, p1

    move v5, v4

    move-object v6, p2

    .line 319
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 321
    .local v8, "result":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 322
    .local v9, "retVal":I
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 323
    if-nez v9, :cond_1

    .line 324
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v7, "configChangedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "item"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string/jumbo v0, "value"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    .end local v7    # "configChangedIntent":Landroid/content/Intent;
    :cond_1
    return v9
.end method

.method public setProvisionedValue(II)I
    .locals 10
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setProvisionedValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    .line 292
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "VoWiFi Roaming: value can\'t be changed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v3

    .line 295
    :cond_0
    invoke-static {p1, v3}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "Invalid API request for item"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v3

    .line 299
    :cond_1
    const/16 v1, 0x2c

    .line 300
    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v5, p2

    .line 299
    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 301
    .local v8, "result":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 302
    .local v9, "retVal":I
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 303
    if-nez v9, :cond_2

    .line 304
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v7, "configChangedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "item"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string/jumbo v0, "value"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    .end local v7    # "configChangedIntent":Landroid/content/Intent;
    :cond_2
    return v9
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "quality"    # I
    .param p2, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setVideoQuality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoQuality qualiy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setVideoQuality(ILandroid/os/Message;)V

    .line 216
    return-void
.end method
