.class public final Lorg/codeaurora/ims/ImsQmiIF$Dial;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dial"
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final CALLDETAILS_FIELD_NUMBER:I = 0x3

.field public static final CLIR_FIELD_NUMBER:I = 0x2

.field public static final ISCONFERENCEURI_FIELD_NUMBER:I = 0x5

.field public static final PRESENTATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private address_:Ljava/lang/String;

.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private clir_:I

.field private hasAddress:Z

.field private hasCallDetails:Z

.field private hasClir:Z

.field private hasIsConferenceUri:Z

.field private hasPresentation:Z

.field private isConferenceUri_:Z

.field private presentation_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2402
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2407
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2424
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2441
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2461
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2478
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2526
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2402
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2612
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2606
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Dial;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    .line 2493
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearAddress()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2494
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearClir()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2495
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2496
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2497
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsConferenceUri()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2498
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2499
    return-object p0
.end method

.method public clearAddress()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    .line 2416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    .line 2417
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2418
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    .line 2453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    .line 2454
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2455
    return-object p0
.end method

.method public clearClir()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2433
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    .line 2434
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2435
    return-object p0
.end method

.method public clearIsConferenceUri()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2487
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    .line 2488
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2489
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2470
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    .line 2471
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2472
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2529
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    if-gez v0, :cond_0

    .line 2531
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getSerializedSize()I

    .line 2533
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 2443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getClir()I
    .locals 1

    .prologue
    .line 2425
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    return v0
.end method

.method public getIsConferenceUri()Z
    .locals 1

    .prologue
    .line 2479
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .prologue
    .line 2463
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2538
    const/4 v0, 0x0

    .line 2539
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2541
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2540
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2545
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getClir()I

    move-result v1

    const/4 v2, 0x2

    .line 2544
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2547
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2549
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/4 v2, 0x3

    .line 2548
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2551
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2553
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getPresentation()I

    move-result v1

    const/4 v2, 0x4

    .line 2552
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2555
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2557
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsConferenceUri()Z

    move-result v1

    const/4 v2, 0x5

    .line 2556
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2559
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2560
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 2409
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 2442
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    return v0
.end method

.method public hasClir()Z
    .locals 1

    .prologue
    .line 2426
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    return v0
.end method

.method public hasIsConferenceUri()Z
    .locals 1

    .prologue
    .line 2480
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .prologue
    .line 2462
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2503
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2564
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2568
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2569
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2573
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2574
    return-object p0

    .line 2571
    :sswitch_0
    return-object p0

    .line 2579
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2583
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2587
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2588
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2589
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2593
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2597
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2569
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    .line 2412
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2413
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 2445
    if-nez p1, :cond_0

    .line 2446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2448
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    .line 2449
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2450
    return-object p0
.end method

.method public setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    .line 2429
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2430
    return-object p0
.end method

.method public setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    .line 2483
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2484
    return-object p0
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    .line 2466
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2467
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2509
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2512
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2513
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getClir()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2515
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2516
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2518
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2519
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getPresentation()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2521
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2522
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsConferenceUri()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2508
    :cond_4
    return-void
.end method
