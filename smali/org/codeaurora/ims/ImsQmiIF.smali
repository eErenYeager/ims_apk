.class public final Lorg/codeaurora/ims/ImsQmiIF;
.super Ljava/lang/Object;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$Answer;,
        Lorg/codeaurora/ims/ImsQmiIF$CallDetails;,
        Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;,
        Lorg/codeaurora/ims/ImsQmiIF$CallForwardInfoList;,
        Lorg/codeaurora/ims/ImsQmiIF$CallFwdTimerInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$CallList;,
        Lorg/codeaurora/ims/ImsQmiIF$CallModify;,
        Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$CbNumList;,
        Lorg/codeaurora/ims/ImsQmiIF$CbNumListType;,
        Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;,
        Lorg/codeaurora/ims/ImsQmiIF$Clir;,
        Lorg/codeaurora/ims/ImsQmiIF$Colr;,
        Lorg/codeaurora/ims/ImsQmiIF$ConfInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$ConfigMsg;,
        Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;,
        Lorg/codeaurora/ims/ImsQmiIF$Dial;,
        Lorg/codeaurora/ims/ImsQmiIF$Dtmf;,
        Lorg/codeaurora/ims/ImsQmiIF$ExplicitCallTransfer;,
        Lorg/codeaurora/ims/ImsQmiIF$Extra;,
        Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$Handover;,
        Lorg/codeaurora/ims/ImsQmiIF$HandoverConfigMsg;,
        Lorg/codeaurora/ims/ImsQmiIF$Hangup;,
        Lorg/codeaurora/ims/ImsQmiIF$Hold;,
        Lorg/codeaurora/ims/ImsQmiIF$IFConnected;,
        Lorg/codeaurora/ims/ImsQmiIF$Info;,
        Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;,
        Lorg/codeaurora/ims/ImsQmiIF$MsgTag;,
        Lorg/codeaurora/ims/ImsQmiIF$Mute;,
        Lorg/codeaurora/ims/ImsQmiIF$Mwi;,
        Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;,
        Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;,
        Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;,
        Lorg/codeaurora/ims/ImsQmiIF$Registration;,
        Lorg/codeaurora/ims/ImsQmiIF$Resume;,
        Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;,
        Lorg/codeaurora/ims/ImsQmiIF$RtpStatisticsData;,
        Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;,
        Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;,
        Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;,
        Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;,
        Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;,
        Lorg/codeaurora/ims/ImsQmiIF$ViceInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;,
        Lorg/codeaurora/ims/ImsQmiIF$VoWiFiCallQuality;,
        Lorg/codeaurora/ims/ImsQmiIF$VolteUserPref;,
        Lorg/codeaurora/ims/ImsQmiIF$VopsInfo;,
        Lorg/codeaurora/ims/ImsQmiIF$WifiCallingInfo;
    }
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x1

.field public static final ADD:I = 0x0

.field public static final ASSURED_TRANSFER:I = 0x1

.field public static final BACKGROUND:I = 0x2

.field public static final BLIND_TRANSFER:I = 0x0

.field public static final CALL_ACTIVE:I = 0x0

.field public static final CALL_ALERTING:I = 0x3

.field public static final CALL_DIALING:I = 0x2

.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_END:I = 0x6

.field public static final CALL_FAIL_ANSWERED_ELSEWHERE:I = 0x3f6

.field public static final CALL_FAIL_BLACKLISTED_CALL_ID:I = 0x1f8

.field public static final CALL_FAIL_BUSY:I = 0x11

.field public static final CALL_FAIL_CALL_BARRED:I = 0xf0

.field public static final CALL_FAIL_CAUSE_CALL_PULLED:I = 0x3f8

.field public static final CALL_FAIL_CONGESTION:I = 0x22

.field public static final CALL_FAIL_CS_RETRY_REQUIRED:I = 0x1f9

.field public static final CALL_FAIL_EMERGENCY_PERM_FAILURE:I = 0x146

.field public static final CALL_FAIL_EMERGENCY_TEMP_FAILURE:I = 0x145

.field public static final CALL_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field public static final CALL_FAIL_FDN_BLOCKED:I = 0xf1

.field public static final CALL_FAIL_FEATURE_UNAVAILABLE:I = 0x3f3

.field public static final CALL_FAIL_HOLD_REINVITE_COLLISION:I = 0xbbf

