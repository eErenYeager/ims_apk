.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsService$lXe9ZbyWqZ709gWV8ntA6y-ajLw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsService;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsService$lXe9ZbyWqZ709gWV8ntA6y-ajLw;->f$0:Lorg/codeaurora/ims/ImsService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsService$lXe9ZbyWqZ709gWV8ntA6y-ajLw;->f$0:Lorg/codeaurora/ims/ImsService;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsService;->lambda$onCreateMMTelImsFeature$0$ImsService()V

    return-void
.end method
