/* Copyright (c) 2014, 2016 Qualcomm Technologies, Inc.  All Rights Reserved.
 * Qualcomm Technologies Proprietary and Confidential.
 */

package org.codeaurora.ims;

import android.telephony.ims.ImsCallForwardInfo;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsSsInfo;
import com.android.ims.internal.IImsUt;
import com.android.ims.internal.IImsUtListener;
import com.qualcomm.ims.utils.Log;
import android.telephony.ims.ImsUtListener;

import android.os.Bundle;

public class ImsUtListenerProxy {
    public ImsUtListener mListener;

    /**
     * Notifies the result of the supplementary service configuration update.
     */
    public void utConfigurationUpdated(final int id) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationUpdated(id);
                    } catch (Throwable t) {
                        handleError(t, "onUtConfigurationUpdated()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationUpdateFailed(
                                            final int id,
                                            final ImsReasonInfo error) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationUpdateFailed(id, error);
                    } catch (Throwable t) {
                        handleError(t, "onUtConfigurationUpdateFailed()");
                    }
                }
            };
            startThread(r);
        }
    }

    /**
     * Notifies the result of the supplementary service configuration query.
     */
    public void utConfigurationQueried(
                                       final int id,
                                       final Bundle ssInfo) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationQueried(id, ssInfo);
                    } catch (Throwable t) {
                        handleError(t, "onUtConfigurationQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    public void utConfigurationQueryFailed(
                                           final int id,
                                           final ImsReasonInfo error) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationQueryFailed(id, error);
                    } catch (Throwable t) {
                        handleError(t, "utConfigurationQueryFailed()");
                    }
                }
            };
            startThread(r);
        }
    }

    /**
     * Notifies the status of the call barring supplementary service.
     */
    public void utConfigurationCallBarringQueried(
                                                  final int id,
                                                  final ImsSsInfo[] cbInfo) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationCallBarringQueried(id, cbInfo);
                    } catch (Throwable t) {
                        handleError(t, "onUtConfigurationCallBarringQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    /**
     * Notifies the status of the call forwarding supplementary service.
     */
    public void utConfigurationCallForwardQueried(
                                                  final int id,
                                                  final ImsCallForwardInfo[] cfInfo) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationCallForwardQueried(id, cfInfo);
                    } catch (Throwable t) {
                        handleError(t, "onUtConfigurationCallForwardQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    /**
     * Notifies the status of the call waiting supplementary service.
     */
    public void utConfigurationCallWaitingQueried(
                                                  final int id,
                                                  final ImsSsInfo[] cwInfo) {
        if (mListener != null) {
            final Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        mListener.onUtConfigurationCallWaitingQueried(id, cwInfo);
                    } catch (Throwable t) {
                        handleError(t, "onUtConfigurationCallWaitingQueried()");
                    }
                }
            };
            startThread(r);
        }
    }

    void startThread(Runnable r) {
        Thread t = new Thread(r, "ImsUtListenerProxyThread");
        t.start();
    }

    private void handleError(Throwable t, String message) {
        Log.e(this, t + " " + message);
     }
}