.field public static final CALL_FAIL_HOLD_RESUME_CANCELED:I = 0xbbe

.field public static final CALL_FAIL_HOLD_RESUME_FAILED:I = 0xbbd

.field public static final CALL_FAIL_HO_NOT_FEASIBLE:I = 0x17e

.field public static final CALL_FAIL_INCOMPATIBILITY_DESTINATION:I = 0x58

.field public static final CALL_FAIL_LOW_BATTERY:I = 0x1f7

.field public static final CALL_FAIL_MEDIA_INIT_FAILED:I = 0xbb9

.field public static final CALL_FAIL_MEDIA_NOT_ACCEPTABLE:I = 0xbbb

.field public static final CALL_FAIL_MEDIA_NO_DATA:I = 0xbba

.field public static final CALL_FAIL_MEDIA_UNSPECIFIED_ERROR:I = 0xbbc

.field public static final CALL_FAIL_MISC:I = 0x3f5

.field public static final CALL_FAIL_NETWORK_UNAVAILABLE:I = 0x3f2

.field public static final CALL_FAIL_NORMAL:I = 0x10

.field public static final CALL_FAIL_PULL_OUT_OF_SYNC:I = 0x3f7

.field public static final CALL_FAIL_SIP_BAD_ADDRESS:I = 0x7d8

.field public static final CALL_FAIL_SIP_BAD_REQUEST:I = 0x7d2

.field public static final CALL_FAIL_SIP_BUSY:I = 0x7d9

.field public static final CALL_FAIL_SIP_Error:I = 0x3f4

.field public static final CALL_FAIL_SIP_FORBIDDEN:I = 0x7d3

.field public static final CALL_FAIL_SIP_GLOBAL_ERROR:I = 0x7e6

.field public static final CALL_FAIL_SIP_NOT_ACCEPTABLE:I = 0x7db

.field public static final CALL_FAIL_SIP_NOT_FOUND:I = 0x7d4

.field public static final CALL_FAIL_SIP_NOT_REACHABLE:I = 0x7dc

.field public static final CALL_FAIL_SIP_NOT_SUPPORTED:I = 0x7d5

.field public static final CALL_FAIL_SIP_REDIRECTED:I = 0x7d1

.field public static final CALL_FAIL_SIP_REQUEST_CANCELLED:I = 0x7da

.field public static final CALL_FAIL_SIP_REQUEST_TIMEOUT:I = 0x7d6

.field public static final CALL_FAIL_SIP_SERVER_BAD_GATEWAY:I = 0x7df

.field public static final CALL_FAIL_SIP_SERVER_INTERNAL_ERROR:I = 0x7dd

.field public static final CALL_FAIL_SIP_SERVER_MESSAGE_TOOLARGE:I = 0x7e3

.field public static final CALL_FAIL_SIP_SERVER_NOT_IMPLEMENTED:I = 0x7de

.field public static final CALL_FAIL_SIP_SERVER_PRECONDITION_FAILURE:I = 0x7e4

.field public static final CALL_FAIL_SIP_SERVER_TIMEOUT:I = 0x7e1

.field public static final CALL_FAIL_SIP_SERVER_VERSION_UNSUPPORTED:I = 0x7e2

.field public static final CALL_FAIL_SIP_SERVICE_UNAVAILABLE:I = 0x7e0

.field public static final CALL_FAIL_SIP_TEMPORARILY_UNAVAILABLE:I = 0x7d7

.field public static final CALL_FAIL_SIP_USER_REJECTED:I = 0x7e5

.field public static final CALL_FAIL_UNOBTAINABLE_NUMBER:I = 0x1

.field public static final CALL_FAIL_USER_BUSY:I = 0x1f5

.field public static final CALL_FAIL_USER_REJECT:I = 0x1f6

.field public static final CALL_HOLDING:I = 0x1

.field public static final CALL_INCOMING:I = 0x4

.field public static final CALL_SUBSTATE_AUDIO_CONNECTED_SUSPENDED:I = 0x1

.field public static final CALL_SUBSTATE_AVP_RETRY:I = 0x4

.field public static final CALL_SUBSTATE_MEDIA_PAUSED:I = 0x8

.field public static final CALL_SUBSTATE_NONE:I = 0x0

