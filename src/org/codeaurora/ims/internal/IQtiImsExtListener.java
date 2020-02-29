package org.codeaurora.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IQtiImsExtListener extends IInterface {

    public static abstract class Stub extends Binder implements IQtiImsExtListener {
        private static final String DESCRIPTOR = "org.codeaurora.ims.internal.IQtiImsExtListener";
        static final int TRANSACTION_notifyParticipantStatusInfo = 10;
        static final int TRANSACTION_notifySsacStatus = 9;
        static final int TRANSACTION_notifyVopsStatus = 8;
        static final int TRANSACTION_onGetCallForwardUncondTimer = 2;
        static final int TRANSACTION_onGetHandoverConfig = 14;
        static final int TRANSACTION_onGetPacketCount = 4;
        static final int TRANSACTION_onGetPacketErrorCount = 5;
        static final int TRANSACTION_onSetCallForwardUncondTimer = 1;
        static final int TRANSACTION_onSetHandoverConfig = 13;
        static final int TRANSACTION_onUTReqFailed = 3;
        static final int TRANSACTION_onVoltePreferenceQueried = 12;
        static final int TRANSACTION_onVoltePreferenceUpdated = 11;
        static final int TRANSACTION_receiveCallTransferResponse = 6;
        static final int TRANSACTION_receiveCancelModifyCallResponse = 7;

        private static class Proxy implements IQtiImsExtListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public void onSetCallForwardUncondTimer(int phoneId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(status);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onGetCallForwardUncondTimer(int phoneId, int startHour, int endHour, int startMinute, int endMinute, int reason, int status, String number, int serviceClass) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(startHour);
                    _data.writeInt(endHour);
                    _data.writeInt(startMinute);
                    _data.writeInt(endMinute);
                    _data.writeInt(reason);
                    _data.writeInt(status);
                    _data.writeString(number);
                    _data.writeInt(serviceClass);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onUTReqFailed(int phoneId, int errCode, String errString) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(errCode);
                    _data.writeString(errString);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onGetPacketCount(int phoneId, int status, long packetCount) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(status);
                    _data.writeLong(packetCount);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onGetPacketErrorCount(int phoneId, int status, long packetErrorCount) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(status);
                    _data.writeLong(packetErrorCount);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void receiveCallTransferResponse(int phoneId, int result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(result);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void receiveCancelModifyCallResponse(int phoneId, int result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(result);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void notifyVopsStatus(int phoneId, boolean vopsStatus) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeBoolean(vopsStatus);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void notifySsacStatus(int phoneId, boolean ssacStatusResponse) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeBoolean(ssacStatusResponse);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void notifyParticipantStatusInfo(int phoneId, int operation, int sipStatus, String participantUri, boolean isEct) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(operation);
                    _data.writeInt(sipStatus);
                    _data.writeString(participantUri);
                    _data.writeBoolean(isEct);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onVoltePreferenceUpdated(int phoneId, int result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(result);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onVoltePreferenceQueried(int phoneId, int result, int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(result);
                    _data.writeInt(mode);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onSetHandoverConfig(int phoneId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(status);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            public void onGetHandoverConfig(int phoneId, int status, int hoConfig) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(status);
                    _data.writeInt(hoConfig);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IQtiImsExtListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IQtiImsExtListener)) {
                return new Proxy(obj);
            }
            return (IQtiImsExtListener) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            int i = code;
            Parcel parcel = data;
            String descriptor = DESCRIPTOR;
            if (i != 1598968902) {
                boolean _arg1 = false;
                int _arg0;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(descriptor);
                        onSetCallForwardUncondTimer(data.readInt(), data.readInt());
                        return true;
                    case 2:
                        parcel.enforceInterface(descriptor);
                        onGetCallForwardUncondTimer(data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readInt(), data.readString(), data.readInt());
                        return true;
                    case 3:
                        parcel.enforceInterface(descriptor);
                        onUTReqFailed(data.readInt(), data.readInt(), data.readString());
                        return true;
                    case 4:
                        parcel.enforceInterface(descriptor);
                        onGetPacketCount(data.readInt(), data.readInt(), data.readLong());
                        return true;
                    case 5:
                        parcel.enforceInterface(descriptor);
                        onGetPacketErrorCount(data.readInt(), data.readInt(), data.readLong());
                        return true;
                    case 6:
                        parcel.enforceInterface(descriptor);
                        receiveCallTransferResponse(data.readInt(), data.readInt());
                        return true;
                    case 7:
                        parcel.enforceInterface(descriptor);
                        receiveCancelModifyCallResponse(data.readInt(), data.readInt());
                        return true;
                    case 8:
                        parcel.enforceInterface(descriptor);
                        _arg0 = data.readInt();
                        if (data.readInt() != 0) {
                            _arg1 = true;
                        }
                        notifyVopsStatus(_arg0, _arg1);
                        return true;
                    case 9:
                        parcel.enforceInterface(descriptor);
                        _arg0 = data.readInt();
                        if (data.readInt() != 0) {
                            _arg1 = true;
                        }
                        notifySsacStatus(_arg0, _arg1);
                        return true;
                    case 10:
                        parcel.enforceInterface(descriptor);
                        notifyParticipantStatusInfo(data.readInt(), data.readInt(), data.readInt(), data.readString(), data.readInt() != 0);
                        return true;
                    case 11:
                        parcel.enforceInterface(descriptor);
                        onVoltePreferenceUpdated(data.readInt(), data.readInt());
                        return true;
                    case 12:
                        parcel.enforceInterface(descriptor);
                        onVoltePreferenceQueried(data.readInt(), data.readInt(), data.readInt());
                        return true;
                    case 13:
                        parcel.enforceInterface(descriptor);
                        onSetHandoverConfig(data.readInt(), data.readInt());
                        return true;
                    case 14:
                        parcel.enforceInterface(descriptor);
                        onGetHandoverConfig(data.readInt(), data.readInt(), data.readInt());
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }
            reply.writeString(descriptor);
            return true;
        }
    }

    void notifyParticipantStatusInfo(int i, int i2, int i3, String str, boolean z) throws RemoteException;

    void notifySsacStatus(int i, boolean z) throws RemoteException;

    void notifyVopsStatus(int i, boolean z) throws RemoteException;

    void onGetCallForwardUncondTimer(int i, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8) throws RemoteException;

    void onGetHandoverConfig(int i, int i2, int i3) throws RemoteException;

    void onGetPacketCount(int i, int i2, long j) throws RemoteException;

    void onGetPacketErrorCount(int i, int i2, long j) throws RemoteException;

    void onSetCallForwardUncondTimer(int i, int i2) throws RemoteException;

    void onSetHandoverConfig(int i, int i2) throws RemoteException;

    void onUTReqFailed(int i, int i2, String str) throws RemoteException;

    void onVoltePreferenceQueried(int i, int i2, int i3) throws RemoteException;

    void onVoltePreferenceUpdated(int i, int i2) throws RemoteException;

    void receiveCallTransferResponse(int i, int i2) throws RemoteException;

    void receiveCancelModifyCallResponse(int i, int i2) throws RemoteException;
}
