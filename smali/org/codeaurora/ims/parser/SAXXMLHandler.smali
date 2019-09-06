.class public Lorg/codeaurora/ims/parser/SAXXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXXMLHandler.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mConfDescSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

.field private mConfUriEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfUriSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfuri:Lorg/codeaurora/ims/parser/Element;

.field private mInConfDescription:Z

.field private mInUser:Z

.field private mIsDisconnectInfo:Z

.field private mIsEndPoint:Z

.field private mIsEnpointInfo:Z

.field private mIsJoiningInfo:Z

.field private mIsUserCallInfo:Z

.field private mIsassociated:Z

.field private mIscallinfo:Z

.field private mIsconuri:Z

.field private mIsentry:Z

.field private mIsmedia:Z

.field private mIsreferredInfo:Z

.field private mIsroles:Z

.field private mIsserviceuri:Z

.field private mMessageElement:Lorg/codeaurora/ims/parser/Element;

.field private mMessageSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersElement:Lorg/codeaurora/ims/parser/Element;

.field private mUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserEndPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserSubElementlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private usersubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 32
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 33
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 34
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 35
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 36
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    .line 37
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    .line 38
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    .line 39
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 40
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 41
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 42
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsserviceuri:Z

    .line 43
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsmedia:Z

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    .line 45
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    .line 46
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 49
    const-string/jumbo v0, "SAXXMLHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->LOGTAG:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "SAXXMLHandler"

    const-string/jumbo v1, "New List obj created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 51
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 185
    return-void
.end method

