.class Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceClassTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceResult"
.end annotation


# instance fields
.field activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field shouldHaveTransientSession:Z

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    .line 180
    return-void
.end method
