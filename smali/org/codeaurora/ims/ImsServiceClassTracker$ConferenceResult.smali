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
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    .line 176
    return-void
.end method
