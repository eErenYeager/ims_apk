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
    .locals 6
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 2330
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$Config;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 2331
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2332
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2334
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2335
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2337
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2338
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2340
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2341
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2343
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2344
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2346
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v5}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2347
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2349
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2350
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2352
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2353
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2355
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2356
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2358
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2359
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2361
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2362
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    .line 2364
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2365
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2367
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2368
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2370
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2371
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2373
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v5}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2374
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    .line 2376
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v5}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2377
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2330
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 2380
    const/16 v0, 0xdc

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2422
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2424
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2425
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2426
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2427
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2428
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2429
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2432
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2437
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2438
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2440
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2441
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2444
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2446
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2448
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2452
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 2454
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PresenceConfigRawData::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2384
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PresenceConfigRawData::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2389
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2390
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2392
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2393
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2394
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2395
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_discovery_enable:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2396
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2397
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2399
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2400
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2403
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2404
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2405
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->volte_user_opted_in_status:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2406
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_publish_etag:Lorg/codeaurora/ims/ImsConfigImpl$StringValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_published_time:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->last_negotiated_published_expire:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2412
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->presence_notify_wait_duration:Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_error_recovery_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 2383
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PresenceConfigRawData [publish_expiry_timer_valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2460
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2461
    const-string/jumbo v1, ", publish_expiry_timer="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2461
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2462
    const-string/jumbo v1, "publish_extended_expiry_timer_valid="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2462
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    const-string/jumbo v1, ", publish_extended_expiry_timer="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2463
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->publish_extended_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2464
    const-string/jumbo v1, "capabilites_cache_expiration_valid "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2464
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2465
    const-string/jumbo v1, ", capabilites_cache_expiration ="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2465
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capabilites_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2466
    const-string/jumbo v1, "availability_cache_expiration_valid="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2466
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2467
    const-string/jumbo v1, ", availability_cache_expiration="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2467
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->availability_cache_expiration:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2468
    const-string/jumbo v1, "capability_poll_interval_valid="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2468
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2469
    const-string/jumbo v1, ", capability_poll_interval="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2469
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2470
    const-string/jumbo v1, "minimum_publish_interval_valid="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2470
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2471
    const-string/jumbo v1, ", minimum_publish_interval="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2471
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->minimum_publish_interval:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2472
    const-string/jumbo v1, "max_subcription_list_entries_valid= "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2472
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2473
    const-string/jumbo v1, ", max_subcription_list_entries= "

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2473
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->max_subcription_list_entries:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2474
    const-string/jumbo v1, "capability_poll_list_subscription_expiry_timer_valid="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2474
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2475
    const-string/jumbo v1, ", capability_poll_list_subscription_expiry_timer="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2475
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->capability_poll_list_subscription_expiry_timer:Lorg/codeaurora/ims/ImsConfigImpl$IntValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2476
    const-string/jumbo v1, "gzip_enabled_valid="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2476
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled_valid:Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2477
    const-string/jumbo v1, ", gzip_enabled="

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2477
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PresenceConfigRawData;->gzip_enabled:Lorg/codeaurora/ims/ImsConfigImpl$ByteValue;

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2477
    const-string/jumbo v1, "]"

    .line 2459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
