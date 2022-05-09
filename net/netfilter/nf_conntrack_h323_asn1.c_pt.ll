; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_h323_asn1.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_h323_asn1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.field_t = type { i8, i8, i8, i8, i16, i16, ptr }
%struct.bitstr = type { ptr, ptr, ptr, ptr, i32 }
%struct.Q931 = type { i32, %struct.H323_UserInformation }
%struct.H323_UserInformation = type { i32, %struct.H323_UU_PDU }
%struct.H323_UU_PDU = type { i32, %struct.H323_UU_PDU_h323_message_body, %struct.H323_UU_PDU_h245Control }
%struct.H323_UU_PDU_h323_message_body = type { i32, %union.anon.13 }
%union.anon.13 = type { %struct.Setup_UUIE }
%struct.Setup_UUIE = type { i32, %struct.TransportAddress, %struct.TransportAddress, %struct.TransportAddress, %struct.Setup_UUIE_fastStart }
%struct.TransportAddress = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.TransportAddress_ipAddress }
%struct.TransportAddress_ipAddress = type { i32, i32 }
%struct.Setup_UUIE_fastStart = type { i32, [30 x %struct.OpenLogicalChannel] }
%struct.OpenLogicalChannel = type { i32, %struct.OpenLogicalChannel_forwardLogicalChannelParameters, %struct.OpenLogicalChannel_reverseLogicalChannelParameters, %struct.NetworkAccessParameters }
%struct.OpenLogicalChannel_forwardLogicalChannelParameters = type { i32, %struct.DataType, %struct.OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters }
%struct.DataType = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.DataApplicationCapability }
%struct.DataApplicationCapability = type { i32, %struct.DataApplicationCapability_application }
%struct.DataApplicationCapability_application = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.DataProtocolCapability }
%struct.DataProtocolCapability = type { i32 }
%struct.OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.H2250LogicalChannelParameters }
%struct.H2250LogicalChannelParameters = type { i32, %struct.H245_TransportAddress, %struct.H245_TransportAddress }
%struct.H245_TransportAddress = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.UnicastAddress }
%struct.UnicastAddress = type { i32, %union.anon.7 }
%union.anon.7 = type { %struct.UnicastAddress_iPAddress }
%struct.UnicastAddress_iPAddress = type { i32, i32 }
%struct.OpenLogicalChannel_reverseLogicalChannelParameters = type { i32, %struct.OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters }
%struct.OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters = type { i32, %union.anon.8 }
%union.anon.8 = type { %struct.H2250LogicalChannelParameters }
%struct.NetworkAccessParameters = type { i32, %struct.NetworkAccessParameters_networkAddress }
%struct.NetworkAccessParameters_networkAddress = type { i32, %union.anon.9 }
%union.anon.9 = type { %struct.H245_TransportAddress }
%struct.H323_UU_PDU_h245Control = type { i32, [4 x %struct.MultimediaSystemControlMessage] }
%struct.MultimediaSystemControlMessage = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.RequestMessage }
%struct.RequestMessage = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.OpenLogicalChannel }

