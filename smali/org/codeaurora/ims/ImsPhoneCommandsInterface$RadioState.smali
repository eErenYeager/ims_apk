.class public final enum Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "ImsPhoneCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsPhoneCommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    const/4 v1, 0x0

    const-string v2, "RADIO_OFF"

    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 37
    new-instance v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    const/4 v2, 0x1

    const-string v3, "RADIO_UNAVAILABLE"

    invoke-direct {v0, v3, v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 38
    new-instance v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    const/4 v3, 0x2

    const-string v4, "RADIO_ON"

    invoke-direct {v0, v4, v3}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    sget-object v4, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    aput-object v4, v0, v1

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->$VALUES:[Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 1

    .line 35
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->$VALUES:[Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 45
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOn()Z
    .locals 1

    .line 41
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
