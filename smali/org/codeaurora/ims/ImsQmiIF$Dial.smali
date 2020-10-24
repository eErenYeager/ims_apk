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

    .line 2710
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2715
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2732
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2749
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2769
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2786
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2803
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    .line 2820
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    .line 2876
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2710
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

    .line 2978
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

    .line 2972
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

    .line 2835
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearAddress()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2836
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearClir()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2837
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2838
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2839
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsConferenceUri()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2840
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsCallPull()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2841
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2842
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2843
    return-object p0
.end method

.method public clearAddress()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    .line 2725
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2726
    return-object p0
.end method

.method public clearCallDetails()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    .line 2762
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2763
    return-object p0
.end method

.method public clearClir()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    .line 2742
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2743
    return-object p0
.end method

.method public clearIsCallPull()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull:Z

    .line 2813
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    .line 2814
    return-object p0
.end method

.method public clearIsConferenceUri()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    .line 2796
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2797
    return-object p0
.end method

.method public clearIsEncrypted()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted:Z

    .line 2830
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    .line 2831
    return-object p0
.end method

.method public clearPresentation()Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1

    .line 2778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    .line 2779
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2780
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 2716
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2879
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    if-gez v0, :cond_0

    .line 2881
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getSerializedSize()I

    .line 2883
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    return v0
.end method

.method public getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    .locals 1

    .line 2751
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    return-object v0
.end method

.method public getClir()I
    .locals 1

    .line 2733
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    return v0
.end method

.method public getIsCallPull()Z
    .locals 1

    .line 2804
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    return v0
.end method

.method public getIsConferenceUri()Z
    .locals 1

    .line 2787
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    return v0
.end method

.method public getIsEncrypted()Z
    .locals 1

    .line 2821
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    return v0
.end method

.method public getPresentation()I
    .locals 1

    .line 2771
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2888
    const/4 v0, 0x0

    .line 2889
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2890
    const/4 v1, 0x1

    .line 2891
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2893
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2894
    const/4 v1, 0x2

    .line 2895
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getClir()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2897
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2898
    const/4 v1, 0x3

    .line 2899
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2901
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2902
    const/4 v1, 0x4

    .line 2903
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getPresentation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2905
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2906
    const/4 v1, 0x5

    .line 2907
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsConferenceUri()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2909
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2910
    const/4 v1, 0x6

    .line 2911
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsCallPull()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2913
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2914
    const/4 v1, 0x7

    .line 2915
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsEncrypted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2917
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->cachedSize:I

    .line 2918
    return v0
.end method

.method public hasAddress()Z
    .locals 1

    .line 2717
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    return v0
.end method

.method public hasCallDetails()Z
    .locals 1

    .line 2750
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    return v0
.end method

.method public hasClir()Z
    .locals 1

    .line 2734
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    return v0
.end method

.method public hasIsCallPull()Z
    .locals 1

    .line 2805
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull:Z

    return v0
.end method

.method public hasIsConferenceUri()Z
    .locals 1

    .line 2788
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    return v0
.end method

.method public hasIsEncrypted()Z
    .locals 1

    .line 2822
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted:Z

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .line 2770
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2847
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

    .line 2707
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2926
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2927
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    .line 2931
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2932
    return-object p0

    .line 2963
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    goto :goto_1

    .line 2959
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2960
    goto :goto_1

    .line 2955
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2956
    goto :goto_1

    .line 2951
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2952
    goto :goto_1

    .line 2945
    :cond_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallDetails;-><init>()V

    .line 2946
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2947
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2948
    goto :goto_1

    .line 2941
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$CallDetails;
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2942
    goto :goto_1

    .line 2937
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;

    .line 2938
    nop

    .line 2967
    .end local v0    # "tag":I
    :cond_7
    :goto_1
    goto :goto_0

    .line 2929
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress:Z

    .line 2720
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->address_:Ljava/lang/String;

    .line 2721
    return-object p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/ImsQmiIF$CallDetails;)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2753
    if-eqz p1, :cond_0

    .line 2756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails:Z

    .line 2757
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->callDetails_:Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    .line 2758
    return-object p0

    .line 2754
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setClir(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # I

    .line 2736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir:Z

    .line 2737
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->clir_:I

    .line 2738
    return-object p0
.end method

.method public setIsCallPull(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .line 2807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull:Z

    .line 2808
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isCallPull_:Z

    .line 2809
    return-object p0
.end method

.method public setIsConferenceUri(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .line 2790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri:Z

    .line 2791
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isConferenceUri_:Z

    .line 2792
    return-object p0
.end method

.method public setIsEncrypted(Z)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # Z

    .line 2824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted:Z

    .line 2825
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->isEncrypted_:Z

    .line 2826
    return-object p0
.end method

.method public setPresentation(I)Lorg/codeaurora/ims/ImsQmiIF$Dial;
    .locals 1
    .param p1, "value"    # I

    .line 2773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation:Z

    .line 2774
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Dial;->presentation_:I

    .line 2775
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

    .line 2853
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2856
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasClir()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2857
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getClir()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 2859
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasCallDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2860
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getCallDetails()Lorg/codeaurora/ims/ImsQmiIF$CallDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2862
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasPresentation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2863
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getPresentation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2865
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsConferenceUri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2866
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsConferenceUri()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2868
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsCallPull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2869
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsCallPull()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2871
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->hasIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2872
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Dial;->getIsEncrypted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2874
    :cond_6
    return-void
.end method
