.class public Lorg/codeaurora/ims/parser/ImsViceParser;
.super Lorg/codeaurora/ims/parser/ConfInfo;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;,
        Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_VIDEO_HELD:Ljava/lang/String; = "vtheld"

.field private static final CALL_TYPE_VIDEO_RX:Ljava/lang/String; = "vtrx"

.field private static final CALL_TYPE_VIDEO_TX:Ljava/lang/String; = "vttx"

.field private static final CALL_TYPE_VIDEO_TX_RX:Ljava/lang/String; = "vttxrx"

.field private static final CALL_TYPE_VOICE_ACTIVE:Ljava/lang/String; = "volteactive"

.field private static final CALL_TYPE_VOICE_HELD:Ljava/lang/String; = "volteheld"

.field private static final LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "+sip.rendering"

.field private static final LOCAL_TARGET_PARAM_PVAL_NO:Ljava/lang/String; = "no"

.field private static LOGTAG:Ljava/lang/String; = null

.field private static final MEDIA_DIRECTION_INACTIVE:Ljava/lang/String; = "inactive"

.field private static final MEDIA_DIRECTION_RECVONLY:Ljava/lang/String; = "recvonly"

.field private static final MEDIA_DIRECTION_SENDONLY:Ljava/lang/String; = "sendonly"

.field private static final MEDIA_DIRECTION_SENDRECV:Ljava/lang/String; = "sendrecv"

.field private static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final STATE_CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final STATE_TERMINATED:Ljava/lang/String; = "terminated"

.field private static mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogStr:Ljava/lang/String;

.field private mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "ImsViceParser"

    sput-object v0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->preparePartialList()V

    .line 89
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .line 117
    const-string v0, "full"

    .line 119
    .local v0, "resultantState":Ljava/lang/String;
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "elementState":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    move-object v0, v1

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method private static getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I
    .locals 3
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 143
    const/4 v0, 0x2

    if-eqz p0, :cond_1

    .line 144
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "confirmed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "terminated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    return v0

    .line 150
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "getCallState Dialog null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    return v0
.end method

.method private static getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;
    .locals 13
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, "audioState":Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, "videoState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 177
    .local v3, "portPresent":Z
    if-eqz p0, :cond_13

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v5, "confirmed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 178
    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 179
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_9

    .line 180
    iget-object v6, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    .line 181
    .local v6, "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    if-eqz v6, :cond_7

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 183
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "inactive"

    const-string v9, "recvonly"

    const-string v10, "sendonly"

    const-string v11, "sendrecv"

    if-eqz v7, :cond_2

    .line 184
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    const-string v1, "volteactive"

    goto/16 :goto_2

    .line 187
    :cond_0
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 189
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 191
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 193
    :cond_1
    const-string v1, "volteheld"

    goto :goto_2

    .line 195
    :cond_2
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string v12, "video"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 196
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 198
    const-string v2, "vttxrx"

    goto :goto_1

    .line 199
    :cond_3
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 201
    const-string v2, "vttx"

    goto :goto_1

    .line 202
    :cond_4
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 204
    const-string v2, "vtrx"

    goto :goto_1

    .line 205
    :cond_5
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 207
    const-string v2, "vtheld"

    .line 209
    :cond_6
    :goto_1
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 212
    const/4 v3, 0x1

    goto :goto_2

    .line 216
    :cond_7
    sget-object v7, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v8, "Media Parameter incorrect!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_8
    :goto_2
    sget-object v7, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audioState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", videoState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", portPresent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v6    # "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 222
    .end local v5    # "i":I
    :cond_9
    if-eqz v1, :cond_12

    .line 223
    const-string v5, "volteactive"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "vtheld"

    if-eqz v6, :cond_f

    .line 224
    if-eqz v2, :cond_e

    if-eqz v3, :cond_a

    goto :goto_3

    .line 226
    :cond_a
    const-string v5, "vttxrx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 227
    return-object v5

    .line 228
    :cond_b
    const-string v5, "vttx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 229
    return-object v5

    .line 230
    :cond_c
    const-string v5, "vtrx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 231
    return-object v5

    .line 232
    :cond_d
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 233
    return-object v7

    .line 225
    :cond_e
    :goto_3
    return-object v5

    .line 235
    :cond_f
    const-string v5, "volteheld"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 236
    if-eqz v2, :cond_11

    if-eqz v3, :cond_10

    goto :goto_4

    .line 238
    :cond_10
    if-nez v3, :cond_13

    .line 239
    return-object v7

    .line 237
    :cond_11
    :goto_4
    return-object v5

    .line 243
    :cond_12
    sget-object v5, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v6, "audioState null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v4    # "size":I
    :cond_13
    const/4 v4, 0x0

    return-object v4