@DecodeRasMessage.ras_message = internal constant { %struct.field_t, [20 x i8] } { %struct.field_t { i8 11, i8 5, i8 24, i8 32, i16 6, i16 0, ptr @_RasMessage }, [20 x i8] zeroinitializer }, align 32
@_RasMessage = internal constant { [32 x %struct.field_t], [96 x i8] } { [32 x %struct.field_t] [%struct.field_t { i8 9, i8 4, i8 8, i8 18, i16 6, i16 4, ptr @_GatekeeperRequest }, %struct.field_t { i8 9, i8 2, i8 5, i8 14, i16 6, i16 4, ptr @_GatekeeperConfirm }, %struct.field_t { i8 9, i8 2, i8 5, i8 11, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 10, i8 31, i16 6, i16 4, ptr @_RegistrationRequest }, %struct.field_t { i8 9, i8 3, i8 7, i8 24, i16 6, i16 4, ptr @_RegistrationConfirm }, %struct.field_t { i8 9, i8 2, i8 5, i8 11, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 5, i8 15, i16 6, i16 4, ptr @_UnregistrationRequest }, %struct.field_t { i8 9, i8 1, i8 2, i8 6, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 3, i8 8, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 7, i8 16, i8 34, i16 6, i16 4, ptr @_AdmissionRequest }, %struct.field_t { i8 9, i8 2, i8 6, i8 27, i16 6, i16 4, ptr @_AdmissionConfirm }, %struct.field_t { i8 9, i8 1, i8 3, i8 11, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 7, i8 18, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 3, i8 8, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 4, i8 9, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 6, i8 19, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 2, i8 9, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 3, i8 8, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 5, i8 17, i16 6, i16 4, ptr @_LocationRequest }, %struct.field_t { i8 9, i8 1, i8 4, i8 19, i16 6, i16 4, ptr @_LocationConfirm }, %struct.field_t { i8 9, i8 1, i8 3, i8 10, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 4, i8 15, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 8, i8 16, i16 6, i16 4, ptr @_InfoRequestResponse }, %struct.field_t { i8 9, i8 0, i8 2, i8 7, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 5, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 4, i8 6, i8 6, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 4, i8 9, i8 11, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 4, i8 6, i8 7, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 4, i8 5, i8 5, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 5, i8 7, i8 7, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 8, i8 10, i8 10, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 7, i8 8, i8 8, i16 5, i16 0, ptr null }], [96 x i8] zeroinitializer }, align 32
@DecodeMultimediaSystemControlMessage.multimediasystemcontrolmessage = internal constant { %struct.field_t, [20 x i8] } { %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 6, i16 0, ptr @_MultimediaSystemControlMessage }, [20 x i8] zeroinitializer }, align 32
@_MultimediaSystemControlMessage = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 11, i8 4, i8 11, i8 15, i16 6, i16 4, ptr @_RequestMessage }, %struct.field_t { i8 11, i8 5, i8 19, i8 24, i16 6, i16 4, ptr @_ResponseMessage }, %struct.field_t { i8 11, i8 3, i8 7, i8 12, i16 5, i16 0, ptr null }, %struct.field_t { i8 11, i8 4, i8 14, i8 23, i16 5, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_GatekeeperRequest = internal constant { [18 x %struct.field_t], [40 x i8] } { [18 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 5, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 8, i8 8, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_GatekeeperConfirm = internal constant { [14 x %struct.field_t], [56 x i8] } { [14 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 8, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@_RegistrationRequest = internal constant { [31 x %struct.field_t], [76 x i8] } { [31 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 10, i16 2, i16 4, ptr @_RegistrationRequest_callSignalAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 10, i16 2, i16 128, ptr @_RegistrationRequest_rasAddress }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_RegistrationRequest_terminalAlias }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_VendorIdentifier }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 1, i8 0, i16 18, i16 252, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 1, i8 1, i16 21, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [76 x i8] zeroinitializer }, align 32
@_RegistrationConfirm = internal constant { [24 x %struct.field_t], [64 x i8] } { [24 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 10, i16 2, i16 4, ptr @_RegistrationConfirm_callSignalAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_RegistrationConfirm_terminalAlias }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 1, i8 0, i16 18, i16 128, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 4, i8 8, i16 21, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [64 x i8] zeroinitializer }, align 32
@_UnregistrationRequest = internal constant { [15 x %struct.field_t], [44 x i8] } { [15 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 10, i16 2, i16 4, ptr @_UnregistrationRequest_callSignalAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 5, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@_AdmissionRequest = internal constant { [34 x %struct.field_t], [104 x i8] } { [34 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 4, i16 0, ptr @_CallType }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 20, i16 0, ptr @_CallModel }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_AdmissionRequest_destinationInfo }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_AdmissionRequest_destExtraCallInfo }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr @_AdmissionRequest_srcInfo }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 16, ptr @_TransportAddress }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 8, i8 8, i16 21, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [104 x i8] zeroinitializer }, align 32
@_AdmissionConfirm = internal constant { [27 x %struct.field_t], [92 x i8] } { [27 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_CallModel }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 9, i8 13, i16 5, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 1, i8 1, i16 21, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [92 x i8] zeroinitializer }, align 32
@_LocationRequest = internal constant { [17 x %struct.field_t], [52 x i8] } { [17 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr @_LocationRequest_destinationInfo }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 3, i8 8, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 21, i16 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@_LocationConfirm = internal constant { [19 x %struct.field_t], [60 x i8] } { [19 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 16, ptr @_TransportAddress }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 1, i8 1, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_InfoRequestResponse = internal constant { [16 x %struct.field_t], [32 x i8] } { [16 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 10, i16 2, i16 16, ptr @_InfoRequestResponse_callSignalAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 1, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@_NonStandardParameter = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_NonStandardIdentifier }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_TransportAddress = internal constant { [7 x %struct.field_t], [44 x i8] } { [7 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 2, i16 4, ptr @_TransportAddress_ipAddress }, %struct.field_t { i8 9, i8 0, i8 4, i8 4, i16 4, i16 0, ptr @_TransportAddress_ipSourceRoute }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_TransportAddress_ipxAddress }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 6, i16 4, ptr @_TransportAddress_ip6Address }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 5, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_NonStandardParameter }], [44 x i8] zeroinitializer }, align 32
@_NonStandardIdentifier = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr @_H221NonStandard }], [40 x i8] zeroinitializer }, align 32
@_H221NonStandard = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 3, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_TransportAddress_ipAddress = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 2, i16 4, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_TransportAddress_ipSourceRoute = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr @_TransportAddress_ipSourceRoute_route }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_TransportAddress_ipSourceRoute_routing }], [48 x i8] zeroinitializer }, align 32
@_TransportAddress_ipxAddress = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 6, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 2, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_TransportAddress_ip6Address = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 2, i16 4, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_TransportAddress_ipSourceRoute_route = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }], [20 x i8] zeroinitializer }, align 32
@_TransportAddress_ipSourceRoute_routing = internal constant { [2 x %struct.field_t], [40 x i8] } zeroinitializer, align 32
@_RegistrationRequest_callSignalAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 12, ptr @_TransportAddress }], [20 x i8] zeroinitializer }, align 32
@_RegistrationRequest_rasAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 12, ptr @_TransportAddress }], [20 x i8] zeroinitializer }, align 32
@_EndpointType = internal constant { [10 x %struct.field_t], [40 x i8] } { [10 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 9, i8 2, i8 3, i8 3, i16 20, i16 0, ptr @_VendorIdentifier }, %struct.field_t { i8 9, i8 1, i8 1, i8 1, i16 20, i16 0, ptr @_GatekeeperInfo }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 20, i16 0, ptr @_GatewayInfo }, %struct.field_t { i8 9, i8 1, i8 1, i8 2, i16 20, i16 0, ptr @_McuInfo }, %struct.field_t { i8 9, i8 1, i8 1, i8 1, i16 20, i16 0, ptr @_TerminalInfo }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 5, i8 0, i8 32, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_RegistrationRequest_terminalAlias = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_VendorIdentifier = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr @_H221NonStandard }, %struct.field_t { i8 7, i8 9, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 7, i8 9, i8 1, i8 0, i16 16, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_GatekeeperInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }], [20 x i8] zeroinitializer }, align 32
@_GatewayInfo = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_GatewayInfo_protocol }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }], [40 x i8] zeroinitializer }, align 32
@_McuInfo = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_TerminalInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }], [20 x i8] zeroinitializer }, align 32
@_GatewayInfo_protocol = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 4, i8 9, i8 11, i16 4, i16 0, ptr @_SupportedProtocols }], [20 x i8] zeroinitializer }, align 32
@_SupportedProtocols = internal constant { [11 x %struct.field_t], [60 x i8] } { [11 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_H310Caps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_H320Caps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_H321Caps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_H322Caps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_H323Caps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_H324Caps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_VoiceCaps }, %struct.field_t { i8 9, i8 1, i8 1, i8 3, i16 4, i16 0, ptr @_T120OnlyCaps }, %struct.field_t { i8 9, i8 2, i8 3, i8 3, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 5, i8 5, i16 4, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H310Caps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H320Caps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H321Caps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H322Caps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H323Caps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H324Caps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_VoiceCaps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_T120OnlyCaps = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_AliasAddress = internal constant { [7 x %struct.field_t], [44 x i8] } { [7 x %struct.field_t] [%struct.field_t { i8 6, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 8, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 4, i16 0, ptr null }, %struct.field_t { i8 7, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 5, i8 5, i16 4, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@_RegistrationConfirm_callSignalAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 12, ptr @_TransportAddress }], [20 x i8] zeroinitializer }, align 32
@_RegistrationConfirm_terminalAlias = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_UnregistrationRequest_callSignalAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 12, ptr @_TransportAddress }], [20 x i8] zeroinitializer }, align 32
@_CallType = internal constant { [4 x %struct.field_t], [48 x i8] } zeroinitializer, align 32
@_CallModel = internal constant { [2 x %struct.field_t], [40 x i8] } zeroinitializer, align 32
@_AdmissionRequest_destinationInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_AdmissionRequest_destExtraCallInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_AdmissionRequest_srcInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_LocationRequest_destinationInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_InfoRequestResponse_callSignalAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 6, i16 12, ptr @_TransportAddress }], [20 x i8] zeroinitializer }, align 32
@Decoders = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @decode_nul, ptr @decode_bool, ptr @decode_oid, ptr @decode_int, ptr @decode_enum, ptr @decode_bitstr, ptr @decode_numstr, ptr @decode_octstr, ptr @decode_bmpstr, ptr @decode_seq, ptr @decode_seqof, ptr @decode_choice], [48 x i8] zeroinitializer }, align 32
@_RequestMessage = internal constant { [15 x %struct.field_t], [44 x i8] } { [15 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 5, i8 5, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 6, i16 4, ptr @_OpenLogicalChannel }, %struct.field_t { i8 9, i8 0, i8 2, i8 3, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 3, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 0, i8 0, i16 5, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 8, i8 16, i16 5, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 5, i8 5, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 5, i16 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@_ResponseMessage = internal constant { [24 x %struct.field_t], [64 x i8] } { [24 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 2, i8 5, i16 6, i16 4, ptr @_OpenLogicalChannelAck }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 5, i16 0, ptr null }, %struct.field_t { i8 11, i8 0, i8 1, i8 1, i16 5, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 8, i8 16, i16 5, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 5, i8 5, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 5, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 4, i8 4, i16 5, i16 0, ptr null }], [64 x i8] zeroinitializer }, align 32
@_OpenLogicalChannel = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 6, i16 4, ptr @_OpenLogicalChannel_forwardLogicalChannelParameters }, %struct.field_t { i8 9, i8 1, i8 2, i8 4, i16 22, i16 64, ptr @_OpenLogicalChannel_reverseLogicalChannelParameters }, %struct.field_t { i8 9, i8 2, i8 4, i8 5, i16 22, i16 108, ptr @_NetworkAccessParameters }, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 21, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_OpenLogicalChannel_forwardLogicalChannelParameters = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 6, i8 9, i16 6, i16 4, ptr @_DataType }, %struct.field_t { i8 11, i8 2, i8 3, i8 5, i16 6, i16 20, ptr @_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_OpenLogicalChannel_reverseLogicalChannelParameters = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 6, i8 9, i16 4, i16 0, ptr @_DataType }, %struct.field_t { i8 11, i8 1, i8 2, i8 3, i16 22, i16 4, ptr @_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_NetworkAccessParameters = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 20, i16 0, ptr @_NetworkAccessParameters_distribution }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 6, i16 4, ptr @_NetworkAccessParameters_networkAddress }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 8, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 20, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_DataType = internal constant { [9 x %struct.field_t], [52 x i8] } { [9 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t zeroinitializer, %struct.field_t { i8 11, i8 3, i8 5, i8 6, i16 4, i16 0, ptr @_VideoCapability }, %struct.field_t { i8 11, i8 4, i8 14, i8 22, i16 4, i16 0, ptr @_AudioCapability }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 6, i16 4, ptr @_DataApplicationCapability }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_EncryptionMode }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 9, i8 3, i8 5, i8 5, i16 4, i16 0, ptr @_H222LogicalChannelParameters }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr @_H223LogicalChannelParameters }, %struct.field_t { i8 9, i8 0, i8 5, i8 5, i16 4, i16 0, ptr @_V76LogicalChannelParameters }, %struct.field_t { i8 9, i8 10, i8 11, i8 14, i16 6, i16 4, ptr @_H2250LogicalChannelParameters }, %struct.field_t zeroinitializer], [36 x i8] zeroinitializer }, align 32
@_H245_NonStandardParameter = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardIdentifier }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_VideoCapability = internal constant { [6 x %struct.field_t], [56 x i8] } { [6 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t { i8 9, i8 2, i8 5, i8 6, i16 4, i16 0, ptr @_H261VideoCapability }, %struct.field_t { i8 9, i8 6, i8 17, i8 18, i16 4, i16 0, ptr @_H262VideoCapability }, %struct.field_t { i8 9, i8 7, i8 13, i8 21, i16 4, i16 0, ptr @_H263VideoCapability }, %struct.field_t { i8 9, i8 6, i8 7, i8 8, i16 4, i16 0, ptr @_IS11172VideoCapability }, %struct.field_t { i8 9, i8 5, i8 6, i8 6, i16 4, i16 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@_AudioCapability = internal constant { [22 x %struct.field_t], [88 x i8] } { [22 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_AudioCapability_g7231 }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 9, i8 9, i16 4, i16 0, ptr @_IS11172AudioCapability }, %struct.field_t { i8 9, i8 0, i8 21, i8 21, i16 4, i16 0, ptr @_IS13818AudioCapability }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 3, i8 3, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 5, i8 6, i8 6, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 8, i8 8, i16 4, i16 0, ptr null }], [88 x i8] zeroinitializer }, align 32
@_DataApplicationCapability = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 4, i8 10, i8 14, i16 6, i16 4, ptr @_DataApplicationCapability_application }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_EncryptionMode = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t zeroinitializer], [40 x i8] zeroinitializer }, align 32
@_H245_NonStandardIdentifier = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_H245_NonStandardIdentifier_h221NonStandard }], [40 x i8] zeroinitializer }, align 32
@_H245_NonStandardIdentifier_h221NonStandard = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 3, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H261VideoCapability = internal constant { [6 x %struct.field_t], [56 x i8] } { [6 x %struct.field_t] [%struct.field_t { i8 3, i8 2, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 2, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@_H262VideoCapability = internal constant { [18 x %struct.field_t], [40 x i8] } { [18 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 4, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_H263VideoCapability = internal constant { [21 x %struct.field_t], [36 x i8] } { [21 x %struct.field_t] [%struct.field_t { i8 3, i8 5, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 5, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 5, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 5, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 5, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 5, i8 29, i8 31, i16 20, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_IS11172VideoCapability = internal constant { [8 x %struct.field_t], [32 x i8] } { [8 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 4, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@_AudioCapability_g7231 = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 3, i8 9, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_IS11172AudioCapability = internal constant { [9 x %struct.field_t], [52 x i8] } { [9 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@_IS13818AudioCapability = internal constant { [21 x %struct.field_t], [36 x i8] } { [21 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_DataApplicationCapability_application = internal constant { [14 x %struct.field_t], [56 x i8] } { [14 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 6, i16 4, ptr @_DataProtocolCapability }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_DataApplicationCapability_application_t84 }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_DataApplicationCapability_application_nlpid }, %struct.field_t zeroinitializer, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 5, i8 6, i8 6, i16 4, i16 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@_DataProtocolCapability = internal constant { [14 x %struct.field_t], [56 x i8] } { [14 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr null }, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer], [56 x i8] zeroinitializer }, align 32
@_DataApplicationCapability_application_t84 = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 0, i16 0, ptr @_T84Profile }], [40 x i8] zeroinitializer }, align 32
@_DataApplicationCapability_application_nlpid = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 14, i16 4, i16 0, ptr @_DataProtocolCapability }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_T84Profile = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t zeroinitializer, %struct.field_t { i8 9, i8 0, i8 19, i8 19, i16 4, i16 0, ptr @_T84Profile_t84Restricted }], [40 x i8] zeroinitializer }, align 32
@_T84Profile_t84Restricted = internal constant { [19 x %struct.field_t], [60 x i8] } { [19 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H222LogicalChannelParameters = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_H223LogicalChannelParameters = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 6, i8 9, i16 4, i16 0, ptr @_H223LogicalChannelParameters_adaptationLayerType }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_V76LogicalChannelParameters = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr @_V76HDLCParameters }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_V76LogicalChannelParameters_suspendResume }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_V76LogicalChannelParameters_mode }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr @_V75Parameters }], [36 x i8] zeroinitializer }, align 32
@_H2250LogicalChannelParameters = internal constant { [14 x %struct.field_t], [56 x i8] } { [14 x %struct.field_t] [%struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_H2250LogicalChannelParameters_nonStandard }, %struct.field_t { i8 3, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 8, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 22, i16 4, ptr @_H245_TransportAddress }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 22, i16 20, ptr @_H245_TransportAddress }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 3, i8 5, i8 96, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 11, i8 0, i8 1, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 1, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 20, i16 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@_H223LogicalChannelParameters_adaptationLayerType = internal constant { [9 x %struct.field_t], [52 x i8] } { [9 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H223LogicalChannelParameters_adaptationLayerType_al3 }, %struct.field_t { i8 9, i8 0, i8 7, i8 8, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 5, i8 6, i16 4, i16 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@_H223LogicalChannelParameters_adaptationLayerType_al3 = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 3, i8 2, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_V76HDLCParameters = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_CRCLength }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_V76LogicalChannelParameters_suspendResume = internal constant { [3 x %struct.field_t], [60 x i8] } zeroinitializer, align 32
@_V76LogicalChannelParameters_mode = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr @_V76LogicalChannelParameters_mode_eRM }, %struct.field_t zeroinitializer], [40 x i8] zeroinitializer }, align 32
@_V75Parameters = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [20 x i8] zeroinitializer }, align 32
@_CRCLength = internal constant { [3 x %struct.field_t], [60 x i8] } zeroinitializer, align 32
@_V76LogicalChannelParameters_mode_eRM = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 3, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_V76LogicalChannelParameters_mode_eRM_recovery }], [40 x i8] zeroinitializer }, align 32
@_V76LogicalChannelParameters_mode_eRM_recovery = internal constant { [3 x %struct.field_t], [60 x i8] } zeroinitializer, align 32
@_H2250LogicalChannelParameters_nonStandard = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }], [20 x i8] zeroinitializer }, align 32
@_H245_TransportAddress = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 5, i8 7, i16 6, i16 4, ptr @_UnicastAddress }, %struct.field_t { i8 11, i8 1, i8 2, i8 4, i16 4, i16 0, ptr @_MulticastAddress }], [40 x i8] zeroinitializer }, align 32
@_UnicastAddress = internal constant { [7 x %struct.field_t], [44 x i8] } { [7 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 6, i16 4, ptr @_UnicastAddress_iPAddress }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 4, i16 0, ptr @_UnicastAddress_iPXAddress }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 6, i16 4, ptr @_UnicastAddress_iP6Address }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 4, i8 4, i16 4, i16 0, ptr @_UnicastAddress_iPSourceRouteAddress }, %struct.field_t { i8 7, i8 5, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@_MulticastAddress = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr @_MulticastAddress_iPAddress }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr @_MulticastAddress_iP6Address }, %struct.field_t { i8 7, i8 5, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_UnicastAddress_iPAddress = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 2, i16 4, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_UnicastAddress_iPXAddress = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 6, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 2, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_UnicastAddress_iP6Address = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 2, i16 4, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_UnicastAddress_iPSourceRouteAddress = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 0, i16 0, ptr @_UnicastAddress_iPSourceRouteAddress_routing }, %struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 0, i16 0, ptr @_UnicastAddress_iPSourceRouteAddress_route }], [48 x i8] zeroinitializer }, align 32
@_UnicastAddress_iPSourceRouteAddress_routing = internal constant { [2 x %struct.field_t], [40 x i8] } zeroinitializer, align 32
@_UnicastAddress_iPSourceRouteAddress_route = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }], [20 x i8] zeroinitializer }, align 32
@_MulticastAddress_iPAddress = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 4, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_MulticastAddress_iP6Address = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr @_H223LogicalChannelParameters }, %struct.field_t { i8 9, i8 0, i8 5, i8 5, i16 4, i16 0, ptr @_V76LogicalChannelParameters }, %struct.field_t { i8 9, i8 10, i8 11, i8 14, i16 6, i16 4, ptr @_H2250LogicalChannelParameters }], [60 x i8] zeroinitializer }, align 32
@_NetworkAccessParameters_distribution = internal constant { [2 x %struct.field_t], [40 x i8] } zeroinitializer, align 32
@_NetworkAccessParameters_networkAddress = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_Q2931Address }, %struct.field_t { i8 6, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 6, i16 4, ptr @_H245_TransportAddress }], [60 x i8] zeroinitializer }, align 32
@_Q2931Address = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 4, i16 0, ptr @_Q2931Address_address }, %struct.field_t { i8 7, i8 5, i8 1, i8 0, i16 16, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_Q2931Address_address = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 6, i8 4, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 5, i8 1, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_OpenLogicalChannelAck = internal constant { [5 x %struct.field_t], [36 x i8] } { [5 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 3, i8 4, i16 22, i16 4, ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters }, %struct.field_t { i8 9, i8 2, i8 4, i8 5, i16 22, i16 48, ptr @_NetworkAccessParameters }, %struct.field_t { i8 11, i8 0, i8 1, i8 1, i16 22, i16 72, ptr @_OpenLogicalChannelAck_forwardMultiplexAckParameters }, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 21, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_OpenLogicalChannelAck_reverseLogicalChannelParameters = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 0, i8 1, i8 2, i16 22, i16 4, ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters }, %struct.field_t { i8 3, i8 10, i8 1, i8 0, i16 16, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_OpenLogicalChannelAck_forwardMultiplexAckParameters = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 5, i8 5, i8 7, i16 6, i16 4, ptr @_H2250LogicalChannelAckParameters }], [20 x i8] zeroinitializer }, align 32
@_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 9, i8 3, i8 5, i8 5, i16 4, i16 0, ptr @_H222LogicalChannelParameters }, %struct.field_t { i8 9, i8 10, i8 11, i8 14, i16 6, i16 4, ptr @_H2250LogicalChannelParameters }], [40 x i8] zeroinitializer }, align 32
@_H2250LogicalChannelAckParameters = internal constant { [7 x %struct.field_t], [44 x i8] } { [7 x %struct.field_t] [%struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_H2250LogicalChannelAckParameters_nonStandard }, %struct.field_t { i8 3, i8 8, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 22, i16 4, ptr @_H245_TransportAddress }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 22, i16 20, ptr @_H245_TransportAddress }, %struct.field_t { i8 3, i8 5, i8 96, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 16, i16 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@_H2250LogicalChannelAckParameters_nonStandard = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_H245_NonStandardParameter }], [20 x i8] zeroinitializer }, align 32
@DecodeH323_UserInformation.h323_userinformation = internal constant { %struct.field_t, [20 x i8] } { %struct.field_t { i8 9, i8 1, i8 2, i8 2, i16 6, i16 0, ptr @_H323_UserInformation }, [20 x i8] zeroinitializer }, align 32
@_H323_UserInformation = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 2, i8 11, i16 6, i16 4, ptr @_H323_UU_PDU }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 21, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_H323_UU_PDU = internal constant { [11 x %struct.field_t], [60 x i8] } { [11 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 7, i8 13, i16 6, i16 4, ptr @_H323_UU_PDU_h323_message_body }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 4, i16 18, i16 4012, ptr @_H323_UU_PDU_h245Control }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 21, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 21, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 21, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 17, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_H323_UU_PDU_h323_message_body = internal constant { [13 x %struct.field_t], [36 x i8] } { [13 x %struct.field_t] [%struct.field_t { i8 9, i8 7, i8 13, i8 39, i16 6, i16 4, ptr @_Setup_UUIE }, %struct.field_t { i8 9, i8 1, i8 3, i8 12, i16 6, i16 4, ptr @_CallProceeding_UUIE }, %struct.field_t { i8 9, i8 1, i8 4, i8 19, i16 6, i16 4, ptr @_Connect_UUIE }, %struct.field_t { i8 9, i8 1, i8 3, i8 17, i16 6, i16 4, ptr @_Alerting_UUIE }, %struct.field_t { i8 9, i8 0, i8 1, i8 7, i16 4, i16 0, ptr @_Information_UUIE }, %struct.field_t { i8 9, i8 1, i8 2, i8 11, i16 4, i16 0, ptr @_ReleaseComplete_UUIE }, %struct.field_t { i8 9, i8 3, i8 5, i8 21, i16 6, i16 4, ptr @_Facility_UUIE }, %struct.field_t { i8 9, i8 5, i8 8, i8 11, i16 6, i16 4, ptr @_Progress_UUIE }, %struct.field_t zeroinitializer, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 4, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 4, i8 4, i16 4, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_H323_UU_PDU_h245Control = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 14, i16 140, ptr @_MultimediaSystemControlMessage }], [20 x i8] zeroinitializer }, align 32
@_Setup_UUIE = internal constant { [39 x %struct.field_t], [108 x i8] } { [39 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Setup_UUIE_sourceAddress }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Setup_UUIE_destinationAddress }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 16, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Setup_UUIE_destExtraCallInfo }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Setup_UUIE_destExtraCRV }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 5, i16 4, i16 0, ptr @_Setup_UUIE_conferenceGoal }, %struct.field_t { i8 9, i8 0, i8 8, i8 8, i16 20, i16 0, ptr @_QseriesOptions }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 4, i16 0, ptr @_CallType }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 28, ptr @_TransportAddress }, %struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 18, i16 40, ptr @_Setup_UUIE_fastStart }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 17, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 4, i8 2, i8 0, i8 0, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }], [108 x i8] zeroinitializer }, align 32
@_CallProceeding_UUIE = internal constant { [12 x %struct.field_t], [48 x i8] } { [12 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 18, i16 16, ptr @_CallProceeding_UUIE_fastStart }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 20, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_Connect_UUIE = internal constant { [19 x %struct.field_t], [60 x i8] } { [19 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 18, i16 16, ptr @_Connect_UUIE_fastStart }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 4, i8 2, i8 0, i8 0, i16 20, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 20, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_Alerting_UUIE = internal constant { [17 x %struct.field_t], [52 x i8] } { [17 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 18, i16 16, ptr @_Alerting_UUIE_fastStart }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 4, i8 2, i8 0, i8 0, i16 20, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 20, i16 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@_Information_UUIE = internal constant { [7 x %struct.field_t], [44 x i8] } { [7 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 16, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 20, i16 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@_ReleaseComplete_UUIE = internal constant { [11 x %struct.field_t], [60 x i8] } { [11 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 4, i8 12, i8 22, i16 20, i16 0, ptr @_ReleaseCompleteReason }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 4, i8 2, i8 0, i8 0, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 2, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 20, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_Facility_UUIE = internal constant { [21 x %struct.field_t], [36 x i8] } { [21 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Facility_UUIE_alternativeAliasAddress }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 11, i16 6, i16 16, ptr @_FacilityReason }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 20, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 20, ptr @_TransportAddress }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 18, i16 32, ptr @_Facility_UUIE_fastStart }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 3, i8 3, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 3, i8 4, i8 4, i16 20, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 20, i16 0, ptr null }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 20, i16 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@_Progress_UUIE = internal constant { [11 x %struct.field_t], [60 x i8] } { [11 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 6, i8 8, i8 10, i16 4, i16 0, ptr @_EndpointType }, %struct.field_t { i8 11, i8 3, i8 7, i8 7, i16 22, i16 4, ptr @_TransportAddress }, %struct.field_t { i8 9, i8 0, i8 1, i8 1, i16 4, i16 0, ptr @_CallIdentifier }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 20, i16 0, ptr @_H245Security }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Progress_UUIE_tokens }, %struct.field_t { i8 10, i8 12, i8 0, i8 0, i16 16, i16 0, ptr @_Progress_UUIE_cryptoTokens }, %struct.field_t { i8 10, i8 12, i8 0, i8 30, i16 18, i16 16, ptr @_Progress_UUIE_fastStart }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 0, i8 0, i8 0, i8 0, i16 16, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_Setup_UUIE_sourceAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_Setup_UUIE_destinationAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_Setup_UUIE_destExtraCallInfo = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_Setup_UUIE_destExtraCRV = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 3, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [20 x i8] zeroinitializer }, align 32
@_Setup_UUIE_conferenceGoal = internal constant { [5 x %struct.field_t], [36 x i8] } zeroinitializer, align 32
@_QseriesOptions = internal constant { [8 x %struct.field_t], [32 x i8] } { [8 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 4, i16 0, ptr @_Q954Details }], [32 x i8] zeroinitializer }, align 32
@_Setup_UUIE_fastStart = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 14, i16 132, ptr @_OpenLogicalChannel }], [20 x i8] zeroinitializer }, align 32
@_Q954Details = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 1, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_CallProceeding_UUIE_fastStart = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 14, i16 132, ptr @_OpenLogicalChannel }], [20 x i8] zeroinitializer }, align 32
@_Connect_UUIE_fastStart = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 14, i16 132, ptr @_OpenLogicalChannel }], [20 x i8] zeroinitializer }, align 32
@_Alerting_UUIE_fastStart = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 14, i16 132, ptr @_OpenLogicalChannel }], [20 x i8] zeroinitializer }, align 32
@_ReleaseCompleteReason = internal constant { [22 x %struct.field_t], [88 x i8] } { [22 x %struct.field_t] [%struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer], [88 x i8] zeroinitializer }, align 32
@_Facility_UUIE_alternativeAliasAddress = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }], [20 x i8] zeroinitializer }, align 32
@_FacilityReason = internal constant { [11 x %struct.field_t], [60 x i8] } zeroinitializer, align 32
@_Facility_UUIE_fastStart = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 14, i16 132, ptr @_OpenLogicalChannel }], [20 x i8] zeroinitializer }, align 32
@_CallIdentifier = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 0, i16 0, ptr null }], [20 x i8] zeroinitializer }, align 32
@_H245Security = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_NonStandardParameter }, %struct.field_t zeroinitializer, %struct.field_t { i8 9, i8 1, i8 4, i8 4, i16 4, i16 0, ptr @_SecurityCapabilities }, %struct.field_t { i8 9, i8 1, i8 4, i8 4, i16 4, i16 0, ptr @_SecurityCapabilities }], [48 x i8] zeroinitializer }, align 32
@_Progress_UUIE_tokens = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 8, i8 9, i8 11, i16 4, i16 0, ptr @_ClearToken }], [20 x i8] zeroinitializer }, align 32
@_Progress_UUIE_cryptoTokens = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 11, i8 3, i8 8, i8 8, i16 4, i16 0, ptr @_CryptoH323Token }], [20 x i8] zeroinitializer }, align 32
@_Progress_UUIE_fastStart = internal constant { [1 x %struct.field_t], [20 x i8] } { [1 x %struct.field_t] [%struct.field_t { i8 9, i8 1, i8 3, i8 5, i16 14, i16 132, ptr @_OpenLogicalChannel }], [20 x i8] zeroinitializer }, align 32
@_SecurityCapabilities = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_NonStandardParameter }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_SecurityServiceMode }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_SecurityServiceMode }, %struct.field_t { i8 11, i8 2, i8 3, i8 3, i16 4, i16 0, ptr @_SecurityServiceMode }], [48 x i8] zeroinitializer }, align 32
@_SecurityServiceMode = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_NonStandardParameter }, %struct.field_t zeroinitializer, %struct.field_t zeroinitializer], [60 x i8] zeroinitializer }, align 32
@_ClearToken = internal constant { [11 x %struct.field_t], [60 x i8] } { [11 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 20, i16 0, ptr @_DHset }, %struct.field_t { i8 7, i8 7, i8 8, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 3, i8 13, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 20, i16 0, ptr @_TypedCertificate }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 16, i16 0, ptr @_H235_NonStandardParameter }, %struct.field_t { i8 11, i8 1, i8 2, i8 2, i16 20, i16 0, ptr null }, %struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 16, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_DHset = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 5, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 5, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 5, i8 10, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_TypedCertificate = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_H235_NonStandardParameter = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@_CryptoH323Token = internal constant { [8 x %struct.field_t], [32 x i8] } { [8 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoH323Token_cryptoEPPwdHash }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoH323Token_cryptoGKPwdHash }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoH323Token_cryptoEPPwdEncr }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoH323Token_cryptoGKPwdEncr }, %struct.field_t { i8 9, i8 0, i8 4, i8 4, i16 0, i16 0, ptr @_CryptoH323Token_cryptoEPCert }, %struct.field_t { i8 9, i8 0, i8 4, i8 4, i16 0, i16 0, ptr @_CryptoH323Token_cryptoGKCert }, %struct.field_t { i8 9, i8 0, i8 4, i8 4, i16 0, i16 0, ptr @_CryptoH323Token_cryptoFastStart }, %struct.field_t { i8 11, i8 2, i8 4, i8 4, i16 4, i16 0, ptr @_CryptoToken }], [32 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoEPPwdHash = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 11, i8 1, i8 2, i8 7, i16 4, i16 0, ptr @_AliasAddress }, %struct.field_t { i8 3, i8 11, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoH323Token_cryptoEPPwdHash_token }], [60 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoGKPwdHash = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 8, i8 7, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 3, i8 11, i8 1, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoH323Token_cryptoGKPwdHash_token }], [60 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoEPPwdEncr = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoGKPwdEncr = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoEPCert = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 8, i8 9, i8 11, i16 12, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoGKCert = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 8, i8 9, i8 11, i16 12, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoFastStart = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 8, i8 9, i8 11, i16 12, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_CryptoToken = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_CryptoToken_cryptoEncryptedToken }, %struct.field_t { i8 9, i8 0, i8 2, i8 2, i16 0, i16 0, ptr @_CryptoToken_cryptoSignedToken }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoToken_cryptoHashedToken }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoToken_cryptoPwdEncr }], [48 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoEPPwdHash_token = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_Params = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 3, i8 13, i8 0, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 8, i8 0, i16 16, i16 0, ptr null }, %struct.field_t { i8 7, i8 0, i8 16, i8 0, i16 16, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_CryptoH323Token_cryptoGKPwdHash_token = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoEncryptedToken = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoToken_cryptoEncryptedToken_token }], [40 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoSignedToken = internal constant { [2 x %struct.field_t], [40 x i8] } { [2 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 0, i8 4, i8 4, i16 0, i16 0, ptr @_CryptoToken_cryptoSignedToken_token }], [40 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoHashedToken = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 8, i8 9, i8 11, i16 4, i16 0, ptr @_ClearToken }, %struct.field_t { i8 9, i8 0, i8 3, i8 3, i16 0, i16 0, ptr @_CryptoToken_cryptoHashedToken_token }], [60 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoPwdEncr = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoEncryptedToken_token = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 7, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoSignedToken_token = internal constant { [4 x %struct.field_t], [48 x i8] } { [4 x %struct.field_t] [%struct.field_t { i8 9, i8 8, i8 9, i8 11, i16 12, i16 0, ptr null }, %struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@_CryptoToken_cryptoHashedToken_token = internal constant { [3 x %struct.field_t], [60 x i8] } { [3 x %struct.field_t] [%struct.field_t { i8 2, i8 9, i8 0, i8 0, i16 0, i16 0, ptr null }, %struct.field_t { i8 9, i8 2, i8 2, i8 3, i16 4, i16 0, ptr @_Params }, %struct.field_t { i8 5, i8 12, i8 0, i8 0, i16 0, i16 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 12]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 12]
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"ras_message\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 823, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"_RasMessage\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1875, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"multimediasystemcontrolmessage\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 857, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"_MultimediaSystemControlMessage\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1471, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"_GatekeeperRequest\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1515, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"_GatekeeperConfirm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1539, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"_RegistrationRequest\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1575, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"_RegistrationConfirm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1633, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"_UnregistrationRequest\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1675, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"_AdmissionRequest\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1713, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"_AdmissionConfirm\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1757, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"_LocationRequest\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1796, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"_LocationConfirm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1820, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"_InfoRequestResponse\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1852, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"_NonStandardParameter\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 55, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"_TransportAddress\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 61, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"_NonStandardIdentifier\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 49, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"_H221NonStandard\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 43, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"_TransportAddress_ipAddress\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 7, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [32 x i8] c"_TransportAddress_ipSourceRoute\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 22, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"_TransportAddress_ipxAddress\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 31, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [29 x i8] c"_TransportAddress_ip6Address\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 37, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [38 x i8] c"_TransportAddress_ipSourceRoute_route\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 13, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [40 x i8] c"_TransportAddress_ipSourceRoute_routing\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 17, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [39 x i8] c"_RegistrationRequest_callSignalAddress\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1559, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant [32 x i8] c"_RegistrationRequest_rasAddress\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1565, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"_EndpointType\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 195, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant [35 x i8] c"_RegistrationRequest_terminalAlias\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1571, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"_VendorIdentifier\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 91, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"_GatekeeperInfo\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 97, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"_GatewayInfo\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 177, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"_McuInfo\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 184, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"_TerminalInfo\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 190, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"_GatewayInfo_protocol\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 173, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"_SupportedProtocols\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 158, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant [10 x i8] c"_H310Caps\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 102, i32 29 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"_H320Caps\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 109, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"_H321Caps\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 116, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"_H322Caps\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 123, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"_H323Caps\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 130, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant [10 x i8] c"_H324Caps\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 137, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"_VoiceCaps\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 144, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"_T120OnlyCaps\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 151, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"_AliasAddress\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 77, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant [39 x i8] c"_RegistrationConfirm_callSignalAddress\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1623, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant [35 x i8] c"_RegistrationConfirm_terminalAlias\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1629, i32 29 }
@___asan_gen_.143 = private unnamed_addr constant [41 x i8] c"_UnregistrationRequest_callSignalAddress\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1669, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"_CallType\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 249, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant [11 x i8] c"_CallModel\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1696, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [34 x i8] c"_AdmissionRequest_destinationInfo\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1701, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [36 x i8] c"_AdmissionRequest_destExtraCallInfo\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1705, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"_AdmissionRequest_srcInfo\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1709, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant [33 x i8] c"_LocationRequest_destinationInfo\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1792, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant [39 x i8] c"_InfoRequestResponse_callSignalAddress\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1846, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"Decoders\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 125, i32 24 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"_RequestMessage\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1354, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"_ResponseMessage\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1435, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"_OpenLogicalChannel\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 816, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant [52 x i8] c"_OpenLogicalChannel_forwardLogicalChannelParameters\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 744, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant [52 x i8] c"_OpenLogicalChannel_reverseLogicalChannelParameters\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 769, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"_NetworkAccessParameters\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 804, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant [10 x i8] c"_DataType\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 524, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant [72 x i8] c"_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 730, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"_H245_NonStandardParameter\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 268, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"_VideoCapability\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 343, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"_AudioCapability\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 398, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant [27 x i8] c"_DataApplicationCapability\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 511, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"_EncryptionMode\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 518, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant [28 x i8] c"_H245_NonStandardIdentifier\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 262, i32 29 }
@___asan_gen_.212 = private unnamed_addr constant [44 x i8] c"_H245_NonStandardIdentifier_h221NonStandard\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 256, i32 29 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"_H261VideoCapability\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 274, i32 29 }
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"_H262VideoCapability\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 284, i32 29 }
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"_H263VideoCapability\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 306, i32 29 }
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"_IS11172VideoCapability\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 332, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant [23 x i8] c"_AudioCapability_g7231\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 357, i32 29 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"_IS11172AudioCapability\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 362, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant [24 x i8] c"_IS13818AudioCapability\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 374, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant [39 x i8] c"_DataApplicationCapability_application\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 484, i32 29 }
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"_DataProtocolCapability\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 426, i32 29 }
@___asan_gen_.242 = private unnamed_addr constant [43 x i8] c"_DataApplicationCapability_application_t84\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 472, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant [45 x i8] c"_DataApplicationCapability_application_nlpid\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 478, i32 29 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"_T84Profile\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 466, i32 29 }
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"_T84Profile_t84Restricted\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 444, i32 29 }
@___asan_gen_.254 = private unnamed_addr constant [30 x i8] c"_H222LogicalChannelParameters\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 540, i32 29 }
@___asan_gen_.257 = private unnamed_addr constant [30 x i8] c"_H223LogicalChannelParameters\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 567, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant [29 x i8] c"_V76LogicalChannelParameters\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 613, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant [31 x i8] c"_H2250LogicalChannelParameters\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 704, i32 29 }
@___asan_gen_.266 = private unnamed_addr constant [50 x i8] c"_H223LogicalChannelParameters_adaptationLayerType\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 553, i32 29 }
@___asan_gen_.269 = private unnamed_addr constant [54 x i8] c"_H223LogicalChannelParameters_adaptationLayerType_al3\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 548, i32 29 }
@___asan_gen_.272 = private unnamed_addr constant [19 x i8] c"_V76HDLCParameters\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 579, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant [43 x i8] c"_V76LogicalChannelParameters_suspendResume\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 585, i32 29 }
@___asan_gen_.278 = private unnamed_addr constant [34 x i8] c"_V76LogicalChannelParameters_mode\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 603, i32 29 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"_V75Parameters\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 609, i32 29 }
@___asan_gen_.284 = private unnamed_addr constant [11 x i8] c"_CRCLength\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 573, i32 29 }
@___asan_gen_.287 = private unnamed_addr constant [38 x i8] c"_V76LogicalChannelParameters_mode_eRM\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 597, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant [47 x i8] c"_V76LogicalChannelParameters_mode_eRM_recovery\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 591, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant [43 x i8] c"_H2250LogicalChannelParameters_nonStandard\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 624, i32 29 }
@___asan_gen_.296 = private unnamed_addr constant [23 x i8] c"_H245_TransportAddress\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 697, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"_UnicastAddress\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 664, i32 29 }
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"_MulticastAddress\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 688, i32 29 }
@___asan_gen_.305 = private unnamed_addr constant [26 x i8] c"_UnicastAddress_iPAddress\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 628, i32 29 }
@___asan_gen_.308 = private unnamed_addr constant [27 x i8] c"_UnicastAddress_iPXAddress\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 634, i32 29 }
@___asan_gen_.311 = private unnamed_addr constant [27 x i8] c"_UnicastAddress_iP6Address\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 640, i32 29 }
@___asan_gen_.314 = private unnamed_addr constant [37 x i8] c"_UnicastAddress_iPSourceRouteAddress\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 655, i32 29 }
@___asan_gen_.317 = private unnamed_addr constant [45 x i8] c"_UnicastAddress_iPSourceRouteAddress_routing\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 646, i32 29 }
@___asan_gen_.320 = private unnamed_addr constant [43 x i8] c"_UnicastAddress_iPSourceRouteAddress_route\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 651, i32 29 }
@___asan_gen_.323 = private unnamed_addr constant [28 x i8] c"_MulticastAddress_iPAddress\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 678, i32 29 }
@___asan_gen_.326 = private unnamed_addr constant [29 x i8] c"_MulticastAddress_iP6Address\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 683, i32 29 }
@___asan_gen_.329 = private unnamed_addr constant [72 x i8] c"_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 758, i32 29 }
@___asan_gen_.332 = private unnamed_addr constant [38 x i8] c"_NetworkAccessParameters_distribution\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 780, i32 29 }
@___asan_gen_.335 = private unnamed_addr constant [40 x i8] c"_NetworkAccessParameters_networkAddress\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 796, i32 29 }
@___asan_gen_.338 = private unnamed_addr constant [14 x i8] c"_Q2931Address\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 790, i32 29 }
@___asan_gen_.341 = private unnamed_addr constant [22 x i8] c"_Q2931Address_address\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 785, i32 29 }
@___asan_gen_.344 = private unnamed_addr constant [23 x i8] c"_OpenLogicalChannelAck\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1419, i32 29 }
@___asan_gen_.347 = private unnamed_addr constant [55 x i8] c"_OpenLogicalChannelAck_reverseLogicalChannelParameters\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1383, i32 29 }
@___asan_gen_.350 = private unnamed_addr constant [53 x i8] c"_OpenLogicalChannelAck_forwardMultiplexAckParameters\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1412, i32 29 }
@___asan_gen_.353 = private unnamed_addr constant [75 x i8] c"_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1374, i32 29 }
@___asan_gen_.356 = private unnamed_addr constant [34 x i8] c"_H2250LogicalChannelAckParameters\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1397, i32 29 }
@___asan_gen_.359 = private unnamed_addr constant [46 x i8] c"_H2250LogicalChannelAckParameters_nonStandard\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1393, i32 29 }
@___asan_gen_.362 = private unnamed_addr constant [21 x i8] c"h323_userinformation\00", align 1
@___asan_gen_.363 = private constant [42 x i8] c"../net/netfilter/nf_conntrack_h323_asn1.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 839, i32 30 }
@___asan_gen_.365 = private unnamed_addr constant [22 x i8] c"_H323_UserInformation\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1509, i32 29 }
@___asan_gen_.368 = private unnamed_addr constant [13 x i8] c"_H323_UU_PDU\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1488, i32 29 }
@___asan_gen_.371 = private unnamed_addr constant [31 x i8] c"_H323_UU_PDU_h323_message_body\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1330, i32 29 }
@___asan_gen_.374 = private unnamed_addr constant [25 x i8] c"_H323_UU_PDU_h245Control\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1481, i32 29 }
@___asan_gen_.377 = private unnamed_addr constant [12 x i8] c"_Setup_UUIE\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 837, i32 29 }
@___asan_gen_.380 = private unnamed_addr constant [21 x i8] c"_CallProceeding_UUIE\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 902, i32 29 }
@___asan_gen_.383 = private unnamed_addr constant [14 x i8] c"_Connect_UUIE\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 928, i32 29 }
@___asan_gen_.386 = private unnamed_addr constant [15 x i8] c"_Alerting_UUIE\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 962, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant [18 x i8] c"_Information_UUIE\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 988, i32 29 }
@___asan_gen_.392 = private unnamed_addr constant [22 x i8] c"_ReleaseComplete_UUIE\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1024, i32 29 }
@___asan_gen_.395 = private unnamed_addr constant [15 x i8] c"_Facility_UUIE\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1065, i32 29 }
@___asan_gen_.398 = private unnamed_addr constant [15 x i8] c"_Progress_UUIE\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1309, i32 29 }
@___asan_gen_.401 = private unnamed_addr constant [26 x i8] c"_Setup_UUIE_sourceAddress\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 87, i32 29 }
@___asan_gen_.404 = private unnamed_addr constant [31 x i8] c"_Setup_UUIE_destinationAddress\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 212, i32 29 }
@___asan_gen_.407 = private unnamed_addr constant [30 x i8] c"_Setup_UUIE_destExtraCallInfo\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 216, i32 29 }
@___asan_gen_.410 = private unnamed_addr constant [25 x i8] c"_Setup_UUIE_destExtraCRV\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 220, i32 29 }
@___asan_gen_.413 = private unnamed_addr constant [27 x i8] c"_Setup_UUIE_conferenceGoal\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 224, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant [16 x i8] c"_QseriesOptions\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 238, i32 29 }
@___asan_gen_.419 = private unnamed_addr constant [22 x i8] c"_Setup_UUIE_fastStart\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 831, i32 29 }
@___asan_gen_.422 = private unnamed_addr constant [13 x i8] c"_Q954Details\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 233, i32 29 }
@___asan_gen_.425 = private unnamed_addr constant [31 x i8] c"_CallProceeding_UUIE_fastStart\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 896, i32 29 }
@___asan_gen_.428 = private unnamed_addr constant [24 x i8] c"_Connect_UUIE_fastStart\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 922, i32 29 }
@___asan_gen_.431 = private unnamed_addr constant [25 x i8] c"_Alerting_UUIE_fastStart\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 956, i32 29 }
@___asan_gen_.434 = private unnamed_addr constant [23 x i8] c"_ReleaseCompleteReason\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 998, i32 29 }
@___asan_gen_.437 = private unnamed_addr constant [39 x i8] c"_Facility_UUIE_alternativeAliasAddress\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1041, i32 29 }
@___asan_gen_.440 = private unnamed_addr constant [16 x i8] c"_FacilityReason\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1045, i32 29 }
@___asan_gen_.443 = private unnamed_addr constant [25 x i8] c"_Facility_UUIE_fastStart\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1059, i32 29 }
@___asan_gen_.446 = private unnamed_addr constant [16 x i8] c"_CallIdentifier\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1096, i32 29 }
@___asan_gen_.449 = private unnamed_addr constant [14 x i8] c"_H245Security\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1117, i32 29 }
@___asan_gen_.452 = private unnamed_addr constant [22 x i8] c"_Progress_UUIE_tokens\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1156, i32 29 }
@___asan_gen_.455 = private unnamed_addr constant [28 x i8] c"_Progress_UUIE_cryptoTokens\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1299, i32 29 }
@___asan_gen_.458 = private unnamed_addr constant [25 x i8] c"_Progress_UUIE_fastStart\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1303, i32 29 }
@___asan_gen_.461 = private unnamed_addr constant [22 x i8] c"_SecurityCapabilities\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1106, i32 29 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c"_SecurityServiceMode\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1100, i32 29 }
@___asan_gen_.467 = private unnamed_addr constant [12 x i8] c"_ClearToken\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1140, i32 29 }
@___asan_gen_.470 = private unnamed_addr constant [7 x i8] c"_DHset\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1124, i32 29 }
@___asan_gen_.473 = private unnamed_addr constant [18 x i8] c"_TypedCertificate\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1130, i32 29 }
@___asan_gen_.476 = private unnamed_addr constant [27 x i8] c"_H235_NonStandardParameter\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1135, i32 29 }
@___asan_gen_.479 = private unnamed_addr constant [17 x i8] c"_CryptoH323Token\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1280, i32 29 }
@___asan_gen_.482 = private unnamed_addr constant [33 x i8] c"_CryptoH323Token_cryptoEPPwdHash\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1172, i32 29 }
@___asan_gen_.485 = private unnamed_addr constant [33 x i8] c"_CryptoH323Token_cryptoGKPwdHash\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1185, i32 29 }
@___asan_gen_.488 = private unnamed_addr constant [33 x i8] c"_CryptoH323Token_cryptoEPPwdEncr\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1192, i32 29 }
@___asan_gen_.491 = private unnamed_addr constant [33 x i8] c"_CryptoH323Token_cryptoGKPwdEncr\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1198, i32 29 }
@___asan_gen_.494 = private unnamed_addr constant [30 x i8] c"_CryptoH323Token_cryptoEPCert\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1204, i32 29 }
@___asan_gen_.497 = private unnamed_addr constant [30 x i8] c"_CryptoH323Token_cryptoGKCert\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1211, i32 29 }
@___asan_gen_.500 = private unnamed_addr constant [33 x i8] c"_CryptoH323Token_cryptoFastStart\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1218, i32 29 }
@___asan_gen_.503 = private unnamed_addr constant [13 x i8] c"_CryptoToken\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1269, i32 29 }
@___asan_gen_.506 = private unnamed_addr constant [39 x i8] c"_CryptoH323Token_cryptoEPPwdHash_token\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1166, i32 29 }
@___asan_gen_.509 = private unnamed_addr constant [8 x i8] c"_Params\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1160, i32 29 }
@___asan_gen_.512 = private unnamed_addr constant [39 x i8] c"_CryptoH323Token_cryptoGKPwdHash_token\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1179, i32 29 }
@___asan_gen_.515 = private unnamed_addr constant [34 x i8] c"_CryptoToken_cryptoEncryptedToken\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1231, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant [31 x i8] c"_CryptoToken_cryptoSignedToken\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1244, i32 29 }
@___asan_gen_.521 = private unnamed_addr constant [31 x i8] c"_CryptoToken_cryptoHashedToken\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1256, i32 29 }
@___asan_gen_.524 = private unnamed_addr constant [27 x i8] c"_CryptoToken_cryptoPwdEncr\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1263, i32 29 }
@___asan_gen_.527 = private unnamed_addr constant [40 x i8] c"_CryptoToken_cryptoEncryptedToken_token\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1225, i32 29 }
@___asan_gen_.530 = private unnamed_addr constant [37 x i8] c"_CryptoToken_cryptoSignedToken_token\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1237, i32 29 }
@___asan_gen_.533 = private unnamed_addr constant [37 x i8] c"_CryptoToken_cryptoHashedToken_token\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [43 x i8] c"../net/netfilter/nf_conntrack_h323_types.c\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1250, i32 29 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @DecodeRasMessage.ras_message, ptr @_RasMessage, ptr @DecodeMultimediaSystemControlMessage.multimediasystemcontrolmessage, ptr @_MultimediaSystemControlMessage, ptr @_GatekeeperRequest, ptr @_GatekeeperConfirm, ptr @_RegistrationRequest, ptr @_RegistrationConfirm, ptr @_UnregistrationRequest, ptr @_AdmissionRequest, ptr @_AdmissionConfirm, ptr @_LocationRequest, ptr @_LocationConfirm, ptr @_InfoRequestResponse, ptr @_NonStandardParameter, ptr @_TransportAddress, ptr @_NonStandardIdentifier, ptr @_H221NonStandard, ptr @_TransportAddress_ipAddress, ptr @_TransportAddress_ipSourceRoute, ptr @_TransportAddress_ipxAddress, ptr @_TransportAddress_ip6Address, ptr @_TransportAddress_ipSourceRoute_route, ptr @_TransportAddress_ipSourceRoute_routing, ptr @_RegistrationRequest_callSignalAddress, ptr @_RegistrationRequest_rasAddress, ptr @_EndpointType, ptr @_RegistrationRequest_terminalAlias, ptr @_VendorIdentifier, ptr @_GatekeeperInfo, ptr @_GatewayInfo, ptr @_McuInfo, ptr @_TerminalInfo, ptr @_GatewayInfo_protocol, ptr @_SupportedProtocols, ptr @_H310Caps, ptr @_H320Caps, ptr @_H321Caps, ptr @_H322Caps, ptr @_H323Caps, ptr @_H324Caps, ptr @_VoiceCaps, ptr @_T120OnlyCaps, ptr @_AliasAddress, ptr @_RegistrationConfirm_callSignalAddress, ptr @_RegistrationConfirm_terminalAlias, ptr @_UnregistrationRequest_callSignalAddress, ptr @_CallType, ptr @_CallModel, ptr @_AdmissionRequest_destinationInfo, ptr @_AdmissionRequest_destExtraCallInfo, ptr @_AdmissionRequest_srcInfo, ptr @_LocationRequest_destinationInfo, ptr @_InfoRequestResponse_callSignalAddress, ptr @Decoders, ptr @_RequestMessage, ptr @_ResponseMessage, ptr @_OpenLogicalChannel, ptr @_OpenLogicalChannel_forwardLogicalChannelParameters, ptr @_OpenLogicalChannel_reverseLogicalChannelParameters, ptr @_NetworkAccessParameters, ptr @_DataType, ptr @_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters, ptr @_H245_NonStandardParameter, ptr @_VideoCapability, ptr @_AudioCapability, ptr @_DataApplicationCapability, ptr @_EncryptionMode, ptr @_H245_NonStandardIdentifier, ptr @_H245_NonStandardIdentifier_h221NonStandard, ptr @_H261VideoCapability, ptr @_H262VideoCapability, ptr @_H263VideoCapability, ptr @_IS11172VideoCapability, ptr @_AudioCapability_g7231, ptr @_IS11172AudioCapability, ptr @_IS13818AudioCapability, ptr @_DataApplicationCapability_application, ptr @_DataProtocolCapability, ptr @_DataApplicationCapability_application_t84, ptr @_DataApplicationCapability_application_nlpid, ptr @_T84Profile, ptr @_T84Profile_t84Restricted, ptr @_H222LogicalChannelParameters, ptr @_H223LogicalChannelParameters, ptr @_V76LogicalChannelParameters, ptr @_H2250LogicalChannelParameters, ptr @_H223LogicalChannelParameters_adaptationLayerType, ptr @_H223LogicalChannelParameters_adaptationLayerType_al3, ptr @_V76HDLCParameters, ptr @_V76LogicalChannelParameters_suspendResume, ptr @_V76LogicalChannelParameters_mode, ptr @_V75Parameters, ptr @_CRCLength, ptr @_V76LogicalChannelParameters_mode_eRM, ptr @_V76LogicalChannelParameters_mode_eRM_recovery, ptr @_H2250LogicalChannelParameters_nonStandard, ptr @_H245_TransportAddress, ptr @_UnicastAddress, ptr @_MulticastAddress, ptr @_UnicastAddress_iPAddress, ptr @_UnicastAddress_iPXAddress, ptr @_UnicastAddress_iP6Address, ptr @_UnicastAddress_iPSourceRouteAddress, ptr @_UnicastAddress_iPSourceRouteAddress_routing, ptr @_UnicastAddress_iPSourceRouteAddress_route, ptr @_MulticastAddress_iPAddress, ptr @_MulticastAddress_iP6Address, ptr @_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters, ptr @_NetworkAccessParameters_distribution, ptr @_NetworkAccessParameters_networkAddress, ptr @_Q2931Address, ptr @_Q2931Address_address, ptr @_OpenLogicalChannelAck, ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters, ptr @_OpenLogicalChannelAck_forwardMultiplexAckParameters, ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters, ptr @_H2250LogicalChannelAckParameters, ptr @_H2250LogicalChannelAckParameters_nonStandard, ptr @DecodeH323_UserInformation.h323_userinformation, ptr @_H323_UserInformation, ptr @_H323_UU_PDU, ptr @_H323_UU_PDU_h323_message_body, ptr @_H323_UU_PDU_h245Control, ptr @_Setup_UUIE, ptr @_CallProceeding_UUIE, ptr @_Connect_UUIE, ptr @_Alerting_UUIE, ptr @_Information_UUIE, ptr @_ReleaseComplete_UUIE, ptr @_Facility_UUIE, ptr @_Progress_UUIE, ptr @_Setup_UUIE_sourceAddress, ptr @_Setup_UUIE_destinationAddress, ptr @_Setup_UUIE_destExtraCallInfo, ptr @_Setup_UUIE_destExtraCRV, ptr @_Setup_UUIE_conferenceGoal, ptr @_QseriesOptions, ptr @_Setup_UUIE_fastStart, ptr @_Q954Details, ptr @_CallProceeding_UUIE_fastStart, ptr @_Connect_UUIE_fastStart, ptr @_Alerting_UUIE_fastStart, ptr @_ReleaseCompleteReason, ptr @_Facility_UUIE_alternativeAliasAddress, ptr @_FacilityReason, ptr @_Facility_UUIE_fastStart, ptr @_CallIdentifier, ptr @_H245Security, ptr @_Progress_UUIE_tokens, ptr @_Progress_UUIE_cryptoTokens, ptr @_Progress_UUIE_fastStart, ptr @_SecurityCapabilities, ptr @_SecurityServiceMode, ptr @_ClearToken, ptr @_DHset, ptr @_TypedCertificate, ptr @_H235_NonStandardParameter, ptr @_CryptoH323Token, ptr @_CryptoH323Token_cryptoEPPwdHash, ptr @_CryptoH323Token_cryptoGKPwdHash, ptr @_CryptoH323Token_cryptoEPPwdEncr, ptr @_CryptoH323Token_cryptoGKPwdEncr, ptr @_CryptoH323Token_cryptoEPCert, ptr @_CryptoH323Token_cryptoGKCert, ptr @_CryptoH323Token_cryptoFastStart, ptr @_CryptoToken, ptr @_CryptoH323Token_cryptoEPPwdHash_token, ptr @_Params, ptr @_CryptoH323Token_cryptoGKPwdHash_token, ptr @_CryptoToken_cryptoEncryptedToken, ptr @_CryptoToken_cryptoSignedToken, ptr @_CryptoToken_cryptoHashedToken, ptr @_CryptoToken_cryptoPwdEncr, ptr @_CryptoToken_cryptoEncryptedToken_token, ptr @_CryptoToken_cryptoSignedToken_token, ptr @_CryptoToken_cryptoHashedToken_token], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DecodeRasMessage.ras_message to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RasMessage to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DecodeMultimediaSystemControlMessage.multimediasystemcontrolmessage to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_MultimediaSystemControlMessage to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_GatekeeperRequest to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_GatekeeperConfirm to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationRequest to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationConfirm to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnregistrationRequest to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AdmissionRequest to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AdmissionConfirm to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_LocationRequest to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_LocationConfirm to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_InfoRequestResponse to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_NonStandardParameter to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_NonStandardIdentifier to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H221NonStandard to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress_ipAddress to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress_ipSourceRoute to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress_ipxAddress to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress_ip6Address to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress_ipSourceRoute_route to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TransportAddress_ipSourceRoute_routing to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationRequest_callSignalAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationRequest_rasAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_EndpointType to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationRequest_terminalAlias to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_VendorIdentifier to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_GatekeeperInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_GatewayInfo to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_McuInfo to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TerminalInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_GatewayInfo_protocol to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_SupportedProtocols to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H310Caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H320Caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H321Caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H322Caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H323Caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H324Caps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_VoiceCaps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_T120OnlyCaps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AliasAddress to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationConfirm_callSignalAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RegistrationConfirm_terminalAlias to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnregistrationRequest_callSignalAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CallType to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CallModel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AdmissionRequest_destinationInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AdmissionRequest_destExtraCallInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AdmissionRequest_srcInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_LocationRequest_destinationInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_InfoRequestResponse_callSignalAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Decoders to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_RequestMessage to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ResponseMessage to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannel to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannel_forwardLogicalChannelParameters to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannel_reverseLogicalChannelParameters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_NetworkAccessParameters to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DataType to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H245_NonStandardParameter to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_VideoCapability to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AudioCapability to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DataApplicationCapability to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_EncryptionMode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H245_NonStandardIdentifier to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H245_NonStandardIdentifier_h221NonStandard to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H261VideoCapability to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H262VideoCapability to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H263VideoCapability to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_IS11172VideoCapability to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_AudioCapability_g7231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_IS11172AudioCapability to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_IS13818AudioCapability to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DataApplicationCapability_application to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DataProtocolCapability to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DataApplicationCapability_application_t84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DataApplicationCapability_application_nlpid to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_T84Profile to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_T84Profile_t84Restricted to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H222LogicalChannelParameters to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H223LogicalChannelParameters to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V76LogicalChannelParameters to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H2250LogicalChannelParameters to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H223LogicalChannelParameters_adaptationLayerType to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H223LogicalChannelParameters_adaptationLayerType_al3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V76HDLCParameters to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V76LogicalChannelParameters_suspendResume to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V76LogicalChannelParameters_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V75Parameters to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CRCLength to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V76LogicalChannelParameters_mode_eRM to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_V76LogicalChannelParameters_mode_eRM_recovery to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H2250LogicalChannelParameters_nonStandard to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H245_TransportAddress to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_MulticastAddress to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress_iPAddress to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress_iPXAddress to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress_iP6Address to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress_iPSourceRouteAddress to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress_iPSourceRouteAddress_routing to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_UnicastAddress_iPSourceRouteAddress_route to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_MulticastAddress_iPAddress to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_MulticastAddress_iP6Address to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_NetworkAccessParameters_distribution to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_NetworkAccessParameters_networkAddress to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Q2931Address to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Q2931Address_address to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannelAck to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannelAck_forwardMultiplexAckParameters to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H2250LogicalChannelAckParameters to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H2250LogicalChannelAckParameters_nonStandard to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DecodeH323_UserInformation.h323_userinformation to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H323_UserInformation to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H323_UU_PDU to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H323_UU_PDU_h323_message_body to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H323_UU_PDU_h245Control to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CallProceeding_UUIE to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Connect_UUIE to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Alerting_UUIE to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Information_UUIE to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ReleaseComplete_UUIE to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Facility_UUIE to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Progress_UUIE to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE_sourceAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE_destinationAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE_destExtraCallInfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE_destExtraCRV to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE_conferenceGoal to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_QseriesOptions to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Setup_UUIE_fastStart to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Q954Details to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CallProceeding_UUIE_fastStart to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Connect_UUIE_fastStart to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Alerting_UUIE_fastStart to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ReleaseCompleteReason to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Facility_UUIE_alternativeAliasAddress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_FacilityReason to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Facility_UUIE_fastStart to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CallIdentifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H245Security to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Progress_UUIE_tokens to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Progress_UUIE_cryptoTokens to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Progress_UUIE_fastStart to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_SecurityCapabilities to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_SecurityServiceMode to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ClearToken to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_DHset to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_TypedCertificate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_H235_NonStandardParameter to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoEPPwdHash to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoGKPwdHash to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoEPPwdEncr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoGKPwdEncr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoEPCert to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoGKCert to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoFastStart to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoEPPwdHash_token to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_Params to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoH323Token_cryptoGKPwdHash_token to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoEncryptedToken to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoSignedToken to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoHashedToken to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoPwdEncr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoEncryptedToken_token to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoSignedToken_token to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_CryptoToken_cryptoHashedToken_token to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @DecodeRasMessage(ptr noundef %buf, i32 noundef %sz, ptr noundef %ras) local_unnamed_addr #0 align 64 {
entry:
  %bs = alloca %struct.bitstr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bs) #7
  %0 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %2, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %0, align 4
  %6 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %bs, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %sz
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %1, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %call = call i32 @decode_choice(ptr noundef nonnull %bs, ptr noundef nonnull @DecodeRasMessage.ras_message, ptr noundef %ras, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bs) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_choice(ptr noundef %bs, ptr nocapture noundef readonly %f, ptr noundef %base, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %base, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %attr = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 5
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %offset, align 2
  %conv2 = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %base, i32 %conv2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  %bit.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %5 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit.i, align 4
  %add.i = add i32 %6, 1
  %div11.i = lshr i32 %add.i, 3
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %div11.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %7 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %10
  br i1 %cmp2.i.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %attr4 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %attr4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr4, align 4
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool7.not = icmp eq i16 %13, 0
  br i1 %tobool7.not, label %if.end.if.else_crit_edge, label %land.lhs.true8

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true8:                                   ; preds = %if.end
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 1
  %16 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 7
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true8.get_bit.exit_crit_edge

land.lhs.true8.get_bit.exit_crit_edge:            ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bit.exit

if.then.i:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %8, i32 1
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %incdec.ptr.i, ptr %cur.i, align 4
  %18 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bit.i, align 4
  br label %get_bit.exit

get_bit.exit:                                     ; preds = %if.then.i, %land.lhs.true8.get_bit.exit_crit_edge
  %conv.i = zext i8 %15 to i32
  %shr.i = lshr i32 128, %6
  %and.i = and i32 %shr.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %get_bit.exit.if.else_crit_edge, label %if.then11

get_bit.exit.if.else_crit_edge:                   ; preds = %get_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then11:                                        ; preds = %get_bit.exit
  %19 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bit.i, align 4
  %add.i179 = add i32 %20, 7
  %div11.i180 = lshr i32 %add.i179, 3
  %rem.i181 = and i32 %add.i179, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i181)
  %cmp.not.i182 = icmp ne i32 %rem.i181, 0
  %inc.i183 = zext i1 %cmp.not.i182 to i32
  %spec.select.i184 = add nuw nsw i32 %div11.i180, %inc.i183
  %21 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %22, i32 %spec.select.i184
  %cmp2.i188.not = icmp ugt ptr %add.ptr.i186, %10
  br i1 %cmp2.i188.not, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv.i191 = zext i8 %24 to i32
  %shr.i193 = lshr i32 255, %20
  %and.i194 = and i32 %shr.i193, %conv.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i179)
  %cmp.i196 = icmp ult i32 %add.i179, 8
  br i1 %cmp.i196, label %if.then.i197, label %if.else.i

