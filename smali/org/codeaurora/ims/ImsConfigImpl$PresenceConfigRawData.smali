.class Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;
.super Lorg/codeaurora/ims/ImsConfigImpl$Config;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresenceConfigRawData"
.end annotation


# instance fields
.field availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

.field last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

.field presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

.field publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

.field volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 5

    .line 372
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 373
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 339
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 340
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v2, 0x3

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 341
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 342
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 343
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 344
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 345
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 346
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 347
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 348
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 349
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 350
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 351
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 352
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 353
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x80

    invoke-direct {p1, v0, v4}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 354
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 355
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 356
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 357
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 358
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 359
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 360
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 361
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 362
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 363
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 364
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 365
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 366
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 367
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 368
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 369
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 370
    new-instance p1, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 374
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 378
    const/16 v0, 0xdc

    return v0
.end method

.method public populate(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 422
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 424
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 425
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 426
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 427
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 428
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 429
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 432
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 437
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 438
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 440
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 441
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 444
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 446
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 448
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PresenceConfigRawData::populate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceConfigRawData::put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 385
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 386
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 389
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 390
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 392
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 393
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 394
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 395
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 396
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 397
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 399
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 400
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 403
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 404
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 405
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 406
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 412
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 416
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceConfigRawData [publish_expiry_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publish_expiry_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "publish_extended_expiry_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publish_extended_expiry_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "capabilites_cache_expiration_valid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capabilites_cache_expiration ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "availability_cache_expiration_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availability_cache_expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "capability_poll_interval_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capability_poll_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "minimum_publish_interval_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimum_publish_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "max_subcription_list_entries_valid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max_subcription_list_entries= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "capability_poll_list_subscription_expiry_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capability_poll_list_subscription_expiry_timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "gzip_enabled_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gzip_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