.field public static final CALL_SUBSTATE_VIDEO_CONNECTED_SUSPENDED:I = 0x2

.field public static final CALL_TYPE_CS_VS_RX:I = 0x6

.field public static final CALL_TYPE_CS_VS_TX:I = 0x5

.field public static final CALL_TYPE_PS_VS_RX:I = 0x8

.field public static final CALL_TYPE_PS_VS_TX:I = 0x7

.field public static final CALL_TYPE_SMS:I = 0xa

.field public static final CALL_TYPE_UNKNOWN:I = 0x9

.field public static final CALL_TYPE_UT:I = 0xb

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CALL_WAITING:I = 0x5

.field public static final CANCEL:I = 0x3

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_GENERIC_ERROR:I = 0xb

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_LIPSYNC:I = 0xa

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_LOCAL_REQ:I = 0x3

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_LOW_THRPUT:I = 0x8

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_PACKET_LOSS:I = 0x7

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_QOS:I = 0x6

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_REMOTE_REQ:I = 0x4

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_RTP_TIMEOUT:I = 0x5

.field public static final CAUSE_CODE_SESSION_MODIFY_DOWNGRADE_THERM_MITIGATION:I = 0x9

.field public static final CAUSE_CODE_SESSION_MODIFY_UPGRADE_LOCAL_REQ:I = 0x1

.field public static final CAUSE_CODE_SESSION_MODIFY_UPGRADE_REMOTE_REQ:I = 0x2

.field public static final CAUSE_CODE_UNSPECIFIED:I = 0x0

.field public static final CELLULAR_ONLY:I = 0x4

.field public static final CELLULAR_PREFERRED:I = 0x3

.field public static final COMPLETE_FAIL:I = 0x2

.field public static final COMPLETE_SUCCESS:I = 0x1

.field public static final CONFIG_FILE_NOT_AVAILABLE:I = 0x2

.field public static final CONFIG_IMS_NOT_READY:I = 0x1

.field public static final CONFIG_ITEM_AMR_BANDWIDTH_EFFICIENT_PT:I = 0x35

.field public static final CONFIG_ITEM_AMR_DEFAULT_MODE:I = 0x38

.field public static final CONFIG_ITEM_AMR_OCTET_ALIGNED_PT:I = 0x34

.field public static final CONFIG_ITEM_AMR_WB_BANDWIDTH_EFFICIENT_PT:I = 0x33

.field public static final CONFIG_ITEM_AMR_WB_OCTET_ALIGNED_PT:I = 0x32

.field public static final CONFIG_ITEM_AVAILABILITY_CACHE_EXPIRATION:I = 0x13

.field public static final CONFIG_ITEM_CANCELLATION_TIMER:I = 0x5

.field public static final CONFIG_ITEM_CAPABILITIES_CACHE_EXPIRATION:I = 0x12

.field public static final CONFIG_ITEM_CAPABILITIES_POLL_INTERVAL:I = 0x14

.field public static final CONFIG_ITEM_CAPABILITY_DISCOVERY_ENABLED:I = 0x1e

.field public static final CONFIG_ITEM_CAPAB_POLL_LIST_SUB_EXP:I = 0x17

.field public static final CONFIG_ITEM_DOMAIN_NAME:I = 0xd

.field public static final CONFIG_ITEM_DTMF_NB_PT:I = 0x37

.field public static final CONFIG_ITEM_DTMF_WB_PT:I = 0x36

.field public static final CONFIG_ITEM_EAB_SETTING_ENABLED:I = 0x19

.field public static final CONFIG_ITEM_EMERGENCY_CALL_TIMER:I = 0x1f

.field public static final CONFIG_ITEM_GZIP_FLAG:I = 0x18

.field public static final CONFIG_ITEM_KEEP_ALIVE_ENABLED:I = 0x23

.field public static final CONFIG_ITEM_LBO_PCSCF_ADDRESS:I = 0x22

.field public static final CONFIG_ITEM_LVC_SETTING_ENABLED:I = 0xc

.field public static final CONFIG_ITEM_MAX_NUM_ENTRIES_IN_RCL:I = 0x16

.field public static final CONFIG_ITEM_MIN_SESSION_EXPIRY:I = 0x4

.field public static final CONFIG_ITEM_MOBILE_DATA_ENABLED:I = 0x1a

.field public static final CONFIG_ITEM_NONE:I = 0x0