if.then.i197:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 1, %20
  %shr3.i = lshr i32 %and.i194, %sub.i
  br label %get_bits.exit

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i179)
  %cmp5.i = icmp eq i32 %add.i179, 8
  br i1 %cmp5.i, label %if.then7.i, label %if.else10.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i198 = getelementptr i8, ptr %22, i32 1
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr.i198, ptr %cur.i, align 4
  br label %get_bits.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %and.i194, 8
  %incdec.ptr12.i = getelementptr i8, ptr %22, i32 1
  %26 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr12.i, ptr %cur.i, align 4
  %27 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr12.i, align 1
  %conv13.i = zext i8 %28 to i32
  %add14.i = or i32 %shl.i, %conv13.i
  %sub15.i = sub i32 9, %20
  %shr16.i = lshr i32 %add14.i, %sub15.i
  %sub17.i = add i32 %20, -1
  br label %get_bits.exit

get_bits.exit:                                    ; preds = %if.else10.i, %if.then7.i, %if.then.i197
  %.sink.i = phi i32 [ 0, %if.then7.i ], [ %sub17.i, %if.else10.i ], [ %add.i179, %if.then.i197 ]
  %v.0.i = phi i32 [ %and.i194, %if.then7.i ], [ %shr16.i, %if.else10.i ], [ %shr3.i, %if.then.i197 ]
  %29 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %bit.i, align 4
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %30 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lb, align 2
  %conv17 = zext i8 %31 to i32
  %add = add i32 %v.0.i, %conv17
  br label %if.end31

if.else:                                          ; preds = %get_bit.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %32 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sz, align 1
  %conv18 = zext i8 %33 to i32
  %34 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bit.i, align 4
  %add.i200 = add i32 %35, %conv18
  %div11.i201 = lshr i32 %add.i200, 3
  %rem.i202 = and i32 %add.i200, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i202)
  %cmp.not.i203 = icmp ne i32 %rem.i202, 0
  %inc.i204 = zext i1 %cmp.not.i203 to i32
  %spec.select.i205 = add nuw nsw i32 %div11.i201, %inc.i204
  %36 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %37, i32 %spec.select.i205
  %cmp2.i209.not = icmp ugt ptr %add.ptr.i207, %10
  br i1 %cmp2.i209.not, label %if.else.cleanup_crit_edge, label %if.end22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %conv.i212 = zext i8 %39 to i32
  %shr.i214 = lshr i32 255, %35
  %and.i215 = and i32 %shr.i214, %conv.i212
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i200)
  %cmp.i217 = icmp ult i32 %add.i200, 8
  br i1 %cmp.i217, label %if.then.i220, label %if.else.i222

if.then.i220:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i218 = sub nuw nsw i32 8, %add.i200
  %shr3.i219 = lshr i32 %and.i215, %sub.i218
  br label %get_bits.exit235

if.else.i222:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i200)
  %cmp5.i221 = icmp eq i32 %add.i200, 8
  br i1 %cmp5.i221, label %if.then7.i224, label %if.else10.i232

if.then7.i224:                                    ; preds = %if.else.i222
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i223 = getelementptr i8, ptr %37, i32 1
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %incdec.ptr.i223, ptr %cur.i, align 4
  br label %get_bits.exit235

if.else10.i232:                                   ; preds = %if.else.i222
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i225 = shl nuw nsw i32 %and.i215, 8
  %incdec.ptr12.i226 = getelementptr i8, ptr %37, i32 1
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %incdec.ptr12.i226, ptr %cur.i, align 4
  %42 = ptrtoint ptr %incdec.ptr12.i226 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr12.i226, align 1
  %conv13.i227 = zext i8 %43 to i32
  %add14.i228 = or i32 %shl.i225, %conv13.i227
  %sub15.i229 = sub i32 16, %add.i200
  %shr16.i230 = lshr i32 %add14.i228, %sub15.i229
  %sub17.i231 = add i32 %add.i200, -8
  br label %get_bits.exit235

get_bits.exit235:                                 ; preds = %if.else10.i232, %if.then7.i224, %if.then.i220
  %.sink.i233 = phi i32 [ 0, %if.then7.i224 ], [ %sub17.i231, %if.else10.i232 ], [ %add.i200, %if.then.i220 ]
  %v.0.i234 = phi i32 [ %and.i215, %if.then7.i224 ], [ %shr16.i230, %if.else10.i232 ], [ %shr3.i219, %if.then.i220 ]
  %44 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i233, ptr %bit.i, align 4
  %lb26 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %45 = ptrtoint ptr %lb26 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lb26, align 2
  %conv27 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %v.0.i234, i32 %conv27)
  %cmp.not = icmp ult i32 %v.0.i234, %conv27
  br i1 %cmp.not, label %get_bits.exit235.if.end31_crit_edge, label %get_bits.exit235.cleanup_crit_edge

get_bits.exit235.cleanup_crit_edge:               ; preds = %get_bits.exit235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_bits.exit235.if.end31_crit_edge:              ; preds = %get_bits.exit235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %get_bits.exit235.if.end31_crit_edge, %get_bits.exit
  %type.0 = phi i32 [ %add, %get_bits.exit ], [ %v.0.i234, %get_bits.exit235.if.end31_crit_edge ]
  %tobool61.not = phi i1 [ false, %get_bits.exit ], [ true, %get_bits.exit235.if.end31_crit_edge ]
  %tobool32.not = icmp eq ptr %cond, null
  br i1 %tobool32.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %type.0, ptr %cond, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %ub = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 3
  %48 = ptrtoint ptr %ub to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ub, align 1
  %conv35 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %type.0, i32 %conv35)
  %cmp36.not = icmp ult i32 %type.0, %conv35
  br i1 %cmp36.not, label %if.end54, label %if.then38

