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
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    .line 114
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    .line 115
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    .line 116
    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    .line 118
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$1;

    .line 112
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    return v0
.end method

.method static synthetic access$102(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # I

    .line 112
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mType:I

    return p1
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    return v0
.end method

.method static synthetic access$202(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # I

    .line 112
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mSrcTech:I

    return p1
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    return v0
.end method

.method static synthetic access$302(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # I

    .line 112
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mTargetTech:I

    return p1
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    return v0
.end method

.method static synthetic access$402(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # I

    .line 112
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraType:I

    return p1
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)[B
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    return-object v0
.end method

.method static synthetic access$502(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # [B

    .line 112
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mExtraInfo:[B

    return-object p1
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method