.field public static final CONFIG_ITEM_PUBLISH_TIMER:I = 0x10

.field public static final CONFIG_ITEM_PUBLISH_TIMER_EXTENDED:I = 0x11

.field public static final CONFIG_ITEM_REGISTRATION_RETRY_BASE_TIME_SEC:I = 0x24

.field public static final CONFIG_ITEM_REGISTRATION_RETRY_MAX_TIME_SEC:I = 0x25

.field public static final CONFIG_ITEM_SILENT_REDIAL_ENABLE:I = 0x7

.field public static final CONFIG_ITEM_SIP_ACK_RECEIPT_WAIT_TIME_MSEC:I = 0x2e

.field public static final CONFIG_ITEM_SIP_ACK_RETX_WAIT_TIME_MSEC:I = 0x2f

.field public static final CONFIG_ITEM_SIP_INVITE_REQ_RETX_INTERVAL_MSEC:I = 0x28

.field public static final CONFIG_ITEM_SIP_INVITE_RSP_RETX_INTERVAL_MSEC:I = 0x2d

.field public static final CONFIG_ITEM_SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC:I = 0x2a

.field public static final CONFIG_ITEM_SIP_INVITE_RSP_WAIT_TIME_MSEC:I = 0x29

.field public static final CONFIG_ITEM_SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC:I = 0x2b

.field public static final CONFIG_ITEM_SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC:I = 0x30

.field public static final CONFIG_ITEM_SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC:I = 0x31

.field public static final CONFIG_ITEM_SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC:I = 0x2c

.field public static final CONFIG_ITEM_SIP_SESSION_TIMER:I = 0x3

.field public static final CONFIG_ITEM_SIP_T1_TIMER:I = 0x8

.field public static final CONFIG_ITEM_SIP_T2_TIMER:I = 0x9

.field public static final CONFIG_ITEM_SIP_TF_TIMER:I = 0xa

.field public static final CONFIG_ITEM_SMS_FORMAT:I = 0xe

.field public static final CONFIG_ITEM_SMS_OVER_IP:I = 0xf

.field public static final CONFIG_ITEM_SMS_PSI:I = 0x39

.field public static final CONFIG_ITEM_SOURCE_THROTTLE_PUBLISH:I = 0x15

.field public static final CONFIG_ITEM_SPEECH_END_PORT:I = 0x27

.field public static final CONFIG_ITEM_SPEECH_START_PORT:I = 0x26

.field public static final CONFIG_ITEM_SSAC_HYSTERESIS_TIMER:I = 0x20

.field public static final CONFIG_ITEM_THRESHOLD_1x:I = 0x3e

.field public static final CONFIG_ITEM_THRESHOLD_LTE1:I = 0x3b

.field public static final CONFIG_ITEM_THRESHOLD_LTE2:I = 0x3c

.field public static final CONFIG_ITEM_THRESHOLD_LTE3:I = 0x3d

.field public static final CONFIG_ITEM_THRESHOLD_WIFI_A:I = 0x3f

.field public static final CONFIG_ITEM_THRESHOLD_WIFI_B:I = 0x40

.field public static final CONFIG_ITEM_T_DELAY:I = 0x6

.field public static final CONFIG_ITEM_T_EPDG_1x:I = 0x43

.field public static final CONFIG_ITEM_T_EPDG_LTE:I = 0x41

.field public static final CONFIG_ITEM_T_EPDG_WIFI:I = 0x42

.field public static final CONFIG_ITEM_VCE_SETTING_ENABLED:I = 0x45

.field public static final CONFIG_ITEM_VIDEO_QUALITY:I = 0x3a

.field public static final CONFIG_ITEM_VLT_SETTING_ENABLED:I = 0xb

.field public static final CONFIG_ITEM_VOCODER_AMRMODESET:I = 0x1

.field public static final CONFIG_ITEM_VOCODER_AMRWBMODESET:I = 0x2

.field public static final CONFIG_ITEM_VOICE_OVER_WIFI_ENABLED:I = 0x1b

.field public static final CONFIG_ITEM_VOICE_OVER_WIFI_MODE:I = 0x1d

.field public static final CONFIG_ITEM_VOICE_OVER_WIFI_ROAMING:I = 0x1c