if.then38:                                        ; preds = %if.end34
  %50 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool39.not = icmp eq i32 %51, 0
  br i1 %tobool39.not, label %if.then38.if.end42_crit_edge, label %if.then40

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i8, ptr %53, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %54 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %bit.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then38.if.end42_crit_edge
  %55 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bit.i, align 4
  %div11.i237 = lshr i32 %56, 3
  %rem.i238 = and i32 %56, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i238)
  %cmp.not.i239 = icmp ne i32 %rem.i238, 0
  %inc.i240 = zext i1 %cmp.not.i239 to i32
  %add1.i = add nuw nsw i32 %div11.i237, %inc.i240
  %spec.select.i241 = add nuw nsw i32 %add1.i, 2
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %add.ptr.i243 = getelementptr i8, ptr %58, i32 %spec.select.i241
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp2.i245.not = icmp ugt ptr %add.ptr.i243, %60
  br i1 %cmp2.i245.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %incdec.ptr.i248 = getelementptr i8, ptr %58, i32 1
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr.i248, ptr %cur.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %58, align 1
  %conv.i249 = zext i8 %63 to i32
  %and.i250 = and i32 %conv.i249, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i250)
  %tobool.not.i = icmp eq i32 %and.i250, 0
  br i1 %tobool.not.i, label %if.end46.get_len.exit_crit_edge, label %if.then.i253

if.end46.get_len.exit_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit

if.then.i253:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = shl nuw nsw i32 %conv.i249, 8
  %shl.i251 = and i32 %and1.i, 16128
  %incdec.ptr3.i = getelementptr i8, ptr %58, i32 2
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %incdec.ptr3.i, ptr %cur.i, align 4
  %65 = ptrtoint ptr %incdec.ptr.i248 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr.i248, align 1
  %conv4.i = zext i8 %66 to i32
  %add.i252 = or i32 %shl.i251, %conv4.i
  br label %get_len.exit

get_len.exit:                                     ; preds = %if.then.i253, %if.end46.get_len.exit_crit_edge
  %v.0.i254 = phi i32 [ %add.i252, %if.then.i253 ], [ %conv.i249, %if.end46.get_len.exit_crit_edge ]
  %spec.select.i261 = add nsw i32 %add1.i, %v.0.i254
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %68, i32 %spec.select.i261
  %cmp2.i265.not = icmp ugt ptr %add.ptr.i263, %60
  br i1 %cmp2.i265.not, label %get_len.exit.cleanup_crit_edge, label %if.end51

get_len.exit.cleanup_crit_edge:                   ; preds = %get_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %get_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr53 = getelementptr i8, ptr %68, i32 %v.0.i254
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr53, ptr %cur.i, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end34
  %fields = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 6
  %70 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fields, align 4
  %arrayidx = getelementptr %struct.field_t, ptr %71, i32 %type.0
  %attr55 = getelementptr %struct.field_t, ptr %71, i32 %type.0, i32 4
  %72 = ptrtoint ptr %attr55 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %attr55, align 4
  %conv56 = zext i16 %73 to i32
  %and57 = and i32 %conv56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %and64 = and i32 %conv56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %or.cond = select i1 %tobool61.not, i1 %tobool65.not, i1 false
  br i1 %or.cond, label %if.else105, label %if.then66

if.then66:                                        ; preds = %if.end60
  %74 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool68.not = icmp eq i32 %75, 0
  br i1 %tobool68.not, label %if.then66.if.end73_crit_edge, label %if.then69

if.then66.if.end73_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %incdec.ptr71 = getelementptr i8, ptr %77, i32 1
  store ptr %incdec.ptr71, ptr %cur.i, align 4
  %78 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %bit.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.then66.if.end73_crit_edge
  %79 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bit.i, align 4
  %div11.i268 = lshr i32 %80, 3
  %rem.i269 = and i32 %80, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i269)
  %cmp.not.i270 = icmp ne i32 %rem.i269, 0
  %inc.i271 = zext i1 %cmp.not.i270 to i32
  %spec.select.i272 = add nuw nsw i32 %div11.i268, %inc.i271
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %82, i32 %spec.select.i272
  %83 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i, align 4
  %cmp2.i276.not = icmp ugt ptr %add.ptr.i274, %84
  br i1 %cmp2.i276.not, label %if.end73.cleanup_crit_edge, label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  %incdec.ptr.i279 = getelementptr i8, ptr %82, i32 1
  %85 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %incdec.ptr.i279, ptr %cur.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %82, align 1
  %conv.i280 = zext i8 %87 to i32
  %and.i281 = and i32 %conv.i280, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281)
  %tobool.not.i282 = icmp eq i32 %and.i281, 0
  br i1 %tobool.not.i282, label %if.end77.get_len.exit290_crit_edge, label %if.then.i288

if.end77.get_len.exit290_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit290

if.then.i288:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i283 = shl nuw nsw i32 %conv.i280, 8
  %shl.i284 = and i32 %and1.i283, 16128
  %incdec.ptr3.i285 = getelementptr i8, ptr %82, i32 2
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %incdec.ptr3.i285, ptr %cur.i, align 4
  %89 = ptrtoint ptr %incdec.ptr.i279 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %incdec.ptr.i279, align 1
  %conv4.i286 = zext i8 %90 to i32
  %add.i287 = or i32 %shl.i284, %conv4.i286
  br label %get_len.exit290

get_len.exit290:                                  ; preds = %if.then.i288, %if.end77.get_len.exit290_crit_edge
  %v.0.i289 = phi i32 [ %add.i287, %if.then.i288 ], [ %conv.i280, %if.end77.get_len.exit290_crit_edge ]
  %spec.select.i297 = add nsw i32 %spec.select.i272, %v.0.i289
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %92, i32 %spec.select.i297
  %cmp2.i301.not = icmp ugt ptr %add.ptr.i299, %84
  br i1 %cmp2.i301.not, label %get_len.exit290.cleanup_crit_edge, label %if.end82

get_len.exit290.cleanup_crit_edge:                ; preds = %get_len.exit290
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82:                                         ; preds = %get_len.exit290
  br i1 %tobool32.not, label %if.end82.if.then89_crit_edge, label %lor.lhs.false84

if.end82.if.then89_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

lor.lhs.false84:                                  ; preds = %if.end82
  %93 = ptrtoint ptr %attr55 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %attr55, align 4
  %95 = and i16 %94, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool88.not = icmp eq i16 %95, 0
  br i1 %tobool88.not, label %lor.lhs.false84.if.then89_crit_edge, label %if.end92

lor.lhs.false84.if.then89_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false84.if.then89_crit_edge, %if.end82.if.then89_crit_edge
  %add.ptr91 = getelementptr i8, ptr %92, i32 %v.0.i289
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr91, ptr %cur.i, align 4
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false84
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx, align 4
  %idxprom = zext i8 %98 to i32
  %arrayidx95 = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom
  %99 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx95, align 4
  %add96 = add i32 %level, 1
  %call97 = tail call i32 %100(ptr noundef %bs, ptr noundef %arrayidx, ptr noundef nonnull %cond, i32 noundef %add96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end92.cleanup_crit_edge, label %if.end101

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr102 = getelementptr i8, ptr %92, i32 %v.0.i289
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr102, ptr %cur.i, align 4
  %102 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %bit.i, align 4
  br label %if.end115

if.else105:                                       ; preds = %if.end60
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx, align 4
  %idxprom107 = zext i8 %104 to i32
  %arrayidx108 = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom107
  %105 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx108, align 4
  %add109 = add i32 %level, 1
  %call110 = tail call i32 %106(ptr noundef %bs, ptr noundef %arrayidx, ptr noundef %cond, i32 noundef %add109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.else105.cleanup_crit_edge, label %if.else105.if.end115_crit_edge

if.else105.if.end115_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.else105.cleanup_crit_edge:                     ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end115:                                        ; preds = %if.else105.if.end115_crit_edge, %if.end101
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.else105.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.then89, %get_len.exit290.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end51, %get_len.exit.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %get_bits.exit235.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ 0, %if.end115 ], [ 0, %if.then89 ], [ -1, %cond.end.cleanup_crit_edge ], [ -1, %if.then11.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ -2, %get_bits.exit235.cleanup_crit_edge ], [ -1, %if.end42.cleanup_crit_edge ], [ -1, %get_len.exit.cleanup_crit_edge ], [ 1, %if.end54.cleanup_crit_edge ], [ -1, %if.end73.cleanup_crit_edge ], [ -1, %get_len.exit290.cleanup_crit_edge ], [ %call97, %if.end92.cleanup_crit_edge ], [ %call110, %if.else105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @DecodeMultimediaSystemControlMessage(ptr noundef %buf, i32 noundef %sz, ptr noundef %mscm) local_unnamed_addr #0 align 64 {
entry:
  %bs = alloca %struct.bitstr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bs) #7
  %0 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %3 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %2, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %0, align 4
  %6 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %bs, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %sz
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %1, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %call = call i32 @decode_choice(ptr noundef nonnull %bs, ptr noundef nonnull @DecodeMultimediaSystemControlMessage.multimediasystemcontrolmessage, ptr noundef %mscm, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bs) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @DecodeQ931(ptr noundef %buf, i32 noundef %sz, ptr noundef %q931) local_unnamed_addr #0 align 64 {
entry:
  %bs.i = alloca %struct.bitstr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp = icmp eq i32 %sz, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp1.not = icmp eq i8 %1, 8
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sz)
  %cmp5 = icmp eq i32 %sz, 1
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr, align 1
  %conv10 = zext i8 %3 to i32
  %dec11 = add i32 %sz, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec11, i32 %conv10)
  %cmp12 = icmp ult i32 %dec11, %conv10
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %sub = sub i32 %dec11, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp16 = icmp ult i32 %sub, 2
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %incdec.ptr9 = getelementptr i8, ptr %buf, i32 2
  %add.ptr = getelementptr i8, ptr %incdec.ptr9, i32 %conv10
  %incdec.ptr20 = getelementptr i8, ptr %add.ptr, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %conv21 = zext i8 %5 to i32
  %6 = ptrtoint ptr %q931 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv21, ptr %q931, align 4
  %7 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool24.not = icmp sgt i8 %8, -1
  %spec.select.v = select i1 %tobool24.not, i32 -1, i32 -2
  %spec.select = add i32 %spec.select.v, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp29.not115 = icmp eq i32 %spec.select, 0
  br i1 %cmp29.not115, label %if.end19.cleanup_crit_edge, label %while.body.preheader

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.preheader:                             ; preds = %if.end19
  %not.tobool24.not = xor i1 %tobool24.not, true
  %spec.select112.idx = zext i1 %not.tobool24.not to i32
  %spec.select112 = getelementptr i8, ptr %incdec.ptr20, i32 %spec.select112.idx
  br label %while.body

while.body:                                       ; preds = %if.end57.while.body_crit_edge, %while.body.preheader
  %p.1117 = phi ptr [ %add.ptr65, %if.end57.while.body_crit_edge ], [ %spec.select112, %while.body.preheader ]
  %sz.addr.1116 = phi i32 [ %sub66, %if.end57.while.body_crit_edge ], [ %spec.select, %while.body.preheader ]
  %9 = ptrtoint ptr %p.1117 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p.1117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %10)
  %cmp32 = icmp eq i8 %10, 126
  br i1 %cmp32, label %if.then34, label %if.end51

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sz.addr.1116)
  %cmp35 = icmp ult i32 %sz.addr.1116, 3
  br i1 %cmp35, label %if.then34.cleanup_crit_edge, label %if.end38

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %incdec.ptr39 = getelementptr i8, ptr %p.1117, i32 1
  %incdec.ptr40 = getelementptr i8, ptr %p.1117, i32 2
  %11 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr39, align 1
  %conv41 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv41, 8
  %13 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr40, align 1
  %conv43 = zext i8 %14 to i32
  %or = or i32 %shl, %conv43
  %sub44 = add i32 %sz.addr.1116, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %or)
  %cmp45 = icmp ult i32 %sub44, %or
  br i1 %cmp45, label %if.end38.cleanup_crit_edge, label %if.end48

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr49 = getelementptr i8, ptr %p.1117, i32 4
  %dec50 = add nsw i32 %or, -1
  %UUIE = getelementptr inbounds %struct.Q931, ptr %q931, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bs.i) #7
  %15 = getelementptr inbounds %struct.bitstr, ptr %bs.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.bitstr, ptr %bs.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.bitstr, ptr %bs.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.bitstr, ptr %bs.i, i32 0, i32 4
  %19 = ptrtoint ptr %bs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %bs.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr49, ptr %17, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr49, ptr %15, align 4
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr49, i32 %dec50
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %16, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %18, align 4
  %call.i = call i32 @decode_seq(ptr noundef nonnull %bs.i, ptr noundef nonnull @DecodeH323_UserInformation.h323_userinformation, ptr noundef %UUIE, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bs.i) #7
  br label %cleanup

