.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:[Landroid/telephony/ims/ImsSsInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsUtListenerImpl;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;->f$1:I

    iput-object p3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;->f$2:[Landroid/telephony/ims/ImsSsInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iget v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;->f$1:I

    iget-object v2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;->f$2:[Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lambda$utConfigurationCallBarringQueried$4$ImsUtListenerImpl(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void
.end method
