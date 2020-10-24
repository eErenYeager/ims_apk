.class Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeocoderTask"
.end annotation


# instance fields
.field final MAX_RESULTS:I

.field private latitude:D

.field private longitude:D

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V
    .locals 0
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .line 1714
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1712
    const/4 p1, 0x1

    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->MAX_RESULTS:I

    .line 1715
    iput-wide p2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    .line 1716
    iput-wide p4, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    .line 1717
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1726
    const-string v0, " :: Error getting Addresses from GeoCoder!"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceSub"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const/4 v1, 0x0

    .line 1728
    .local v1, "address":Landroid/location/Address;
    const/4 v3, 0x0

    .line 1729
    .local v3, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1730
    const-string v0, "handleGeolocationRequest :: Geocoder not present!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1732
    :cond_0
    new-instance v4, Landroid/location/Geocoder;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsServiceSub;->access$2900(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 1734
    .local v4, "gc":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v7, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 1739
    :goto_0
    goto :goto_1

    .line 1737
    :catch_0
    move-exception v5

    .line 1738
    .local v5, "iox":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1735
    .end local v5    # "iox":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 1736
    .local v5, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " :: Invalid latitude or longitude value!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "iex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 1740
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1746
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/Address;

    goto :goto_2

    .line 1748
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    .end local v4    # "gc":Landroid/location/Geocoder;
    :goto_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-wide v6, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v8, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 1752
    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$200(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1751
    move-object v10, v1

    invoke-virtual/range {v5 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V

    .line 1753
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeocoderTask [lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " | long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
