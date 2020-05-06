.class Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceClassTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandoverInfo"
.end annotation


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mExtraInfo:[B

.field private mExtraType:I

.field private mSrcTech:I

.field private mTargetTech:I

.field private mType:I


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    return-object v0
.end method

.method static synthetic -get3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    return v0
.end method

.method static synthetic -get4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    return v0
.end method

.method static synthetic -get5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    return v0
.end method

.method static synthetic -get6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    return v0
.end method

.method static synthetic -set0(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;[B)[B
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # [B

    .prologue
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    return-object p1
.end method

.method static synthetic -set3(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    return p1
.end method

.method static synthetic -set4(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    return p1
.end method

.method static synthetic -set5(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    return p1
.end method

.method static synthetic -set6(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "-this"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    return p1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 106
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 107
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 108
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    .line 109
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    .line 110
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)V
    .locals 0
    .param p1, "-this0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .prologue
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;-><init>()V

    return-void
.end method