.field public static final CONFIG_ITEM_VOLTE_USER_OPT_IN_STATUS:I = 0x21

.field public static final CONFIG_ITEM_VWF_SETTING_ENABLED:I = 0x44

.field public static final CONFIG_NO_ERR:I = 0x0

.field public static final CONFIG_OTHER_INTERNAL_ERR:I = 0x5

.field public static final CONFIG_READ_FAILED:I = 0x3

.field public static final CONFIG_WRITE_FAILED:I = 0x4

.field public static final CONSULTATIVE_TRANSFER:I = 0x2

.field public static final DEACTIVATE:I = 0x2

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final ERASURE:I = 0x5

.field public static final E_CANCELLED:I = 0x7

.field public static final E_GENERIC_FAILURE:I = 0x2

.field public static final E_HOLD_RESUME_CANCELED:I = 0x20

.field public static final E_HOLD_RESUME_FAILED:I = 0x1f

.field public static final E_IMS_DEREGISTERED:I = 0x1d

.field public static final E_INVALID_PARAMETER:I = 0x1b

.field public static final E_NETWORK_NOT_SUPPORTED:I = 0x1e

.field public static final E_RADIO_NOT_AVAILABLE:I = 0x1

.field public static final E_REINVITE_COLLISION:I = 0x21

.field public static final E_REJECTED_BY_REMOTE:I = 0x1c

.field public static final E_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final E_SUCCESS:I = 0x0

.field public static final E_UNUSED:I = 0x10

.field public static final FACILITY_BAIC:I = 0x6

.field public static final FACILITY_BAICa:I = 0xc

.field public static final FACILITY_BAICr:I = 0x7

.field public static final FACILITY_BAOC:I = 0x3

.field public static final FACILITY_BAOIC:I = 0x4

.field public static final FACILITY_BAOICxH:I = 0x5

.field public static final FACILITY_BA_ALL:I = 0x8

.field public static final FACILITY_BA_MO:I = 0x9

.field public static final FACILITY_BA_MT:I = 0xa

.field public static final FACILITY_BS_MT:I = 0xb

.field public static final FACILITY_CLIP:I = 0x1

.field public static final FACILITY_COLP:I = 0x2

.field public static final FOREGROUND:I = 0x1

.field public static final HIGH:I = 0x1

.field public static final HO_DISABLED_ALL:I = 0x2

.field public static final HO_ENABLED_ALL:I = 0x1

.field public static final HO_ENABLED_WLAN_TO_WWAN_ONLY:I = 0x3

.field public static final HO_ENABLED_WWAN_TO_WLAN_ONLY:I = 0x4

.field public static final IP_PRESENTATION_NUM_ALLOWED:I = 0x0

.field public static final IP_PRESENTATION_NUM_DEFAULT:I = 0x2

.field public static final IP_PRESENTATION_NUM_RESTRICTED:I = 0x1

.field public static final LOW:I = 0x0

.field public static final LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MO:I = 0x0

.field public static final MT:I = 0x1

.field public static final MWI_MSG_FAX:I = 0x2

.field public static final MWI_MSG_MULTIMEDIA:I = 0x4

.field public static final MWI_MSG_NONE:I = -0x1

.field public static final MWI_MSG_PAGER:I = 0x3

.field public static final MWI_MSG_PRIORITY_LOW:I = 0x0

.field public static final MWI_MSG_PRIORITY_NORMAL:I = 0x1

.field public static final MWI_MSG_PRIORITY_UNKNOWN:I = -0x1

.field public static final MWI_MSG_PRIORITY_URGENT:I = 0x2

.field public static final MWI_MSG_TEXT:I = 0x5

.field public static final MWI_MSG_VIDEO:I = 0x1

.field public static final MWI_MSG_VOICE:I = 0x0

.field public static final NOT_PROVISIONED:I = 0x0

.field public static final NOT_TRIGGERED:I = 0x4

.field public static final PROVISIONED:I = 0x1

.field public static final QUERY:I = 0x3

.field public static final RADIO_STATE_OFF:I = 0x0

.field public static final RADIO_STATE_ON:I = 0xa

.field public static final RADIO_STATE_UNAVAILABLE:I = 0x1

.field public static final RADIO_TECH_1xRTT:I = 0x6

.field public static final RADIO_TECH_ANY:I = -0x1

.field public static final RADIO_TECH_EDGE:I = 0x2

