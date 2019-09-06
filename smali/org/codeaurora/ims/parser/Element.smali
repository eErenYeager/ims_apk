.class public Lorg/codeaurora/ims/parser/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field public static final CONF_ASSOCIATED_AORS:Ljava/lang/String; = "associated-aors"

.field public static final CONF_AVIL_MEDIA:Ljava/lang/String; = "available-media"

.field public static final CONF_BY:Ljava/lang/String; = "by"

.field public static final CONF_CALL_ID:Ljava/lang/String; = "call-id"

.field public static final CONF_CALL_INFO:Ljava/lang/String; = "call-info"

.field public static final CONF_DESC:Ljava/lang/String; = "conference-description"

.field public static final CONF_DISC_INFO:Ljava/lang/String; = "disconnection-info"

.field public static final CONF_DISC_METHOD:Ljava/lang/String; = "disconnection-method"

.field public static final CONF_DISPLAY_TEXT:Ljava/lang/String; = "display-text"

.field public static final CONF_ENDPOINT:Ljava/lang/String; = "endpoint"

.field public static final CONF_ENTITY:Ljava/lang/String; = "entity"

.field public static final CONF_ENTRY:Ljava/lang/String; = "entry"

.field public static final CONF_FREE_TEXT:Ljava/lang/String; = "free-text"

.field public static final CONF_FROM_TAG:Ljava/lang/String; = "from-tag"

.field public static final CONF_ID:Ljava/lang/String; = "id"

.field public static final CONF_INFO:Ljava/lang/String; = "conference-info"

.field public static final CONF_JOINING_INFO:Ljava/lang/String; = "joining-info"

.field public static final CONF_JOIN_METHOD:Ljava/lang/String; = "joining-method"

.field public static final CONF_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final CONF_LANGUAGE:Ljava/lang/String; = "languages"

.field public static final CONF_MAX_COUNT:Ljava/lang/String; = "maximum-user-count"

.field public static final CONF_MEDIA:Ljava/lang/String; = "media"

.field public static final CONF_NA:Ljava/lang/String; = "NotApplicable"

.field public static final CONF_PURPOSE:Ljava/lang/String; = "purpose"

.field public static final CONF_REASON:Ljava/lang/String; = "reason"

.field public static final CONF_REFERRED:Ljava/lang/String; = "refrred"

.field public static final CONF_ROLES:Ljava/lang/String; = "roles"

.field public static final CONF_SIDEBAR_REF:Ljava/lang/String; = "sidebars-by-ref"

.field public static final CONF_SIDEBAR_VALUE:Ljava/lang/String; = "sidebars-by-val"

.field public static final CONF_STATE:Ljava/lang/String; = "state"

.field public static final CONF_STATUS:Ljava/lang/String; = "status"

.field public static final CONF_SUBJECT:Ljava/lang/String; = "subject"

.field public static final CONF_TO_TAG:Ljava/lang/String; = "to-tag"

.field public static final CONF_URI:Ljava/lang/String; = "uri"

.field public static final CONF_URIS:Ljava/lang/String; = "conf_uris"

.field public static final CONF_USER:Ljava/lang/String; = "user"

.field public static final CONF_USERS:Ljava/lang/String; = "users"

.field public static final CONF_VERSION:Ljava/lang/String; = "version"

.field public static final CONF_WHEN:Ljava/lang/String; = "when"

.field public static final HOST_INFO:Ljava/lang/String; = "host-info"

.field private static LOGTAG:Ljava/lang/String; = null

.field public static final STATE_DELETE:Ljava/lang/String; = "deleted"

.field public static final STATE_FULL:Ljava/lang/String; = "full"

.field public static final STATE_INVALID:Ljava/lang/String; = "invalid"

.field public static final STATE_PARTIAL:Ljava/lang/String; = "partial"

.field public static final VICE_DIALOG:Ljava/lang/String; = "dialog"

.field public static final VICE_DIALOG_CALLID:Ljava/lang/String; = "call-id"

.field public static final VICE_DIALOG_DIRECTION:Ljava/lang/String; = "direction"

.field public static final VICE_DIALOG_DURATION:Ljava/lang/String; = "duration"

.field public static final VICE_DIALOG_ID:Ljava/lang/String; = "id"

.field public static final VICE_DIALOG_INFO:Ljava/lang/String; = "dialog-info"

.field public static final VICE_DIALOG_INFO_STATE:Ljava/lang/String; = "state"

.field public static final VICE_DIALOG_LOCAL:Ljava/lang/String; = "local"

.field public static final VICE_DIALOG_LOCAL_IDENTITY:Ljava/lang/String; = "identity"

.field public static final VICE_DIALOG_LOCAL_TAG:Ljava/lang/String; = "local-tag"

.field public static final VICE_DIALOG_REFERRED_BY:Ljava/lang/String; = "referred-by"

.field public static final VICE_DIALOG_REMOTE:Ljava/lang/String; = "remote"

.field public static final VICE_DIALOG_REMOTE_IDENTITY:Ljava/lang/String; = "identity"

.field public static final VICE_DIALOG_REMOTE_TAG:Ljava/lang/String; = "remote-tag"

.field public static final VICE_DIALOG_REPLACES:Ljava/lang/String; = "replaces"

.field public static final VICE_DIALOG_REPLACES_CALLID:Ljava/lang/String; = "call-id"

.field public static final VICE_DIALOG_REPLACES_LOCALTAG:Ljava/lang/String; = "local-tag"

.field public static final VICE_DIALOG_REPLACES_REMOTETAG:Ljava/lang/String; = "remote-tag"

.field public static final VICE_DIALOG_ROUTE_SET:Ljava/lang/String; = "route-set"

