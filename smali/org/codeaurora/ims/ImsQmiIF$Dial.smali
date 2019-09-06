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

.field public static final ISCALLPULL_FIELD_NUMBER:I = 0x6

.field public static final ISCONFERENCEURI_FIELD_NUMBER:I = 0x5

.field public static final ISENCRYPTED_FIELD_NUMBER:I = 0x7

.field public static final PRESENTATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private address_:Ljava/lang/String;

.field private cachedSize:I

.field private callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

.field private clir_:I

.field private hasAddress:Z

.field private hasCallDetails:Z

.field private hasClir:Z

.field private hasIsCallPull:Z

.field private hasIsConferenceUri:Z

.field private hasIsEncrypted:Z

.field private hasPresentation:Z

.field private isCallPull_:Z

.field private isConferenceUri_:Z

.field private isEncrypted_:Z

.field private presentation_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2727
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2732
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2749
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2766
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2786
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2803
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2820
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    .line 2837
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    .line 2893
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2727
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
    .line 2995
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
    .line 2989
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
    .line 2852
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearAddress()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2853
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearClir()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2854
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2855
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2856
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsConferenceUri()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2857
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsCallPull()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2858
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2859
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2860
    return-object p0
.end method

.method public clearAddress()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    .line 2741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    .line 2742
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2743
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    .line 2778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    .line 2779
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2780
    return-object p0
.end method

.method public clearClir()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2758
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    .line 2759
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2760
    return-object p0
.end method

.method public clearIsCallPull()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2829
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull:Z

    .line 2830
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    .line 2831
    return-object p0
.end method

.method public clearIsConferenceUri()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2812
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    .line 2813
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2814
    return-object p0
.end method

.method public clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2846
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted:Z

    .line 2847
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    .line 2848
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2795
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    .line 2796
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2797
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2896
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    if-gez v0, :cond_0

    .line 2898
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getSerializedSize()I

    .line 2900
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getClir()I
    .locals 1

    .prologue
    .line 2750
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    return v0
.end method

.method public getIsCallPull()Z
    .locals 1

    .prologue
    .line 2821
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    return v0
.end method

.method public getIsConferenceUri()Z
    .locals 1

    .prologue
    .line 2804
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    return v0
.end method

.method public getIsEncrypted()Z
    .locals 1

    .prologue
    .line 2838
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .prologue
    .line 2788
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2905
    const/4 v0, 0x0

    .line 2906
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2908
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2907
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2910
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2912
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getClir()I

    move-result v1

    const/4 v2, 0x2

    .line 2911
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2914
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2916
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    const/4 v2, 0x3

    .line 2915
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2918
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2920
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getPresentation()I

    move-result v1

    const/4 v2, 0x4

    .line 2919
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2922
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2924
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsConferenceUri()Z

    move-result v1

    const/4 v2, 0x5

    .line 2923
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2926
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2928
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsCallPull()Z

    move-result v1

    const/4 v2, 0x6

    .line 2927
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2930
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2932
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsEncrypted()Z

    move-result v1

    const/4 v2, 0x7

    .line 2931
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2934
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2935
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 2734
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .prologue
    .line 2767
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    return v0
.end method

.method public hasClir()Z
    .locals 1

    .prologue
    .line 2751
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    return v0
.end method

.method public hasIsCallPull()Z
    .locals 1

    .prologue
    .line 2822
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull:Z

    return v0
.end method

.method public hasIsConferenceUri()Z
    .locals 1

    .prologue
    .line 2805
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    return v0
.end method

.method public hasIsEncrypted()Z
    .locals 1

    .prologue
    .line 2839
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted:Z

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .prologue
    .line 2787
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2864
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
    .line 2939
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
    .line 2943
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2944
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2948
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2949
    return-object p0

    .line 2946
    :sswitch_0
    return-object p0

    .line 2954
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2958
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2962
    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2963
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2964
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2968
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2972
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2976
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2980
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_0

    .line 2944
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    .line 2737
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2738
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .prologue
    .line 2770
    if-nez p1, :cond_0

    .line 2771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2773
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    .line 2774
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2775
    return-object p0
.end method

.method public setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    .line 2754
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2755
    return-object p0
.end method

.method public setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull:Z

    .line 2825
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    .line 2826
    return-object p0
.end method

.method public setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    .line 2808
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2809
    return-object p0
.end method

.method public setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted:Z

    .line 2842
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    .line 2843
    return-object p0
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    .line 2791
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2792
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
    .line 2870
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2871
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2873
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getClir()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2876
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2877
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2879
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2880
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getPresentation()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2882
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2883
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsConferenceUri()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2885
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2886
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsCallPull()Z

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2888
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2889
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsEncrypted()Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2869
    :cond_6
    return-void
.end method
