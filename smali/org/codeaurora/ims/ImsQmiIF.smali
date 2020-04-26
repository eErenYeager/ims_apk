.class public final Lorg/codeaurora/ims/ImsQmiIF;
.super Ljava/lang/Object;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
        Lorg/codeaurora/ims/ImsQmiIF$DeflectCall;,
        Lorg/codeaurora/ims/ImsQmiIF$Dial;,
        Lorg/codeaurora/ims/ImsQmiIF$Dtmf;,
        Lorg/codeaurora/ims/ImsQmiIF$Extra;,
        Lorg/codeaurora/ims/ImsQmiIF$Handover;,
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
        Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;,
        Lorg/codeaurora/ims/ImsQmiIF$Registration;,
        Lorg/codeaurora/ims/ImsQmiIF$Resume;,
        Lorg/codeaurora/ims/ImsQmiIF$RingBackTone;,
        Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;,
        Lorg/codeaurora/ims/ImsQmiIF$SrvStatusList;,
        Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcNotification;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcRequest;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcResponse;,
        Lorg/codeaurora/ims/ImsQmiIF$SuppSvcStatus;,
        Lorg/codeaurora/ims/ImsQmiIF$SwitchWaitingOrHoldingAndActive;,
        Lorg/codeaurora/ims/ImsQmiIF$TtyNotify;,
        Lorg/codeaurora/ims/ImsQmiIF$VideoCallQuality;
    }
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x1

.field public static final BACKGROUND:I = 0x2

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

.field public static final CALL_FAIL_CONGESTION:I = 0x22

.field public static final CALL_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field public static final CALL_FAIL_FEATURE_UNAVAILABLE:I = 0x3f3

.field public static final CALL_FAIL_INCOMPATIBILITY_DESTINATION:I = 0x58

.field public static final CALL_FAIL_LOW_BATTERY:I = 0x1f7

.field public static final CALL_FAIL_MEDIA_INIT_FAILED:I = 0xbb9

.field public static final CALL_FAIL_MEDIA_NOT_ACCEPTABLE:I = 0xbbb

.field public static final CALL_FAIL_MEDIA_NO_DATA:I = 0xbba

.field public static final CALL_FAIL_MEDIA_UNSPECIFIED_ERROR:I = 0xbbc

.field public static final CALL_FAIL_MISC:I = 0x3f5

.field public static final CALL_FAIL_NETWORK_UNAVAILABLE:I = 0x3f2

.field public static final CALL_FAIL_NORMAL:I = 0x10

.field public static final CALL_FAIL_SIP_BAD_ADDRESS:I = 0x7d8

.field public static final CALL_FAIL_SIP_BAD_REQUEST:I = 0x7d2

.field public static final CALL_FAIL_SIP_BUSY:I = 0x7d9

.field public static final CALL_FAIL_SIP_Error:I = 0x3f4

.field public static final CALL_FAIL_SIP_FORBIDDEN:I = 0x7d3

.field public static final CALL_FAIL_SIP_GLOBAL_ERROR:I = 0x7e1

.field public static final CALL_FAIL_SIP_NOT_ACCEPTABLE:I = 0x7db

.field public static final CALL_FAIL_SIP_NOT_FOUND:I = 0x7d4

.field public static final CALL_FAIL_SIP_NOT_REACHABLE:I = 0x7dc

.field public static final CALL_FAIL_SIP_NOT_SUPPORTED:I = 0x7d5

.field public static final CALL_FAIL_SIP_REDIRECTED:I = 0x7d1

.field public static final CALL_FAIL_SIP_REQUEST_CANCELLED:I = 0x7da

.field public static final CALL_FAIL_SIP_REQUEST_TIMEOUT:I = 0x7d6

.field public static final CALL_FAIL_SIP_SERVER_INTERNAL_ERROR:I = 0x7dd

.field public static final CALL_FAIL_SIP_SERVER_TIMEOUT:I = 0x7df

.field public static final CALL_FAIL_SIP_SERVICE_UNAVAILABLE:I = 0x7de

.field public static final CALL_FAIL_SIP_TEMPORARILY_UNAVAILABLE:I = 0x7d7

.field public static final CALL_FAIL_SIP_USER_REJECTED:I = 0x7e0

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

.field public static final COMPLETE_FAIL:I = 0x2

.field public static final COMPLETE_SUCCESS:I = 0x1

.field public static final DEACTIVATE:I = 0x2

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final ERASURE:I = 0x5

.field public static final E_CANCELLED:I = 0x7

.field public static final E_GENERIC_FAILURE:I = 0x2

.field public static final E_IMS_DEREGISTERED:I = 0x1d

.field public static final E_INVALID_PARAMETER:I = 0x1b

.field public static final E_NETWORK_NOT_SUPPORTED:I = 0x1e

.field public static final E_RADIO_NOT_AVAILABLE:I = 0x1

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

.field public static final REQUEST_SEND_UI_TTY_MODE:I = 0x27

.field public static final REQUEST_SET_CALL_FORWARD_STATUS:I = 0x17

.field public static final REQUEST_SET_CALL_WAITING:I = 0x19

.field public static final REQUEST_SET_CLIR:I = 0x15

.field public static final REQUEST_SET_COLR:I = 0x22

.field public static final REQUEST_SET_SERVICE_STATUS:I = 0x1e

.field public static final REQUEST_SET_SUPP_SVC_NOTIFICATION:I = 0x1b

.field public static final REQUEST_SET_VT_CALL_QUALITY:I = 0x24

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

.field public static final UNSOL_RADIO_STATE_CHANGED:I = 0xd5

.field public static final UNSOL_REFRESH_CONF_INFO:I = 0xd1

.field public static final UNSOL_RESPONSE:I = 0x3

.field public static final UNSOL_RESPONSE_CALL_STATE_CHANGED:I = 0xc9

.field public static final UNSOL_RESPONSE_HANDOVER:I = 0xd0

.field public static final UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0xcc

.field public static final UNSOL_RINGBACK_TONE:I = 0xcb

.field public static final UNSOL_RSP_BASE:I = 0xc8

.field public static final UNSOL_SRV_STATUS_UPDATE:I = 0xd2

.field public static final UNSOL_SUPP_SVC_NOTIFICATION:I = 0xd3

.field public static final UNSOL_TTY_NOTIFICATION:I = 0xd4

.field public static final VOIP:I = 0x2

.field public static final VT:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
