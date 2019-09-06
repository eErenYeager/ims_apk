.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExtListener.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExtListener"

.field static final TRANSACTION_notifyParticipantStatusInfo:I = 0xb

.field static final TRANSACTION_notifyRefreshViceInfo:I = 0xa

.field static final TRANSACTION_notifySsacStatus:I = 0x9

.field static final TRANSACTION_notifyVopsStatus:I = 0x8

.field static final TRANSACTION_onGetCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_onGetHandoverConfig:I = 0xf

.field static final TRANSACTION_onGetPacketCount:I = 0x4

.field static final TRANSACTION_onGetPacketErrorCount:I = 0x5

.field static final TRANSACTION_onSetCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_onSetHandoverConfig:I = 0xe

.field static final TRANSACTION_onUTReqFailed:I = 0x3

.field static final TRANSACTION_onVoltePreferenceQueried:I = 0xd

.field static final TRANSACTION_onVoltePreferenceUpdated:I = 0xc

.field static final TRANSACTION_receiveCallDeflectResponse:I = 0x6

.field static final TRANSACTION_receiveCallTransferResponse:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 206
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetCallForwardUncondTimer(I)V

    .line 56
    const/4 v4, 0x1

    return v4

    .line 60
    .end local v5    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 68
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 72
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 74
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg7":I
    move-object/from16 v4, p0

    .line 77
    invoke-virtual/range {v4 .. v12}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V

    .line 78
    const/4 v4, 0x1

    return v4

    .line 82
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    :sswitch_3
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onUTReqFailed(ILjava/lang/String;)V

    .line 88
    const/4 v4, 0x1

    return v4

    .line 92
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 96
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 97
    .local v16, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketCount(IJ)V

    .line 98
    const/4 v4, 0x1

    return v4

    .line 102
    .end local v5    # "_arg0":I
    .end local v16    # "_arg1":J
    :sswitch_5
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 107
    .restart local v16    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketErrorCount(IJ)V

    .line 108
    const/4 v4, 0x1

    return v4

    .line 112
    .end local v5    # "_arg0":I
    .end local v16    # "_arg1":J
    :sswitch_6
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallDeflectResponse(I)V

    .line 116
    const/4 v4, 0x1

    return v4

    .line 120
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 123
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallTransferResponse(I)V

    .line 124
    const/4 v4, 0x1

    return v4

    .line 128
    .end local v5    # "_arg0":I
    :sswitch_8
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x1

    .line 131
    .local v14, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyVopsStatus(Z)V

    .line 132
    const/4 v4, 0x1

    return v4

    .line 130
    .end local v14    # "_arg0":Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 136
    :sswitch_9
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v14, 0x1

    .line 139
    .restart local v14    # "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifySsacStatus(Z)V

    .line 140
    const/4 v4, 0x1

    return v4

    .line 138
    .end local v14    # "_arg0":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 144
    :sswitch_a
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    sget-object v4, Lorg/codeaurora/ims/QtiViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codeaurora/ims/QtiViceInfo;

    .line 152
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyRefreshViceInfo(Lorg/codeaurora/ims/QtiViceInfo;)V

    .line 153
    const/4 v4, 0x1

    return v4

    .line 150
    :cond_2
    const/4 v13, 0x0

    .local v13, "_arg0":Lorg/codeaurora/ims/QtiViceInfo;
    goto :goto_2

    .line 157
    .end local v13    # "_arg0":Lorg/codeaurora/ims/QtiViceInfo;
    :sswitch_b
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 161
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 163
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 165
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v19, 0x1

    .line 166
    .local v19, "_arg3":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v6, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyParticipantStatusInfo(IILjava/lang/String;Z)V

    .line 167
    const/4 v4, 0x1

    return v4

    .line 165
    .end local v19    # "_arg3":Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    .line 171
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 174
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceUpdated(I)V

    .line 175
    const/4 v4, 0x1

    return v4

    .line 179
    .end local v5    # "_arg0":I
    :sswitch_d
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 183
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 184
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceQueried(II)V

    .line 185
    const/4 v4, 0x1

    return v4

    .line 189
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_e
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 192
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetHandoverConfig(I)V

    .line 193
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v5    # "_arg0":I
    :sswitch_f
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 201
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 202
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetHandoverConfig(II)V

    .line 203
    const/4 v4, 0x1

    return v4

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
