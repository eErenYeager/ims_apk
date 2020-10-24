.class public Lorg/codeaurora/ims/parser/SAXXMLParser;
.super Ljava/lang/Object;
.source "SAXXMLParser.java"


# static fields
.field private static sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

.field private static sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSAXXMLParser()Lorg/codeaurora/ims/parser/SAXXMLParser;
    .locals 1

    .line 44
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/codeaurora/ims/parser/SAXXMLParser;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/SAXXMLParser;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    .line 47
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sXmlparser:Lorg/codeaurora/ims/parser/SAXXMLParser;

    return-object v0
.end method

.method public static declared-synchronized parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    const-class v0, Lorg/codeaurora/ims/parser/SAXXMLParser;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 25
    .local v1, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v2, Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/SAXXMLHandler;-><init>()V

    sput-object v2, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    .line 27
    sget-object v2, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 28
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 29
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 31
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    goto :goto_0

    .line 21
    .end local p0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 32
    .restart local p0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    instance-of v2, v1, Lorg/codeaurora/ims/parser/InvalidConfVersionException;

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "SAXXMLHandler"

    const-string v3, "Exception caught at SAXParser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_0
    instance-of v2, v1, Ljava/text/ParseException;

    if-eqz v2, :cond_1

    .line 36
    const-string v2, "SAXXMLHandler"

    const-string v3, "InValid Format , Exception in Parser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v1, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getConfInfoHandle()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 51
    sget-object v0, Lorg/codeaurora/ims/parser/SAXXMLParser;->sSaxHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v0

    return-object v0
.end method
