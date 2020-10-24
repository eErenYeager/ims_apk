.class public Lorg/codeaurora/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CAUSE_CODE_UNSPECIFIED:I = 0x0

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public causeCode:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lorg/codeaurora/ims/ServiceStatus;

.field private mIsCallPull:Z

.field private mVideoPauseState:I

.field public peerAbility:[Lorg/codeaurora/ims/ServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 163
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 164
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 168
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 171
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 172
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 163
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 164
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 168
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 177
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 178
    iput p2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 179
    iput-object p3, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;)V
    .locals 2
    .param p1, "srcCall"    # Lorg/codeaurora/ims/CallDetails;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 163
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 164
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 168
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 185
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 186
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 187
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 188
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 190
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 191
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 193
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 257
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 259
    .local v0, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 260
    const/4 v1, 0x0

    return-object v1

    .line 265
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 267
    nop

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 270
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 271
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;)V
    .locals 3
    .param p1, "extra"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 243
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 246
    :cond_0
    return-void
.end method

.method public getCallPull()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    return v0
.end method

.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 295
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 296
    aget-object v1, p1, v0

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "currKey":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2

    .line 294
    .end local v1    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoPauseState()I
    .locals 1

    .line 290
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 323
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallPull(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 249
    iput-boolean p1, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 250
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 306
    if-eqz p1, :cond_1

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 308
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 309
    aget-object v1, p1, v0

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "currKey":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 307
    .end local v1    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_1
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .locals 1
    .param p1, "videoPauseState"    # I

    .line 282
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 287
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    .line 331
    move-object/from16 v0, p0

    const-string v1, ""

    .local v1, "extrasResult":Ljava/lang/String;
    const-string v2, ""

    .local v2, "localSrvAbility":Ljava/lang/String;
    const-string v3, ""

    .local v3, "peerSrvAbility":Ljava/lang/String;
    const-string v4, ""

    .line 332
    .local v4, "extrasCodec":Ljava/lang/String;
    iget-object v5, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 333
    array-length v7, v5

    move-object v8, v4

    move-object v4, v1

    const/4 v1, 0x0

    .end local v1    # "extrasResult":Ljava/lang/String;
    .local v4, "extrasResult":Ljava/lang/String;
    .local v8, "extrasCodec":Ljava/lang/String;
    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v9, v5, v1

    .line 334
    .local v9, "s":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 335
    const-string v10, "Codec"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 336
    move-object v8, v9

    .line 333
    .end local v9    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v4

    move-object v4, v8

    .line 341
    .end local v8    # "extrasCodec":Ljava/lang/String;
    .restart local v1    # "extrasResult":Ljava/lang/String;
    .local v4, "extrasCodec":Ljava/lang/String;
    :cond_2
    iget-object v5, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const-string v7, " accTechStatus "

    const-string v8, " status = "

    const-string v9, " type = "

    const-string v10, "isValid = "

    if-eqz v5, :cond_7

    .line 342
    array-length v11, v5

    move-object v12, v2

    const/4 v2, 0x0

    .end local v2    # "localSrvAbility":Ljava/lang/String;
    .local v12, "localSrvAbility":Ljava/lang/String;
    :goto_1
    if-ge v2, v11, :cond_6

    aget-object v13, v5, v2

    .line 343
    .local v13, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v13, :cond_5

    .line 344
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v13, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 346
    iget-object v14, v13, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v14, :cond_4

    .line 347
    iget-object v14, v13, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v15, v14

    move-object v6, v12

    const/4 v12, 0x0

    .end local v12    # "localSrvAbility":Ljava/lang/String;
    .local v6, "localSrvAbility":Ljava/lang/String;
    :goto_2
    if-ge v12, v15, :cond_3

    move-object/from16 v16, v1

    .end local v1    # "extrasResult":Ljava/lang/String;
    .local v16, "extrasResult":Ljava/lang/String;
    aget-object v1, v14, v12

    .line 348
    .local v1, "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    move-object/from16 v17, v3

    .end local v3    # "peerSrvAbility":Ljava/lang/String;
    .local v17, "peerSrvAbility":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    .end local v1    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_2

    .end local v16    # "extrasResult":Ljava/lang/String;
    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .local v1, "extrasResult":Ljava/lang/String;
    .restart local v3    # "peerSrvAbility":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .end local v1    # "extrasResult":Ljava/lang/String;
    .end local v3    # "peerSrvAbility":Ljava/lang/String;
    .restart local v16    # "extrasResult":Ljava/lang/String;
    .restart local v17    # "peerSrvAbility":Ljava/lang/String;
    move-object v12, v6

    goto :goto_3

    .line 346
    .end local v6    # "localSrvAbility":Ljava/lang/String;
    .end local v16    # "extrasResult":Ljava/lang/String;
    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .restart local v1    # "extrasResult":Ljava/lang/String;
    .restart local v3    # "peerSrvAbility":Ljava/lang/String;
    .restart local v12    # "localSrvAbility":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .end local v1    # "extrasResult":Ljava/lang/String;
    .end local v3    # "peerSrvAbility":Ljava/lang/String;
    .restart local v16    # "extrasResult":Ljava/lang/String;
    .restart local v17    # "peerSrvAbility":Ljava/lang/String;
    goto :goto_3

    .line 343
    .end local v16    # "extrasResult":Ljava/lang/String;
    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .restart local v1    # "extrasResult":Ljava/lang/String;
    .restart local v3    # "peerSrvAbility":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 342
    .end local v1    # "extrasResult":Ljava/lang/String;
    .end local v3    # "peerSrvAbility":Ljava/lang/String;
    .end local v13    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    .restart local v16    # "extrasResult":Ljava/lang/String;
    .restart local v17    # "peerSrvAbility":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_1

    .end local v16    # "extrasResult":Ljava/lang/String;
    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .restart local v1    # "extrasResult":Ljava/lang/String;
    .restart local v3    # "peerSrvAbility":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .end local v1    # "extrasResult":Ljava/lang/String;
    .end local v3    # "peerSrvAbility":Ljava/lang/String;
    .restart local v16    # "extrasResult":Ljava/lang/String;
    .restart local v17    # "peerSrvAbility":Ljava/lang/String;
    move-object v2, v12

    goto :goto_4

    .line 341
    .end local v12    # "localSrvAbility":Ljava/lang/String;
    .end local v16    # "extrasResult":Ljava/lang/String;
    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .restart local v1    # "extrasResult":Ljava/lang/String;
    .restart local v2    # "localSrvAbility":Ljava/lang/String;
    .restart local v3    # "peerSrvAbility":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 355
    .end local v1    # "extrasResult":Ljava/lang/String;
    .end local v3    # "peerSrvAbility":Ljava/lang/String;
    .restart local v16    # "extrasResult":Ljava/lang/String;
    .restart local v17    # "peerSrvAbility":Ljava/lang/String;
    :goto_4
    iget-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_b

    .line 356
    array-length v3, v1

    move-object/from16 v6, v17

    const/4 v5, 0x0

    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .local v6, "peerSrvAbility":Ljava/lang/String;
    :goto_5
    if-ge v5, v3, :cond_c

    aget-object v11, v1, v5

    .line 357
    .local v11, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v11, :cond_a

    .line 358
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v11, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_9

    .line 361
    iget-object v12, v11, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v13, v12

    move-object v14, v6

    const/4 v6, 0x0

    .end local v6    # "peerSrvAbility":Ljava/lang/String;
    .local v14, "peerSrvAbility":Ljava/lang/String;
    :goto_6
    if-ge v6, v13, :cond_8

    aget-object v15, v12, v6

    .line 362
    .local v15, "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 361
    .end local v15    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    goto :goto_6

    :cond_8
    move-object/from16 v18, v1

    move-object v6, v14

    goto :goto_7

    .line 360
    .end local v14    # "peerSrvAbility":Ljava/lang/String;
    .restart local v6    # "peerSrvAbility":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v1

    goto :goto_7

    .line 357
    :cond_a
    move-object/from16 v18, v1

    .line 356
    .end local v11    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    goto :goto_5

    .line 355
    .end local v6    # "peerSrvAbility":Ljava/lang/String;
    .restart local v17    # "peerSrvAbility":Ljava/lang/String;
    :cond_b
    move-object/from16 v6, v17

    .line 369
    .end local v17    # "peerSrvAbility":Ljava/lang/String;
    .restart local v6    # "peerSrvAbility":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callSubState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoPauseState"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mediaId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Local Ability "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Peer Ability "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Cause code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 8
    .param p1, "update"    # Lorg/codeaurora/ims/CallDetails;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v2, v3, :cond_1

    .line 201
    iput v3, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 202
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 203
    const/4 v0, 0x1

    .line 205
    :cond_1
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v2, v3, :cond_2

    .line 206
    iput v3, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 207
    const/4 v0, 0x1

    .line 209
    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    if-eq v2, v3, :cond_3

    .line 210
    iput v3, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 211
    const/4 v0, 0x1

    .line 214
    :cond_3
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 215
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 217
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v3, :cond_6

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 218
    aget-object v3, v3, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "currKeyValuePair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 220
    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "oldVal":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 222
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 223
    iget-object v6, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v3, v1

    aget-object v5, v3, v5

    invoke-virtual {p0, v6, v7, v5}, Lorg/codeaurora/ims/CallDetails;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    goto :goto_1

    .line 228
    :cond_4
    const/4 v0, 0x1

    .line 229
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 217
    .end local v3    # "currKeyValuePair":[Ljava/lang/String;
    .end local v4    # "oldVal":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getVideoPauseState()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/CallDetails;->setVideoPauseState(I)V

    .line 234
    return v0
.end method