.method public endDocument()V
    .locals 4

    .prologue
    .line 426
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 427
    const-string/jumbo v1, "SAXXMLHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-super/range {p0 .. p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v12, :cond_c

    .line 194
    const-string/jumbo v12, "SAXXMLHandler"

    const-string/jumbo v13, "endelment:inside"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    if-eqz v12, :cond_e

    .line 196
    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 197
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 198
    const-string/jumbo v13, "display-text"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 197
    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 215
    :cond_1
    :goto_1
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v12, :cond_2

    .line 216
    new-instance v9, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v9}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 217
    .local v9, "mEntry":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v12, "entry"

    invoke-virtual {v9, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v12, "conf_uris"

    invoke-virtual {v9, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 220
    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v9    # "mEntry":Lorg/codeaurora/ims/parser/Element;
    :cond_2
    :goto_2
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v12, :cond_a

    .line 236
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 237
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 236
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/Element;

    .line 238
    .local v7, "UserElement":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v12, "user"

    invoke-virtual {v7, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v12, "users"

    invoke-virtual {v7, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 240
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v11, "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 242
    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 243
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    if-eqz v12, :cond_15

    .line 248
    :cond_3
    :goto_3
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    if-eqz v12, :cond_4

    .line 249
    new-instance v1, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 250
    .local v1, "Associated":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 252
    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 253
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 252
    if-eqz v12, :cond_16

    .line 254
    const-string/jumbo v12, "associated-aors"

    invoke-virtual {v1, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v12, "user"

    invoke-virtual {v1, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v12, "display-text"

    .line 257
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 256
    invoke-virtual {v1, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v1    # "Associated":Lorg/codeaurora/ims/parser/Element;
    :cond_4
    :goto_4
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v12, :cond_7

    .line 294
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/Element;

    .line 296
    .local v8, "endpoint":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v12, "endpoint"

    invoke-virtual {v8, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v12, "user"

    invoke-virtual {v8, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v3, "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 300
    const-string/jumbo v12, "display-text"

    .line 301
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 300
    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_5
    :goto_5
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    if-eqz v12, :cond_6

    .line 313
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    if-eqz v12, :cond_1f

    .line 314
    new-instance v10, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v10}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 315
    .local v10, "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v12, "refrred"

    invoke-virtual {v10, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v12, "endpoint"

    invoke-virtual {v10, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v10}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 318
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string/jumbo v12, "when"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 321
    const-string/jumbo v12, "when"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 320
    invoke-virtual {v10, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .end local v10    # "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    :cond_6
    :goto_6
    invoke-virtual {v8, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 400
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v3    # "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    .end local v8    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    :cond_7
    const-string/jumbo v12, "associated-aors"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 403
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 405
    :cond_8
    const-string/jumbo v12, "user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 406
    const-string/jumbo v12, "SAXXMLHandler"

    const-string/jumbo v13, "User need to added end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 408
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 409
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 410
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 412
    :cond_9
    const-string/jumbo v12, "users"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 414
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v7    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    .end local v11    # "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_a
    const-string/jumbo v12, "conference-info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 420
    :cond_b
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 191
    :cond_c
    return-void

    .line 200
    :cond_d
    const-string/jumbo v12, "maximum-user-count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 201
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 202
    const-string/jumbo v13, "maximum-user-count"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 201
    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_e
    const-string/jumbo v12, "subject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 206
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "subject"

    .line 207
    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 206
    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    :cond_f
    const-string/jumbo v12, "free-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 209
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 210
    const-string/jumbo v13, "free-text"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 209
    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :cond_10
    const-string/jumbo v12, "keywords"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 212
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "keywords"

    .line 213
    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 212
    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 222
    .restart local v9    # "mEntry":Lorg/codeaurora/ims/parser/Element;
    :cond_11
    const-string/jumbo v12, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 223
    const-string/jumbo v12, "uri"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 225
    :cond_12
    const-string/jumbo v12, "purpose"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 226
    const-string/jumbo v12, "purpose"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 228
    :cond_13
    const-string/jumbo v12, "entry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 229
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 230
    :cond_14
    const-string/jumbo v12, "conf_uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 231
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v12, v13}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 232
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    goto/16 :goto_2

    .line 243
    .end local v9    # "mEntry":Lorg/codeaurora/ims/parser/Element;
    .restart local v7    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    .restart local v11    # "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_15
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v12, :cond_3

    .line 245
    const-string/jumbo v12, "display-text"

    .line 246
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 245
    invoke-virtual {v7, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 262
    .restart local v1    # "Associated":Lorg/codeaurora/ims/parser/Element;
    :cond_16
    const-string/jumbo v12, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 263
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 262
    if-eqz v12, :cond_17

    .line 264
    const-string/jumbo v12, "uri"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 269
    :cond_17
    const-string/jumbo v12, "entry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 270
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 269
    if-eqz v12, :cond_18

    .line 271
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_4

    .line 273
    :cond_18
    const-string/jumbo v12, "entry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 274
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 273
    if-eqz v12, :cond_19

    .line 275
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 276
    .local v5, "Role":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 277
    const-string/jumbo v12, "roles"

    invoke-virtual {v5, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v12, "associated-aors"

    invoke-virtual {v5, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v12, "entry"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 283
    .end local v5    # "Role":Lorg/codeaurora/ims/parser/Element;
    :cond_19
    const-string/jumbo v12, "languages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 284
    const-string/jumbo v12, "languages"

    .line 285
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 284
    invoke-virtual {v7, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 302
    .end local v1    # "Associated":Lorg/codeaurora/ims/parser/Element;
    .restart local v3    # "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    .restart local v8    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    :cond_1a
    const-string/jumbo v12, "status"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 303
    const-string/jumbo v12, "status"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 305
    :cond_1b
    const-string/jumbo v12, "joining-method"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 306
    const-string/jumbo v12, "joining-method"

    .line 307
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 306
    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 308
    :cond_1c
    const-string/jumbo v12, "disconnection-method"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 309
    const-string/jumbo v12, "disconnection-method"

    .line 310
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 309
    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 324
    .restart local v10    # "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    :cond_1d
    const-string/jumbo v12, "reason"

    .line 323
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 326
    const-string/jumbo v12, "reason"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 325
    invoke-virtual {v10, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 328
    :cond_1e
    const-string/jumbo v12, "by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 329
    const-string/jumbo v12, "by"

    .line 330
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 329
    invoke-virtual {v10, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 332
    .end local v10    # "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    :cond_1f
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    if-eqz v12, :cond_22

    .line 333
    new-instance v4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 334
    .local v4, "JoiningInfo":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v12, "joining-info"

    invoke-virtual {v4, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v12, "endpoint"

    invoke-virtual {v4, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 337
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v12, "when"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 339
    const-string/jumbo v12, "when"

    .line 340
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 339
    invoke-virtual {v4, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 342
    :cond_20
    const-string/jumbo v12, "reason"

    .line 341
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 344
    const-string/jumbo v12, "reason"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 343
    invoke-virtual {v4, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 346
    :cond_21
    const-string/jumbo v12, "by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 347
    const-string/jumbo v12, "by"

    .line 348
    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 347
    invoke-virtual {v4, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 350
    .end local v4    # "JoiningInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_22
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    if-eqz v12, :cond_25

    .line 351
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 352
    .local v2, "DisconnectInfo":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 353
    const-string/jumbo v12, "disconnection-info"

    invoke-virtual {v2, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v12, "endpoint"

    invoke-virtual {v2, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const-string/jumbo v12, "when"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 358
    const-string/jumbo v12, "when"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 357
    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 361
    :cond_23
    const-string/jumbo v12, "reason"

    .line 360
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 363
    const-string/jumbo v12, "reason"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 362
    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 365
    :cond_24
    const-string/jumbo v12, "by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 367
    const-string/jumbo v12, "by"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 366
    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 370
    .end local v2    # "DisconnectInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_25
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    if-eqz v12, :cond_6

    .line 371
    new-instance v6, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v6}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 372
    .local v6, "UserCallInfo":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v6}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 373
    const-string/jumbo v12, "call-info"

    invoke-virtual {v6, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v12, "endpoint"

    invoke-virtual {v6, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-string/jumbo v12, "display-text"

    .line 376
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 379
    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 378
    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 382
    :cond_26
    const-string/jumbo v12, "call-id"

    .line 381
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 384
    const-string/jumbo v12, "call-id"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 383
    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 387
    :cond_27
    const-string/jumbo v12, "from-tag"

    .line 386
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 389
    const-string/jumbo v12, "from-tag"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 388
    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 392
    :cond_28
    const-string/jumbo v12, "to-tag"

    .line 391
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 394
    const-string/jumbo v12, "to-tag"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 393
    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriEntryList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string/jumbo v2, "conference-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 79
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 81
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "state"

    .line 83
    const-string/jumbo v4, "state"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "version"

    .line 85
    const-string/jumbo v4, "version"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "entity"

    .line 87
    const-string/jumbo v4, "entity"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    .line 89
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 90
    const-string/jumbo v2, "SAXXMLHandler"

    const-string/jumbo v3, "New ConfreInf obj created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const-string/jumbo v2, "conference-description"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    const-string/jumbo v2, "maximum-user-count"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 95
    :cond_1
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 96
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-description"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    .line 100
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 101
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 162
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v2, :cond_3

    .line 163
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 164
    const-string/jumbo v2, "refrred"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 165
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    .line 75
    :cond_3
    :goto_1
    return-void

    .line 103
    :cond_4
    const-string/jumbo v2, "users"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    .line 105
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "users"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 108
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 109
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_5
    const-string/jumbo v2, "user"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    const-string/jumbo v2, "SAXXMLHandler"

    const-string/jumbo v3, "User need to added start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 113
    .local v0, "UserElement":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 116
    const-string/jumbo v2, "state"

    .line 117
    const-string/jumbo v3, "state"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "entity"

    .line 119
    const-string/jumbo v3, "entity"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    goto/16 :goto_0

    .line 129
    .end local v0    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    :cond_6
    const-string/jumbo v2, "display-text"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v2, :cond_7

    .line 130
    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v2, :cond_8

    .line 132
    :cond_7
    const-string/jumbo v2, "associated-aors"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 133
    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 132
    if-eqz v2, :cond_9

    .line 134
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    goto/16 :goto_0

    .line 131
    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    goto/16 :goto_0

    .line 135
    :cond_9
    const-string/jumbo v2, "display-text"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 136
    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 135
    if-eqz v2, :cond_a

    .line 137
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_0

    .line 138
    :cond_a
    const-string/jumbo v2, "uri"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v2, :cond_b

    .line 139
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_0

    .line 140
    :cond_b
    const-string/jumbo v2, "roles"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 141
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 142
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_0

    .line 143
    :cond_c
    const-string/jumbo v2, "endpoint"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v2, :cond_d

    .line 144
    new-instance v1, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 145
    .local v1, "endpoint":Lorg/codeaurora/ims/parser/Element;
    const-string/jumbo v2, "endpoint"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 148
    const-string/jumbo v2, "entity"

    .line 149
    const-string/jumbo v3, "entity"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    goto/16 :goto_0

    .line 152
    .end local v1    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    :cond_d
    const-string/jumbo v2, "conf_uris"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 153
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 154
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    .line 155
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conf_uris"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-description"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    .line 158
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 159
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    :cond_e
    const-string/jumbo v2, "entry"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 166
    :cond_f
    const-string/jumbo v2, "joining-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 167
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    goto/16 :goto_1

    .line 168
    :cond_10
    const-string/jumbo v2, "disconnection-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 169
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    goto/16 :goto_1

    .line 170
    :cond_11
    const-string/jumbo v2, "call-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    goto/16 :goto_1
.end method
