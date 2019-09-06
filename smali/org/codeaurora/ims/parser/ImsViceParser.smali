.class public Lorg/codeaurora/ims/parser/ImsViceParser;
.super Lorg/codeaurora/ims/parser/ConfInfo;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;,
        Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    }
.end annotation


# static fields
.field private static final LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "+sip.rendering"

.field private static final LOCAL_TARGET_PARAM_PVAL_NO:Ljava/lang/String; = "no"

.field private static mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogStr:Ljava/lang/String;

.field private mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "ImsViceParser"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->preparePartialList()V

    .line 63
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .prologue
    .line 94
    const-string/jumbo v1, "full"

    .line 96
    .local v1, "resultantState":Ljava/lang/String;
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "elementState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    move-object v1, v0

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 101
    return-object v1
.end method

.method private getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .prologue
    const/4 v10, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 138
    .local v0, "audioState":Ljava/lang/String;
    const/4 v6, 0x0

    .line 139
    .local v6, "videoState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 141
    .local v3, "portPresent":Z
    if-eqz p1, :cond_12

    iget-object v7, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string/jumbo v8, "confirmed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 142
    iget-object v7, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 143
    .local v4, "size":I
    const/4 v1, 0x0

    .end local v0    # "audioState":Ljava/lang/String;
    .end local v6    # "videoState":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_9

    .line 144
    iget-object v7, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    .line 145
    .local v2, "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    if-eqz v2, :cond_8

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 146
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 147
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 148
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 149
    const-string/jumbo v8, "sendrecv"

    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    const-string/jumbo v0, "volteactive"

    .line 182
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audioState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", videoState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 183
    const-string/jumbo v9, ", portPresent = "

    .line 182
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 152
    const-string/jumbo v8, "sendonly"

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 153
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 154
    const-string/jumbo v8, "recvonly"

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 151
    if-nez v7, :cond_2

    .line 155
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 156
    const-string/jumbo v8, "inactive"

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 151
    if-eqz v7, :cond_0

    .line 157
    :cond_2
    const-string/jumbo v0, "volteheld"

    .local v0, "audioState":Ljava/lang/String;
    goto :goto_1

    .line 159
    .end local v0    # "audioState":Ljava/lang/String;
    :cond_3
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 160
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 161
    const-string/jumbo v8, "sendrecv"

    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 162
    const-string/jumbo v6, "vttxrx"

    .line 173
    :cond_4
    :goto_2
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    .line 174
    const-string/jumbo v8, "video"

    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 174
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 175
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 176
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 163
    :cond_5
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 164
    const-string/jumbo v8, "sendonly"

    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 165
    const-string/jumbo v6, "vttx"

    .local v6, "videoState":Ljava/lang/String;
    goto :goto_2

    .line 166
    .end local v6    # "videoState":Ljava/lang/String;
    :cond_6
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 167
    const-string/jumbo v8, "recvonly"

    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 168
    const-string/jumbo v6, "vtrx"

    .restart local v6    # "videoState":Ljava/lang/String;
    goto :goto_2

    .line 169
    .end local v6    # "videoState":Ljava/lang/String;
    :cond_7
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 170
    const-string/jumbo v8, "inactive"

    .line 169
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 171
    const-string/jumbo v6, "vtheld"

    .restart local v6    # "videoState":Ljava/lang/String;
    goto :goto_2

    .line 180
    .end local v6    # "videoState":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v8, "Media Parameter incorrect!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 186
    .end local v2    # "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    :cond_9
    if-eqz v0, :cond_14

    .line 187
    const-string/jumbo v7, "volteactive"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 188
    if-eqz v6, :cond_a

    if-eqz v6, :cond_b

    if-eqz v3, :cond_b

    .line 189
    :cond_a
    const-string/jumbo v7, "volteactive"

    return-object v7

    .line 190
    :cond_b
    const-string/jumbo v7, "vttxrx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 191
    const-string/jumbo v7, "vttxrx"

    return-object v7

    .line 192
    :cond_c
    const-string/jumbo v7, "vttx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 193
    const-string/jumbo v7, "vttx"

    return-object v7

    .line 194
    :cond_d
    const-string/jumbo v7, "vtrx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 195
    const-string/jumbo v7, "vtrx"

    return-object v7

    .line 196
    :cond_e
    const-string/jumbo v7, "vtheld"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 197
    const-string/jumbo v7, "vtheld"

    return-object v7

    .line 199
    :cond_f
    const-string/jumbo v7, "volteheld"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 200
    if-eqz v6, :cond_10

    if-eqz v6, :cond_11

    if-eqz v3, :cond_11

    .line 201
    :cond_10
    const-string/jumbo v7, "volteheld"

    return-object v7

    .line 202
    :cond_11
    if-eqz v6, :cond_12

    if-eqz v3, :cond_13

    .line 210
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_12
    :goto_3
    return-object v10

    .line 203
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_13
    const-string/jumbo v7, "vtheld"

    return-object v7

    .line 207
    :cond_14
    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v8, "audioState null!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Ljava/lang/String;
    .locals 6
    .param p1, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .param p2, "isVideoSupported"    # Z
    .param p3, "isVolteSupported"    # Z

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "pullable":Ljava/lang/String;
    const/4 v1, 0x0

    .line 227
    .local v1, "canVtBePulled":Z
    if-eqz p1, :cond_4

    .line 228
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "callType":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 230
    const-string/jumbo v3, "vttxrx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const-string/jumbo v3, "vttx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 230
    if-nez v3, :cond_0

    .line 232
    const-string/jumbo v3, "vtrx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 230
    if-eqz v3, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x1

    .line 235
    :cond_1
    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 236
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "volteactive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_3

    .line 238
    :cond_2
    if-eqz v1, :cond_4

    .line 235
    if-eqz p2, :cond_4

    .line 239
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 242
    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    const-string/jumbo v4, "+sip.rendering"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 241
    if-eqz v3, :cond_4

    .line 243
    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    const-string/jumbo v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 241
    if-eqz v3, :cond_4

    .line 245
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 251
    .end local v0    # "callType":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method private isDialogIdsEmpty()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preparePartialList()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .prologue
    .line 69
    sput-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 68
    return-void
.end method


# virtual methods
.method public getCallPullInfo(ZZ)Ljava/util/List;
    .locals 11
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "dialogInfo":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->isDialogIdsEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "getCallPullInfo mDialogIds null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, 0x0

    return-object v3

    .line 262
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 263
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    .line 264
    .local v0, "callPull":[Ljava/lang/String;
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    aput-object v3, v0, v6

    .line 265
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    aput-object v3, v0, v7

    .line 266
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 267
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {p0, v3, p1, p2}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 269
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    aput-object v3, v0, v10

    .line 271
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallPullInfo ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    const-string/jumbo v5, ", DialogId = "

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    aget-object v5, v0, v6

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    const-string/jumbo v5, ", Number = "

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    aget-object v5, v0, v7

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 276
    const-string/jumbo v5, ", Is Pullable = "

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 276
    aget-object v5, v0, v8

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string/jumbo v5, ", Call Type = "

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    aget-object v5, v0, v9

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    const-string/jumbo v5, ", Direction = "

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    aget-object v5, v0, v10

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 280
    .end local v0    # "callPull":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getDialogInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    return-object v0
.end method

.method public updateViceXmlBytes([B)V
    .locals 6
    .param p1, "vicexml"    # [B

    .prologue
    .line 73
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    .line 76
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VICE XML in string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 79
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-static {v1}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 80
    const-string/jumbo v2, "*************New Vice Notification*****************"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v2, v3, v5}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 82
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getDialogInfo()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
