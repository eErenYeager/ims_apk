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
            "Ljava/util/List<",
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

    .line 1027
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 1049
    const/4 v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 1066
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 1083
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 1100
    sget-object v1, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1117
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 1133
    nop

    .line 1134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 1206
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1027
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

    .line 1308
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

    .line 1302
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

    .line 1150
    if-eqz p1, :cond_1

    .line 1153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 1156
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    return-object p0

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1165
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1166
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1167
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1168
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1169
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1170
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1171
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1172
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1173
    return-object p0
.end method

.method public clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    .line 1161
    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    .line 1076
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 1077
    return-object p0
.end method

.method public clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    .line 1042
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 1043
    return-object p0
.end method

.method public clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    .line 1127
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 1128
    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    .line 1093
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 1094
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    .line 1059
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 1060
    return-object p0
.end method

.method public clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    .line 1110
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1111
    return-object p0
.end method

.method public getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1
    .param p1, "index"    # I

    .line 1140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    return-object v0
.end method

.method public getAccTechStatusCount()I
    .locals 1

    .line 1138
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
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1209
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    if-gez v0, :cond_0

    .line 1211
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getSerializedSize()I

    .line 1213
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 1068
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    return v0
.end method

.method public getIsValid()Z
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    return v0
.end method

.method public getRestrictCause()I
    .locals 1

    .line 1118
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    const/4 v1, 0x1

    .line 1221
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1223
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1224
    const/4 v1, 0x2

    .line 1225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1227
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1228
    const/4 v1, 0x3

    .line 1229
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1231
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1232
    const/4 v1, 0x4

    .line 1233
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1235
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1236
    const/4 v1, 0x5

    .line 1237
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1239
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1240
    const/4 v1, 0x6

    .line 1241
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1243
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1244
    .local v2, "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    const/4 v3, 0x7

    .line 1245
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1246
    .end local v2    # "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    goto :goto_0

    .line 1247
    :cond_6
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    .line 1248
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1085
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1051
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    return v0
.end method

.method public getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 1101
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasCallType()Z
    .locals 1

    .line 1067
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    return v0
.end method

.method public hasIsValid()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    return v0
.end method

.method public hasRestrictCause()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 1084
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 1050
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    return v0
.end method

.method public hasUserdata()Z
    .locals 1

    .line 1102
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1177
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

    .line 1024
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1256
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1257
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 1261
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1262
    return-object p0

    .line 1291
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    .line 1292
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1293
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1294
    goto :goto_1

    .line 1287
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1288
    goto :goto_1

    .line 1283
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1284
    goto :goto_1

    .line 1279
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1280
    goto :goto_1

    .line 1275
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1276
    goto :goto_1

    .line 1271
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1272
    goto :goto_1

    .line 1267
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    .line 1268
    nop

    .line 1297
    .end local v0    # "tag":I
    :cond_7
    :goto_1
    goto :goto_0

    .line 1259
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public setAccTechStatus(ILorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1143
    if-eqz p2, :cond_0

    .line 1146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-object p0

    .line 1144
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    .line 1071
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    .line 1072
    return-object p0
.end method

.method public setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Z

    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    .line 1037
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    .line 1038
    return-object p0
.end method

.method public setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    .line 1122
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    .line 1123
    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    .line 1088
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    .line 1089
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # I

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    .line 1054
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    .line 1055
    return-object p0
.end method

.method public setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    .line 1105
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1106
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1189
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1192
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1193
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1195
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1196
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1198
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1199
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 1201
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    .line 1202
    .local v1, "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1203
    .end local v1    # "element":Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    goto :goto_0

    .line 1204
    :cond_6
    return-void
.end method
