.class final enum Lorg/codeaurora/ims/ImsCallModification$PauseState;
.super Ljava/lang/Enum;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PauseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/ImsCallModification$PauseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field public static final enum NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field public static final enum PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field public static final enum RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 65
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/ImsCallModification$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;

    const/4 v2, 0x1

    const-string v3, "PAUSE"

    invoke-direct {v0, v3, v2}, Lorg/codeaurora/ims/ImsCallModification$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;

    const/4 v3, 0x2

    const-string v4, "RESUME"

    invoke-direct {v0, v4, v3}, Lorg/codeaurora/ims/ImsCallModification$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v4, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    aput-object v4, v0, v1

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->$VALUES:[Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 1

    .line 64
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->$VALUES:[Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/ImsCallModification$PauseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object v0
.end method
