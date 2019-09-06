.class public final Lorg/codeaurora/ims/ImsQmiIF$Colr;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colr"
.end annotation


# static fields
.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x2

.field public static final PRESENTATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private hasErrorDetails:Z

.field private hasPresentation:Z

.field private presentation_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2596
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2601
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2618
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 2657
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2596
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2719
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2713
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Colr;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    .line 2636
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 2637
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$Colr;

    .line 2638
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2639
    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    .line 2630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasErrorDetails:Z

    .line 2631
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 2632
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2610
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    .line 2611
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2612
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2660
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    if-gez v0, :cond_0

    .line 2662
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getSerializedSize()I

    .line 2664
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getPresentation()I
    .locals 1

    .prologue
    .line 2603
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2669
    const/4 v0, 0x0

    .line 2670
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2672
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v1

    const/4 v2, 0x1

    .line 2671
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2674
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2676
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    const/4 v2, 0x2

    .line 2675
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2678
    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->cachedSize:I

    .line 2679
    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .prologue
    .line 2619
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasErrorDetails:Z

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .prologue
    .line 2602
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2643
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
    .line 2683
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2687
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2688
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2692
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2693
    return-object p0

    .line 2690
    :sswitch_0
    return-object p0

    .line 2698
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    goto :goto_0

    .line 2702
    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    .line 2703
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2704
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$Colr;

    goto :goto_0

    .line 2688
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .prologue
    .line 2622
    if-nez p1, :cond_0

    .line 2623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2625
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasErrorDetails:Z

    .line 2626
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    .line 2627
    return-object p0
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Colr;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation:Z

    .line 2606
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Colr;->presentation_:I

    .line 2607
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
    .line 2649
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getPresentation()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2652
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2653
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Colr;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2648
    :cond_1
    return-void
.end method