.end method

.method private static isCallHeld(Ljava/lang/String;)Z
    .locals 5
    .param p0, "callType"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 278
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v0

    .line 282
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3010b10d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x7f00dbb9

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "volteheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "vtheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    .line 288
    return v0

    .line 285
    :cond_4
    return v4
.end method

.method private static isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z
    .locals 5
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "pullable":Z
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 306
    return v1

    .line 308
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "callType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 310
    return v1

    .line 313
    :cond_1
    const-string v3, "vttxrx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 314
    const-string v3, "vttx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 315
    const-string v3, "vtrx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 317
    .local v1, "canVtBePulled":Z
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 318
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "volteactive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 321
    :cond_5
    const/4 v0, 0x1

    .line 323
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    .line 324
    const-string v4, "+sip.rendering"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    .line 326
    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 327
    const/4 v0, 0x0

    .line 330
    :cond_6
    return v0
.end method

.method private isDialogIdsEmpty()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I
    .locals 7
    .param p0, "callType"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 251
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v0

    .line 255
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x4

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "volteheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "vttx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v2, "vtrx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "vttxrx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_4
    const-string v2, "vtheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_5
    const-string v2, "volteactive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_5

    if-eq v1, v0, :cond_4

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    .line 271
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapViceCallToImsCallProfileCallType unknown callType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v0

    .line 268
    :cond_2
    const/4 v0, 0x6

    return v0

    .line 265
    :cond_3
    return v5

    .line 262
    :cond_4
    return v6

    .line 258
    :cond_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49d18576 -> :sswitch_5
        -0x3010b10d -> :sswitch_4
        -0x300af478 -> :sswitch_3
        0x376584 -> :sswitch_2
        0x3765c2 -> :sswitch_1
        0x7f00dbb9 -> :sswitch_0
    .end sparse-switch
.end method

.method private preparePartialList()V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 92
    sput-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 93
    return-void
.end method


# virtual methods
.method public getCallPullInfo(ZZ)Ljava/util/List;
    .locals 19
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    .line 335
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->isDialogIdsEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "getCallPullInfo mDialogIds null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "extCallStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 345
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 346
    .local v3, "callId":I
    iget-object v4, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 347
    .local v11, "address":Landroid/net/Uri;
    iget-object v4, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-static {v4, v12, v13}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z

    move-result v14

    .line 349
    .local v14, "isPullable":Z
    iget-object v4, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I

    move-result v15

    .line 350
    .local v15, "callState":I
    iget-object v4, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    .line 351
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I

    move-result v16

    .line 352
    .local v16, "callType":I
    iget-object v4, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallHeld(Ljava/lang/String;)Z

    move-result v17

    .line 354
    .local v17, "isHeld":Z
    new-instance v18, Landroid/telephony/ims/ImsExternalCallState;

    move-object/from16 v4, v18

    move v5, v3

    move-object v6, v11

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 357
    .local v4, "extCallState":Landroid/telephony/ims/ImsExternalCallState;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v3    # "callId":I
    .end local v11    # "address":Landroid/net/Uri;
    .end local v14    # "isPullable":Z
    .end local v15    # "callState":I
    .end local v16    # "callType":I
    .end local v17    # "isHeld":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "extCallState":Landroid/telephony/ims/ImsExternalCallState;
    :cond_1
    move/from16 v12, p1

    move/from16 v13, p2

    .line 359
    .end local v2    # "i":I
    return-object v1
.end method

.method public getDialogInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    return-object v0
.end method

.method public updateViceXmlBytes([B)V
    .locals 5
    .param p1, "vicexml"    # [B

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    .line 99
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 100
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE XML in string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 102
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-static {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 103
    const-string v1, "*************New Vice Notification*****************"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v4, -0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 105
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getDialogInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