if.end51:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sz.addr.1116)
  %cmp54 = icmp eq i32 %sz.addr.1116, 1
  br i1 %cmp54, label %if.end51.cleanup_crit_edge, label %if.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %incdec.ptr52 = getelementptr i8, ptr %p.1117, i32 1
  %24 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr52, align 1
  %conv59 = zext i8 %25 to i32
  %dec60 = add i32 %sz.addr.1116, -2
  %incdec.ptr58 = getelementptr i8, ptr %p.1117, i32 2
  %add.ptr65 = getelementptr i8, ptr %incdec.ptr58, i32 %conv59
  %sub66 = sub i32 %dec60, %conv59
  %.not = icmp ugt i32 %dec60, %conv59
  br i1 %.not, label %if.end57.while.body_crit_edge, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end48, %if.end38.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end48 ], [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ -1, %if.end38.cleanup_crit_edge ], [ -1, %if.then34.cleanup_crit_edge ], [ -1, %if.end19.cleanup_crit_edge ], [ -1, %if.end51.cleanup_crit_edge ], [ -1, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_bits(ptr nocapture noundef %bs, i32 noundef %b) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit, align 4
  %shr = lshr i32 255, %5
  %and = and i32 %shr, %conv
  %add = add i32 %5, %b
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp = icmp ult i32 %add, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub nuw nsw i32 8, %add
  %shr3 = lshr i32 %and, %sub
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp5 = icmp eq i32 %add, 8
  br i1 %cmp5, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr, ptr %cur, align 4
  br label %if.end19

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %and, 8
  %incdec.ptr12 = getelementptr i8, ptr %1, i32 1
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr12, ptr %cur, align 4
  %8 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr12, align 1
  %conv13 = zext i8 %9 to i32
  %add14 = or i32 %shl, %conv13
  %sub15 = sub i32 16, %add
  %shr16 = lshr i32 %add14, %sub15
  %sub17 = add i32 %add, -8
  br label %if.end19

if.end19:                                         ; preds = %if.else10, %if.then7, %if.then
  %.sink = phi i32 [ 0, %if.then7 ], [ %sub17, %if.else10 ], [ %add, %if.then ]
  %v.0 = phi i32 [ %and, %if.then7 ], [ %shr16, %if.else10 ], [ %shr3, %if.then ]
  %10 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %bit, align 4
  ret i32 %v.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_nul(ptr nocapture noundef readnone %bs, ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %base, i32 noundef %level) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_bool(ptr nocapture noundef %bs, ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %base, i32 noundef %level) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp = icmp ugt i32 %inc, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  %div11.i = lshr i32 %6, 3
  %rem.i = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %div11.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %7 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %10
  %. = sext i1 %cmp2.i.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_oid(ptr nocapture noundef %bs, ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  %div11.i = lshr i32 %6, 3
  %rem.i = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %add1.i = add nuw nsw i32 %div11.i, %inc.i
  %spec.select.i = add nuw nsw i32 %add1.i, 1
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %7 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %10
  br i1 %cmp2.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr6 = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %incdec.ptr6, ptr %cur.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %conv = zext i8 %13 to i32
  %add.ptr = getelementptr i8, ptr %incdec.ptr6, i32 %conv
  store ptr %add.ptr, ptr %cur.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %add.ptr, i32 %add1.i
  %cmp2.i27.not = icmp ugt ptr %add.ptr.i25, %10
  %. = sext i1 %cmp2.i27.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_int(ptr noundef %bs, ptr nocapture noundef readonly %f, ptr noundef writeonly %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sz, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 9, label %sw.bb
    i8 10, label %sw.bb4
    i8 11, label %sw.bb13
    i8 13, label %sw.bb37
  ]

sw.bb:                                            ; preds = %entry
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %3 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %cur2 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %8 = ptrtoint ptr %cur2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur2, align 4
  %incdec.ptr3 = getelementptr i8, ptr %9, i32 1
  store ptr %incdec.ptr3, ptr %cur2, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %bit5 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %10 = ptrtoint ptr %bit5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %sw.bb4.if.end11_crit_edge, label %if.then7

sw.bb4.if.end11_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %cur8 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %12 = ptrtoint ptr %cur8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur8, align 4
  %incdec.ptr9 = getelementptr i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %cur8, align 4
  %14 = ptrtoint ptr %bit5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bit5, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %sw.bb4.if.end11_crit_edge
  %cur12 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %15 = ptrtoint ptr %cur12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur12, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 2
  store ptr %add.ptr, ptr %cur12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %bit.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %17 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit.i, align 4
  %add.i = add i32 %18, 2
  %div11.i = lshr i32 %add.i, 3
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %div11.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %22
  br i1 %cmp2.i.not, label %sw.bb13.cleanup_crit_edge, label %if.end16

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %sw.bb13
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %20, align 1
  %conv.i = zext i8 %24 to i32
  %shr.i = lshr i32 255, %18
  %and.i = and i32 %shr.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 8
  br i1 %cmp.i, label %get_bits.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp5.i = icmp eq i32 %add.i, 8
  br i1 %cmp5.i, label %get_bits.exit.thread, label %get_bits.exit.thread145

get_bits.exit.thread:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %20, i32 1
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr.i, ptr %cur.i, align 4
  %26 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bit.i, align 4
  %add142 = add nuw nsw i32 %and.i, 1
  br label %if.end24

get_bits.exit.thread145:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %and.i, 8
  %incdec.ptr12.i = getelementptr i8, ptr %20, i32 1
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %incdec.ptr12.i, ptr %cur.i, align 4
  %28 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr12.i, align 1
  %conv13.i = zext i8 %29 to i32
  %add14.i = or i32 %shl.i, %conv13.i
  %sub15.i = sub i32 14, %18
  %shr16.i = lshr i32 %add14.i, %sub15.i
  %add148 = add i32 %shr16.i, 1
  br label %if.then20

get_bits.exit:                                    ; preds = %if.end16
  %sub.i = sub nsw i32 6, %18
  %shr3.i = lshr i32 %and.i, %sub.i
  %30 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %bit.i, align 4
  %add = add nuw nsw i32 %shr3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool19.not = icmp eq i32 %add.i, 0
  br i1 %tobool19.not, label %get_bits.exit.if.end24_crit_edge, label %get_bits.exit.if.then20_crit_edge

get_bits.exit.if.then20_crit_edge:                ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

get_bits.exit.if.end24_crit_edge:                 ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %get_bits.exit.if.then20_crit_edge, %get_bits.exit.thread145
  %add150 = phi i32 [ %add148, %get_bits.exit.thread145 ], [ %add, %get_bits.exit.if.then20_crit_edge ]
  %31 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur.i, align 4
  %incdec.ptr22 = getelementptr i8, ptr %32, i32 1
  store ptr %incdec.ptr22, ptr %cur.i, align 4
  %33 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bit.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %get_bits.exit.if.end24_crit_edge, %get_bits.exit.thread
  %add144 = phi i32 [ %add142, %get_bits.exit.thread ], [ %add150, %if.then20 ], [ %add, %get_bits.exit.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %base, null
  br i1 %tobool25.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end24
  %attr = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %attr, align 4
  %36 = and i16 %35, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool27.not = icmp eq i16 %36, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end34_crit_edge, label %if.then28

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  %37 = zext i32 %add144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %add144, label %if.then28.get_uint.exit_crit_edge [
    i32 4, label %sw.bb.i
    i32 3, label %if.then28.sw.bb1.i_crit_edge
    i32 2, label %if.then28.sw.bb7.i_crit_edge
    i32 1, label %if.then28.sw.bb13.i_crit_edge
  ]

if.then28.sw.bb13.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

if.then28.sw.bb7.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then28.sw.bb1.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.then28.get_uint.exit_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_uint.exit

sw.bb.i:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur.i, align 4
  %incdec.ptr.i104 = getelementptr i8, ptr %39, i32 1
  store ptr %incdec.ptr.i104, ptr %cur.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i105 = zext i8 %41 to i32
  %shl.i106 = shl nuw nsw i32 %conv.i105, 8
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %if.then28.sw.bb1.i_crit_edge
  %v.0.i107 = phi i32 [ 0, %if.then28.sw.bb1.i_crit_edge ], [ %shl.i106, %sw.bb.i ]
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3.i = getelementptr i8, ptr %43, i32 1
  store ptr %incdec.ptr3.i, ptr %cur.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv4.i = zext i8 %45 to i32
  %or5.i = or i32 %v.0.i107, %conv4.i
  %shl6.i = shl nsw i32 %or5.i, 8
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb1.i, %if.then28.sw.bb7.i_crit_edge
  %v.1.i = phi i32 [ 0, %if.then28.sw.bb7.i_crit_edge ], [ %shl6.i, %sw.bb1.i ]
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %incdec.ptr9.i = getelementptr i8, ptr %47, i32 1
  store ptr %incdec.ptr9.i, ptr %cur.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %conv10.i = zext i8 %49 to i32
  %or11.i = or i32 %v.1.i, %conv10.i
  %shl12.i = shl i32 %or11.i, 8
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %sw.bb7.i, %if.then28.sw.bb13.i_crit_edge
  %v.2.i = phi i32 [ 0, %if.then28.sw.bb13.i_crit_edge ], [ %shl12.i, %sw.bb7.i ]
  %50 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i, align 4
  %incdec.ptr15.i = getelementptr i8, ptr %51, i32 1
  store ptr %incdec.ptr15.i, ptr %cur.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv16.i = zext i8 %53 to i32
  %or17.i = or i32 %v.2.i, %conv16.i
  br label %get_uint.exit

get_uint.exit:                                    ; preds = %sw.bb13.i, %if.then28.get_uint.exit_crit_edge
  %v.3.i = phi i32 [ 0, %if.then28.get_uint.exit_crit_edge ], [ %or17.i, %sw.bb13.i ]
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %54 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %lb, align 2
  %conv30 = zext i8 %55 to i32
  %add31 = add i32 %v.3.i, %conv30
  %offset = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 5
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %offset, align 2
  %conv32 = zext i16 %57 to i32
  %add.ptr33 = getelementptr i8, ptr %base, i32 %conv32
  %58 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add31, ptr %add.ptr33, align 4
  br label %if.end34

if.end34:                                         ; preds = %get_uint.exit, %land.lhs.true.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %add.ptr36 = getelementptr i8, ptr %60, i32 %add144
  store ptr %add.ptr36, ptr %cur.i, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %bit38 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %61 = ptrtoint ptr %bit38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bit38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool39.not = icmp eq i32 %62, 0
  br i1 %tobool39.not, label %sw.bb37.if.end44_crit_edge, label %if.then40

sw.bb37.if.end44_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %cur41 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %63 = ptrtoint ptr %cur41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur41, align 4
  %incdec.ptr42 = getelementptr i8, ptr %64, i32 1
  store ptr %incdec.ptr42, ptr %cur41, align 4
  %65 = ptrtoint ptr %bit38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %bit38, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %sw.bb37.if.end44_crit_edge
  %66 = ptrtoint ptr %bit38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bit38, align 4
  %div11.i109 = lshr i32 %67, 3
  %add1.i = add nuw nsw i32 %div11.i109, 2
  %rem.i110 = and i32 %67, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i110)
  %cmp.not.i111 = icmp ne i32 %rem.i110, 0
  %inc.i112 = zext i1 %cmp.not.i111 to i32
  %spec.select.i113 = add nuw nsw i32 %add1.i, %inc.i112
  %cur.i114 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %68 = ptrtoint ptr %cur.i114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i114, align 4
  %add.ptr.i115 = getelementptr i8, ptr %69, i32 %spec.select.i113
  %end.i116 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %70 = ptrtoint ptr %end.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i116, align 4
  %cmp2.i117.not = icmp ugt ptr %add.ptr.i115, %71
  br i1 %cmp2.i117.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %incdec.ptr.i120 = getelementptr i8, ptr %69, i32 1
  %72 = ptrtoint ptr %cur.i114 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %incdec.ptr.i120, ptr %cur.i114, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %69, align 1
  %conv.i121 = zext i8 %74 to i32
  %and.i122 = and i32 %conv.i121, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i, label %if.end48.get_len.exit_crit_edge, label %if.then.i127

if.end48.get_len.exit_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit

if.then.i127:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = shl nuw nsw i32 %conv.i121, 8
  %shl.i123 = and i32 %and1.i, 16128
  %incdec.ptr3.i124 = getelementptr i8, ptr %69, i32 2
  %75 = ptrtoint ptr %cur.i114 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %incdec.ptr3.i124, ptr %cur.i114, align 4
  %76 = ptrtoint ptr %incdec.ptr.i120 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr.i120, align 1
  %conv4.i125 = zext i8 %77 to i32
  %add.i126 = or i32 %shl.i123, %conv4.i125
  br label %get_len.exit

get_len.exit:                                     ; preds = %if.then.i127, %if.end48.get_len.exit_crit_edge
  %v.0.i128 = phi i32 [ %add.i126, %if.then.i127 ], [ %conv.i121, %if.end48.get_len.exit_crit_edge ]
  %78 = ptrtoint ptr %cur.i114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i114, align 4
  %add.ptr51 = getelementptr i8, ptr %79, i32 %v.0.i128
  store ptr %add.ptr51, ptr %cur.i114, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv = zext i8 %1 to i32
  %bit54 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %80 = ptrtoint ptr %bit54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bit54, align 4
  %add55 = add i32 %81, %conv
  store i32 %add55, ptr %bit54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add55)
  %cmp = icmp ugt i32 %add55, 7
  br i1 %cmp, label %if.then57, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then57:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %add55, 3
  %cur59 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %82 = ptrtoint ptr %cur59 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur59, align 4
  %add.ptr60 = getelementptr i8, ptr %83, i32 %shr
  store ptr %add.ptr60, ptr %cur59, align 4
  %and62 = and i32 %add55, 7
  %84 = ptrtoint ptr %bit54 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and62, ptr %bit54, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then57, %sw.default.sw.epilog_crit_edge, %get_len.exit, %if.end34, %if.end11, %if.end
  %bit.i129 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %85 = ptrtoint ptr %bit.i129 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bit.i129, align 4
  %div11.i130 = lshr i32 %86, 3
  %rem.i131 = and i32 %86, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i131)
  %cmp.not.i132 = icmp ne i32 %rem.i131, 0
  %inc.i133 = zext i1 %cmp.not.i132 to i32
  %spec.select.i134 = add nuw nsw i32 %div11.i130, %inc.i133
  %cur.i135 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %87 = ptrtoint ptr %cur.i135 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i135, align 4
  %add.ptr.i136 = getelementptr i8, ptr %88, i32 %spec.select.i134
  %end.i137 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %89 = ptrtoint ptr %end.i137 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i137, align 4
  %cmp2.i138.not = icmp ugt ptr %add.ptr.i136, %90
  %. = sext i1 %cmp2.i138.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end44.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb13.cleanup_crit_edge ], [ -1, %if.end44.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_enum(ptr nocapture noundef %bs, ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr, align 4
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %3 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %bit.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %7 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 7
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.get_bit.exit_crit_edge

land.lhs.true.get_bit.exit_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bit.exit

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %4, i32 1
  %9 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr.i, ptr %cur.i, align 4
  %10 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bit.i, align 4
  br label %get_bit.exit

get_bit.exit:                                     ; preds = %if.then.i, %land.lhs.true.get_bit.exit_crit_edge
  %conv.i = zext i8 %6 to i32
  %shr.i = lshr i32 128, %8
  %and.i = and i32 %shr.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %get_bit.exit.if.else_crit_edge, label %if.then

get_bit.exit.if.else_crit_edge:                   ; preds = %get_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %get_bit.exit
  %11 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit.i, align 4
  %add = add i32 %12, 7
  store i32 %add, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add)
  %cmp = icmp ugt i32 %add, 7
  br i1 %cmp, label %if.then.if.end20.sink.split_crit_edge, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then.if.end20.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.else:                                          ; preds = %get_bit.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sz, align 1
  %conv7 = zext i8 %14 to i32
  %bit8 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %15 = ptrtoint ptr %bit8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bit8, align 4
  %add9 = add i32 %16, %conv7
  store i32 %add9, ptr %bit8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add9)
  %cmp10 = icmp ugt i32 %add9, 7
  br i1 %cmp10, label %if.then12, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cur15 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then12, %if.then.if.end20.sink.split_crit_edge
  %cur15.sink38 = phi ptr [ %cur15, %if.then12 ], [ %cur.i, %if.then.if.end20.sink.split_crit_edge ]
  %add9.sink = phi i32 [ %add9, %if.then12 ], [ %add, %if.then.if.end20.sink.split_crit_edge ]
  %bit8.sink = phi ptr [ %bit8, %if.then12 ], [ %bit.i, %if.then.if.end20.sink.split_crit_edge ]
  %shr14.sink = lshr i32 %add9.sink, 3
  %17 = ptrtoint ptr %cur15.sink38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur15.sink38, align 4
  %add.ptr16 = getelementptr i8, ptr %18, i32 %shr14.sink
  store ptr %add.ptr16, ptr %cur15.sink38, align 4
  %and18 = and i32 %add9.sink, 7
  %19 = ptrtoint ptr %bit8.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and18, ptr %bit8.sink, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %bit.i35 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %20 = ptrtoint ptr %bit.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bit.i35, align 4
  %div11.i = lshr i32 %21, 3
  %rem.i = and i32 %21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i36 = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %div11.i, %inc.i36
  %cur.i37 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %22 = ptrtoint ptr %cur.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i37, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %25
  %. = sext i1 %cmp2.i.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_bitstr(ptr nocapture noundef %bs, ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sz, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %6, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 10, label %sw.bb3
    i8 12, label %sw.bb16
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lb, align 2
  %conv2 = zext i8 %9 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %10 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit, align 4
  %div11.i = lshr i32 %11, 3
  %add1.i = add nuw nsw i32 %div11.i, 2
  %rem.i = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %add1.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %12 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %15
  br i1 %cmp2.i.not, label %sw.bb3.cleanup_crit_edge, label %if.end6

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr8 = getelementptr i8, ptr %13, i32 1
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr8, ptr %cur.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %13, align 1
  %conv9 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %incdec.ptr11 = getelementptr i8, ptr %13, i32 2
  store ptr %incdec.ptr11, ptr %cur.i, align 4
  %19 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr8, align 1
  %conv12 = zext i8 %20 to i32
  %lb13 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %21 = ptrtoint ptr %lb13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lb13, align 2
  %conv14 = zext i8 %22 to i32
  %add = or i32 %shl, %conv12
  %add15 = add nuw nsw i32 %add, %conv14
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %23 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bit, align 4
  %div11.i43 = lshr i32 %24, 3
  %add1.i44 = add nuw nsw i32 %div11.i43, 2
  %rem.i45 = and i32 %24, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i45)
  %cmp.not.i46 = icmp ne i32 %rem.i45, 0
  %inc.i47 = zext i1 %cmp.not.i46 to i32
  %spec.select.i48 = add nuw nsw i32 %add1.i44, %inc.i47
  %cur.i49 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %25 = ptrtoint ptr %cur.i49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %26, i32 %spec.select.i48
  %end.i51 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %27 = ptrtoint ptr %end.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i51, align 4
  %cmp2.i52.not = icmp ugt ptr %add.ptr.i50, %28
  br i1 %cmp2.i52.not, label %sw.bb16.cleanup_crit_edge, label %if.end20

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  %incdec.ptr.i = getelementptr i8, ptr %26, i32 1
  %29 = ptrtoint ptr %cur.i49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %incdec.ptr.i, ptr %cur.i49, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %26, align 1
  %conv.i = zext i8 %31 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end20.sw.epilog_crit_edge, label %if.then.i

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = shl nuw nsw i32 %conv.i, 8
  %shl.i = and i32 %and1.i, 16128
  %incdec.ptr3.i = getelementptr i8, ptr %26, i32 2
  %32 = ptrtoint ptr %cur.i49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %incdec.ptr3.i, ptr %cur.i49, align 4
  %33 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.i, align 1
  %conv4.i = zext i8 %34 to i32
  %add.i = or i32 %shl.i, %conv4.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %if.end20.sw.epilog_crit_edge, %if.end6, %sw.bb, %if.end.sw.epilog_crit_edge
  %len.0 = phi i32 [ %add15, %if.end6 ], [ %conv2, %sw.bb ], [ 0, %if.end.sw.epilog_crit_edge ], [ %add.i, %if.then.i ], [ %conv.i, %if.end20.sw.epilog_crit_edge ]
  %shr = lshr i32 %len.0, 3
  %cur22 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %35 = ptrtoint ptr %cur22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur22, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %shr
  store ptr %add.ptr, ptr %cur22, align 4
  %and = and i32 %len.0, 7
  %37 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.i58 = icmp ne i32 %and, 0
  %inc.i59 = zext i1 %cmp.not.i58 to i32
  %add.ptr.i62 = getelementptr i8, ptr %add.ptr, i32 %inc.i59
  %end.i63 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %38 = ptrtoint ptr %end.i63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i63, align 4
  %cmp2.i64.not = icmp ugt ptr %add.ptr.i62, %39
  %. = sext i1 %cmp2.i64.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb16.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb3.cleanup_crit_edge ], [ -1, %sw.bb16.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_numstr(ptr nocapture noundef %bs, ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sz, align 1
  %conv = zext i8 %1 to i32
  %bit.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %2 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit.i, align 4
  %add.i = add i32 %3, %conv
  %div11.i = lshr i32 %add.i, 3
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %div11.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %4 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %7
  br i1 %cmp2.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %conv.i = zext i8 %9 to i32
  %shr.i = lshr i32 255, %3
  %and.i = and i32 %shr.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 8
  br i1 %cmp.i, label %get_bits.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp5.i = icmp eq i32 %add.i, 8
  br i1 %cmp5.i, label %get_bits.exit.thread, label %get_bits.exit.thread53

get_bits.exit.thread:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %5, i32 1
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %incdec.ptr.i, ptr %cur.i, align 4
  %11 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bit.i, align 4
  %lb48 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %12 = ptrtoint ptr %lb48 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lb48, align 2
  %conv449 = zext i8 %13 to i32
  %add50 = add nuw nsw i32 %and.i, %conv449
  br label %if.end8

get_bits.exit.thread53:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %and.i, 8
  %incdec.ptr12.i = getelementptr i8, ptr %5, i32 1
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr12.i, ptr %cur.i, align 4
  %15 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr12.i, align 1
  %conv13.i = zext i8 %16 to i32
  %add14.i = or i32 %shl.i, %conv13.i
  %sub15.i = sub i32 16, %add.i
  %shr16.i = lshr i32 %add14.i, %sub15.i
  %sub17.i = add i32 %add.i, -8
  %17 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub17.i, ptr %bit.i, align 4
  %lb56 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %18 = ptrtoint ptr %lb56 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lb56, align 2
  %conv457 = zext i8 %19 to i32
  %add58 = add i32 %shr16.i, %conv457
  br label %if.then6

get_bits.exit:                                    ; preds = %if.end
  %sub.i = sub nuw nsw i32 8, %add.i
  %shr3.i = lshr i32 %and.i, %sub.i
  %20 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %bit.i, align 4
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %21 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lb, align 2
  %conv4 = zext i8 %22 to i32
  %add = add nuw nsw i32 %shr3.i, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool5.not = icmp eq i32 %add.i, 0
  br i1 %tobool5.not, label %get_bits.exit.if.end8_crit_edge, label %get_bits.exit.if.then6_crit_edge

get_bits.exit.if.then6_crit_edge:                 ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

get_bits.exit.if.end8_crit_edge:                  ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %get_bits.exit.if.then6_crit_edge, %get_bits.exit.thread53
  %add60 = phi i32 [ %add58, %get_bits.exit.thread53 ], [ %add, %get_bits.exit.if.then6_crit_edge ]
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bit.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %get_bits.exit.if.end8_crit_edge, %get_bits.exit.thread
  %add52 = phi i32 [ %add50, %get_bits.exit.thread ], [ %add60, %if.then6 ], [ %add, %get_bits.exit.if.end8_crit_edge ]
  %shl = shl i32 %add52, 2
  %26 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bit.i, align 4
  %add10 = add i32 %27, %shl
  store i32 %add10, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add10)
  %cmp = icmp ugt i32 %add10, 7
  br i1 %cmp, label %if.then12, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %add10, 3
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %shr
  store ptr %add.ptr, ptr %cur.i, align 4
  %and = and i32 %add10, 7
  %30 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %bit.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end8.if.end16_crit_edge
  %31 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bit.i, align 4
  %div11.i36 = lshr i32 %32, 3
  %rem.i37 = and i32 %32, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i37)
  %cmp.not.i38 = icmp ne i32 %rem.i37, 0
  %inc.i39 = zext i1 %cmp.not.i38 to i32
  %spec.select.i40 = add nuw nsw i32 %div11.i36, %inc.i39
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %34, i32 %spec.select.i40
  %cmp2.i44.not = icmp ugt ptr %add.ptr.i42, %7
  %. = sext i1 %cmp2.i44.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_octstr(ptr noundef %bs, ptr nocapture noundef readonly %f, ptr noundef writeonly %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sz, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %1, label %sw.default [
    i8 0, label %sw.bb
    i8 9, label %sw.bb15
    i8 12, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %3 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lb, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  br i1 %cmp, label %if.then, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %sw.bb
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %tobool5.not = icmp eq ptr %base, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %attr = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr, align 4
  %12 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not = icmp eq i16 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end12_crit_edge, label %if.then8

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %cur9 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %13 = ptrtoint ptr %cur9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur9, align 4
  %15 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bs, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %offset = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 5
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %offset, align 2
  %conv10 = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %base, i32 %conv10
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub, ptr %add.ptr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  %20 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lb, align 2
  %conv14 = zext i8 %21 to i32
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %bit16 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %22 = ptrtoint ptr %bit16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %sw.bb15.if.end22_crit_edge, label %if.then18

sw.bb15.if.end22_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %cur19 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %24 = ptrtoint ptr %cur19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur19, align 4
  %incdec.ptr20 = getelementptr i8, ptr %25, i32 1
  store ptr %incdec.ptr20, ptr %cur19, align 4
  %26 = ptrtoint ptr %bit16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bit16, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %sw.bb15.if.end22_crit_edge
  %27 = ptrtoint ptr %bit16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bit16, align 4
  %div11.i = lshr i32 %28, 3
  %add1.i = add nuw nsw i32 %div11.i, 1
  %rem.i = and i32 %28, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %add1.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %32
  br i1 %cmp2.i.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr27 = getelementptr i8, ptr %30, i32 1
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr27, ptr %cur.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %30, align 1
  %conv28 = zext i8 %35 to i32
  %lb29 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %36 = ptrtoint ptr %lb29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %lb29, align 2
  %conv30 = zext i8 %37 to i32
  %add = add nuw nsw i32 %conv30, %conv28
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %bit32 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %38 = ptrtoint ptr %bit32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bit32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool33.not = icmp eq i32 %39, 0
  br i1 %tobool33.not, label %sw.bb31.if.end38_crit_edge, label %if.then34

sw.bb31.if.end38_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  %cur35 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %40 = ptrtoint ptr %cur35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur35, align 4
  %incdec.ptr36 = getelementptr i8, ptr %41, i32 1
  store ptr %incdec.ptr36, ptr %cur35, align 4
  %42 = ptrtoint ptr %bit32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %bit32, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %sw.bb31.if.end38_crit_edge
  %43 = ptrtoint ptr %bit32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bit32, align 4
  %div11.i104 = lshr i32 %44, 3
  %add1.i105 = add nuw nsw i32 %div11.i104, 2
  %rem.i106 = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i106)
  %cmp.not.i107 = icmp ne i32 %rem.i106, 0
  %inc.i108 = zext i1 %cmp.not.i107 to i32
  %spec.select.i109 = add nuw nsw i32 %add1.i105, %inc.i108
  %cur.i110 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %45 = ptrtoint ptr %cur.i110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %46, i32 %spec.select.i109
  %end.i112 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %47 = ptrtoint ptr %end.i112 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i112, align 4
  %cmp2.i113.not = icmp ugt ptr %add.ptr.i111, %48
  br i1 %cmp2.i113.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %incdec.ptr.i = getelementptr i8, ptr %46, i32 1
  %49 = ptrtoint ptr %cur.i110 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr.i, ptr %cur.i110, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %46, align 1
  %conv.i = zext i8 %51 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end42.get_len.exit_crit_edge, label %if.then.i

if.end42.get_len.exit_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = shl nuw nsw i32 %conv.i, 8
  %shl.i = and i32 %and1.i, 16128
  %incdec.ptr3.i = getelementptr i8, ptr %46, i32 2
  %52 = ptrtoint ptr %cur.i110 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %incdec.ptr3.i, ptr %cur.i110, align 4
  %53 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i, align 1
  %conv4.i = zext i8 %54 to i32
  %add.i = or i32 %shl.i, %conv4.i
  br label %get_len.exit

get_len.exit:                                     ; preds = %if.then.i, %if.end42.get_len.exit_crit_edge
  %v.0.i = phi i32 [ %add.i, %if.then.i ], [ %conv.i, %if.end42.get_len.exit_crit_edge ]
  %lb44 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %55 = ptrtoint ptr %lb44 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lb44, align 2
  %conv45 = zext i8 %56 to i32
  %add46 = add nsw i32 %v.0.i, %conv45
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv = zext i8 %1 to i32
  %bit.i116 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %57 = ptrtoint ptr %bit.i116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bit.i116, align 4
  %add.i117 = add i32 %58, %conv
  %div11.i118 = lshr i32 %add.i117, 3
  %rem.i119 = and i32 %add.i117, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i119)
  %cmp.not.i120 = icmp ne i32 %rem.i119, 0
  %inc.i121 = zext i1 %cmp.not.i120 to i32
  %spec.select.i122 = add nuw nsw i32 %div11.i118, %inc.i121
  %cur.i123 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %59 = ptrtoint ptr %cur.i123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i123, align 4
  %add.ptr.i124 = getelementptr i8, ptr %60, i32 %spec.select.i122
  %end.i125 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %61 = ptrtoint ptr %end.i125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i125, align 4
  %cmp2.i126.not = icmp ugt ptr %add.ptr.i124, %62
  br i1 %cmp2.i126.not, label %sw.default.cleanup_crit_edge, label %if.end52

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %sw.default
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %60, align 1
  %conv.i129 = zext i8 %64 to i32
  %shr.i = lshr i32 255, %58
  %and.i131 = and i32 %shr.i, %conv.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i117)
  %cmp.i = icmp ult i32 %add.i117, 8
  br i1 %cmp.i, label %get_bits.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i117)
  %cmp5.i = icmp eq i32 %add.i117, 8
  br i1 %cmp5.i, label %get_bits.exit.thread, label %get_bits.exit.thread154

get_bits.exit.thread:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i134 = getelementptr i8, ptr %60, i32 1
  %65 = ptrtoint ptr %cur.i123 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %incdec.ptr.i134, ptr %cur.i123, align 4
  %66 = ptrtoint ptr %bit.i116 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bit.i116, align 4
  %lb56150 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %67 = ptrtoint ptr %lb56150 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lb56150, align 2
  %conv57151 = zext i8 %68 to i32
  %add58152 = add nuw nsw i32 %and.i131, %conv57151
  br label %sw.epilog

get_bits.exit.thread154:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i135 = shl nuw nsw i32 %and.i131, 8
  %incdec.ptr12.i = getelementptr i8, ptr %60, i32 1
  %69 = ptrtoint ptr %cur.i123 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %incdec.ptr12.i, ptr %cur.i123, align 4
  %70 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr12.i, align 1
  %conv13.i = zext i8 %71 to i32
  %add14.i = or i32 %shl.i135, %conv13.i
  %sub15.i = sub i32 16, %add.i117
  %shr16.i = lshr i32 %add14.i, %sub15.i
  %sub17.i = add i32 %add.i117, -8
  %72 = ptrtoint ptr %bit.i116 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub17.i, ptr %bit.i116, align 4
  %lb56157 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %73 = ptrtoint ptr %lb56157 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %lb56157, align 2
  %conv57158 = zext i8 %74 to i32
  %add58159 = add i32 %shr16.i, %conv57158
  br label %if.then61

get_bits.exit:                                    ; preds = %if.end52
  %sub.i = sub nuw nsw i32 8, %add.i117
  %shr3.i = lshr i32 %and.i131, %sub.i
  %75 = ptrtoint ptr %bit.i116 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i117, ptr %bit.i116, align 4
  %lb56 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %76 = ptrtoint ptr %lb56 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %lb56, align 2
  %conv57 = zext i8 %77 to i32
  %add58 = add nuw nsw i32 %shr3.i, %conv57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i117)
  %tobool60.not = icmp eq i32 %add.i117, 0
  br i1 %tobool60.not, label %get_bits.exit.sw.epilog_crit_edge, label %get_bits.exit.if.then61_crit_edge

get_bits.exit.if.then61_crit_edge:                ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

get_bits.exit.sw.epilog_crit_edge:                ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then61:                                        ; preds = %get_bits.exit.if.then61_crit_edge, %get_bits.exit.thread154
  %add58161 = phi i32 [ %add58159, %get_bits.exit.thread154 ], [ %add58, %get_bits.exit.if.then61_crit_edge ]
  %78 = ptrtoint ptr %cur.i123 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i123, align 4
  %incdec.ptr63 = getelementptr i8, ptr %79, i32 1
  store ptr %incdec.ptr63, ptr %cur.i123, align 4
  %80 = ptrtoint ptr %bit.i116 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %bit.i116, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then61, %get_bits.exit.sw.epilog_crit_edge, %get_bits.exit.thread, %get_len.exit, %if.end25, %if.end12
  %len.0 = phi i32 [ %add58161, %if.then61 ], [ %add58, %get_bits.exit.sw.epilog_crit_edge ], [ %add46, %get_len.exit ], [ %add, %if.end25 ], [ %conv14, %if.end12 ], [ %add58152, %get_bits.exit.thread ]
  %cur66 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %81 = ptrtoint ptr %cur66 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur66, align 4
  %add.ptr67 = getelementptr i8, ptr %82, i32 %len.0
  store ptr %add.ptr67, ptr %cur66, align 4
  %bit.i137 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %83 = ptrtoint ptr %bit.i137 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bit.i137, align 4
  %div11.i138 = lshr i32 %84, 3
  %rem.i139 = and i32 %84, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i139)
  %cmp.not.i140 = icmp ne i32 %rem.i139, 0
  %inc.i141 = zext i1 %cmp.not.i140 to i32
  %spec.select.i142 = add nuw nsw i32 %div11.i138, %inc.i141
  %add.ptr.i144 = getelementptr i8, ptr %add.ptr67, i32 %spec.select.i142
  %end.i145 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %85 = ptrtoint ptr %end.i145 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %end.i145, align 4
  %cmp2.i146.not = icmp ugt ptr %add.ptr.i144, %86
  %. = sext i1 %cmp2.i146.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end22.cleanup_crit_edge ], [ -1, %if.end38.cleanup_crit_edge ], [ -1, %sw.default.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @decode_bmpstr(ptr nocapture noundef %bs, ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %base, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cond = icmp eq i8 %1, 9
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit, align 4
  %div11.i = lshr i32 %8, 3
  %add1.i = add nuw nsw i32 %div11.i, 1
  %rem.i = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %add1.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %9 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %12
  br i1 %cmp2.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr6 = getelementptr i8, ptr %10, i32 1
  %13 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr6, ptr %cur.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %10, align 1
  %conv7 = zext i8 %15 to i32
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %16 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lb, align 2
  %conv8 = zext i8 %17 to i32
  %add = add nuw nsw i32 %conv8, %conv7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv = zext i8 %1 to i32
  %bit.i48 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %18 = ptrtoint ptr %bit.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bit.i48, align 4
  %add.i = add i32 %19, %conv
  %div11.i49 = lshr i32 %add.i, 3
  %rem.i50 = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i50)
  %cmp.not.i51 = icmp ne i32 %rem.i50, 0
  %inc.i52 = zext i1 %cmp.not.i51 to i32
  %spec.select.i53 = add nuw nsw i32 %div11.i49, %inc.i52
  %cur.i54 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %20 = ptrtoint ptr %cur.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %21, i32 %spec.select.i53
  %end.i56 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %22 = ptrtoint ptr %end.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i56, align 4
  %cmp2.i57.not = icmp ugt ptr %add.ptr.i55, %23
  br i1 %cmp2.i57.not, label %sw.default.cleanup_crit_edge, label %if.end14

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %sw.default
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 1
  %conv.i = zext i8 %25 to i32
  %shr.i = lshr i32 255, %19
  %and.i = and i32 %shr.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 8
  br i1 %cmp.i, label %get_bits.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp5.i = icmp eq i32 %add.i, 8
  br i1 %cmp5.i, label %get_bits.exit.thread, label %get_bits.exit.thread79

get_bits.exit.thread:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %21, i32 1
  %26 = ptrtoint ptr %cur.i54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.i, ptr %cur.i54, align 4
  %27 = ptrtoint ptr %bit.i48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bit.i48, align 4
  %lb1875 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %28 = ptrtoint ptr %lb1875 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lb1875, align 2
  %conv1976 = zext i8 %29 to i32
  %add2077 = add nuw nsw i32 %and.i, %conv1976
  br label %sw.epilog

get_bits.exit.thread79:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %and.i, 8
  %incdec.ptr12.i = getelementptr i8, ptr %21, i32 1
  %30 = ptrtoint ptr %cur.i54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %incdec.ptr12.i, ptr %cur.i54, align 4
  %31 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr12.i, align 1
  %conv13.i = zext i8 %32 to i32
  %add14.i = or i32 %shl.i, %conv13.i
  %sub15.i = sub i32 16, %add.i
  %shr16.i = lshr i32 %add14.i, %sub15.i
  %sub17.i = add i32 %add.i, -8
  %33 = ptrtoint ptr %bit.i48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub17.i, ptr %bit.i48, align 4
  %lb1882 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %34 = ptrtoint ptr %lb1882 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lb1882, align 2
  %conv1983 = zext i8 %35 to i32
  %add2084 = add i32 %shr16.i, %conv1983
  br label %if.then23

get_bits.exit:                                    ; preds = %if.end14
  %sub.i = sub nuw nsw i32 8, %add.i
  %shr3.i = lshr i32 %and.i, %sub.i
  %36 = ptrtoint ptr %bit.i48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %bit.i48, align 4
  %lb18 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %37 = ptrtoint ptr %lb18 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lb18, align 2
  %conv19 = zext i8 %38 to i32
  %add20 = add nuw nsw i32 %shr3.i, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool22.not = icmp eq i32 %add.i, 0
  br i1 %tobool22.not, label %get_bits.exit.sw.epilog_crit_edge, label %get_bits.exit.if.then23_crit_edge

get_bits.exit.if.then23_crit_edge:                ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

get_bits.exit.sw.epilog_crit_edge:                ; preds = %get_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then23:                                        ; preds = %get_bits.exit.if.then23_crit_edge, %get_bits.exit.thread79
  %add2086 = phi i32 [ %add2084, %get_bits.exit.thread79 ], [ %add20, %get_bits.exit.if.then23_crit_edge ]
  %39 = ptrtoint ptr %cur.i54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i54, align 4
  %incdec.ptr25 = getelementptr i8, ptr %40, i32 1
  store ptr %incdec.ptr25, ptr %cur.i54, align 4
  %41 = ptrtoint ptr %bit.i48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %bit.i48, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then23, %get_bits.exit.sw.epilog_crit_edge, %get_bits.exit.thread, %if.end4
  %len.0 = phi i32 [ %add, %if.end4 ], [ %add2086, %if.then23 ], [ %add20, %get_bits.exit.sw.epilog_crit_edge ], [ %add2077, %get_bits.exit.thread ]
  %shl = shl i32 %len.0, 1
  %cur28 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %42 = ptrtoint ptr %cur28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur28, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 %shl
  store ptr %add.ptr, ptr %cur28, align 4
  %bit.i62 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %44 = ptrtoint ptr %bit.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bit.i62, align 4
  %div11.i63 = lshr i32 %45, 3
  %rem.i64 = and i32 %45, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i64)
  %cmp.not.i65 = icmp ne i32 %rem.i64, 0
  %inc.i66 = zext i1 %cmp.not.i65 to i32
  %spec.select.i67 = add nuw nsw i32 %div11.i63, %inc.i66
  %add.ptr.i69 = getelementptr i8, ptr %add.ptr, i32 %spec.select.i67
  %end.i70 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %46 = ptrtoint ptr %end.i70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i70, align 4
  %cmp2.i71.not = icmp ugt ptr %add.ptr.i69, %47
  %. = sext i1 %cmp2.i71.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -1, %sw.default.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_seq(ptr noundef %bs, ptr nocapture noundef readonly %f, ptr noundef %base, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %base, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %attr = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 5
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %offset, align 2
  %conv2 = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %base, i32 %conv2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  %bit.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %5 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit.i, align 4
  %add.i = add i32 %6, 1
  %div11.i = lshr i32 %add.i, 3
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %div11.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %7 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %10
  br i1 %cmp2.i.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %attr4 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %attr4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr4, align 4
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool7.not = icmp eq i16 %13, 0
  br i1 %tobool7.not, label %if.end.cond.end11_crit_edge, label %cond.true8

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end11

cond.true8:                                       ; preds = %if.end
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 1
  %16 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 7
  br i1 %cmp.i, label %if.then.i, label %cond.true8.get_bit.exit_crit_edge

cond.true8.get_bit.exit_crit_edge:                ; preds = %cond.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bit.exit

if.then.i:                                        ; preds = %cond.true8
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %8, i32 1
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %incdec.ptr.i, ptr %cur.i, align 4
  %18 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bit.i, align 4
  br label %get_bit.exit

get_bit.exit:                                     ; preds = %if.then.i, %cond.true8.get_bit.exit_crit_edge
  %conv.i = zext i8 %15 to i32
  %shr.i = lshr i32 128, %6
  %and.i = and i32 %shr.i, %conv.i
  br label %cond.end11

cond.end11:                                       ; preds = %get_bit.exit, %if.end.cond.end11_crit_edge
  %cond12 = phi i32 [ %and.i, %get_bit.exit ], [ 0, %if.end.cond.end11_crit_edge ]
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sz, align 1
  %conv13 = zext i8 %20 to i32
  %21 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bit.i, align 4
  %add.i277 = add i32 %22, %conv13
  %div11.i278 = lshr i32 %add.i277, 3
  %rem.i279 = and i32 %add.i277, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i279)
  %cmp.not.i280 = icmp ne i32 %rem.i279, 0
  %inc.i281 = zext i1 %cmp.not.i280 to i32
  %spec.select.i282 = add nuw nsw i32 %div11.i278, %inc.i281
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %add.ptr.i284 = getelementptr i8, ptr %24, i32 %spec.select.i282
  %cmp2.i286.not = icmp ugt ptr %add.ptr.i284, %10
  br i1 %cmp2.i286.not, label %cond.end11.cleanup_crit_edge, label %if.end17

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %cond.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end17.get_bitmap.exit_crit_edge, label %if.end.i