.field public static final RADIO_TECH_EHRPD:I = 0xd

.field public static final RADIO_TECH_EVDO_0:I = 0x7

.field public static final RADIO_TECH_EVDO_A:I = 0x8

.field public static final RADIO_TECH_EVDO_B:I = 0xc

.field public static final RADIO_TECH_GPRS:I = 0x1

.field public static final RADIO_TECH_GSM:I = 0x10

.field public static final RADIO_TECH_HSDPA:I = 0x9

.field public static final RADIO_TECH_HSPA:I = 0xb

.field public static final RADIO_TECH_HSPAP:I = 0xf

.field public static final RADIO_TECH_HSUPA:I = 0xa

.field public static final RADIO_TECH_IS95A:I = 0x4

.field public static final RADIO_TECH_IS95B:I = 0x5

.field public static final RADIO_TECH_IWLAN:I = 0x13

.field public static final RADIO_TECH_LTE:I = 0xe

.field public static final RADIO_TECH_TD_SCDMA:I = 0x11

.field public static final RADIO_TECH_UMTS:I = 0x3

.field public static final RADIO_TECH_UNKNOWN:I = 0x0

.field public static final RADIO_TECH_WIFI:I = 0x12

.field public static final REGISTER:I = 0x4

.field public static final REMOVE:I = 0x1

.field public static final REQUEST:I = 0x1

.field public static final REQUEST_ADD_PARTICIPANT:I = 0x1c

.field public static final REQUEST_ANSWER:I = 0x3

.field public static final REQUEST_CONFERENCE:I = 0xa

.field public static final REQUEST_DEFLECT_CALL:I = 0x20

.field public static final REQUEST_DIAL:I = 0x2

.field public static final REQUEST_DTMF:I = 0xd

.field public static final REQUEST_DTMF_START:I = 0xe

.field public static final REQUEST_DTMF_STOP:I = 0xf

.field public static final REQUEST_EXIT_EMERGENCY_CALLBACK_MODE:I = 0xb

.field public static final REQUEST_EXPLICIT_CALL_TRANSFER:I = 0xc

.field public static final REQUEST_GET_CLIR:I = 0x14

.field public static final REQUEST_GET_COLR:I = 0x21

.field public static final REQUEST_GET_CURRENT_CALLS:I = 0x6

.field public static final REQUEST_GET_HANDOVER_CONFIG:I = 0x34

.field public static final REQUEST_GET_IMS_CONFIG:I = 0x2d

.field public static final REQUEST_GET_RTP_ERROR_STATISTICS:I = 0x29

.field public static final REQUEST_GET_RTP_STATISTICS:I = 0x28

.field public static final REQUEST_GET_SSAC_INFO:I = 0x31

.field public static final REQUEST_GET_VOLTE_PREF:I = 0x33

.field public static final REQUEST_GET_VOPS_INFO:I = 0x30

.field public static final REQUEST_GET_VOWIFI_CALL_QUALITY:I = 0x2f

.field public static final REQUEST_GET_WIFI_CALLING_STATUS:I = 0x2a

.field public static final REQUEST_HANGUP:I = 0x4

.field public static final REQUEST_HANGUP_FOREGROUND_RESUME_BACKGROUND:I = 0x8

.field public static final REQUEST_HANGUP_WAITING_OR_BACKGROUND:I = 0x7

.field public static final REQUEST_HOLD:I = 0x25

.field public static final REQUEST_IMS_REGISTRATION_STATE:I = 0x1

.field public static final REQUEST_IMS_REG_STATE_CHANGE:I = 0x1a

.field public static final REQUEST_LAST_CALL_FAIL_CAUSE:I = 0x5

.field public static final REQUEST_MODIFY_CALL_CONFIRM:I = 0x12

.field public static final REQUEST_MODIFY_CALL_INITIATE:I = 0x11

.field public static final REQUEST_QUERY_CALL_FORWARD_STATUS:I = 0x16

.field public static final REQUEST_QUERY_CALL_WAITING:I = 0x18

.field public static final REQUEST_QUERY_CLIP:I = 0x13

.field public static final REQUEST_QUERY_SERVICE_STATUS:I = 0x1d

.field public static final REQUEST_QUERY_VT_CALL_QUALITY:I = 0x23

