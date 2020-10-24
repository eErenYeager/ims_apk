.class public Lorg/codeaurora/ims/ImsRilException;
.super Ljava/lang/RuntimeException;
.source "ImsRilException.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    return v0
.end method