if.end17.get_bitmap.exit_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bitmap.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i277)
  %cmp.i290 = icmp ult i32 %add.i277, 8
  br i1 %cmp.i290, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i292 = zext i8 %26 to i32
  %add3.i = add i32 %22, 24
  %shl.i = shl i32 %conv.i292, %add3.i
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i277)
  %cmp5.i = icmp eq i32 %add.i277, 8
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i293 = getelementptr i8, ptr %24, i32 1
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %incdec.ptr.i293, ptr %cur.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %24, align 1
  %conv9.i = zext i8 %29 to i32
  %add11.i = add i32 %22, 24
  %shl12.i = shl i32 %conv9.i, %add11.i
  br label %if.end45.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %bytes.085.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %div11.i278, %if.else.i.for.body.i_crit_edge ]
  %shift.084.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ 24, %if.else.i.for.body.i_crit_edge ]
  %v.083.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur.i, align 4
  %incdec.ptr17.i = getelementptr i8, ptr %31, i32 1
  store ptr %incdec.ptr17.i, ptr %cur.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv18.i = zext i8 %33 to i32
  %shl19.i = shl i32 %conv18.i, %shift.084.i
  %or.i = or i32 %shl19.i, %v.083.i
  %dec.i = add i32 %bytes.085.i, -1
  %sub.i = add i32 %shift.084.i, -8
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool15.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %incdec.ptr17.i.le = getelementptr i8, ptr %31, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i277)
  %cmp20.i = icmp ult i32 %add.i277, 32
  br i1 %cmp20.i, label %if.then22.i, label %if.else29.i

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = and i32 %add.i277, -8
  %35 = sub nsw i32 24, %34
  %36 = ptrtoint ptr %incdec.ptr17.i.le to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr17.i.le, align 1
  %conv24.i = zext i8 %37 to i32
  %shl25.i = shl nuw i32 %conv24.i, %35
  %or26.i = or i32 %shl25.i, %or.i
  %shl28.i = shl i32 %or26.i, %22
  br label %if.end45.i

if.else29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i277)
  %cmp30.not.i = icmp eq i32 %add.i277, 32
  br i1 %cmp30.not.i, label %if.else29.i.if.end45.i_crit_edge, label %if.then32.i

if.else29.i.if.end45.i_crit_edge:                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl34.i = shl i32 %or.i, %22
  %38 = ptrtoint ptr %incdec.ptr17.i.le to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr17.i.le, align 1
  %conv36.i = zext i8 %39 to i32
  %sub38.i = sub i32 8, %22
  %shr39.i = lshr i32 %conv36.i, %sub38.i
  %or40.i = or i32 %shr39.i, %shl34.i
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then32.i, %if.else29.i.if.end45.i_crit_edge, %if.then22.i, %if.then7.i, %if.then1.i
  %.sink.i = phi i32 [ 0, %if.then7.i ], [ %add.i277, %if.then1.i ], [ %rem.i279, %if.then32.i ], [ 0, %if.else29.i.if.end45.i_crit_edge ], [ %rem.i279, %if.then22.i ]
  %v.2.i = phi i32 [ %shl12.i, %if.then7.i ], [ %shl.i, %if.then1.i ], [ %or40.i, %if.then32.i ], [ %or.i, %if.else29.i.if.end45.i_crit_edge ], [ %shl28.i, %if.then22.i ]
  %40 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %bit.i, align 4
  %sub46.i = sub nsw i32 32, %conv13
  %shl47.i = shl nsw i32 -1, %sub46.i
  %and48.i = and i32 %v.2.i, %shl47.i
  br label %get_bitmap.exit

get_bitmap.exit:                                  ; preds = %if.end45.i, %if.end17.get_bitmap.exit_crit_edge
  %retval.0.i296 = phi i32 [ %and48.i, %if.end45.i ], [ 0, %if.end17.get_bitmap.exit_crit_edge ]
  %tobool21.not = icmp eq ptr %cond, null
  br i1 %tobool21.not, label %get_bitmap.exit.if.end23_crit_edge, label %if.then22

get_bitmap.exit.if.end23_crit_edge:               ; preds = %get_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %get_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i296, ptr %cond, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %get_bitmap.exit.if.end23_crit_edge
  %fields = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 6
  %42 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fields, align 4
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %44 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %lb, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp434.not = icmp eq i8 %45, 0
  br i1 %cmp434.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %add = add i32 %level, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %son.0437 = phi ptr [ %43, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %opt.0436 = phi i32 [ 0, %for.body.lr.ph ], [ %opt.2, %for.inc.for.body_crit_edge ]
  %i.0435 = phi i32 [ 0, %for.body.lr.ph ], [ %inc82, %for.inc.for.body_crit_edge ]
  %attr26 = getelementptr inbounds %struct.field_t, ptr %son.0437, i32 0, i32 4
  %46 = ptrtoint ptr %attr26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %attr26, align 4
  %conv27 = zext i16 %47 to i32
  %and28 = and i32 %conv27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %for.body
  %and34 = and i32 %conv27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end31.if.end41_crit_edge, label %if.then36

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then36:                                        ; preds = %if.end31
  %inc = add i32 %opt.0436, 1
  %shr = lshr i32 -2147483648, %opt.0436
  %and37 = and i32 %shr, %retval.0.i296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then36.for.inc_crit_edge, label %if.then36.if.end41_crit_edge

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %opt.1 = phi i32 [ %inc, %if.then36.if.end41_crit_edge ], [ %opt.0436, %if.end31.if.end41_crit_edge ]
  %48 = and i16 %47, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool45.not = icmp eq i16 %48, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end41
  %49 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bit.i, align 4
  %div11.i298 = lshr i32 %50, 3
  %rem.i299 = and i32 %50, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i299)
  %cmp.not.i300 = icmp ne i32 %rem.i299, 0
  %inc.i301 = zext i1 %cmp.not.i300 to i32
  %add1.i = add nuw nsw i32 %div11.i298, %inc.i301
  %spec.select.i302 = add nuw nsw i32 %add1.i, 2
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %add.ptr.i304 = getelementptr i8, ptr %52, i32 %spec.select.i302
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i, align 4
  %cmp2.i306.not = icmp ugt ptr %add.ptr.i304, %54
  br i1 %cmp2.i306.not, label %if.then46.cleanup_crit_edge, label %if.end50

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.then46
  %incdec.ptr.i309 = getelementptr i8, ptr %52, i32 1
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %incdec.ptr.i309, ptr %cur.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %52, align 1
  %conv.i310 = zext i8 %57 to i32
  %and.i311 = and i32 %conv.i310, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i311)
  %tobool.not.i312 = icmp eq i32 %and.i311, 0
  br i1 %tobool.not.i312, label %if.end50.get_len.exit_crit_edge, label %if.then.i315

if.end50.get_len.exit_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit

if.then.i315:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = shl nuw nsw i32 %conv.i310, 8
  %shl.i313 = and i32 %and1.i, 16128
  %incdec.ptr3.i = getelementptr i8, ptr %52, i32 2
  %58 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %incdec.ptr3.i, ptr %cur.i, align 4
  %59 = ptrtoint ptr %incdec.ptr.i309 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr.i309, align 1
  %conv4.i = zext i8 %60 to i32
  %add.i314 = or i32 %shl.i313, %conv4.i
  br label %get_len.exit

get_len.exit:                                     ; preds = %if.then.i315, %if.end50.get_len.exit_crit_edge
  %v.0.i = phi i32 [ %add.i314, %if.then.i315 ], [ %conv.i310, %if.end50.get_len.exit_crit_edge ]
  %spec.select.i323 = add nsw i32 %add1.i, %v.0.i
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %add.ptr.i325 = getelementptr i8, ptr %62, i32 %spec.select.i323
  %cmp2.i327.not = icmp ugt ptr %add.ptr.i325, %54
  br i1 %cmp2.i327.not, label %get_len.exit.cleanup_crit_edge, label %if.end55

get_len.exit.cleanup_crit_edge:                   ; preds = %get_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %get_len.exit
  br i1 %tobool21.not, label %if.end55.if.then61_crit_edge, label %lor.lhs.false

if.end55.if.then61_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

lor.lhs.false:                                    ; preds = %if.end55
  %63 = ptrtoint ptr %attr26 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %attr26, align 4
  %65 = and i16 %64, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool60.not = icmp eq i16 %65, 0
  br i1 %tobool60.not, label %lor.lhs.false.if.then61_crit_edge, label %if.end63

lor.lhs.false.if.then61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false.if.then61_crit_edge, %if.end55.if.then61_crit_edge
  %add.ptr62 = getelementptr i8, ptr %62, i32 %v.0.i
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr62, ptr %cur.i, align 4
  br label %for.inc

if.end63:                                         ; preds = %lor.lhs.false
  %67 = ptrtoint ptr %son.0437 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %son.0437, align 4
  %idxprom = zext i8 %68 to i32
  %arrayidx = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %call65 = tail call i32 %70(ptr noundef %bs, ptr noundef %son.0437, ptr noundef nonnull %cond, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end63.cleanup_crit_edge, label %if.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr70 = getelementptr i8, ptr %62, i32 %v.0.i
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr70, ptr %cur.i, align 4
  %72 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %bit.i, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end41
  %73 = ptrtoint ptr %son.0437 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %son.0437, align 4
  %idxprom73 = zext i8 %74 to i32
  %arrayidx74 = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom73
  %75 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx74, align 4
  %call76 = tail call i32 %76(ptr noundef %bs, ptr noundef %son.0437, ptr noundef %cond, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.else.cleanup_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.end69, %if.then61, %if.then36.for.inc_crit_edge
  %opt.2 = phi i32 [ %opt.1, %if.end69 ], [ %opt.1, %if.then61 ], [ %opt.1, %if.else.for.inc_crit_edge ], [ %inc, %if.then36.for.inc_crit_edge ]
  %inc82 = add nuw nsw i32 %i.0435, 1
  %incdec.ptr = getelementptr %struct.field_t, ptr %son.0437, i32 1
  %77 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %lb, align 2
  %conv24 = zext i8 %78 to i32
  %cmp = icmp ult i32 %inc82, %conv24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end23.for.end_crit_edge ], [ %inc82, %for.inc.for.end_crit_edge ]
  %son.0.lcssa = phi ptr [ %43, %if.end23.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond12)
  %tobool83.not = icmp eq i32 %cond12, 0
  br i1 %tobool83.not, label %for.end.cleanup_crit_edge, label %if.end85

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85:                                         ; preds = %for.end
  %79 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bit.i, align 4
  %add.i330 = add i32 %80, 7
  %div11.i331 = lshr i32 %add.i330, 3
  %rem.i332 = and i32 %add.i330, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i332)
  %cmp.not.i333 = icmp ne i32 %rem.i332, 0
  %inc.i334 = zext i1 %cmp.not.i333 to i32
  %spec.select.i335 = add nuw nsw i32 %div11.i331, %inc.i334
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %add.ptr.i337 = getelementptr i8, ptr %82, i32 %spec.select.i335
  %83 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i, align 4
  %cmp2.i339.not = icmp ugt ptr %add.ptr.i337, %84
  br i1 %cmp2.i339.not, label %if.end85.cleanup_crit_edge, label %if.end89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  %call90 = tail call fastcc i32 @get_bits(ptr noundef %bs, i32 noundef 7)
  %add91 = add i32 %call90, 1
  %85 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bit.i, align 4
  %add.i342 = add i32 %86, %add91
  %div11.i343 = lshr i32 %add.i342, 3
  %rem.i344 = and i32 %add.i342, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i344)
  %cmp.not.i345 = icmp ne i32 %rem.i344, 0
  %inc.i346 = zext i1 %cmp.not.i345 to i32
  %spec.select.i347 = add nuw nsw i32 %div11.i343, %inc.i346
  %87 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cur.i, align 4
  %add.ptr.i349 = getelementptr i8, ptr %88, i32 %spec.select.i347
  %89 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i, align 4
  %cmp2.i351.not = icmp ugt ptr %add.ptr.i349, %90
  br i1 %cmp2.i351.not, label %if.end89.cleanup_crit_edge, label %if.end95

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end95:                                         ; preds = %if.end89
  %call96 = tail call fastcc i32 @get_bitmap(ptr noundef %bs, i32 noundef %add91)
  br i1 %tobool21.not, label %if.end95.if.end102_crit_edge, label %if.then101

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sz, align 1
  %conv98 = zext i8 %92 to i32
  %shr99 = lshr i32 %call96, %conv98
  %or = or i32 %shr99, %retval.0.i296
  %93 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or, ptr %cond, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end95.if.end102_crit_edge
  %94 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool104.not = icmp eq i32 %95, 0
  br i1 %tobool104.not, label %if.end102.if.end109_crit_edge, label %if.then105

if.end102.if.end109_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %incdec.ptr107 = getelementptr i8, ptr %97, i32 1
  store ptr %incdec.ptr107, ptr %cur.i, align 4
  %98 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %bit.i, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end102.if.end109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add91)
  %cmp111441.not = icmp eq i32 %add91, 0
  br i1 %cmp111441.not, label %if.end109.cleanup_crit_edge, label %for.body113.lr.ph

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body113.lr.ph:                                ; preds = %if.end109
  %ub = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 3
  %add164 = add i32 %level, 1
  br label %for.body113

for.body113:                                      ; preds = %for.inc173.for.body113_crit_edge, %for.body113.lr.ph
  %son.1444 = phi ptr [ %son.0.lcssa, %for.body113.lr.ph ], [ %incdec.ptr176, %for.inc173.for.body113_crit_edge ]
  %opt.3443 = phi i32 [ 0, %for.body113.lr.ph ], [ %inc174, %for.inc173.for.body113_crit_edge ]
  %i.1442 = phi i32 [ %i.0.lcssa, %for.body113.lr.ph ], [ %inc175, %for.inc173.for.body113_crit_edge ]
  %99 = ptrtoint ptr %ub to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ub, align 1
  %conv114 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1442, i32 %conv114)
  %cmp115.not = icmp ult i32 %i.1442, %conv114
  br i1 %cmp115.not, label %if.end129, label %if.then117

if.then117:                                       ; preds = %for.body113
  %101 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bit.i, align 4
  %div11.i354 = lshr i32 %102, 3
  %rem.i356 = and i32 %102, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i356)
  %cmp.not.i357 = icmp ne i32 %rem.i356, 0
  %inc.i358 = zext i1 %cmp.not.i357 to i32
  %add1.i355 = add nuw nsw i32 %div11.i354, %inc.i358
  %spec.select.i359 = add nuw nsw i32 %add1.i355, 2
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %add.ptr.i361 = getelementptr i8, ptr %104, i32 %spec.select.i359
  %105 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i, align 4
  %cmp2.i363.not = icmp ugt ptr %add.ptr.i361, %106
  br i1 %cmp2.i363.not, label %if.then117.cleanup_crit_edge, label %if.end121

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end121:                                        ; preds = %if.then117
  %incdec.ptr.i366 = getelementptr i8, ptr %104, i32 1
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %incdec.ptr.i366, ptr %cur.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %104, align 1
  %conv.i367 = zext i8 %109 to i32
  %and.i368 = and i32 %conv.i367, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i368)
  %tobool.not.i369 = icmp eq i32 %and.i368, 0
  br i1 %tobool.not.i369, label %if.end121.get_len.exit378_crit_edge, label %if.then.i375

if.end121.get_len.exit378_crit_edge:              ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit378

if.then.i375:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i370 = shl nuw nsw i32 %conv.i367, 8
  %shl.i371 = and i32 %and1.i370, 16128
  %incdec.ptr3.i372 = getelementptr i8, ptr %104, i32 2
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %incdec.ptr3.i372, ptr %cur.i, align 4
  %111 = ptrtoint ptr %incdec.ptr.i366 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %incdec.ptr.i366, align 1
  %conv4.i373 = zext i8 %112 to i32
  %add.i374 = or i32 %shl.i371, %conv4.i373
  br label %get_len.exit378

get_len.exit378:                                  ; preds = %if.then.i375, %if.end121.get_len.exit378_crit_edge
  %v.0.i376 = phi i32 [ %add.i374, %if.then.i375 ], [ %conv.i367, %if.end121.get_len.exit378_crit_edge ]
  %spec.select.i385 = add nsw i32 %add1.i355, %v.0.i376
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %add.ptr.i387 = getelementptr i8, ptr %114, i32 %spec.select.i385
  %cmp2.i389.not = icmp ugt ptr %add.ptr.i387, %106
  br i1 %cmp2.i389.not, label %get_len.exit378.cleanup_crit_edge, label %if.end126

get_len.exit378.cleanup_crit_edge:                ; preds = %get_len.exit378
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end126:                                        ; preds = %get_len.exit378
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr128 = getelementptr i8, ptr %114, i32 %v.0.i376
  %115 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr128, ptr %cur.i, align 4
  br label %for.inc173

if.end129:                                        ; preds = %for.body113
  %attr130 = getelementptr inbounds %struct.field_t, ptr %son.1444, i32 0, i32 4
  %116 = ptrtoint ptr %attr130 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %attr130, align 4
  %118 = and i16 %117, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool133.not = icmp eq i16 %118, 0
  br i1 %tobool133.not, label %if.end135, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %if.end129
  %shr136 = lshr i32 -2147483648, %opt.3443
  %and137 = and i32 %shr136, %call96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end135.for.inc173_crit_edge, label %if.end140

if.end135.for.inc173_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc173

if.end140:                                        ; preds = %if.end135
  %119 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bit.i, align 4
  %div11.i392 = lshr i32 %120, 3
  %rem.i394 = and i32 %120, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i394)
  %cmp.not.i395 = icmp ne i32 %rem.i394, 0
  %inc.i396 = zext i1 %cmp.not.i395 to i32
  %add1.i393 = add nuw nsw i32 %div11.i392, %inc.i396
  %spec.select.i397 = add nuw nsw i32 %add1.i393, 2
  %121 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur.i, align 4
  %add.ptr.i399 = getelementptr i8, ptr %122, i32 %spec.select.i397
  %123 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i, align 4
  %cmp2.i401.not = icmp ugt ptr %add.ptr.i399, %124
  br i1 %cmp2.i401.not, label %if.end140.cleanup_crit_edge, label %if.end144

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end144:                                        ; preds = %if.end140
  %incdec.ptr.i404 = getelementptr i8, ptr %122, i32 1
  %125 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %incdec.ptr.i404, ptr %cur.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %122, align 1
  %conv.i405 = zext i8 %127 to i32
  %and.i406 = and i32 %conv.i405, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i406)
  %tobool.not.i407 = icmp eq i32 %and.i406, 0
  br i1 %tobool.not.i407, label %if.end144.get_len.exit416_crit_edge, label %if.then.i413

if.end144.get_len.exit416_crit_edge:              ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit416

if.then.i413:                                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i408 = shl nuw nsw i32 %conv.i405, 8
  %shl.i409 = and i32 %and1.i408, 16128
  %incdec.ptr3.i410 = getelementptr i8, ptr %122, i32 2
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %incdec.ptr3.i410, ptr %cur.i, align 4
  %129 = ptrtoint ptr %incdec.ptr.i404 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %incdec.ptr.i404, align 1
  %conv4.i411 = zext i8 %130 to i32
  %add.i412 = or i32 %shl.i409, %conv4.i411
  br label %get_len.exit416

get_len.exit416:                                  ; preds = %if.then.i413, %if.end144.get_len.exit416_crit_edge
  %v.0.i414 = phi i32 [ %add.i412, %if.then.i413 ], [ %conv.i405, %if.end144.get_len.exit416_crit_edge ]
  %spec.select.i423 = add nsw i32 %add1.i393, %v.0.i414
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %add.ptr.i425 = getelementptr i8, ptr %132, i32 %spec.select.i423
  %cmp2.i427.not = icmp ugt ptr %add.ptr.i425, %124
  br i1 %cmp2.i427.not, label %get_len.exit416.cleanup_crit_edge, label %if.end149

get_len.exit416.cleanup_crit_edge:                ; preds = %get_len.exit416
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end149:                                        ; preds = %get_len.exit416
  br i1 %tobool21.not, label %if.end149.if.then156_crit_edge, label %lor.lhs.false151

if.end149.if.then156_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

lor.lhs.false151:                                 ; preds = %if.end149
  %133 = ptrtoint ptr %attr130 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %attr130, align 4
  %135 = and i16 %134, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool155.not = icmp eq i16 %135, 0
  br i1 %tobool155.not, label %lor.lhs.false151.if.then156_crit_edge, label %if.end159

lor.lhs.false151.if.then156_crit_edge:            ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

if.then156:                                       ; preds = %lor.lhs.false151.if.then156_crit_edge, %if.end149.if.then156_crit_edge
  %add.ptr158 = getelementptr i8, ptr %132, i32 %v.0.i414
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr158, ptr %cur.i, align 4
  br label %for.inc173

