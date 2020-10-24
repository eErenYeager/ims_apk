.class public Lorg/codeaurora/ims/parser/ViceSaxXmlParser;
.super Ljava/lang/Object;
.source "ViceSaxXmlParser.java"


# static fields
.field private static mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

.field private static mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;
    .locals 1

    .line 54
    sget-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 57
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    return-object v0
.end method

.method public static declared-synchronized parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    const-class v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 32
    .local v1, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v2, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;-><init>()V

    sput-object v2, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 34
    sget-object v2, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 38
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 41
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    goto :goto_0

    .line 28
    .end local p0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 42
    .restart local p0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    instance-of v2, v1, Lorg/codeaurora/ims/parser/InvalidConfVersionException;

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "ViceSaxxParser"

    const-string v3, "Exception caught at SAXParser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_0
    instance-of v2, v1, Ljava/text/ParseException;

    if-eqz v2, :cond_1

    .line 46
    const-string v2, "ViceSaxxParser"

    const-string v3, "InValid Format , Exception in Parser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v1, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
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

    .line 61
    sget-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->dumpDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
