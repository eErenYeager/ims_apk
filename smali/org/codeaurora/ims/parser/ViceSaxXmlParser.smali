.class public Lorg/codeaurora/ims/parser/ViceSaxXmlParser;
.super Ljava/lang/Object;
.source "ViceSaxXmlParser.java"


# static fields
.field private static mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

.field private static mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mXmlparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;
    .locals 1

    .prologue
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
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const-class v4, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    monitor-enter v4

    .line 29
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 32
    .local v2, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v3, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-direct {v3}, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;-><init>()V

    sput-object v3, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 34
    sget-object v3, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 38
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 41
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "xmlReader":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v3, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    instance-of v3, v0, Lorg/codeaurora/ims/parser/InvalidConfVersionException;

    if-eqz v3, :cond_1

    .line 44
    const-string/jumbo v3, "ViceSaxxParser"

    const-string/jumbo v5, "Exception caught at SAXParser"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 45
    .restart local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    instance-of v3, v0, Ljava/text/ParseException;

    if-eqz v3, :cond_0

    .line 46
    const-string/jumbo v3, "ViceSaxxParser"

    const-string/jumbo v5, "InValid Format , Exception in Parser"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getDialogInfo()Ljava/util/List;
    .locals 2
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
    const/4 v1, 0x0

    .line 61
    sget-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->mSaxHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->dumpDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    return-object v1
.end method