if.end159:                                        ; preds = %lor.lhs.false151
  %137 = ptrtoint ptr %son.1444 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %son.1444, align 4
  %idxprom162 = zext i8 %138 to i32
  %arrayidx163 = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom162
  %139 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx163, align 4
  %call165 = tail call i32 %140(ptr noundef %bs, ptr noundef %son.1444, ptr noundef nonnull %cond, i32 noundef %add164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.end159.cleanup_crit_edge, label %if.end169

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end169:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr170 = getelementptr i8, ptr %132, i32 %v.0.i414
  %141 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr170, ptr %cur.i, align 4
  %142 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %bit.i, align 4
  br label %for.inc173

for.inc173:                                       ; preds = %if.end169, %if.then156, %if.end135.for.inc173_crit_edge, %if.end126
  %inc174 = add nuw i32 %opt.3443, 1
  %inc175 = add i32 %i.1442, 1
  %incdec.ptr176 = getelementptr %struct.field_t, ptr %son.1444, i32 1
  %exitcond.not = icmp eq i32 %opt.3443, %call90
  br i1 %exitcond.not, label %for.inc173.cleanup_crit_edge, label %for.inc173.for.body113_crit_edge

for.inc173.for.body113_crit_edge:                 ; preds = %for.inc173
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body113

for.inc173.cleanup_crit_edge:                     ; preds = %for.inc173
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc173.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %get_len.exit416.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %get_len.exit378.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %get_len.exit.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %for.body.cleanup_crit_edge, %cond.end11.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %cond.end.cleanup_crit_edge ], [ -1, %cond.end11.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -1, %if.end85.cleanup_crit_edge ], [ -1, %if.end89.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ], [ -1, %if.then117.cleanup_crit_edge ], [ -1, %get_len.exit378.cleanup_crit_edge ], [ 1, %if.end129.cleanup_crit_edge ], [ -1, %if.end140.cleanup_crit_edge ], [ -1, %get_len.exit416.cleanup_crit_edge ], [ %call165, %if.end159.cleanup_crit_edge ], [ 0, %for.inc173.cleanup_crit_edge ], [ %call76, %if.else.cleanup_crit_edge ], [ %call65, %if.end63.cleanup_crit_edge ], [ -1, %get_len.exit.cleanup_crit_edge ], [ -1, %if.then46.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @decode_seqof(ptr noundef %bs, ptr nocapture noundef readonly %f, ptr noundef %base, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %base, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %attr = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 5
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %offset, align 2
  %conv2 = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %base, i32 %conv2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  %sz = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %sz to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sz, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %6, label %sw.default [
    i8 9, label %sw.bb
    i8 10, label %sw.bb12
    i8 12, label %sw.bb30
  ]

sw.bb:                                            ; preds = %cond.end
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %13 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit, align 4
  %div11.i = lshr i32 %14, 3
  %add1.i = add nuw nsw i32 %div11.i, 1
  %rem.i = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp ne i32 %rem.i, 0
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i = add nuw nsw i32 %add1.i, %inc.i
  %cur.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %spec.select.i
  %end.i = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %cmp2.i.not = icmp ugt ptr %add.ptr.i, %18
  br i1 %cmp2.i.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr10 = getelementptr i8, ptr %16, i32 1
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr10, ptr %cur.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %16, align 1
  %conv11 = zext i8 %21 to i32
  br label %sw.epilog

sw.bb12:                                          ; preds = %cond.end
  %bit13 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %22 = ptrtoint ptr %bit13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %sw.bb12.if.end19_crit_edge, label %if.then15

sw.bb12.if.end19_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %cur16 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %24 = ptrtoint ptr %cur16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur16, align 4
  %incdec.ptr17 = getelementptr i8, ptr %25, i32 1
  store ptr %incdec.ptr17, ptr %cur16, align 4
  %26 = ptrtoint ptr %bit13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bit13, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %sw.bb12.if.end19_crit_edge
  %27 = ptrtoint ptr %bit13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bit13, align 4
  %div11.i219 = lshr i32 %28, 3
  %add1.i220 = add nuw nsw i32 %div11.i219, 2
  %rem.i221 = and i32 %28, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i221)
  %cmp.not.i222 = icmp ne i32 %rem.i221, 0
  %inc.i223 = zext i1 %cmp.not.i222 to i32
  %spec.select.i224 = add nuw nsw i32 %add1.i220, %inc.i223
  %cur.i225 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %29 = ptrtoint ptr %cur.i225 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i225, align 4
  %add.ptr.i226 = getelementptr i8, ptr %30, i32 %spec.select.i224
  %end.i227 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %31 = ptrtoint ptr %end.i227 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i227, align 4
  %cmp2.i228.not = icmp ugt ptr %add.ptr.i226, %32
  br i1 %cmp2.i228.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr25 = getelementptr i8, ptr %30, i32 1
  %33 = ptrtoint ptr %cur.i225 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr25, ptr %cur.i225, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %30, align 1
  %conv26 = zext i8 %35 to i32
  %shl = shl nuw nsw i32 %conv26, 8
  %incdec.ptr28 = getelementptr i8, ptr %30, i32 2
  store ptr %incdec.ptr28, ptr %cur.i225, align 4
  %36 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr25, align 1
  %conv29 = zext i8 %37 to i32
  %add = or i32 %shl, %conv29
  br label %sw.epilog

sw.bb30:                                          ; preds = %cond.end
  %bit31 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %38 = ptrtoint ptr %bit31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bit31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool32.not = icmp eq i32 %39, 0
  br i1 %tobool32.not, label %sw.bb30.if.end37_crit_edge, label %if.then33

sw.bb30.if.end37_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %cur34 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %40 = ptrtoint ptr %cur34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur34, align 4
  %incdec.ptr35 = getelementptr i8, ptr %41, i32 1
  store ptr %incdec.ptr35, ptr %cur34, align 4
  %42 = ptrtoint ptr %bit31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %bit31, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %sw.bb30.if.end37_crit_edge
  %43 = ptrtoint ptr %bit31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bit31, align 4
  %div11.i231 = lshr i32 %44, 3
  %add1.i232 = add nuw nsw i32 %div11.i231, 2
  %rem.i233 = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i233)
  %cmp.not.i234 = icmp ne i32 %rem.i233, 0
  %inc.i235 = zext i1 %cmp.not.i234 to i32
  %spec.select.i236 = add nuw nsw i32 %add1.i232, %inc.i235
  %cur.i237 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %45 = ptrtoint ptr %cur.i237 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i237, align 4
  %add.ptr.i238 = getelementptr i8, ptr %46, i32 %spec.select.i236
  %end.i239 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %47 = ptrtoint ptr %end.i239 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i239, align 4
  %cmp2.i240.not = icmp ugt ptr %add.ptr.i238, %48
  br i1 %cmp2.i240.not, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %incdec.ptr.i = getelementptr i8, ptr %46, i32 1
  %49 = ptrtoint ptr %cur.i237 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr.i, ptr %cur.i237, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %46, align 1
  %conv.i = zext i8 %51 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end41.sw.epilog_crit_edge, label %if.then.i

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = shl nuw nsw i32 %conv.i, 8
  %shl.i = and i32 %and1.i, 16128
  %incdec.ptr3.i = getelementptr i8, ptr %46, i32 2
  %52 = ptrtoint ptr %cur.i237 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %incdec.ptr3.i, ptr %cur.i237, align 4
  %53 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i, align 1
  %conv4.i = zext i8 %54 to i32
  %add.i = or i32 %shl.i, %conv4.i
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %conv3 = zext i8 %6 to i32
  %bit.i243 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %55 = ptrtoint ptr %bit.i243 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bit.i243, align 4
  %add.i244 = add i32 %56, %conv3
  %div11.i245 = lshr i32 %add.i244, 3
  %rem.i246 = and i32 %add.i244, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i246)
  %cmp.not.i247 = icmp ne i32 %rem.i246, 0
  %inc.i248 = zext i1 %cmp.not.i247 to i32
  %spec.select.i249 = add nuw nsw i32 %div11.i245, %inc.i248
  %cur.i250 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %57 = ptrtoint ptr %cur.i250 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i250, align 4
  %add.ptr.i251 = getelementptr i8, ptr %58, i32 %spec.select.i249
  %end.i252 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %59 = ptrtoint ptr %end.i252 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i252, align 4
  %cmp2.i253.not = icmp ugt ptr %add.ptr.i251, %60
  br i1 %cmp2.i253.not, label %sw.default.cleanup_crit_edge, label %if.end48

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %sw.default
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %58, align 1
  %conv.i256 = zext i8 %62 to i32
  %shr.i = lshr i32 255, %56
  %and.i258 = and i32 %shr.i, %conv.i256
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i244)
  %cmp.i = icmp ult i32 %add.i244, 8
  br i1 %cmp.i, label %if.then.i260, label %if.else.i

if.then.i260:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 8, %add.i244
  %shr3.i = lshr i32 %and.i258, %sub.i
  br label %get_bits.exit

if.else.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i244)
  %cmp5.i = icmp eq i32 %add.i244, 8
  br i1 %cmp5.i, label %if.then7.i, label %if.else10.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i261 = getelementptr i8, ptr %58, i32 1
  %63 = ptrtoint ptr %cur.i250 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %incdec.ptr.i261, ptr %cur.i250, align 4
  br label %get_bits.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i262 = shl nuw nsw i32 %and.i258, 8
  %incdec.ptr12.i = getelementptr i8, ptr %58, i32 1
  %64 = ptrtoint ptr %cur.i250 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %incdec.ptr12.i, ptr %cur.i250, align 4
  %65 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr12.i, align 1
  %conv13.i = zext i8 %66 to i32
  %add14.i = or i32 %shl.i262, %conv13.i
  %sub15.i = sub i32 16, %add.i244
  %shr16.i = lshr i32 %add14.i, %sub15.i
  %sub17.i = add i32 %add.i244, -8
  br label %get_bits.exit

get_bits.exit:                                    ; preds = %if.else10.i, %if.then7.i, %if.then.i260
  %.sink.i = phi i32 [ 0, %if.then7.i ], [ %sub17.i, %if.else10.i ], [ %add.i244, %if.then.i260 ]
  %v.0.i263 = phi i32 [ %and.i258, %if.then7.i ], [ %shr16.i, %if.else10.i ], [ %shr3.i, %if.then.i260 ]
  %67 = ptrtoint ptr %bit.i243 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink.i, ptr %bit.i243, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %get_bits.exit, %if.then.i, %if.end41.sw.epilog_crit_edge, %if.end23, %if.end8
  %count.0 = phi i32 [ %v.0.i263, %get_bits.exit ], [ %add, %if.end23 ], [ %conv11, %if.end8 ], [ %add.i, %if.then.i ], [ %conv.i, %if.end41.sw.epilog_crit_edge ]
  %lb = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 2
  %68 = ptrtoint ptr %lb to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %lb, align 2
  %conv52 = zext i8 %69 to i32
  %add53 = add i32 %count.0, %conv52
  %tobool54.not = icmp eq ptr %cond, null
  br i1 %tobool54.not, label %if.end65.thread, label %if.end65

if.end65.thread:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %fields303 = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 6
  %70 = ptrtoint ptr %fields303 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fields303, align 4
  br label %if.end71

if.end65:                                         ; preds = %sw.epilog
  %ub = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 3
  %72 = ptrtoint ptr %ub to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ub, align 1
  %conv56 = zext i8 %73 to i32
  %74 = tail call i32 @llvm.umin.i32(i32 %add53, i32 %conv56)
  %75 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %cond, align 4
  %add.ptr64 = getelementptr i8, ptr %cond, i32 4
  %fields = getelementptr inbounds %struct.field_t, ptr %f, i32 0, i32 6
  %76 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fields, align 4
  %tobool66.not = icmp eq ptr %add.ptr64, null
  br i1 %tobool66.not, label %if.end65.if.end71_crit_edge, label %if.then67

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %offset68 = getelementptr inbounds %struct.field_t, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %offset68 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %offset68, align 2
  %conv69 = zext i16 %79 to i32
  %idx.neg = sub nsw i32 0, %conv69
  %add.ptr70 = getelementptr i8, ptr %add.ptr64, i32 %idx.neg
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end65.if.end71_crit_edge, %if.end65.thread
  %80 = phi ptr [ %77, %if.then67 ], [ %77, %if.end65.if.end71_crit_edge ], [ %71, %if.end65.thread ]
  %effective_count.0305 = phi i32 [ %74, %if.then67 ], [ %74, %if.end65.if.end71_crit_edge ], [ 0, %if.end65.thread ]
  %base.addr.1 = phi ptr [ %add.ptr70, %if.then67 ], [ null, %if.end65.if.end71_crit_edge ], [ null, %if.end65.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add53)
  %cmp72307.not = icmp eq i32 %add53, 0
  br i1 %cmp72307.not, label %if.end71.cleanup_crit_edge, label %for.body.lr.ph

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end71
  %attr74 = getelementptr inbounds %struct.field_t, ptr %80, i32 0, i32 4
  %bit79 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %cur82 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %end.i273 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 2
  %add111 = add i32 %level, 1
  %offset138 = getelementptr inbounds %struct.field_t, ptr %80, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0311 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %base.addr.2308 = phi ptr [ %base.addr.1, %for.body.lr.ph ], [ %base.addr.3, %for.inc.for.body_crit_edge ]
  %81 = ptrtoint ptr %attr74 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %attr74, align 4
  %83 = and i16 %82, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool77.not = icmp eq i16 %83, 0
  br i1 %tobool77.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %for.body
  %84 = ptrtoint ptr %bit79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bit79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool80.not = icmp eq i32 %85, 0
  br i1 %tobool80.not, label %if.then78.if.end85_crit_edge, label %if.then81

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %cur82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur82, align 4
  %incdec.ptr83 = getelementptr i8, ptr %87, i32 1
  store ptr %incdec.ptr83, ptr %cur82, align 4
  %88 = ptrtoint ptr %bit79 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %bit79, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.then78.if.end85_crit_edge
  %89 = ptrtoint ptr %bit79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bit79, align 4
  %div11.i265 = lshr i32 %90, 3
  %rem.i267 = and i32 %90, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i267)
  %cmp.not.i268 = icmp ne i32 %rem.i267, 0
  %inc.i269 = zext i1 %cmp.not.i268 to i32
  %add1.i266 = add nuw nsw i32 %div11.i265, %inc.i269
  %spec.select.i270 = add nuw nsw i32 %add1.i266, 2
  %91 = ptrtoint ptr %cur82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur82, align 4
  %add.ptr.i272 = getelementptr i8, ptr %92, i32 %spec.select.i270
  %93 = ptrtoint ptr %end.i273 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i273, align 4
  %cmp2.i274.not = icmp ugt ptr %add.ptr.i272, %94
  br i1 %cmp2.i274.not, label %if.end85.cleanup_crit_edge, label %if.end89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  %incdec.ptr.i277 = getelementptr i8, ptr %92, i32 1
  %95 = ptrtoint ptr %cur82 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %incdec.ptr.i277, ptr %cur82, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %92, align 1
  %conv.i278 = zext i8 %97 to i32
  %and.i279 = and i32 %conv.i278, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279)
  %tobool.not.i280 = icmp eq i32 %and.i279, 0
  br i1 %tobool.not.i280, label %if.end89.get_len.exit288_crit_edge, label %if.then.i286

if.end89.get_len.exit288_crit_edge:               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_len.exit288

if.then.i286:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i281 = shl nuw nsw i32 %conv.i278, 8
  %shl.i282 = and i32 %and1.i281, 16128
  %incdec.ptr3.i283 = getelementptr i8, ptr %92, i32 2
  %98 = ptrtoint ptr %cur82 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %incdec.ptr3.i283, ptr %cur82, align 4
  %99 = ptrtoint ptr %incdec.ptr.i277 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %incdec.ptr.i277, align 1
  %conv4.i284 = zext i8 %100 to i32
  %add.i285 = or i32 %shl.i282, %conv4.i284
  br label %get_len.exit288

get_len.exit288:                                  ; preds = %if.then.i286, %if.end89.get_len.exit288_crit_edge
  %v.0.i287 = phi i32 [ %add.i285, %if.then.i286 ], [ %conv.i278, %if.end89.get_len.exit288_crit_edge ]
  %spec.select.i295 = add nsw i32 %add1.i266, %v.0.i287
  %101 = ptrtoint ptr %cur82 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur82, align 4
  %add.ptr.i297 = getelementptr i8, ptr %102, i32 %spec.select.i295
  %cmp2.i299.not = icmp ugt ptr %add.ptr.i297, %94
  br i1 %cmp2.i299.not, label %get_len.exit288.cleanup_crit_edge, label %if.end94

get_len.exit288.cleanup_crit_edge:                ; preds = %get_len.exit288
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %get_len.exit288
  %tobool95.not = icmp eq ptr %base.addr.2308, null
  br i1 %tobool95.not, label %if.end94.if.then100_crit_edge, label %lor.lhs.false

if.end94.if.then100_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.end94
  %103 = ptrtoint ptr %attr74 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %attr74, align 4
  %105 = and i16 %104, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool99.not = icmp eq i16 %105, 0
  br i1 %tobool99.not, label %lor.lhs.false.if.then100_crit_edge, label %if.end103

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %if.end94.if.then100_crit_edge
  %add.ptr102 = getelementptr i8, ptr %102, i32 %v.0.i287
  %106 = ptrtoint ptr %cur82 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr102, ptr %cur82, align 4
  br label %for.inc

