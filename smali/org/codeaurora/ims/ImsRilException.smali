.class public Lorg/codeaurora/ims/ImsRilException;
.super Ljava/lang/RuntimeException;
.source "ImsRilException.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "ImsException"

    sput-object v0, Lorg/codeaurora/ims/ImsRilException;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    .line 24
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorMsg:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    return v0
.end method

.method public getUiErrorCode()I
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x1

    .line 29
    .local v0, "status":I
    iget v1, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    sparse-switch v1, :sswitch_data_0

    .line 46
    const/4 v0, 0x2

    .line 49
    :goto_0
    return v0

    .line 31
    :sswitch_0
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 34
    :sswitch_1
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 37
    :sswitch_2
    const/4 v0, 0x4

    .line 38
    goto :goto_0

    .line 40
    :sswitch_3
    const/4 v0, 0x5

    .line 41
    goto :goto_0

    .line 43
    :sswitch_4
    const/4 v0, 0x3

    .line 44
    goto :goto_0

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_2
        0x10 -> :sswitch_1
        0x1b -> :sswitch_4
        0x1c -> :sswitch_3
    .end sparse-switch
.end method
