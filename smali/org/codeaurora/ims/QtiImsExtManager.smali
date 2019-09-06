.class public Lorg/codeaurora/ims/QtiImsExtManager;
.super Ljava/lang/Object;
.source "QtiImsExtManager.java"


# static fields
.field public static final SERVICE_ID:Ljava/lang/String; = "qti.ims.ext"

.field private static sInstance:Lorg/codeaurora/ims/QtiImsExtManager;


# instance fields
.field private mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/codeaurora/ims/QtiImsExtManager;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->sInstance:Lorg/codeaurora/ims/QtiImsExtManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-direct {v0}, Lorg/codeaurora/ims/QtiImsExtManager;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->sInstance:Lorg/codeaurora/ims/QtiImsExtManager;

    .line 73
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->sInstance:Lorg/codeaurora/ims/QtiImsExtManager;

    return-object v0
.end method

.method private obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-nez v1, :cond_1

    .line 238
    const-string/jumbo v1, "qti.ims.ext"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 239
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExt;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 241
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string/jumbo v2, "ImsService is not running"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    return-object v1

    .line 246
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    return-object v1
.end method


# virtual methods
.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2, p3}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService getCallForwardUncondTimer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 216
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService getHandoverConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImsPhoneId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 165
    const/4 v1, -0x1

    .line 167
    .local v1, "imsPhoneId":I
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getImsPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote ImsService getImsPhoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService getPacketCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 110
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService getPacketErrorCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService querySsacStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 207
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService queryVoltePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService queryVopsStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 187
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService registerForParticipantStatusInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService registerForViceRefreshInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumePendingCall(I)V
    .locals 4
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 129
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->resumePendingCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService resumePendingCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "deflectNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 120
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2, p3}, Lorg/codeaurora/ims/internal/IQtiImsExt;->sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService sendCallDeflectRequestCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/codeaurora/ims/internal/IQtiImsExt;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService sendCallTransferRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lorg/codeaurora/ims/internal/IQtiImsExt;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 83
    :catch_0
    move-exception v10

    .line 84
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v0, Lorg/codeaurora/ims/QtiImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote ImsService setCallForwardUncondTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService setHandoverConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2, p3}, Lorg/codeaurora/ims/internal/IQtiImsExt;->updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote ImsService updateVoltePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