.field public static final VICE_DIALOG_ROUTE_SET_HOP:Ljava/lang/String; = "hop"

.field public static final VICE_DIALOG_SA:Ljava/lang/String; = "sa:exclusive"

.field public static final VICE_DIALOG_STATE:Ljava/lang/String; = "state"

.field public static final VICE_DISPLAY:Ljava/lang/String; = "display"

.field public static final VICE_ENTITY:Ljava/lang/String; = "entity"

.field public static final VICE_LOCAL_TARGET:Ljava/lang/String; = "target"

.field public static final VICE_LOCAL_TARGET_PARAM:Ljava/lang/String; = "param"

.field public static final VICE_LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "pname"

.field public static final VICE_LOCAL_TARGET_PARAM_VAL:Ljava/lang/String; = "pval"

.field public static final VICE_LOCAL_TARGET_URI:Ljava/lang/String; = "uri"

.field public static final VICE_MEDIA_ATTRI:Ljava/lang/String; = "mediaAttributes"

.field public static final VICE_MEDIA_DIRECTION:Ljava/lang/String; = "mediaDirection"

.field public static final VICE_MEDIA_PORT:Ljava/lang/String; = "port0"

.field public static final VICE_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final VICE_NA:Ljava/lang/String; = "NotApplicable"

.field public static final VICE_VERSION:Ljava/lang/String; = "version"

.field public static final VICE_XML:Ljava/lang/String; = "xml"

.field public static final VICE_XML_ENCODING:Ljava/lang/String; = "encoding"

.field public static final VICE_XML_VERSION:Ljava/lang/String; = "version"

.field private static mMatchedElementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttribute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsUpdateRequire:Z

.field private mParentTag:Ljava/lang/String;

.field private mSubElement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mTagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    .line 111
    const-string/jumbo v0, "Element"

    sput-object v0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/Element;->mIsUpdateRequire:Z

    .line 20
    return-void
.end method

.method private CheckForParentTag(Lorg/codeaurora/ims/parser/Element;Ljava/lang/String;)Z
    .locals 3
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;
    .param p2, "Parenttag"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parent Tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Search Parent Tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static clearMatchedElementsList()V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    return-void
.end method

.method public static getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "tagname"    # Ljava/lang/String;
    .param p1, "parentTag"    # Ljava/lang/String;
    .param p2, "root"    # Lorg/codeaurora/ims/parser/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/parser/Element;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    if-eqz p2, :cond_5

    .line 193
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p2, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p2, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-eqz v2, :cond_0

    .line 196
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "Single node element added to mMatchedElementList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    return-object v2

    .line 200
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "Sublist not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v2, p2, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 203
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/parser/Element;

    .line 204
    .local v0, "currentElement":Lorg/codeaurora/ims/parser/Element;
    iget-object v2, v0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sub Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "added to mMatchedElementList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 208
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 207
    if-eqz v2, :cond_4

    .line 209
    iget-object v2, v0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->mMatchedElementList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    :cond_3
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring sub Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    const-string/jumbo v4, "with no match as Parent tag "

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 216
    :cond_4
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recurssive call on index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    goto :goto_2

    .line 222
    .end local v0    # "currentElement":Lorg/codeaurora/ims/parser/Element;
    .end local v1    # "index":I
    :cond_5
    sget-object v2, Lorg/codeaurora/ims/parser/Element;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "Root element is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public ClearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iput-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    .line 266
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    :cond_1
    iput-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    .line 261
    return-void
.end method

.method public DeleteSubElementsFromTree(Lorg/codeaurora/ims/parser/Element;)V
    .locals 2
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .prologue
    .line 249
    iget-object v0, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const-string/jumbo v1, "state"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V

    .line 248
    :cond_0
    return-void
.end method

.method public Element()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    .line 118
    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    .line 114
    return-void
.end method

.method public IsUpdateRequire()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/Element;->mIsUpdateRequire:Z

    return v0
.end method

.method public addSubElement(Lorg/codeaurora/ims/parser/Element;)V
    .locals 1
    .param p1, "child"    # Lorg/codeaurora/ims/parser/Element;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public compareElements(Lorg/codeaurora/ims/parser/Element;)Z
    .locals 6
    .param p1, "lhs"    # Lorg/codeaurora/ims/parser/Element;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "index":I
    const/4 v1, 0x0

    .line 281
    .local v1, "lindex":I
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 281
    if-eqz v2, :cond_3

    .line 283
    iget-object v2, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 285
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 286
    if-ne v0, v1, :cond_0

    .line 287
    :goto_0
    if-eqz v0, :cond_0

    .line 288
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/Element;->compareElements(Lorg/codeaurora/ims/parser/Element;)Z

    .line 289
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    :cond_0
    return v4

    .line 293
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    return v5

    .line 297
    :cond_2
    return v5

    .line 299
    :cond_3
    return v4
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attname"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "ret":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 154
    :cond_0
    return-object v0
.end method

.method public getDocVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .prologue
    .line 245
    iget-object v0, p1, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    const-string/jumbo v1, "state"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getElementWithKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "tagname"    # Ljava/lang/String;
    .param p2, "parenttag"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "index":I
    invoke-static {p1, p2, p0}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    move-result-object v1

    .line 231
    .local v1, "SubElement":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "KeyMatchElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 233
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_1
    return-object v0
.end method

.method public getMapAttribute()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    return-object v0
.end method

.method public getParentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSubElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public setMapAttribute()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    .line 125
    return-void
.end method

.method public setMapAttribute(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "marg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    .line 133
    return-void
.end method

.method public setParentTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "parenttag"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mParentTag:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSubElementList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mSubElement:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/codeaurora/ims/parser/Element;->mTagName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public updateAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attname"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/parser/Element;->mAttribute:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method
