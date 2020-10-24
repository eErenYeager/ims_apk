.class public final Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SrvStatusList"
.end annotation


# static fields
.field public static final SRVSTATUSINFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private srvStatusInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1320
    nop

    .line 1321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    .line 1369
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    .line 1316
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1417
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    return-object v0
.end method


# virtual methods
.method public addSrvStatusInfo(Lorg/codeaurora/ims/ImsQmiIF$Info;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1337
    if-eqz p1, :cond_1

    .line 1340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    .line 1343
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    return-object p0

    .line 1338
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->clearSrvStatusInfo()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1353
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    .line 1354
    return-object p0
.end method

.method public clearSrvStatusInfo()Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1

    .line 1347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    .line 1348
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1372
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    if-gez v0, :cond_0

    .line 1374
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSerializedSize()I

    .line 1376
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1383
    .local v2, "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v3, 0x2

    .line 1384
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1385
    .end local v2    # "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    goto :goto_0

    .line 1386
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->cachedSize:I

    .line 1387
    return v0
.end method

.method public getSrvStatusInfo(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "index"    # I

    .line 1327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    return-object v0
.end method

.method public getSrvStatusInfoCount()I
    .locals 1

    .line 1325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSrvStatusInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$Info;",
            ">;"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1358
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1395
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1396
    .local v0, "tag":I
    if-eqz v0, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 1400
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1401
    return-object p0

    .line 1406
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    .line 1407
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Info;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1408
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->addSrvStatusInfo(Lorg/codeaurora/ims/ImsQmiIF$Info;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;

    .line 1409
    nop

    .line 1412
    .end local v0    # "tag":I
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$Info;
    :cond_1
    goto :goto_0

    .line 1398
    .restart local v0    # "tag":I
    :cond_2
    return-object p0
.end method

.method public setSrvStatusInfo(ILorg/codeaurora/ims/ImsQmiIF$Info;)Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1330
    if-eqz p2, :cond_0

    .line 1333
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->srvStatusInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1334
    return-object p0

    .line 1331
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;->getSrvStatusInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1365
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1366
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$Info;
    goto :goto_0

    .line 1367
    :cond_0
    return-void
.end method