.field public static final REQUEST_RESUME:I = 0x26

.field public static final REQUEST_SEND_GEOLOCATION_INFO:I = 0x2e

.field public static final REQUEST_SEND_UI_TTY_MODE:I = 0x27

.field public static final REQUEST_SET_CALL_FORWARD_STATUS:I = 0x17

.field public static final REQUEST_SET_CALL_WAITING:I = 0x19

.field public static final REQUEST_SET_CLIR:I = 0x15

.field public static final REQUEST_SET_COLR:I = 0x22

.field public static final REQUEST_SET_HANDOVER_CONFIG:I = 0x35

.field public static final REQUEST_SET_IMS_CONFIG:I = 0x2c

.field public static final REQUEST_SET_SERVICE_STATUS:I = 0x1e

.field public static final REQUEST_SET_SUPP_SVC_NOTIFICATION:I = 0x1b

.field public static final REQUEST_SET_VOLTE_PREF:I = 0x32

.field public static final REQUEST_SET_VT_CALL_QUALITY:I = 0x24

.field public static final REQUEST_SET_WIFI_CALLING_STATUS:I = 0x2b

.field public static final REQUEST_SUPP_SVC_STATUS:I = 0x1f

.field public static final REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE:I = 0x9

.field public static final REQUEST_UDUB:I = 0x10

.field public static final RESPONSE:I = 0x2

.field public static final RINGING:I = 0x0

.field public static final SMS:I = 0x1

.field public static final START:I = 0x0

.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x3

.field public static final STATUS_PARTIALLY_ENABLED:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x2

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_REQ:I = 0x0

.field public static final UNSOL_CALL_RING:I = 0xca

.field public static final UNSOL_ENTER_EMERGENCY_CALLBACK_MODE:I = 0xcd

.field public static final UNSOL_EXIT_EMERGENCY_CALLBACK_MODE:I = 0xce

.field public static final UNSOL_MODIFY_CALL:I = 0xcf

.field public static final UNSOL_MWI:I = 0xd6

.field public static final UNSOL_PARTICIPANT_STATUS_INFO:I = 0xdc

.field public static final UNSOL_RADIO_STATE_CHANGED:I = 0xd5

.field public static final UNSOL_REFRESH_CONF_INFO:I = 0xd1

.field public static final UNSOL_REFRESH_VICE_INFO:I = 0xd7

.field public static final UNSOL_REQUEST_GEOLOCATION:I = 0xd8

.field public static final UNSOL_RESPONSE:I = 0x3

.field public static final UNSOL_RESPONSE_CALL_STATE_CHANGED:I = 0xc9

.field public static final UNSOL_RESPONSE_HANDOVER:I = 0xd0

.field public static final UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0xcc

.field public static final UNSOL_RINGBACK_TONE:I = 0xcb

.field public static final UNSOL_RSP_BASE:I = 0xc8

.field public static final UNSOL_SRV_STATUS_UPDATE:I = 0xd2

.field public static final UNSOL_SSAC_CHANGED:I = 0xdb

.field public static final UNSOL_SUPP_SVC_NOTIFICATION:I = 0xd3

.field public static final UNSOL_TTY_NOTIFICATION:I = 0xd4

.field public static final UNSOL_VOPS_CHANGED:I = 0xda

.field public static final UNSOL_VOWIFI_CALL_QUALITY:I = 0xd9

.field public static final VOIP:I = 0x2

.field public static final VOLTE_PREF_DISABLED:I = 0x0

.field public static final VOLTE_PREF_ENABLED:I = 0x1

.field public static final VOLTE_PREF_UNKNOWN:I = 0x2

.field public static final VOWIFI_QUALITY_BAD:I = 0x4

.field public static final VOWIFI_QUALITY_EXCELLENT:I = 0x1

.field public static final VOWIFI_QUALITY_FAIR:I = 0x2

.field public static final VOWIFI_QUALITY_NONE:I = 0x0

.field public static final VT:I = 0x3

.field public static final WIFI_NOT_SUPPORTED:I = 0x0

.field public static final WIFI_ONLY:I = 0x2

.field public static final WIFI_PREFERRED:I = 0x1

.field public static final WIFI_PREF_NONE:I = 0x0

.field public static final WIFI_STATUS_OFF:I = 0x2

.field public static final WIFI_STATUS_ON:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
