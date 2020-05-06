.class Lorg/codeaurora/ims/IFRequest;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lorg/codeaurora/ims/IFRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mData:[B

.field mNext:Lorg/codeaurora/ims/IFRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 80
    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    if-eqz v1, :cond_0

    .line 104
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 105
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    iget-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    sput-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 106
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 107
    sget v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_0
    monitor-exit v2

    .line 111
    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lorg/codeaurora/ims/IFRequest;

    invoke-direct {v0}, Lorg/codeaurora/ims/IFRequest;-><init>()V

    .line 115
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_1
    sget v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    iput v1, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 118
    iput p0, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 119
    iput-object p1, v0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 121
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 122
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 115
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 125
    :cond_2
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 150
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 182
    :goto_0
    const-string/jumbo v2, "ImsSenderRxr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    iget v4, p0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 184
    const-string/jumbo v4, " error: "

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, p2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 188
    iget-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 190
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "errorMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v1, "ex":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    .line 133
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sget v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 135
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    iput-object v0, p0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 136
    sput-object p0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 137
    sget v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 141
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 162
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