if.end103:                                        ; preds = %lor.lhs.false
  %107 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %80, align 4
  %idxprom = zext i8 %108 to i32
  %arrayidx = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0311, i32 %effective_count.0305)
  %cmp105 = icmp ult i32 %i.0311, %effective_count.0305
  %spec.select = select i1 %cmp105, ptr %base.addr.2308, ptr null
  %call112 = tail call i32 %110(ptr noundef %bs, ptr noundef %80, ptr noundef %spec.select, i32 noundef %add111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end103.cleanup_crit_edge, label %if.end135.thread

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135.thread:                                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr117 = getelementptr i8, ptr %102, i32 %v.0.i287
  %111 = ptrtoint ptr %cur82 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr117, ptr %cur82, align 4
  %112 = ptrtoint ptr %bit79 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %bit79, align 4
  br label %if.then137

if.else:                                          ; preds = %for.body
  %113 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %80, align 4
  %idxprom121 = zext i8 %114 to i32
  %arrayidx122 = getelementptr [12 x ptr], ptr @Decoders, i32 0, i32 %idxprom121
  %115 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0311, i32 %effective_count.0305)
  %cmp123 = icmp ult i32 %i.0311, %effective_count.0305
  %spec.select217 = select i1 %cmp123, ptr %base.addr.2308, ptr null
  %call130 = tail call i32 %116(ptr noundef %bs, ptr noundef %80, ptr noundef %spec.select217, i32 noundef %add111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.else.cleanup_crit_edge, label %if.end135

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %if.else
  %tobool136.not = icmp eq ptr %base.addr.2308, null
  br i1 %tobool136.not, label %if.end135.for.inc_crit_edge, label %if.end135.if.then137_crit_edge

if.end135.if.then137_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

if.end135.for.inc_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then137:                                       ; preds = %if.end135.if.then137_crit_edge, %if.end135.thread
  %117 = ptrtoint ptr %offset138 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %offset138, align 2
  %conv139 = zext i16 %118 to i32
  %add.ptr140 = getelementptr i8, ptr %base.addr.2308, i32 %conv139
  br label %for.inc

for.inc:                                          ; preds = %if.then137, %if.end135.for.inc_crit_edge, %if.then100
  %base.addr.3 = phi ptr [ %add.ptr140, %if.then137 ], [ null, %if.end135.for.inc_crit_edge ], [ %base.addr.2308, %if.then100 ]
  %inc = add nuw i32 %i.0311, 1
  %exitcond.not = icmp eq i32 %inc, %add53
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %get_len.exit288.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end19.cleanup_crit_edge ], [ -1, %if.end37.cleanup_crit_edge ], [ -1, %sw.default.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ -1, %if.end85.cleanup_crit_edge ], [ -1, %get_len.exit288.cleanup_crit_edge ], [ %call112, %if.end103.cleanup_crit_edge ], [ %call130, %if.else.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_bitmap(ptr nocapture noundef %bs, i32 noundef %b) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool.not = icmp eq i32 %b, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bit = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 4
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit, align 4
  %add = add i32 %1, %b
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp = icmp ult i32 %add, 8
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cur = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %add3 = add i32 %1, 24
  %shl = shl i32 %conv, %add3
  br label %if.end45

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp5 = icmp eq i32 %add, 8
  br i1 %cmp5, label %if.then7, label %for.body.lr.ph

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cur8 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %6 = ptrtoint ptr %cur8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur8, align 4
  %incdec.ptr = getelementptr i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %cur8, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv9 = zext i8 %9 to i32
  %add11 = add i32 %1, 24
  %shl12 = shl i32 %conv9, %add11
  br label %if.end45

for.body.lr.ph:                                   ; preds = %if.else
  %shr = lshr i32 %add, 3
  %cur16 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %10 = and i32 %add, -8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bytes.085 = phi i32 [ %shr, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %shift.084 = phi i32 [ 24, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %v.083 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %cur16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur16, align 4
  %incdec.ptr17 = getelementptr i8, ptr %12, i32 1
  store ptr %incdec.ptr17, ptr %cur16, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv18 = zext i8 %14 to i32
  %shl19 = shl i32 %conv18, %shift.084
  %or = or i32 %shl19, %v.083
  %dec = add i32 %bytes.085, -1
  %sub = add i32 %shift.084, -8
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp20 = icmp ult i32 %add, 32
  br i1 %cmp20, label %if.then22, label %if.else29

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = sub i32 24, %10
  %cur23 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %16 = ptrtoint ptr %cur23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur23, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv24 = zext i8 %19 to i32
  %shl25 = shl i32 %conv24, %15
  %or26 = or i32 %shl25, %or
  %shl28 = shl i32 %or26, %1
  br label %if.end42

if.else29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp30.not = icmp eq i32 %add, 32
  br i1 %cmp30.not, label %if.else29.if.end42_crit_edge, label %if.then32

if.else29.if.end42_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  %shl34 = shl i32 %or, %1
  %cur35 = getelementptr inbounds %struct.bitstr, ptr %bs, i32 0, i32 3
  %20 = ptrtoint ptr %cur35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur35, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv36 = zext i8 %23 to i32
  %sub38 = sub i32 8, %1
  %shr39 = lshr i32 %conv36, %sub38
  %or40 = or i32 %shr39, %shl34
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %if.else29.if.end42_crit_edge, %if.then22
  %v.1 = phi i32 [ %shl28, %if.then22 ], [ %or40, %if.then32 ], [ %or, %if.else29.if.end42_crit_edge ]
  %and = and i32 %add, 7
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.then7, %if.then1
  %.sink = phi i32 [ 0, %if.then7 ], [ %and, %if.end42 ], [ %add, %if.then1 ]
  %v.2 = phi i32 [ %shl12, %if.then7 ], [ %v.1, %if.end42 ], [ %shl, %if.then1 ]
  %24 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %bit, align 4
  %sub46 = sub i32 32, %b
  %shl47 = shl nsw i32 -1, %sub46
  %and48 = and i32 %v.2, %shl47
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and48, %if.end45 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360, !361}
!llvm.ident = !{!362}

!0 = !{ptr @DecodeRasMessage.ras_message, !1, !"ras_message", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_h323_asn1.c", i32 823, i32 30}
!2 = !{ptr @DecodeMultimediaSystemControlMessage.multimediasystemcontrolmessage, !3, !"multimediasystemcontrolmessage", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_h323_asn1.c", i32 857, i32 30}
!4 = !{ptr @_RasMessage, !5, !"_RasMessage", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1875, i32 29}
!6 = !{ptr @_GatekeeperRequest, !7, !"_GatekeeperRequest", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1515, i32 29}
!8 = !{ptr @_NonStandardParameter, !9, !"_NonStandardParameter", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 55, i32 29}
!10 = !{ptr @_NonStandardIdentifier, !11, !"_NonStandardIdentifier", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 49, i32 29}
!12 = !{ptr @_H221NonStandard, !13, !"_H221NonStandard", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 43, i32 29}
!14 = !{ptr @_TransportAddress, !15, !"_TransportAddress", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 61, i32 29}
!16 = !{ptr @_TransportAddress_ipAddress, !17, !"_TransportAddress_ipAddress", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 7, i32 29}
!18 = !{ptr @_TransportAddress_ipSourceRoute, !19, !"_TransportAddress_ipSourceRoute", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 22, i32 29}
!20 = !{ptr @_TransportAddress_ipSourceRoute_route, !21, !"_TransportAddress_ipSourceRoute_route", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 13, i32 29}
!22 = !{ptr @_TransportAddress_ipSourceRoute_routing, !23, !"_TransportAddress_ipSourceRoute_routing", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 17, i32 29}
!24 = !{ptr @_TransportAddress_ipxAddress, !25, !"_TransportAddress_ipxAddress", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 31, i32 29}
!26 = !{ptr @_TransportAddress_ip6Address, !27, !"_TransportAddress_ip6Address", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 37, i32 29}
!28 = !{ptr @_GatekeeperConfirm, !29, !"_GatekeeperConfirm", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1539, i32 29}
!30 = !{ptr @_RegistrationRequest, !31, !"_RegistrationRequest", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1575, i32 29}
!32 = !{ptr @_RegistrationRequest_callSignalAddress, !33, !"_RegistrationRequest_callSignalAddress", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1559, i32 29}
!34 = !{ptr @_RegistrationRequest_rasAddress, !35, !"_RegistrationRequest_rasAddress", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1565, i32 29}
!36 = !{ptr @_EndpointType, !37, !"_EndpointType", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 195, i32 29}
!38 = !{ptr @_GatekeeperInfo, !39, !"_GatekeeperInfo", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 97, i32 29}
!40 = !{ptr @_GatewayInfo, !41, !"_GatewayInfo", i1 false, i1 false}
!41 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 177, i32 29}
!42 = !{ptr @_GatewayInfo_protocol, !43, !"_GatewayInfo_protocol", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 173, i32 29}
!44 = !{ptr @_SupportedProtocols, !45, !"_SupportedProtocols", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 158, i32 29}
!46 = !{ptr @_H310Caps, !47, !"_H310Caps", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 102, i32 29}
!48 = !{ptr @_H320Caps, !49, !"_H320Caps", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 109, i32 29}
!50 = !{ptr @_H321Caps, !51, !"_H321Caps", i1 false, i1 false}
!51 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 116, i32 29}
!52 = !{ptr @_H322Caps, !53, !"_H322Caps", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 123, i32 29}
!54 = !{ptr @_H323Caps, !55, !"_H323Caps", i1 false, i1 false}
!55 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 130, i32 29}
!56 = !{ptr @_H324Caps, !57, !"_H324Caps", i1 false, i1 false}
!57 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 137, i32 29}
!58 = !{ptr @_VoiceCaps, !59, !"_VoiceCaps", i1 false, i1 false}
!59 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 144, i32 29}
!60 = !{ptr @_T120OnlyCaps, !61, !"_T120OnlyCaps", i1 false, i1 false}
!61 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 151, i32 29}
!62 = !{ptr @_McuInfo, !63, !"_McuInfo", i1 false, i1 false}
!63 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 184, i32 29}
!64 = !{ptr @_TerminalInfo, !65, !"_TerminalInfo", i1 false, i1 false}
!65 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 190, i32 29}
!66 = !{ptr @_RegistrationRequest_terminalAlias, !67, !"_RegistrationRequest_terminalAlias", i1 false, i1 false}
!67 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1571, i32 29}
!68 = !{ptr @_AliasAddress, !69, !"_AliasAddress", i1 false, i1 false}
!69 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 77, i32 29}
!70 = !{ptr @_VendorIdentifier, !71, !"_VendorIdentifier", i1 false, i1 false}
!71 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 91, i32 29}
!72 = !{ptr @_RegistrationConfirm, !73, !"_RegistrationConfirm", i1 false, i1 false}
!73 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1633, i32 29}
!74 = !{ptr @_RegistrationConfirm_callSignalAddress, !75, !"_RegistrationConfirm_callSignalAddress", i1 false, i1 false}
!75 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1623, i32 29}
!76 = !{ptr @_RegistrationConfirm_terminalAlias, !77, !"_RegistrationConfirm_terminalAlias", i1 false, i1 false}
!77 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1629, i32 29}
!78 = !{ptr @_UnregistrationRequest, !79, !"_UnregistrationRequest", i1 false, i1 false}
!79 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1675, i32 29}
!80 = !{ptr @_UnregistrationRequest_callSignalAddress, !81, !"_UnregistrationRequest_callSignalAddress", i1 false, i1 false}
!81 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1669, i32 29}
!82 = !{ptr @_AdmissionRequest, !83, !"_AdmissionRequest", i1 false, i1 false}
!83 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1713, i32 29}
!84 = !{ptr @_CallType, !85, !"_CallType", i1 false, i1 false}
!85 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 249, i32 29}
!86 = !{ptr @_CallModel, !87, !"_CallModel", i1 false, i1 false}
!87 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1696, i32 29}
!88 = !{ptr @_AdmissionRequest_destinationInfo, !89, !"_AdmissionRequest_destinationInfo", i1 false, i1 false}
!89 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1701, i32 29}
!90 = !{ptr @_AdmissionRequest_destExtraCallInfo, !91, !"_AdmissionRequest_destExtraCallInfo", i1 false, i1 false}
!91 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1705, i32 29}
!92 = !{ptr @_AdmissionRequest_srcInfo, !93, !"_AdmissionRequest_srcInfo", i1 false, i1 false}
!93 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1709, i32 29}
!94 = !{ptr @_AdmissionConfirm, !95, !"_AdmissionConfirm", i1 false, i1 false}
!95 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1757, i32 29}
!96 = !{ptr @_LocationRequest, !97, !"_LocationRequest", i1 false, i1 false}
!97 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1796, i32 29}
!98 = !{ptr @_LocationRequest_destinationInfo, !99, !"_LocationRequest_destinationInfo", i1 false, i1 false}
!99 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1792, i32 29}
!100 = !{ptr @_LocationConfirm, !101, !"_LocationConfirm", i1 false, i1 false}
!101 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1820, i32 29}
!102 = !{ptr @_InfoRequestResponse, !103, !"_InfoRequestResponse", i1 false, i1 false}
!103 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1852, i32 29}
!104 = !{ptr @_InfoRequestResponse_callSignalAddress, !105, !"_InfoRequestResponse_callSignalAddress", i1 false, i1 false}
!105 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1846, i32 29}
!106 = !{ptr @Decoders, !107, !"Decoders", i1 false, i1 false}
!107 = !{!"../net/netfilter/nf_conntrack_h323_asn1.c", i32 125, i32 24}
!108 = !{ptr @_MultimediaSystemControlMessage, !109, !"_MultimediaSystemControlMessage", i1 false, i1 false}
!109 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1471, i32 29}
!110 = !{ptr @_RequestMessage, !111, !"_RequestMessage", i1 false, i1 false}
!111 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1354, i32 29}
!112 = !{ptr @_OpenLogicalChannel, !113, !"_OpenLogicalChannel", i1 false, i1 false}
!113 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 816, i32 29}
!114 = !{ptr @_OpenLogicalChannel_forwardLogicalChannelParameters, !115, !"_OpenLogicalChannel_forwardLogicalChannelParameters", i1 false, i1 false}
!115 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 744, i32 29}
!116 = !{ptr @_DataType, !117, !"_DataType", i1 false, i1 false}
!117 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 524, i32 29}
!118 = !{ptr @_H245_NonStandardParameter, !119, !"_H245_NonStandardParameter", i1 false, i1 false}
!119 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 268, i32 29}
!120 = !{ptr @_H245_NonStandardIdentifier, !121, !"_H245_NonStandardIdentifier", i1 false, i1 false}
!121 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 262, i32 29}
!122 = !{ptr @_H245_NonStandardIdentifier_h221NonStandard, !123, !"_H245_NonStandardIdentifier_h221NonStandard", i1 false, i1 false}
!123 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 256, i32 29}
!124 = !{ptr @_VideoCapability, !125, !"_VideoCapability", i1 false, i1 false}
!125 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 343, i32 29}
!126 = !{ptr @_H261VideoCapability, !127, !"_H261VideoCapability", i1 false, i1 false}
!127 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 274, i32 29}
!128 = !{ptr @_H262VideoCapability, !129, !"_H262VideoCapability", i1 false, i1 false}
!129 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 284, i32 29}
!130 = !{ptr @_H263VideoCapability, !131, !"_H263VideoCapability", i1 false, i1 false}
!131 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 306, i32 29}
!132 = !{ptr @_IS11172VideoCapability, !133, !"_IS11172VideoCapability", i1 false, i1 false}
!133 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 332, i32 29}
!134 = !{ptr @_AudioCapability, !135, !"_AudioCapability", i1 false, i1 false}
!135 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 398, i32 29}
!136 = !{ptr @_AudioCapability_g7231, !137, !"_AudioCapability_g7231", i1 false, i1 false}
!137 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 357, i32 29}
!138 = !{ptr @_IS11172AudioCapability, !139, !"_IS11172AudioCapability", i1 false, i1 false}
!139 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 362, i32 29}
!140 = !{ptr @_IS13818AudioCapability, !141, !"_IS13818AudioCapability", i1 false, i1 false}
!141 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 374, i32 29}
!142 = !{ptr @_DataApplicationCapability, !143, !"_DataApplicationCapability", i1 false, i1 false}
!143 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 511, i32 29}
!144 = !{ptr @_DataApplicationCapability_application, !145, !"_DataApplicationCapability_application", i1 false, i1 false}
!145 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 484, i32 29}
!146 = !{ptr @_DataProtocolCapability, !147, !"_DataProtocolCapability", i1 false, i1 false}
!147 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 426, i32 29}
!148 = !{ptr @_DataApplicationCapability_application_t84, !149, !"_DataApplicationCapability_application_t84", i1 false, i1 false}
!149 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 472, i32 29}
!150 = !{ptr @_T84Profile, !151, !"_T84Profile", i1 false, i1 false}
!151 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 466, i32 29}
!152 = !{ptr @_T84Profile_t84Restricted, !153, !"_T84Profile_t84Restricted", i1 false, i1 false}
!153 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 444, i32 29}
!154 = !{ptr @_DataApplicationCapability_application_nlpid, !155, !"_DataApplicationCapability_application_nlpid", i1 false, i1 false}
!155 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 478, i32 29}
!156 = !{ptr @_EncryptionMode, !157, !"_EncryptionMode", i1 false, i1 false}
!157 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 518, i32 29}
!158 = !{ptr @_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters, !159, !"_OpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters", i1 false, i1 false}
!159 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 730, i32 29}
!160 = !{ptr @_H222LogicalChannelParameters, !161, !"_H222LogicalChannelParameters", i1 false, i1 false}
!161 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 540, i32 29}
!162 = !{ptr @_H223LogicalChannelParameters, !163, !"_H223LogicalChannelParameters", i1 false, i1 false}
!163 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 567, i32 29}
!164 = !{ptr @_H223LogicalChannelParameters_adaptationLayerType, !165, !"_H223LogicalChannelParameters_adaptationLayerType", i1 false, i1 false}
!165 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 553, i32 29}
!166 = !{ptr @_H223LogicalChannelParameters_adaptationLayerType_al3, !167, !"_H223LogicalChannelParameters_adaptationLayerType_al3", i1 false, i1 false}
!167 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 548, i32 29}
!168 = !{ptr @_V76LogicalChannelParameters, !169, !"_V76LogicalChannelParameters", i1 false, i1 false}
!169 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 613, i32 29}
!170 = !{ptr @_V76HDLCParameters, !171, !"_V76HDLCParameters", i1 false, i1 false}
!171 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 579, i32 29}
!172 = !{ptr @_CRCLength, !173, !"_CRCLength", i1 false, i1 false}
!173 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 573, i32 29}
!174 = !{ptr @_V76LogicalChannelParameters_suspendResume, !175, !"_V76LogicalChannelParameters_suspendResume", i1 false, i1 false}
!175 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 585, i32 29}
!176 = !{ptr @_V76LogicalChannelParameters_mode, !177, !"_V76LogicalChannelParameters_mode", i1 false, i1 false}
!177 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 603, i32 29}
!178 = !{ptr @_V76LogicalChannelParameters_mode_eRM, !179, !"_V76LogicalChannelParameters_mode_eRM", i1 false, i1 false}
!179 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 597, i32 29}
!180 = !{ptr @_V76LogicalChannelParameters_mode_eRM_recovery, !181, !"_V76LogicalChannelParameters_mode_eRM_recovery", i1 false, i1 false}
!181 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 591, i32 29}
!182 = !{ptr @_V75Parameters, !183, !"_V75Parameters", i1 false, i1 false}
!183 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 609, i32 29}
!184 = !{ptr @_H2250LogicalChannelParameters, !185, !"_H2250LogicalChannelParameters", i1 false, i1 false}
!185 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 704, i32 29}
!186 = !{ptr @_H2250LogicalChannelParameters_nonStandard, !187, !"_H2250LogicalChannelParameters_nonStandard", i1 false, i1 false}
!187 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 624, i32 29}
!188 = !{ptr @_H245_TransportAddress, !189, !"_H245_TransportAddress", i1 false, i1 false}
!189 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 697, i32 29}
!190 = !{ptr @_UnicastAddress, !191, !"_UnicastAddress", i1 false, i1 false}
!191 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 664, i32 29}
!192 = !{ptr @_UnicastAddress_iPAddress, !193, !"_UnicastAddress_iPAddress", i1 false, i1 false}
!193 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 628, i32 29}
!194 = !{ptr @_UnicastAddress_iPXAddress, !195, !"_UnicastAddress_iPXAddress", i1 false, i1 false}
!195 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 634, i32 29}
!196 = !{ptr @_UnicastAddress_iP6Address, !197, !"_UnicastAddress_iP6Address", i1 false, i1 false}
!197 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 640, i32 29}
!198 = !{ptr @_UnicastAddress_iPSourceRouteAddress, !199, !"_UnicastAddress_iPSourceRouteAddress", i1 false, i1 false}
!199 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 655, i32 29}
!200 = !{ptr @_UnicastAddress_iPSourceRouteAddress_routing, !201, !"_UnicastAddress_iPSourceRouteAddress_routing", i1 false, i1 false}
!201 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 646, i32 29}
!202 = !{ptr @_UnicastAddress_iPSourceRouteAddress_route, !203, !"_UnicastAddress_iPSourceRouteAddress_route", i1 false, i1 false}
!203 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 651, i32 29}
!204 = !{ptr @_MulticastAddress, !205, !"_MulticastAddress", i1 false, i1 false}
!205 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 688, i32 29}
!206 = !{ptr @_MulticastAddress_iPAddress, !207, !"_MulticastAddress_iPAddress", i1 false, i1 false}
!207 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 678, i32 29}
!208 = !{ptr @_MulticastAddress_iP6Address, !209, !"_MulticastAddress_iP6Address", i1 false, i1 false}
!209 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 683, i32 29}
!210 = !{ptr @_OpenLogicalChannel_reverseLogicalChannelParameters, !211, !"_OpenLogicalChannel_reverseLogicalChannelParameters", i1 false, i1 false}
!211 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 769, i32 29}
!212 = !{ptr @_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters, !213, !"_OpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters", i1 false, i1 false}
!213 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 758, i32 29}
!214 = !{ptr @_NetworkAccessParameters, !215, !"_NetworkAccessParameters", i1 false, i1 false}
!215 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 804, i32 29}
!216 = !{ptr @_NetworkAccessParameters_distribution, !217, !"_NetworkAccessParameters_distribution", i1 false, i1 false}
!217 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 780, i32 29}
!218 = !{ptr @_NetworkAccessParameters_networkAddress, !219, !"_NetworkAccessParameters_networkAddress", i1 false, i1 false}
!219 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 796, i32 29}
!220 = !{ptr @_Q2931Address, !221, !"_Q2931Address", i1 false, i1 false}
!221 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 790, i32 29}
!222 = !{ptr @_Q2931Address_address, !223, !"_Q2931Address_address", i1 false, i1 false}
!223 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 785, i32 29}
!224 = !{ptr @_ResponseMessage, !225, !"_ResponseMessage", i1 false, i1 false}
!225 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1435, i32 29}
!226 = !{ptr @_OpenLogicalChannelAck, !227, !"_OpenLogicalChannelAck", i1 false, i1 false}
!227 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1419, i32 29}
!228 = !{ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters, !229, !"_OpenLogicalChannelAck_reverseLogicalChannelParameters", i1 false, i1 false}
!229 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1383, i32 29}
!230 = !{ptr @_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters, !231, !"_OpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters", i1 false, i1 false}
!231 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1374, i32 29}
!232 = !{ptr @_OpenLogicalChannelAck_forwardMultiplexAckParameters, !233, !"_OpenLogicalChannelAck_forwardMultiplexAckParameters", i1 false, i1 false}
!233 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1412, i32 29}
!234 = !{ptr @_H2250LogicalChannelAckParameters, !235, !"_H2250LogicalChannelAckParameters", i1 false, i1 false}
!235 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1397, i32 29}
!236 = !{ptr @_H2250LogicalChannelAckParameters_nonStandard, !237, !"_H2250LogicalChannelAckParameters_nonStandard", i1 false, i1 false}
!237 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1393, i32 29}
!238 = !{ptr @DecodeH323_UserInformation.h323_userinformation, !239, !"h323_userinformation", i1 false, i1 false}
!239 = !{!"../net/netfilter/nf_conntrack_h323_asn1.c", i32 839, i32 30}
!240 = !{ptr @_H323_UserInformation, !241, !"_H323_UserInformation", i1 false, i1 false}
!241 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1509, i32 29}
!242 = !{ptr @_H323_UU_PDU, !243, !"_H323_UU_PDU", i1 false, i1 false}
!243 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1488, i32 29}
!244 = !{ptr @_H323_UU_PDU_h323_message_body, !245, !"_H323_UU_PDU_h323_message_body", i1 false, i1 false}
!245 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1330, i32 29}
!246 = !{ptr @_Setup_UUIE, !247, !"_Setup_UUIE", i1 false, i1 false}
!247 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 837, i32 29}
!248 = !{ptr @_Setup_UUIE_sourceAddress, !249, !"_Setup_UUIE_sourceAddress", i1 false, i1 false}
!249 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 87, i32 29}
!250 = !{ptr @_Setup_UUIE_destinationAddress, !251, !"_Setup_UUIE_destinationAddress", i1 false, i1 false}
!251 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 212, i32 29}
!252 = !{ptr @_Setup_UUIE_destExtraCallInfo, !253, !"_Setup_UUIE_destExtraCallInfo", i1 false, i1 false}
!253 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 216, i32 29}
!254 = !{ptr @_Setup_UUIE_destExtraCRV, !255, !"_Setup_UUIE_destExtraCRV", i1 false, i1 false}
!255 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 220, i32 29}
!256 = !{ptr @_Setup_UUIE_conferenceGoal, !257, !"_Setup_UUIE_conferenceGoal", i1 false, i1 false}
!257 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 224, i32 29}
!258 = !{ptr @_QseriesOptions, !259, !"_QseriesOptions", i1 false, i1 false}
!259 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 238, i32 29}
!260 = !{ptr @_Q954Details, !261, !"_Q954Details", i1 false, i1 false}
!261 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 233, i32 29}
!262 = !{ptr @_Setup_UUIE_fastStart, !263, !"_Setup_UUIE_fastStart", i1 false, i1 false}
!263 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 831, i32 29}
!264 = !{ptr @_CallProceeding_UUIE, !265, !"_CallProceeding_UUIE", i1 false, i1 false}
!265 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 902, i32 29}
!266 = !{ptr @_CallProceeding_UUIE_fastStart, !267, !"_CallProceeding_UUIE_fastStart", i1 false, i1 false}
!267 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 896, i32 29}
!268 = !{ptr @_Connect_UUIE, !269, !"_Connect_UUIE", i1 false, i1 false}
!269 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 928, i32 29}
!270 = !{ptr @_Connect_UUIE_fastStart, !271, !"_Connect_UUIE_fastStart", i1 false, i1 false}
!271 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 922, i32 29}
!272 = !{ptr @_Alerting_UUIE, !273, !"_Alerting_UUIE", i1 false, i1 false}
!273 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 962, i32 29}
!274 = !{ptr @_Alerting_UUIE_fastStart, !275, !"_Alerting_UUIE_fastStart", i1 false, i1 false}
!275 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 956, i32 29}
!276 = !{ptr @_Information_UUIE, !277, !"_Information_UUIE", i1 false, i1 false}
!277 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 988, i32 29}
!278 = !{ptr @_ReleaseComplete_UUIE, !279, !"_ReleaseComplete_UUIE", i1 false, i1 false}
!279 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1024, i32 29}
!280 = !{ptr @_ReleaseCompleteReason, !281, !"_ReleaseCompleteReason", i1 false, i1 false}
!281 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 998, i32 29}
!282 = !{ptr @_Facility_UUIE, !283, !"_Facility_UUIE", i1 false, i1 false}
!283 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1065, i32 29}
!284 = !{ptr @_Facility_UUIE_alternativeAliasAddress, !285, !"_Facility_UUIE_alternativeAliasAddress", i1 false, i1 false}
!285 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1041, i32 29}
!286 = !{ptr @_FacilityReason, !287, !"_FacilityReason", i1 false, i1 false}
!287 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1045, i32 29}
!288 = !{ptr @_Facility_UUIE_fastStart, !289, !"_Facility_UUIE_fastStart", i1 false, i1 false}
!289 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1059, i32 29}
!290 = !{ptr @_Progress_UUIE, !291, !"_Progress_UUIE", i1 false, i1 false}
!291 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1309, i32 29}
!292 = !{ptr @_CallIdentifier, !293, !"_CallIdentifier", i1 false, i1 false}
!293 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1096, i32 29}
!294 = !{ptr @_H245Security, !295, !"_H245Security", i1 false, i1 false}
!295 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1117, i32 29}
!296 = !{ptr @_SecurityCapabilities, !297, !"_SecurityCapabilities", i1 false, i1 false}
!297 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1106, i32 29}
!298 = !{ptr @_SecurityServiceMode, !299, !"_SecurityServiceMode", i1 false, i1 false}
!299 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1100, i32 29}
!300 = !{ptr @_Progress_UUIE_tokens, !301, !"_Progress_UUIE_tokens", i1 false, i1 false}
!301 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1156, i32 29}
!302 = !{ptr @_ClearToken, !303, !"_ClearToken", i1 false, i1 false}
!303 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1140, i32 29}
!304 = !{ptr @_DHset, !305, !"_DHset", i1 false, i1 false}
!305 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1124, i32 29}
!306 = !{ptr @_TypedCertificate, !307, !"_TypedCertificate", i1 false, i1 false}
!307 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1130, i32 29}
!308 = !{ptr @_H235_NonStandardParameter, !309, !"_H235_NonStandardParameter", i1 false, i1 false}
!309 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1135, i32 29}
!310 = !{ptr @_Progress_UUIE_cryptoTokens, !311, !"_Progress_UUIE_cryptoTokens", i1 false, i1 false}
!311 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1299, i32 29}
!312 = !{ptr @_CryptoH323Token, !313, !"_CryptoH323Token", i1 false, i1 false}
!313 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1280, i32 29}
!314 = !{ptr @_CryptoH323Token_cryptoEPPwdHash, !315, !"_CryptoH323Token_cryptoEPPwdHash", i1 false, i1 false}
!315 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1172, i32 29}
!316 = !{ptr @_CryptoH323Token_cryptoEPPwdHash_token, !317, !"_CryptoH323Token_cryptoEPPwdHash_token", i1 false, i1 false}
!317 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1166, i32 29}
!318 = !{ptr @_Params, !319, !"_Params", i1 false, i1 false}
!319 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1160, i32 29}
!320 = !{ptr @_CryptoH323Token_cryptoGKPwdHash, !321, !"_CryptoH323Token_cryptoGKPwdHash", i1 false, i1 false}
!321 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1185, i32 29}
!322 = !{ptr @_CryptoH323Token_cryptoGKPwdHash_token, !323, !"_CryptoH323Token_cryptoGKPwdHash_token", i1 false, i1 false}
!323 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1179, i32 29}
!324 = !{ptr @_CryptoH323Token_cryptoEPPwdEncr, !325, !"_CryptoH323Token_cryptoEPPwdEncr", i1 false, i1 false}
!325 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1192, i32 29}
!326 = !{ptr @_CryptoH323Token_cryptoGKPwdEncr, !327, !"_CryptoH323Token_cryptoGKPwdEncr", i1 false, i1 false}
!327 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1198, i32 29}
!328 = !{ptr @_CryptoH323Token_cryptoEPCert, !329, !"_CryptoH323Token_cryptoEPCert", i1 false, i1 false}
!329 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1204, i32 29}
!330 = !{ptr @_CryptoH323Token_cryptoGKCert, !331, !"_CryptoH323Token_cryptoGKCert", i1 false, i1 false}
!331 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1211, i32 29}
!332 = !{ptr @_CryptoH323Token_cryptoFastStart, !333, !"_CryptoH323Token_cryptoFastStart", i1 false, i1 false}
!333 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1218, i32 29}
!334 = !{ptr @_CryptoToken, !335, !"_CryptoToken", i1 false, i1 false}
!335 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1269, i32 29}
!336 = !{ptr @_CryptoToken_cryptoEncryptedToken, !337, !"_CryptoToken_cryptoEncryptedToken", i1 false, i1 false}
!337 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1231, i32 29}
!338 = !{ptr @_CryptoToken_cryptoEncryptedToken_token, !339, !"_CryptoToken_cryptoEncryptedToken_token", i1 false, i1 false}
!339 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1225, i32 29}
!340 = !{ptr @_CryptoToken_cryptoSignedToken, !341, !"_CryptoToken_cryptoSignedToken", i1 false, i1 false}
!341 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1244, i32 29}
!342 = !{ptr @_CryptoToken_cryptoSignedToken_token, !343, !"_CryptoToken_cryptoSignedToken_token", i1 false, i1 false}
!343 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1237, i32 29}
!344 = !{ptr @_CryptoToken_cryptoHashedToken, !345, !"_CryptoToken_cryptoHashedToken", i1 false, i1 false}
!345 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1256, i32 29}
!346 = !{ptr @_CryptoToken_cryptoHashedToken_token, !347, !"_CryptoToken_cryptoHashedToken_token", i1 false, i1 false}
!347 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1250, i32 29}
!348 = !{ptr @_CryptoToken_cryptoPwdEncr, !349, !"_CryptoToken_cryptoPwdEncr", i1 false, i1 false}
!349 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1263, i32 29}
!350 = !{ptr @_Progress_UUIE_fastStart, !351, !"_Progress_UUIE_fastStart", i1 false, i1 false}
!351 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1303, i32 29}
!352 = !{ptr @_H323_UU_PDU_h245Control, !353, !"_H323_UU_PDU_h245Control", i1 false, i1 false}
!353 = !{!"../net/netfilter/nf_conntrack_h323_types.c", i32 1481, i32 29}
!354 = !{i32 1, !"wchar_size", i32 2}
!355 = !{i32 1, !"min_enum_size", i32 4}
!356 = !{i32 8, !"branch-target-enforcement", i32 0}
!357 = !{i32 8, !"sign-return-address", i32 0}
!358 = !{i32 8, !"sign-return-address-all", i32 0}
!359 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!360 = !{i32 7, !"uwtable", i32 1}
!361 = !{i32 7, !"frame-pointer", i32 2}
!362 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
