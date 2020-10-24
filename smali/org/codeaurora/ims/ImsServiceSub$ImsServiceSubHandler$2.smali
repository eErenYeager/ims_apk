.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->createSelfIdentityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;[Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

.field final synthetic val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

.field final synthetic val$self_identity:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;Lcom/android/ims/internal/IImsRegistrationListener;[Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    .line 1253
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;->val$self_identity:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1257
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;->val$self_identity:[Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    goto :goto_0

    .line 1258
    :catchall_0
    move-exception v0

    .line 1259
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " createSelfIdentityCallBackThread()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceSub"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
