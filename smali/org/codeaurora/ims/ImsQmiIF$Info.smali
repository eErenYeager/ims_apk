.class public final Lorg/codeaurora/ims/ImsQmiIF$Info;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# static fields
.field public static final ACCTECHSTATUS_FIELD_NUMBER:I = 0x7

.field public static final CALLTYPE_FIELD_NUMBER:I = 0x3

.field public static final ISVALID_FIELD_NUMBER:I = 0x1

.field public static final RESTRICTCAUSE_FIELD_NUMBER:I = 0x6

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final USERDATA_FIELD_NUMBER:I = 0x5


# instance fields
.field private accTechStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private callType_:I

.field private hasCallType:Z

.field private hasIsValid:Z

.field private hasRestrictCause:Z

.field private hasStatus:Z

.field private hasType:Z

.field private hasUserdata:Z

.field private isValid_:Z

.field private restrictCause_:I

.field private status_:I

.field private type_:I

.field private userdata_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1015
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1020
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 1037
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 1054
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 1071
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 1088
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1105
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 1122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1121
    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1015
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    return-object v0
.end method


# virtual methods
.method public addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .prologue
    .line 1138
    if-nez p1, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1141
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 1144
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 1153
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1154
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1155
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1156
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1157
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1158
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1159
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1160
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1161
    return-object p0
.end method

.method public clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 1148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 1149
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1063
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    .line 1064
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 1065
    return-object p0
.end method

.method public clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1029
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    .line 1030
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 1031
    return-object p0
.end method

.method public clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    .line 1115
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 1116
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    .line 1081
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 1082
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    .line 1047
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 1048
    return-object p0
.end method

.method public clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    .line 1098
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1099
    return-object p0
.end method

.method public getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    return-object v0
.end method

.method public getAccTechStatusCount()I
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccTechStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    if-gez v0, :cond_0

    .line 1199
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getSerializedSize()I

    .line 1201
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    return v0
.end method

.method public getIsValid()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    return v0
.end method

.method public getRestrictCause()I
    .locals 1

    .prologue
    .line 1106
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1206
    const/4 v2, 0x0

    .line 1207
    .local v2, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1209
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v3

    const/4 v4, 0x1

    .line 1208
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/lit8 v2, v3, 0x0

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1213
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v3

    const/4 v4, 0x2

    .line 1212
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1217
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v3

    const/4 v4, 0x3

    .line 1216
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1219
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1221
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    .line 1220
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1223
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    const/4 v4, 0x5

    .line 1224
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1227
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1229
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    const/4 v4, 0x6

    .line 1228
    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1231
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1233
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    const/4 v3, 0x7

    .line 1232
    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1235
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_6
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1236
    return v2
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    return v0
.end method

.method public getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasCallType()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    return v0
.end method

.method public hasIsValid()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    return v0
.end method

.method public hasRestrictCause()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    return v0
.end method

.method public hasUserdata()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1165
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
    .line 1240
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1245
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1249
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1250
    return-object p0

    .line 1247
    :sswitch_0
    return-object p0

    .line 1255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1259
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1263
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1267
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1271
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1275
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1279
    :sswitch_7
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 1280
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1281
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    .line 1245
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setAccTechStatus(ILorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .prologue
    .line 1131
    if-nez p2, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1135
    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    .line 1059
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 1060
    return-object p0
.end method

.method public setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    .line 1025
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 1026
    return-object p0
.end method

.method public setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    .line 1110
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 1111
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    .line 1076
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 1077
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    .line 1042
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 1043
    return-object p0
.end method

.method public setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    .line 1093
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1094
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1174
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1175
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1177
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1178
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1180
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1181
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1183
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1184
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1186
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1187
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1189
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1190
    .local v0, "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1170
    .end local v0    # "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_6
    return-void
.end method
