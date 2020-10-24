.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsUtListenerImpl;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;->f$1:I

    iput-object p3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iget v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;->f$1:I

    iget-object v2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lambda$utConfigurationQueried$2$ImsUtListenerImpl(ILandroid/os/Bundle;)V

    return-void
.end method
