.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:[Landroid/telephony/ims/ImsCallForwardInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsUtListenerImpl;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;->f$1:I

    iput-object p3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;->f$2:[Landroid/telephony/ims/ImsCallForwardInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iget v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;->f$1:I

    iget-object v2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;->f$2:[Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lambda$utConfigurationCallForwardQueried$5$ImsUtListenerImpl(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    return-void
.end method
