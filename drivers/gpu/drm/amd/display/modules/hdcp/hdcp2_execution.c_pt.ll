; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mod_hdcp = type { %struct.mod_hdcp_config, %struct.mod_hdcp_connection, [6 x %struct.mod_hdcp_display], %struct.mod_hdcp_authentication, %struct.mod_hdcp_state, [2025 x i8] }
%struct.mod_hdcp_config = type { %struct.mod_hdcp_psp, %struct.mod_hdcp_ddc, i8 }
%struct.mod_hdcp_psp = type { ptr, ptr, %struct.mod_hdcp_psp_caps }
%struct.mod_hdcp_psp_caps = type { i8 }
%struct.mod_hdcp_ddc = type { ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.mod_hdcp_connection = type { %struct.mod_hdcp_link, i8, i8, i8, i8, %struct.mod_hdcp_trace, i8, i8 }
%struct.mod_hdcp_link = type { i32, i8, i8, i8, i8, i8, i8, %union.anon, %struct.mod_hdcp_link_adjustment }
%union.anon = type { %struct.mod_hdcp_displayport }
%struct.mod_hdcp_displayport = type { i8, i8, i8, i8 }
%struct.mod_hdcp_link_adjustment = type { i8, %struct.mod_hdcp_link_adjustment_hdcp1, %struct.mod_hdcp_link_adjustment_hdcp2 }
%struct.mod_hdcp_link_adjustment_hdcp1 = type { i8 }
%struct.mod_hdcp_link_adjustment_hdcp2 = type { i8 }
%struct.mod_hdcp_trace = type { [10 x %struct.mod_hdcp_error], i8 }
%struct.mod_hdcp_error = type { i32, i8 }
%struct.mod_hdcp_display = type { i32, i8, i8, i8, i8, %union.anon.0, %struct.mod_hdcp_display_adjustment }
%union.anon.0 = type { i8 }
%struct.mod_hdcp_display_adjustment = type { i8 }
%struct.mod_hdcp_authentication = type { i32, %union.mod_hdcp_message, %union.mod_hdcp_transition_input, %struct.mod_hdcp_auth_counters }
%union.mod_hdcp_message = type { %struct.mod_hdcp_message_hdcp2 }
%struct.mod_hdcp_message_hdcp2 = type { i8, [3 x i8], [2 x i8], [12 x i8], [534 x i8], [129 x i8], [33 x i8], [33 x i8], [17 x i8], [9 x i8], [33 x i8], [25 x i8], [177 x i8], i16, [17 x i8], [68 x i8], i16, [33 x i8], i8, [2 x i8] }
%union.mod_hdcp_transition_input = type { %struct.mod_hdcp_transition_input_hdcp2 }
%struct.mod_hdcp_transition_input_hdcp2 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mod_hdcp_auth_counters = type { i8 }
%struct.mod_hdcp_state = type { i8, i32 }
%struct.mod_hdcp_event_context = type { i32, i8, i8 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdcp2version_read\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdcp2_capable\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_session\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ake_init_prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ake_init_write\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ake_cert_available\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ake_cert_read\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ake_cert_validation\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no_stored_km_write\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"h_prime_available\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"h_prime_read\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pairing_available\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pairing_info_read\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"h_prime_validation\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stored_km_write\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lc_init_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lc_init_write\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l_prime_available_poll\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l_prime_read\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l_prime_validation\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eks_prepare\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eks_write\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable_encryption\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stream_encryption_dp\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxstatus_read\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reauth_request_check\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"link_integrity_check_dp\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[Link %d]\09PASS %s\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_id_list_ready\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"receiver_id_list_read\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device_count_check\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_id_list_validation\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"repeater_auth_ack_write\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prepare_stream_manage\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stream_manage_write\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stream_ready_available\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stream_ready_read\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stream_ready_validation\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_caps_read_dp\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdcp2_capable_check\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"content_stream_type_write\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [19 x i64] [i64 17, i64 8, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 273, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 277, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 296, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 300, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 304, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 326, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 330, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 334, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 353, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 374, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 379, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 401, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 405, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 409, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 428, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 476, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 480, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 487, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 491, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 495, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 514, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 518, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 548, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 554, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 231, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 235, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 240, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 246, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 619, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 623, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 627, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 631, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 661, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 666, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 699, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 703, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 707, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 727, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 731, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [72 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 753, i32 10 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_execution(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  %status.i148 = alloca i32, align 4
  %status.i143 = alloca i32, align 4
  %status.i134 = alloca i32, align 4
  %status.i119 = alloca i32, align 4
  %status.i113 = alloca i32, align 4
  %status.i104 = alloca i32, align 4
  %status.i97 = alloca i32, align 4
  %status.i91 = alloca i32, align 4
  %status.i87 = alloca i32, align 4
  %status.i78 = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 17, label %sw.bb2
    i8 18, label %sw.bb4
    i8 19, label %sw.bb6
    i8 20, label %sw.bb8
    i8 21, label %sw.bb10
    i8 22, label %sw.bb12
    i8 23, label %sw.bb14
    i8 24, label %sw.bb16
    i8 25, label %sw.bb18
    i8 26, label %sw.bb20
    i8 27, label %sw.bb22
    i8 28, label %sw.bb24
    i8 29, label %sw.bb26
    i8 30, label %sw.bb28
    i8 31, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status.i, align 4
  %4 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %6 = ptrtoint ptr %unexpected_event.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %unexpected_event.i, align 1
  br label %known_hdcp2_capable_rx.exit

if.end.i:                                         ; preds = %sw.bb
  %call.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_hdcp2version, ptr noundef %input, ptr noundef nonnull %status.i, ptr noundef %hdcp, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.known_hdcp2_capable_rx.exit_crit_edge, label %if.end2.i

if.end.i.known_hdcp2_capable_rx.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %known_hdcp2_capable_rx.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdcp2_capable_check.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 1
  %call3.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_hdcp2_capable, ptr noundef %hdcp2_capable_check.i, ptr noundef nonnull %status.i, ptr noundef %hdcp, ptr noundef nonnull @.str.1) #5
  br label %known_hdcp2_capable_rx.exit

known_hdcp2_capable_rx.exit:                      ; preds = %if.end2.i, %if.end.i.known_hdcp2_capable_rx.exit_crit_edge, %if.then.i
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i78) #5
  %9 = ptrtoint ptr %status.i78 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status.i78, align 4
  %10 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i79 = icmp eq i32 %11, 0
  br i1 %cmp.not.i79, label %if.end.i84, label %if.then.i81

if.then.i81:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i80 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %12 = ptrtoint ptr %unexpected_event.i80 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %unexpected_event.i80, align 1
  br label %send_ake_init.exit

if.end.i84:                                       ; preds = %sw.bb2
  %create_session.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 2
  %call.i82 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_create_session, ptr noundef %create_session.i, ptr noundef nonnull %status.i78, ptr noundef %hdcp, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i82)
  %tobool.not.i83 = icmp eq i8 %call.i82, 0
  br i1 %tobool.not.i83, label %if.end.i84.send_ake_init.exit_crit_edge, label %if.end2.i86

if.end.i84.send_ake_init.exit_crit_edge:          ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_ake_init.exit

if.end2.i86:                                      ; preds = %if.end.i84
  %ake_init_prepare.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 3
  %call3.i85 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_prepare_ake_init, ptr noundef %ake_init_prepare.i, ptr noundef nonnull %status.i78, ptr noundef %hdcp, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3.i85)
  %tobool4.not.i = icmp eq i8 %call3.i85, 0
  br i1 %tobool4.not.i, label %if.end2.i86.send_ake_init.exit_crit_edge, label %if.end6.i

if.end2.i86.send_ake_init.exit_crit_edge:         ; preds = %if.end2.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_ake_init.exit

if.end6.i:                                        ; preds = %if.end2.i86
  call void @__sanitizer_cov_trace_pc() #7
  %ake_init_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 4
  %call7.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_ake_init, ptr noundef %ake_init_write.i, ptr noundef nonnull %status.i78, ptr noundef %hdcp, ptr noundef nonnull @.str.4) #5
  br label %send_ake_init.exit

send_ake_init.exit:                               ; preds = %if.end6.i, %if.end2.i86.send_ake_init.exit_crit_edge, %if.end.i84.send_ake_init.exit_crit_edge, %if.then.i81
  %13 = ptrtoint ptr %status.i78 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i78, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i78) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i87) #5
  %15 = ptrtoint ptr %status.i87 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status.i87, align 4
  %16 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch.i = icmp ult i32 %17, 2
  br i1 %switch.i, label %if.end.i90, label %if.then.i89

if.then.i89:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i88 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %18 = ptrtoint ptr %unexpected_event.i88 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %unexpected_event.i88, align 1
  br label %validate_ake_cert.exit

if.end.i90:                                       ; preds = %sw.bb4
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %19 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, 1
  br i1 %cmp.i.not.i, label %if.then3.i, label %if.end.i90.if.end8.i_crit_edge

if.end.i90.if.end8.i_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i90
  %ake_cert_available.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 6
  %call4.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_ake_cert_available, ptr noundef %ake_cert_available.i, ptr noundef nonnull %status.i87, ptr noundef %hdcp, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool5.not.i = icmp eq i8 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.validate_ake_cert.exit_crit_edge, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i.validate_ake_cert.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_ake_cert.exit

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i90.if.end8.i_crit_edge
  %ake_cert_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 7
  %call9.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_ake_cert, ptr noundef %ake_cert_read.i, ptr noundef nonnull %status.i87, ptr noundef %hdcp, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.i)
  %tobool10.not.i = icmp eq i8 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.validate_ake_cert.exit_crit_edge, label %if.end12.i

if.end8.i.validate_ake_cert.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_ake_cert.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %ake_cert_validation.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 8
  %call13.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_ake_cert, ptr noundef %ake_cert_validation.i, ptr noundef nonnull %status.i87, ptr noundef %hdcp, ptr noundef nonnull @.str.7) #5
  br label %validate_ake_cert.exit

validate_ake_cert.exit:                           ; preds = %if.end12.i, %if.end8.i.validate_ake_cert.exit_crit_edge, %if.then3.i.validate_ake_cert.exit_crit_edge, %if.then.i89
  %21 = ptrtoint ptr %status.i87 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i87) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i91) #5
  %23 = ptrtoint ptr %status.i91 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status.i91, align 4
  %24 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i92 = icmp eq i32 %25, 0
  br i1 %cmp.not.i92, label %if.end.i96, label %if.then.i94

if.then.i94:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i93 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %26 = ptrtoint ptr %unexpected_event.i93 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %unexpected_event.i93, align 1
  br label %send_no_stored_km.exit

if.end.i96:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %no_stored_km_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 10
  %call.i95 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_no_stored_km, ptr noundef %no_stored_km_write.i, ptr noundef nonnull %status.i91, ptr noundef %hdcp, ptr noundef nonnull @.str.8) #5
  br label %send_no_stored_km.exit

send_no_stored_km.exit:                           ; preds = %if.end.i96, %if.then.i94
  %27 = ptrtoint ptr %status.i91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i91) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i97) #5
  %29 = ptrtoint ptr %status.i97 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %status.i97, align 4
  %30 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %switch.i98 = icmp ult i32 %31, 3
  br i1 %switch.i98, label %if.end.i103, label %if.then.i100

if.then.i100:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i99 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %32 = ptrtoint ptr %unexpected_event.i99 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %unexpected_event.i99, align 1
  br label %read_h_prime.exit

if.end.i103:                                      ; preds = %sw.bb8
  %h_prime_available.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %call.i101 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_h_prime_available, ptr noundef %h_prime_available.i, ptr noundef nonnull %status.i97, ptr noundef %hdcp, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i101)
  %tobool.not.i102 = icmp eq i8 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i103.read_h_prime.exit_crit_edge, label %if.end7.i

if.end.i103.read_h_prime.exit_crit_edge:          ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_h_prime.exit

if.end7.i:                                        ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #7
  %h_prime_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %call8.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_h_prime, ptr noundef %h_prime_read.i, ptr noundef nonnull %status.i97, ptr noundef %hdcp, ptr noundef nonnull @.str.10) #5
  br label %read_h_prime.exit

read_h_prime.exit:                                ; preds = %if.end7.i, %if.end.i103.read_h_prime.exit_crit_edge, %if.then.i100
  %33 = ptrtoint ptr %status.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i97) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i104) #5
  %35 = ptrtoint ptr %status.i104 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %status.i104, align 4
  %36 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %switch.i105 = icmp ult i32 %37, 3
  br i1 %switch.i105, label %if.end.i110, label %if.then.i107

if.then.i107:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i106 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %38 = ptrtoint ptr %unexpected_event.i106 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %unexpected_event.i106, align 1
  br label %read_pairing_info_and_validate_h_prime.exit

if.end.i110:                                      ; preds = %sw.bb10
  %pairing_available.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 13
  %call.i108 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_pairing_info_available, ptr noundef %pairing_available.i, ptr noundef nonnull %status.i104, ptr noundef %hdcp, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i108)
  %tobool.not.i109 = icmp eq i8 %call.i108, 0
  br i1 %tobool.not.i109, label %if.end.i110.read_pairing_info_and_validate_h_prime.exit_crit_edge, label %if.end7.i112

if.end.i110.read_pairing_info_and_validate_h_prime.exit_crit_edge: ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_pairing_info_and_validate_h_prime.exit

if.end7.i112:                                     ; preds = %if.end.i110
  %pairing_info_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 14
  %call8.i111 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_pairing_info, ptr noundef %pairing_info_read.i, ptr noundef nonnull %status.i104, ptr noundef %hdcp, ptr noundef nonnull @.str.12) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i111)
  %tobool9.not.i = icmp eq i8 %call8.i111, 0
  br i1 %tobool9.not.i, label %if.end7.i112.read_pairing_info_and_validate_h_prime.exit_crit_edge, label %if.end11.i

if.end7.i112.read_pairing_info_and_validate_h_prime.exit_crit_edge: ; preds = %if.end7.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_pairing_info_and_validate_h_prime.exit

if.end11.i:                                       ; preds = %if.end7.i112
  call void @__sanitizer_cov_trace_pc() #7
  %h_prime_validation.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %call12.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_h_prime, ptr noundef %h_prime_validation.i, ptr noundef nonnull %status.i104, ptr noundef %hdcp, ptr noundef nonnull @.str.13) #5
  br label %read_pairing_info_and_validate_h_prime.exit

read_pairing_info_and_validate_h_prime.exit:      ; preds = %if.end11.i, %if.end7.i112.read_pairing_info_and_validate_h_prime.exit_crit_edge, %if.end.i110.read_pairing_info_and_validate_h_prime.exit_crit_edge, %if.then.i107
  %39 = ptrtoint ptr %status.i104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status.i104, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i104) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i113) #5
  %41 = ptrtoint ptr %status.i113 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status.i113, align 4
  %42 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.not.i114 = icmp eq i32 %43, 0
  br i1 %cmp.not.i114, label %if.end.i118, label %if.then.i116

if.then.i116:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i115 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %44 = ptrtoint ptr %unexpected_event.i115 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %unexpected_event.i115, align 1
  br label %send_stored_km.exit

if.end.i118:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %stored_km_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 9
  %call.i117 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_stored_km, ptr noundef %stored_km_write.i, ptr noundef nonnull %status.i113, ptr noundef %hdcp, ptr noundef nonnull @.str.14) #5
  br label %send_stored_km.exit

send_stored_km.exit:                              ; preds = %if.end.i118, %if.then.i116
  %45 = ptrtoint ptr %status.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status.i113, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i113) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i119) #5
  %47 = ptrtoint ptr %status.i119 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %status.i119, align 4
  %48 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %switch.i120 = icmp ult i32 %49, 3
  br i1 %switch.i120, label %if.end.i126, label %if.then.i122

if.then.i122:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i121 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %50 = ptrtoint ptr %unexpected_event.i121 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %unexpected_event.i121, align 1
  br label %validate_h_prime.exit

if.end.i126:                                      ; preds = %sw.bb14
  %h_prime_available.i123 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %call.i124 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_h_prime_available, ptr noundef %h_prime_available.i123, ptr noundef nonnull %status.i119, ptr noundef %hdcp, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i124)
  %tobool.not.i125 = icmp eq i8 %call.i124, 0
  br i1 %tobool.not.i125, label %if.end.i126.validate_h_prime.exit_crit_edge, label %if.end7.i130

if.end.i126.validate_h_prime.exit_crit_edge:      ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_h_prime.exit

if.end7.i130:                                     ; preds = %if.end.i126
  %h_prime_read.i127 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %call8.i128 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_h_prime, ptr noundef %h_prime_read.i127, ptr noundef nonnull %status.i119, ptr noundef %hdcp, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i128)
  %tobool9.not.i129 = icmp eq i8 %call8.i128, 0
  br i1 %tobool9.not.i129, label %if.end7.i130.validate_h_prime.exit_crit_edge, label %if.end11.i133

if.end7.i130.validate_h_prime.exit_crit_edge:     ; preds = %if.end7.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_h_prime.exit

if.end11.i133:                                    ; preds = %if.end7.i130
  call void @__sanitizer_cov_trace_pc() #7
  %h_prime_validation.i131 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %call12.i132 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_h_prime, ptr noundef %h_prime_validation.i131, ptr noundef nonnull %status.i119, ptr noundef %hdcp, ptr noundef nonnull @.str.13) #5
  br label %validate_h_prime.exit

validate_h_prime.exit:                            ; preds = %if.end11.i133, %if.end7.i130.validate_h_prime.exit_crit_edge, %if.end.i126.validate_h_prime.exit_crit_edge, %if.then.i122
  %51 = ptrtoint ptr %status.i119 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status.i119, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i119) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call fastcc i32 @locality_check(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i134) #5
  %53 = ptrtoint ptr %status.i134 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status.i134, align 4
  %54 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i135 = icmp eq i32 %55, 0
  br i1 %cmp.not.i135, label %if.end.i140, label %if.then.i137

if.then.i137:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i136 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %56 = ptrtoint ptr %unexpected_event.i136 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %unexpected_event.i136, align 1
  br label %exchange_ks_and_test_for_repeater.exit

if.end.i140:                                      ; preds = %sw.bb18
  %eks_prepare.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 21
  %call.i138 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_prepare_eks, ptr noundef %eks_prepare.i, ptr noundef nonnull %status.i134, ptr noundef %hdcp, ptr noundef nonnull @.str.20) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i138)
  %tobool.not.i139 = icmp eq i8 %call.i138, 0
  br i1 %tobool.not.i139, label %if.end.i140.exchange_ks_and_test_for_repeater.exit_crit_edge, label %if.end2.i142

if.end.i140.exchange_ks_and_test_for_repeater.exit_crit_edge: ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %exchange_ks_and_test_for_repeater.exit

if.end2.i142:                                     ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #7
  %eks_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 22
  %call3.i141 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_eks, ptr noundef %eks_write.i, ptr noundef nonnull %status.i134, ptr noundef %hdcp, ptr noundef nonnull @.str.21) #5
  br label %exchange_ks_and_test_for_repeater.exit

exchange_ks_and_test_for_repeater.exit:           ; preds = %if.end2.i142, %if.end.i140.exchange_ks_and_test_for_repeater.exit_crit_edge, %if.then.i137
  %57 = ptrtoint ptr %status.i134 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status.i134, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i134) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call fastcc i32 @enable_encryption(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i143) #5
  %59 = ptrtoint ptr %status.i143 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %status.i143, align 4
  %60 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %event_ctx, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %61, label %if.then.i145 [
    i32 0, label %sw.bb22.if.end.i147_crit_edge
    i32 2, label %sw.bb22.if.end.i147_crit_edge156
  ]

sw.bb22.if.end.i147_crit_edge156:                 ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i147

sw.bb22.if.end.i147_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i147

if.then.i145:                                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i144 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %63 = ptrtoint ptr %unexpected_event.i144 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %unexpected_event.i144, align 1
  br label %authenticated.exit

if.end.i147:                                      ; preds = %sw.bb22.if.end.i147_crit_edge, %sw.bb22.if.end.i147_crit_edge156
  %call.i146 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status.i143) #5
  br label %authenticated.exit

authenticated.exit:                               ; preds = %if.end.i147, %if.then.i145
  %64 = ptrtoint ptr %status.i143 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status.i143, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i143) #5
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i148) #5
  %66 = ptrtoint ptr %status.i148 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %status.i148, align 4
  %67 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %switch.i149 = icmp ult i32 %68, 3
  br i1 %switch.i149, label %if.end.i154, label %if.then.i151

if.then.i151:                                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i150 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %69 = ptrtoint ptr %unexpected_event.i150 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %unexpected_event.i150, align 1
  br label %wait_for_rx_id_list.exit

if.end.i154:                                      ; preds = %sw.bb24
  %call.i152 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status.i148) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i152)
  %tobool.not.i153 = icmp eq i8 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i154.wait_for_rx_id_list.exit_crit_edge, label %if.end7.i155

if.end.i154.wait_for_rx_id_list.exit_crit_edge:   ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_rx_id_list.exit

if.end7.i155:                                     ; preds = %if.end.i154
  %rx_id_list_ready.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %70 = ptrtoint ptr %rx_id_list_ready.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rx_id_list_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool8.not.i = icmp eq i8 %71, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i155.wait_for_rx_id_list.exit_crit_edge

if.end7.i155.wait_for_rx_id_list.exit_crit_edge:  ; preds = %if.end7.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_rx_id_list.exit

if.then9.i:                                       ; preds = %if.end7.i155
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %status.i148 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 49, ptr %status.i148, align 4
  br label %wait_for_rx_id_list.exit

wait_for_rx_id_list.exit:                         ; preds = %if.then9.i, %if.end7.i155.wait_for_rx_id_list.exit_crit_edge, %if.end.i154.wait_for_rx_id_list.exit_crit_edge, %if.then.i151
  %73 = ptrtoint ptr %status.i148 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status.i148, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i148) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call fastcc i32 @verify_rx_id_list_and_send_ack(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call fastcc i32 @send_stream_management(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call fastcc i32 @validate_stream_ready(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb28, %sw.bb26, %wait_for_rx_id_list.exit, %authenticated.exit, %sw.bb20, %exchange_ks_and_test_for_repeater.exit, %sw.bb16, %validate_h_prime.exit, %send_stored_km.exit, %read_pairing_info_and_validate_h_prime.exit, %read_h_prime.exit, %send_no_stored_km.exit, %validate_ake_cert.exit, %send_ake_init.exit, %known_hdcp2_capable_rx.exit, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ], [ %74, %wait_for_rx_id_list.exit ], [ %65, %authenticated.exit ], [ %call21, %sw.bb20 ], [ %58, %exchange_ks_and_test_for_repeater.exit ], [ %call17, %sw.bb16 ], [ %52, %validate_h_prime.exit ], [ %46, %send_stored_km.exit ], [ %40, %read_pairing_info_and_validate_h_prime.exit ], [ %34, %read_h_prime.exit ], [ %28, %send_no_stored_km.exit ], [ %22, %validate_ake_cert.exit ], [ %14, %send_ake_init.exit ], [ %8, %known_hdcp2_capable_rx.exit ], [ 5, %entry.sw.epilog_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @locality_check(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr noundef %input) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %3 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.end:                                           ; preds = %entry
  %lc_init_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 16
  %call = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_prepare_lc_init, ptr noundef %lc_init_prepare, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end2:                                          ; preds = %if.end
  %lc_init_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 17
  %call3 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_lc_init, ptr noundef %lc_init_write, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3)
  %tobool4.not = icmp eq i8 %call3, 0
  br i1 %tobool4.not, label %if.end2.out_crit_edge, label %if.end6

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %if.end2
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 2
  br i1 %cmp.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 16) #5
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %l_prime_available_poll = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 18
  %call10 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @poll_l_prime_available, ptr noundef %l_prime_available_poll, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool11.not = icmp eq i8 %call10, 0
  br i1 %tobool11.not, label %if.else.out_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then9
  %l_prime_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 19
  %call15 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_l_prime, ptr noundef %l_prime_read, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.18) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call15)
  %tobool16.not = icmp eq i8 %call15, 0
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %l_prime_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 20
  %call19 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_l_prime, ptr noundef %l_prime_validation, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.19) #5
  br label %out

out:                                              ; preds = %if.end18, %if.end14.out_crit_edge, %if.else.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge, %if.then
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_encryption(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr noundef %input) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event_ctx, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %2, label %if.then [
    i32 2, label %if.then5
    i32 0, label %if.end6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %4 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  br label %out

if.end6:                                          ; preds = %entry
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %5 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 1
  br i1 %cmp.i.not, label %if.then8, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %call9 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %tobool10.not = icmp eq i8 %call9, 0
  br i1 %tobool10.not, label %if.then8.out_crit_edge, label %if.end12

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %if.then8
  %rx_id_list_ready = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %7 = ptrtoint ptr %rx_id_list_ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_id_list_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %enable_encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 23
  %call17 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_enable_encryption, ptr noundef %enable_encryption, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.22) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call17)
  %tobool18.not = icmp eq i8 %call17, 0
  br i1 %tobool18.not, label %if.end16.out_crit_edge, label %if.end20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i44 = icmp eq i32 %10, 2
  br i1 %cmp.i44, label %is_dp_mst_hdcp.exit, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

is_dp_mst_hdcp.exit:                              ; preds = %if.end20
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not = icmp eq i8 %12, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.out_crit_edge, label %if.then23

is_dp_mst_hdcp.exit.out_crit_edge:                ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then23:                                        ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %stream_encryption_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 37
  %call24 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_enable_dp_stream_encryption, ptr noundef %stream_encryption_dp, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.23) #5
  br label %out

out:                                              ; preds = %if.then23, %is_dp_mst_hdcp.exit.out_crit_edge, %if.end20.out_crit_edge, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %if.then8.out_crit_edge, %if.then5, %if.then
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_rx_id_list_and_send_ack(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr noundef %input) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event_ctx, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %2, label %if.then [
    i32 2, label %if.then5
    i32 0, label %if.end6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %4 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  br label %out

if.end6:                                          ; preds = %entry
  %rx_id_list_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 25
  %call7 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_rx_id_list, ptr noundef %rx_id_list_read, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.29) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call7)
  %tobool.not = icmp eq i8 %call7, 0
  br i1 %tobool.not, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.end6
  %device_count_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 26
  %call10 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_device_count, ptr noundef %device_count_check, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.30) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool11.not = icmp eq i8 %call10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end13:                                         ; preds = %if.end9
  %rx_id_list_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 27
  %call14 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_rx_id_list, ptr noundef %rx_id_list_validation, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.31) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %tobool15.not = icmp eq i8 %call14, 0
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %repeater_auth_ack_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 28
  %call18 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_repeater_auth_ack, ptr noundef %repeater_auth_ack_write, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.32) #5
  br label %out

out:                                              ; preds = %if.end17, %if.end13.out_crit_edge, %if.end9.out_crit_edge, %if.end6.out_crit_edge, %if.then5, %if.then
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_stream_management(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr noundef %input) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event_ctx, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %2, label %if.then [
    i32 2, label %if.then5
    i32 0, label %if.end6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %4 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  br label %out

if.end6:                                          ; preds = %entry
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %5 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 1
  br i1 %cmp.i.not, label %if.then8, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %call9 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %tobool10.not = icmp eq i8 %call9, 0
  br i1 %tobool10.not, label %if.then8.out_crit_edge, label %if.end12

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %if.then8
  %rx_id_list_ready = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %7 = ptrtoint ptr %rx_id_list_ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_id_list_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %prepare_stream_manage = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 29
  %call17 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_prepare_stream_management, ptr noundef %prepare_stream_manage, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.33) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call17)
  %tobool18.not = icmp eq i8 %call17, 0
  br i1 %tobool18.not, label %if.end16.out_crit_edge, label %if.end20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %stream_manage_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 30
  %call21 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_stream_manage, ptr noundef %stream_manage_write, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.34) #5
  br label %out

out:                                              ; preds = %if.end20, %if.end16.out_crit_edge, %if.end12.out_crit_edge, %if.then8.out_crit_edge, %if.then5, %if.then
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_stream_ready(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr noundef %input) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %switch = icmp ult i32 %2, 3
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %3 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp7 = icmp eq i32 %2, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  br label %out

if.end9:                                          ; preds = %if.end
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %if.then11, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then11:                                        ; preds = %if.end9
  %call12 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call12)
  %tobool13.not = icmp eq i8 %call12, 0
  br i1 %tobool13.not, label %if.then11.out_crit_edge, label %if.end15

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.then11
  %rx_id_list_ready = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %rx_id_list_ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_id_list_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i54.not = icmp eq i32 %.pr, 1
  br i1 %cmp.i54.not, label %if.then22, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  %stream_ready_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 31
  %call23 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_stream_ready_available, ptr noundef %stream_ready_available, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.35) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call23)
  %tobool24.not = icmp eq i8 %call23, 0
  br i1 %tobool24.not, label %if.then22.out_crit_edge, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end19.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %stream_ready_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 32
  %call28 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_stream_ready, ptr noundef %stream_ready_read, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.36) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call28)
  %tobool29.not = icmp eq i8 %call28, 0
  br i1 %tobool29.not, label %if.end27.out_crit_edge, label %if.end31

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %stream_ready_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 33
  %call32 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_stream_ready, ptr noundef %stream_ready_validation, ptr noundef nonnull %status, ptr noundef %hdcp, ptr noundef nonnull @.str.37) #5
  br label %out

out:                                              ; preds = %if.end31, %if.end27.out_crit_edge, %if.then22.out_crit_edge, %if.end15.out_crit_edge, %if.then11.out_crit_edge, %if.then8, %if.then
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_dp_execution(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  %status.i159 = alloca i32, align 4
  %status.i154 = alloca i32, align 4
  %status.i148 = alloca i32, align 4
  %status.i139 = alloca i32, align 4
  %status.i124 = alloca i32, align 4
  %status.i118 = alloca i32, align 4
  %status.i109 = alloca i32, align 4
  %status.i102 = alloca i32, align 4
  %status.i96 = alloca i32, align 4
  %status.i92 = alloca i32, align 4
  %status.i83 = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 32, label %sw.bb
    i8 33, label %sw.bb2
    i8 34, label %sw.bb4
    i8 35, label %sw.bb6
    i8 36, label %sw.bb8
    i8 37, label %sw.bb10
    i8 38, label %sw.bb12
    i8 39, label %sw.bb14
    i8 40, label %sw.bb16
    i8 41, label %sw.bb18
    i8 42, label %sw.bb20
    i8 43, label %sw.bb22
    i8 44, label %sw.bb24
    i8 45, label %sw.bb26
    i8 46, label %sw.bb28
    i8 47, label %sw.bb30
    i8 48, label %sw.bb32
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status.i, align 4
  %4 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %6 = ptrtoint ptr %unexpected_event.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %unexpected_event.i, align 1
  br label %determine_rx_hdcp_capable_dp.exit

if.end.i:                                         ; preds = %sw.bb
  %rx_caps_read_dp.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 34
  %call.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_rxcaps, ptr noundef %rx_caps_read_dp.i, ptr noundef nonnull %status.i, ptr noundef %hdcp, ptr noundef nonnull @.str.38) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.determine_rx_hdcp_capable_dp.exit_crit_edge, label %if.end2.i

if.end.i.determine_rx_hdcp_capable_dp.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %determine_rx_hdcp_capable_dp.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdcp2_capable_check.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 1
  %call3.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_hdcp2_capable, ptr noundef %hdcp2_capable_check.i, ptr noundef nonnull %status.i, ptr noundef %hdcp, ptr noundef nonnull @.str.39) #5
  br label %determine_rx_hdcp_capable_dp.exit

determine_rx_hdcp_capable_dp.exit:                ; preds = %if.end2.i, %if.end.i.determine_rx_hdcp_capable_dp.exit_crit_edge, %if.then.i
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i83) #5
  %9 = ptrtoint ptr %status.i83 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status.i83, align 4
  %10 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i84 = icmp eq i32 %11, 0
  br i1 %cmp.not.i84, label %if.end.i89, label %if.then.i86

if.then.i86:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i85 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %12 = ptrtoint ptr %unexpected_event.i85 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %unexpected_event.i85, align 1
  br label %send_ake_init.exit

if.end.i89:                                       ; preds = %sw.bb2
  %create_session.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 2
  %call.i87 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_create_session, ptr noundef %create_session.i, ptr noundef nonnull %status.i83, ptr noundef %hdcp, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i87)
  %tobool.not.i88 = icmp eq i8 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end.i89.send_ake_init.exit_crit_edge, label %if.end2.i91

if.end.i89.send_ake_init.exit_crit_edge:          ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_ake_init.exit

if.end2.i91:                                      ; preds = %if.end.i89
  %ake_init_prepare.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 3
  %call3.i90 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_prepare_ake_init, ptr noundef %ake_init_prepare.i, ptr noundef nonnull %status.i83, ptr noundef %hdcp, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3.i90)
  %tobool4.not.i = icmp eq i8 %call3.i90, 0
  br i1 %tobool4.not.i, label %if.end2.i91.send_ake_init.exit_crit_edge, label %if.end6.i

if.end2.i91.send_ake_init.exit_crit_edge:         ; preds = %if.end2.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_ake_init.exit

if.end6.i:                                        ; preds = %if.end2.i91
  call void @__sanitizer_cov_trace_pc() #7
  %ake_init_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 4
  %call7.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_ake_init, ptr noundef %ake_init_write.i, ptr noundef nonnull %status.i83, ptr noundef %hdcp, ptr noundef nonnull @.str.4) #5
  br label %send_ake_init.exit

send_ake_init.exit:                               ; preds = %if.end6.i, %if.end2.i91.send_ake_init.exit_crit_edge, %if.end.i89.send_ake_init.exit_crit_edge, %if.then.i86
  %13 = ptrtoint ptr %status.i83 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i83) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i92) #5
  %15 = ptrtoint ptr %status.i92 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status.i92, align 4
  %16 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch.i = icmp ult i32 %17, 2
  br i1 %switch.i, label %if.end.i95, label %if.then.i94

if.then.i94:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i93 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %18 = ptrtoint ptr %unexpected_event.i93 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %unexpected_event.i93, align 1
  br label %validate_ake_cert.exit

if.end.i95:                                       ; preds = %sw.bb4
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %19 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %connection.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, 1
  br i1 %cmp.i.not.i, label %if.then3.i, label %if.end.i95.if.end8.i_crit_edge

if.end.i95.if.end8.i_crit_edge:                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i95
  %ake_cert_available.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 6
  %call4.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_ake_cert_available, ptr noundef %ake_cert_available.i, ptr noundef nonnull %status.i92, ptr noundef %hdcp, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool5.not.i = icmp eq i8 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.validate_ake_cert.exit_crit_edge, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i.validate_ake_cert.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_ake_cert.exit

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i95.if.end8.i_crit_edge
  %ake_cert_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 7
  %call9.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_ake_cert, ptr noundef %ake_cert_read.i, ptr noundef nonnull %status.i92, ptr noundef %hdcp, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.i)
  %tobool10.not.i = icmp eq i8 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.validate_ake_cert.exit_crit_edge, label %if.end12.i

if.end8.i.validate_ake_cert.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_ake_cert.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %ake_cert_validation.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 8
  %call13.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_ake_cert, ptr noundef %ake_cert_validation.i, ptr noundef nonnull %status.i92, ptr noundef %hdcp, ptr noundef nonnull @.str.7) #5
  br label %validate_ake_cert.exit

validate_ake_cert.exit:                           ; preds = %if.end12.i, %if.end8.i.validate_ake_cert.exit_crit_edge, %if.then3.i.validate_ake_cert.exit_crit_edge, %if.then.i94
  %21 = ptrtoint ptr %status.i92 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i92) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i96) #5
  %23 = ptrtoint ptr %status.i96 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status.i96, align 4
  %24 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i97 = icmp eq i32 %25, 0
  br i1 %cmp.not.i97, label %if.end.i101, label %if.then.i99

if.then.i99:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i98 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %26 = ptrtoint ptr %unexpected_event.i98 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %unexpected_event.i98, align 1
  br label %send_no_stored_km.exit

if.end.i101:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %no_stored_km_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 10
  %call.i100 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_no_stored_km, ptr noundef %no_stored_km_write.i, ptr noundef nonnull %status.i96, ptr noundef %hdcp, ptr noundef nonnull @.str.8) #5
  br label %send_no_stored_km.exit

send_no_stored_km.exit:                           ; preds = %if.end.i101, %if.then.i99
  %27 = ptrtoint ptr %status.i96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i96, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i96) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i102) #5
  %29 = ptrtoint ptr %status.i102 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %status.i102, align 4
  %30 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %switch.i103 = icmp ult i32 %31, 3
  br i1 %switch.i103, label %if.end.i108, label %if.then.i105

if.then.i105:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i104 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %32 = ptrtoint ptr %unexpected_event.i104 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %unexpected_event.i104, align 1
  br label %read_h_prime.exit

if.end.i108:                                      ; preds = %sw.bb8
  %h_prime_available.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %call.i106 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_h_prime_available, ptr noundef %h_prime_available.i, ptr noundef nonnull %status.i102, ptr noundef %hdcp, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i106)
  %tobool.not.i107 = icmp eq i8 %call.i106, 0
  br i1 %tobool.not.i107, label %if.end.i108.read_h_prime.exit_crit_edge, label %if.end7.i

if.end.i108.read_h_prime.exit_crit_edge:          ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_h_prime.exit

if.end7.i:                                        ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #7
  %h_prime_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %call8.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_h_prime, ptr noundef %h_prime_read.i, ptr noundef nonnull %status.i102, ptr noundef %hdcp, ptr noundef nonnull @.str.10) #5
  br label %read_h_prime.exit

read_h_prime.exit:                                ; preds = %if.end7.i, %if.end.i108.read_h_prime.exit_crit_edge, %if.then.i105
  %33 = ptrtoint ptr %status.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i102) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i109) #5
  %35 = ptrtoint ptr %status.i109 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %status.i109, align 4
  %36 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %switch.i110 = icmp ult i32 %37, 3
  br i1 %switch.i110, label %if.end.i115, label %if.then.i112

if.then.i112:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i111 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %38 = ptrtoint ptr %unexpected_event.i111 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %unexpected_event.i111, align 1
  br label %read_pairing_info_and_validate_h_prime.exit

if.end.i115:                                      ; preds = %sw.bb10
  %pairing_available.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 13
  %call.i113 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_pairing_info_available, ptr noundef %pairing_available.i, ptr noundef nonnull %status.i109, ptr noundef %hdcp, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i113)
  %tobool.not.i114 = icmp eq i8 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end.i115.read_pairing_info_and_validate_h_prime.exit_crit_edge, label %if.end7.i117

if.end.i115.read_pairing_info_and_validate_h_prime.exit_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_pairing_info_and_validate_h_prime.exit

if.end7.i117:                                     ; preds = %if.end.i115
  %pairing_info_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 14
  %call8.i116 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_pairing_info, ptr noundef %pairing_info_read.i, ptr noundef nonnull %status.i109, ptr noundef %hdcp, ptr noundef nonnull @.str.12) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i116)
  %tobool9.not.i = icmp eq i8 %call8.i116, 0
  br i1 %tobool9.not.i, label %if.end7.i117.read_pairing_info_and_validate_h_prime.exit_crit_edge, label %if.end11.i

if.end7.i117.read_pairing_info_and_validate_h_prime.exit_crit_edge: ; preds = %if.end7.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_pairing_info_and_validate_h_prime.exit

if.end11.i:                                       ; preds = %if.end7.i117
  call void @__sanitizer_cov_trace_pc() #7
  %h_prime_validation.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %call12.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_h_prime, ptr noundef %h_prime_validation.i, ptr noundef nonnull %status.i109, ptr noundef %hdcp, ptr noundef nonnull @.str.13) #5
  br label %read_pairing_info_and_validate_h_prime.exit

read_pairing_info_and_validate_h_prime.exit:      ; preds = %if.end11.i, %if.end7.i117.read_pairing_info_and_validate_h_prime.exit_crit_edge, %if.end.i115.read_pairing_info_and_validate_h_prime.exit_crit_edge, %if.then.i112
  %39 = ptrtoint ptr %status.i109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status.i109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i109) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i118) #5
  %41 = ptrtoint ptr %status.i118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status.i118, align 4
  %42 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.not.i119 = icmp eq i32 %43, 0
  br i1 %cmp.not.i119, label %if.end.i123, label %if.then.i121

if.then.i121:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i120 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %44 = ptrtoint ptr %unexpected_event.i120 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %unexpected_event.i120, align 1
  br label %send_stored_km.exit

if.end.i123:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %stored_km_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 9
  %call.i122 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_stored_km, ptr noundef %stored_km_write.i, ptr noundef nonnull %status.i118, ptr noundef %hdcp, ptr noundef nonnull @.str.14) #5
  br label %send_stored_km.exit

send_stored_km.exit:                              ; preds = %if.end.i123, %if.then.i121
  %45 = ptrtoint ptr %status.i118 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status.i118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i118) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i124) #5
  %47 = ptrtoint ptr %status.i124 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %status.i124, align 4
  %48 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %switch.i125 = icmp ult i32 %49, 3
  br i1 %switch.i125, label %if.end.i131, label %if.then.i127

if.then.i127:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i126 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %50 = ptrtoint ptr %unexpected_event.i126 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %unexpected_event.i126, align 1
  br label %validate_h_prime.exit

if.end.i131:                                      ; preds = %sw.bb14
  %h_prime_available.i128 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %call.i129 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_h_prime_available, ptr noundef %h_prime_available.i128, ptr noundef nonnull %status.i124, ptr noundef %hdcp, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i129)
  %tobool.not.i130 = icmp eq i8 %call.i129, 0
  br i1 %tobool.not.i130, label %if.end.i131.validate_h_prime.exit_crit_edge, label %if.end7.i135

if.end.i131.validate_h_prime.exit_crit_edge:      ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_h_prime.exit

if.end7.i135:                                     ; preds = %if.end.i131
  %h_prime_read.i132 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %call8.i133 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_h_prime, ptr noundef %h_prime_read.i132, ptr noundef nonnull %status.i124, ptr noundef %hdcp, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i133)
  %tobool9.not.i134 = icmp eq i8 %call8.i133, 0
  br i1 %tobool9.not.i134, label %if.end7.i135.validate_h_prime.exit_crit_edge, label %if.end11.i138

if.end7.i135.validate_h_prime.exit_crit_edge:     ; preds = %if.end7.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %validate_h_prime.exit

if.end11.i138:                                    ; preds = %if.end7.i135
  call void @__sanitizer_cov_trace_pc() #7
  %h_prime_validation.i136 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %call12.i137 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_validate_h_prime, ptr noundef %h_prime_validation.i136, ptr noundef nonnull %status.i124, ptr noundef %hdcp, ptr noundef nonnull @.str.13) #5
  br label %validate_h_prime.exit

validate_h_prime.exit:                            ; preds = %if.end11.i138, %if.end7.i135.validate_h_prime.exit_crit_edge, %if.end.i131.validate_h_prime.exit_crit_edge, %if.then.i127
  %51 = ptrtoint ptr %status.i124 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status.i124, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i124) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call fastcc i32 @locality_check(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i139) #5
  %53 = ptrtoint ptr %status.i139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status.i139, align 4
  %54 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i140 = icmp eq i32 %55, 0
  br i1 %cmp.not.i140, label %if.end.i145, label %if.then.i142

if.then.i142:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i141 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %56 = ptrtoint ptr %unexpected_event.i141 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %unexpected_event.i141, align 1
  br label %exchange_ks_and_test_for_repeater.exit

if.end.i145:                                      ; preds = %sw.bb18
  %eks_prepare.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 21
  %call.i143 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_hdcp2_prepare_eks, ptr noundef %eks_prepare.i, ptr noundef nonnull %status.i139, ptr noundef %hdcp, ptr noundef nonnull @.str.20) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i143)
  %tobool.not.i144 = icmp eq i8 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end.i145.exchange_ks_and_test_for_repeater.exit_crit_edge, label %if.end2.i147

if.end.i145.exchange_ks_and_test_for_repeater.exit_crit_edge: ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %exchange_ks_and_test_for_repeater.exit

if.end2.i147:                                     ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #7
  %eks_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 22
  %call3.i146 = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_eks, ptr noundef %eks_write.i, ptr noundef nonnull %status.i139, ptr noundef %hdcp, ptr noundef nonnull @.str.21) #5
  br label %exchange_ks_and_test_for_repeater.exit

exchange_ks_and_test_for_repeater.exit:           ; preds = %if.end2.i147, %if.end.i145.exchange_ks_and_test_for_repeater.exit_crit_edge, %if.then.i142
  %57 = ptrtoint ptr %status.i139 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status.i139, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i139) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i148) #5
  %59 = ptrtoint ptr %status.i148 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %status.i148, align 4
  %60 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %event_ctx, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %61, label %if.then.i150 [
    i32 0, label %sw.bb20.if.end.i153_crit_edge
    i32 2, label %sw.bb20.if.end.i153_crit_edge167
  ]

sw.bb20.if.end.i153_crit_edge167:                 ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i153

sw.bb20.if.end.i153_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i153

if.then.i150:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i149 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %63 = ptrtoint ptr %unexpected_event.i149 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %unexpected_event.i149, align 1
  br label %send_content_stream_type_dp.exit

if.end.i153:                                      ; preds = %sw.bb20.if.end.i153_crit_edge, %sw.bb20.if.end.i153_crit_edge167
  %call.i151 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status.i148) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i151)
  %tobool.not.i152 = icmp eq i8 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i153.send_content_stream_type_dp.exit_crit_edge, label %if.end4.i

if.end.i153.send_content_stream_type_dp.exit_crit_edge: ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %send_content_stream_type_dp.exit

if.end4.i:                                        ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #7
  %content_stream_type_write.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 35
  %call5.i = call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_write_content_type, ptr noundef %content_stream_type_write.i, ptr noundef nonnull %status.i148, ptr noundef %hdcp, ptr noundef nonnull @.str.40) #5
  br label %send_content_stream_type_dp.exit

send_content_stream_type_dp.exit:                 ; preds = %if.end4.i, %if.end.i153.send_content_stream_type_dp.exit_crit_edge, %if.then.i150
  %64 = ptrtoint ptr %status.i148 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status.i148, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i148) #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call fastcc i32 @enable_encryption(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i154) #5
  %66 = ptrtoint ptr %status.i154 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %status.i154, align 4
  %67 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %event_ctx, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %68, label %if.then.i156 [
    i32 0, label %sw.bb24.if.end.i158_crit_edge
    i32 2, label %sw.bb24.if.end.i158_crit_edge168
  ]

sw.bb24.if.end.i158_crit_edge168:                 ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i158

sw.bb24.if.end.i158_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i158

if.then.i156:                                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i155 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %70 = ptrtoint ptr %unexpected_event.i155 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %unexpected_event.i155, align 1
  br label %authenticated.exit

if.end.i158:                                      ; preds = %sw.bb24.if.end.i158_crit_edge, %sw.bb24.if.end.i158_crit_edge168
  %call.i157 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status.i154) #5
  br label %authenticated.exit

authenticated.exit:                               ; preds = %if.end.i158, %if.then.i156
  %71 = ptrtoint ptr %status.i154 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %status.i154, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i154) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i159) #5
  %73 = ptrtoint ptr %status.i159 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %status.i159, align 4
  %74 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %switch.i160 = icmp ult i32 %75, 3
  br i1 %switch.i160, label %if.end.i165, label %if.then.i162

if.then.i162:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  %unexpected_event.i161 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %76 = ptrtoint ptr %unexpected_event.i161 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %unexpected_event.i161, align 1
  br label %wait_for_rx_id_list.exit

if.end.i165:                                      ; preds = %sw.bb26
  %call.i163 = call fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input, ptr noundef nonnull %status.i159) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i163)
  %tobool.not.i164 = icmp eq i8 %call.i163, 0
  br i1 %tobool.not.i164, label %if.end.i165.wait_for_rx_id_list.exit_crit_edge, label %if.end7.i166

if.end.i165.wait_for_rx_id_list.exit_crit_edge:   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_rx_id_list.exit

if.end7.i166:                                     ; preds = %if.end.i165
  %rx_id_list_ready.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %77 = ptrtoint ptr %rx_id_list_ready.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rx_id_list_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool8.not.i = icmp eq i8 %78, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i166.wait_for_rx_id_list.exit_crit_edge

if.end7.i166.wait_for_rx_id_list.exit_crit_edge:  ; preds = %if.end7.i166
  call void @__sanitizer_cov_trace_pc() #7
  br label %wait_for_rx_id_list.exit

if.then9.i:                                       ; preds = %if.end7.i166
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %status.i159 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 49, ptr %status.i159, align 4
  br label %wait_for_rx_id_list.exit

wait_for_rx_id_list.exit:                         ; preds = %if.then9.i, %if.end7.i166.wait_for_rx_id_list.exit_crit_edge, %if.end.i165.wait_for_rx_id_list.exit_crit_edge, %if.then.i162
  %80 = ptrtoint ptr %status.i159 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %status.i159, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i159) #5
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call fastcc i32 @verify_rx_id_list_and_send_ack(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call fastcc i32 @send_stream_management(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call fastcc i32 @validate_stream_ready(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb30, %sw.bb28, %wait_for_rx_id_list.exit, %authenticated.exit, %sw.bb22, %send_content_stream_type_dp.exit, %exchange_ks_and_test_for_repeater.exit, %sw.bb16, %validate_h_prime.exit, %send_stored_km.exit, %read_pairing_info_and_validate_h_prime.exit, %read_h_prime.exit, %send_no_stored_km.exit, %validate_ake_cert.exit, %send_ake_init.exit, %determine_rx_hdcp_capable_dp.exit, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %81, %wait_for_rx_id_list.exit ], [ %72, %authenticated.exit ], [ %call23, %sw.bb22 ], [ %65, %send_content_stream_type_dp.exit ], [ %58, %exchange_ks_and_test_for_repeater.exit ], [ %call17, %sw.bb16 ], [ %52, %validate_h_prime.exit ], [ %46, %send_stored_km.exit ], [ %40, %read_pairing_info_and_validate_h_prime.exit ], [ %34, %read_h_prime.exit ], [ %28, %send_no_stored_km.exit ], [ %22, %validate_ake_cert.exit ], [ %14, %send_ake_init.exit ], [ %8, %determine_rx_hdcp_capable_dp.exit ], [ 5, %entry.sw.epilog_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mod_hdcp_execute_and_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_hdcp2version(ptr noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_hdcp2_capable(ptr nocapture noundef readonly %hdcp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rxcaps_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %rxcaps_dp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxcaps_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %land.rhs, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  %phi.sel = select i1 %tobool7.not, i32 33, i32 0
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %msg9 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %msg9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msg9, align 4
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  %cond13 = select i1 %tobool12.not, i32 33, i32 0
  br label %if.end

if.end:                                           ; preds = %if.else, %land.rhs, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %cond13, %if.else ], [ 33, %if.then.if.end_crit_edge ], [ %phi.sel, %land.rhs ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_create_session(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_prepare_ake_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_ake_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_ake_cert_available(ptr noundef %hdcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 3
  %and = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and, 8
  %5 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rxstatus, align 4
  %conv7 = zext i8 %6 to i32
  %or = or i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 534, i32 %or)
  %cmp10 = icmp eq i32 %or, 534
  %cond = select i1 %cmp10, i32 0, i32 37
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %status.0 = phi i32 [ %cond, %if.then2 ], [ %call1, %if.else.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_ake_cert(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_validate_ake_cert(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_rxstatus(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_no_stored_km(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_h_prime_available(ptr noundef %hdcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 18
  %2 = ptrtoint ptr %rxstatus_dp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxstatus_dp, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool3.not, i32 38, i32 0
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %6)
  %cmp15 = icmp eq i8 %6, 33
  %cond17 = select i1 %cmp15, i32 0, i32 38
  br label %out

out:                                              ; preds = %if.else, %if.then2, %entry.out_crit_edge
  %status.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %cond, %if.then2 ], [ %cond17, %if.else ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_h_prime(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_pairing_info_available(ptr noundef %hdcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 18
  %2 = ptrtoint ptr %rxstatus_dp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxstatus_dp, align 1
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool3.not, i32 39, i32 0
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %6)
  %cmp15 = icmp eq i8 %6, 17
  %cond17 = select i1 %cmp15, i32 0, i32 39
  br label %out

out:                                              ; preds = %if.else, %if.then2, %entry.out_crit_edge
  %status.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %cond, %if.then2 ], [ %cond17, %if.else ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_pairing_info(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_validate_h_prime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_stored_km(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_prepare_lc_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_lc_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_l_prime_available(ptr noundef %hdcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.if.end22_crit_edge, label %for.cond.preheader

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.cond.preheader:                               ; preds = %entry
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  tail call void @msleep(i32 noundef 4) #5
  %call5 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end, label %for.cond.preheader.if.end22_crit_edge

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.cond:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 4) #5
  %call5.1 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %cmp.not.1 = icmp eq i32 %call5.1, 0
  br i1 %cmp.not.1, label %if.end.1, label %for.cond.if.end22_crit_edge

for.cond.if.end22_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.1:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %3)
  %cmp16.1 = icmp eq i8 %3, 33
  br i1 %cmp16.1, label %if.end.1.if.end22_crit_edge, label %for.cond.1

if.end.1.if.end22_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.cond.1:                                       ; preds = %if.end.1
  tail call void @msleep(i32 noundef 4) #5
  %call5.2 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp.not.2 = icmp eq i32 %call5.2, 0
  br i1 %cmp.not.2, label %if.end.2, label %for.cond.1.if.end22_crit_edge

for.cond.1.if.end22_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.2:                                         ; preds = %for.cond.1
  %4 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %5)
  %cmp16.2 = icmp eq i8 %5, 33
  br i1 %cmp16.2, label %if.end.2.if.end22_crit_edge, label %for.cond.2

if.end.2.if.end22_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.cond.2:                                       ; preds = %if.end.2
  tail call void @msleep(i32 noundef 4) #5
  %call5.3 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %cmp.not.3 = icmp eq i32 %call5.3, 0
  br i1 %cmp.not.3, label %if.end.3, label %for.cond.2.if.end22_crit_edge

for.cond.2.if.end22_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.3:                                         ; preds = %for.cond.2
  %6 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %7)
  %cmp16.3 = icmp eq i8 %7, 33
  br i1 %cmp16.3, label %if.end.3.if.end22_crit_edge, label %for.cond.3

if.end.3.if.end22_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.cond.3:                                       ; preds = %if.end.3
  tail call void @msleep(i32 noundef 4) #5
  %call5.4 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %cmp.not.4 = icmp eq i32 %call5.4, 0
  br i1 %cmp.not.4, label %if.end.4, label %for.cond.3.if.end22_crit_edge

for.cond.3.if.end22_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.4:                                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %9)
  %cmp16.4 = icmp eq i8 %9, 33
  %spec.select = select i1 %cmp16.4, i32 0, i32 45
  br label %if.end22

if.end:                                           ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %11)
  %cmp16 = icmp eq i8 %11, 33
  br i1 %cmp16, label %if.end.if.end22_crit_edge, label %for.cond

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %if.end.4, %for.cond.3.if.end22_crit_edge, %if.end.3.if.end22_crit_edge, %for.cond.2.if.end22_crit_edge, %if.end.2.if.end22_crit_edge, %for.cond.1.if.end22_crit_edge, %if.end.1.if.end22_crit_edge, %for.cond.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge, %entry.if.end22_crit_edge
  %status.1 = phi i32 [ 32, %entry.if.end22_crit_edge ], [ %call5, %for.cond.preheader.if.end22_crit_edge ], [ 0, %if.end.if.end22_crit_edge ], [ %call5.1, %for.cond.if.end22_crit_edge ], [ 0, %if.end.1.if.end22_crit_edge ], [ %call5.2, %for.cond.1.if.end22_crit_edge ], [ 0, %if.end.2.if.end22_crit_edge ], [ %call5.3, %for.cond.2.if.end22_crit_edge ], [ 0, %if.end.3.if.end22_crit_edge ], [ %call5.4, %for.cond.3.if.end22_crit_edge ], [ %spec.select, %if.end.4 ]
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_l_prime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_validate_l_prime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_prepare_eks(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_eks(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @process_rxstatus(ptr noundef %hdcp, ptr nocapture noundef writeonly %event_ctx, ptr noundef %input, ptr noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rxstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %call = tail call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @mod_hdcp_read_rxstatus, ptr noundef %rxstatus_read, ptr noundef %status, ptr noundef %hdcp, ptr noundef nonnull @.str.24) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %reauth_request_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %call1 = tail call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_reauthentication_request, ptr noundef %reauth_request_check, ptr noundef %status, ptr noundef %hdcp, ptr noundef nonnull @.str.25) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %tobool2.not = icmp eq i8 %call1, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %if.then7, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end4
  %link_integrity_check_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %call8 = tail call zeroext i8 @mod_hdcp_execute_and_set(ptr noundef nonnull @check_link_integrity_failure_dp, ptr noundef %link_integrity_check_dp, ptr noundef %status, ptr noundef %hdcp, ptr noundef nonnull @.str.26) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8)
  %tobool9.not = icmp eq i8 %call8, 0
  br i1 %tobool9.not, label %if.then7.out_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %if.end12.out_crit_edge, label %if.then14

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then14:                                        ; preds = %if.end12
  %4 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus_dp.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 18
  %6 = ptrtoint ptr %rxstatus_dp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxstatus_dp.i, align 1
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %if.then14
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv5.i = zext i8 %11 to i32
  %and6.i = and i32 %conv5.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.out_crit_edge, label %land.rhs.i

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.rhs.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %and13.i = shl nuw nsw i32 %conv5.i, 8
  %shl.i = and i32 %and13.i, 768
  %12 = ptrtoint ptr %rxstatus.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxstatus.i, align 4
  %conv18.i = zext i8 %13 to i32
  %or.i = or i32 %shl.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool19.i = icmp ne i32 %or.i, 0
  %phi.cast.i = zext i1 %tobool19.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.rhs.i, %if.then.i
  %is_ready.0.i = phi i32 [ %9, %if.then.i ], [ %phi.cast.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ready.0.i)
  %tobool23.not.i = icmp eq i32 %is_ready.0.i, 0
  br i1 %tobool23.not.i, label %if.end.i.out_crit_edge, label %if.then16

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then16:                                        ; preds = %if.end.i
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index, align 4
  %conv = zext i8 %15 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %conv, ptr noundef nonnull @.str.28) #5
  %rx_id_list_ready = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %16 = ptrtoint ptr %rx_id_list_ready to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %rx_id_list_ready, align 4
  %17 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i55.not = icmp eq i32 %18, 2
  br i1 %cmp.i55.not, label %if.then16.out.sink.split_crit_edge, label %if.else

if.then16.out.sink.split_crit_edge:               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = and i8 %20, 3
  %and = zext i8 %21 to i16
  %shl = shl nuw nsw i16 %and, 8
  %22 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rxstatus, align 4
  %conv27 = zext i8 %23 to i16
  %or = or i16 %shl, %conv27
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else, %if.then16.out.sink.split_crit_edge
  %.sink = phi i16 [ %or, %if.else ], [ 177, %if.then16.out.sink.split_crit_edge ]
  %rx_id_list_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 13
  %24 = ptrtoint ptr %rx_id_list_size to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink, ptr %rx_id_list_size, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.i.out_crit_edge, %if.else.i.out_crit_edge, %if.end12.out_crit_edge, %if.then7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp35 = icmp eq i32 %26, 0
  %conv37 = zext i1 %cmp35 to i8
  ret i8 %conv37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_enable_encryption(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_enable_dp_stream_encryption(ptr noundef) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_reauthentication_request(ptr nocapture noundef readonly %hdcp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1
  %rxstatus_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 18
  %arrayidx.sink = select i1 %cmp.i.not, ptr %rxstatus_dp, ptr %arrayidx
  %2 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.sink, align 1
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  %conv9 = select i1 %tobool7.not, i32 0, i32 56
  ret i32 %conv9
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_link_integrity_failure_dp(ptr nocapture noundef readonly %hdcp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 18
  %0 = ptrtoint ptr %rxstatus_dp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxstatus_dp, align 1
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, i32 0, i32 57
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_rx_id_list(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_device_count(ptr nocapture noundef readonly %hdcp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = lshr i8 %1, 4
  %arrayidx4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4.i, align 1
  %5 = shl i8 %4, 4
  %6 = and i8 %5, 16
  %add9.i = or i8 %6, %2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add9.i)
  %cmp = icmp eq i8 %add9.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %narrow = add nuw nsw i8 %add9.i, 1
  %add = zext i8 %narrow to i32
  %arrayidx.i13 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %7 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp ne i32 %8, 0
  %inc.i = zext i1 %cmp.i.not.i to i32
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not.1.i = icmp ne i32 %10, 0
  %inc.1.i = zext i1 %cmp.i.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not.2.i = icmp ne i32 %12, 0
  %inc.2.i = zext i1 %cmp.i.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not.3.i = icmp ne i32 %14, 0
  %inc.3.i = zext i1 %cmp.i.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.not.4.i = icmp ne i32 %16, 0
  %inc.4.i = zext i1 %cmp.i.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not.5.i = icmp ne i32 %18, 0
  %inc.5.i = zext i1 %cmp.i.not.5.i to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %inc.5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.5.i, i32 %add)
  %cmp6 = icmp ugt i32 %spec.select.5.i, %add
  %cond = select i1 %cmp6, i32 58, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 26, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_validate_rx_id_list(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_repeater_auth_ack(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_prepare_stream_management(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_stream_manage(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_stream_ready_available(ptr noundef %hdcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %0 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.else

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @mod_hdcp_read_rxstatus(ptr noundef %hdcp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %3)
  %cmp10 = icmp eq i8 %3, 33
  %cond = select i1 %cmp10, i32 0, i32 53
  br label %out

out:                                              ; preds = %if.end, %if.else.out_crit_edge, %entry.out_crit_edge
  %status.0 = phi i32 [ %call1, %if.else.out_crit_edge ], [ %cond, %if.end ], [ 32, %entry.out_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_stream_ready(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_validate_stream_ready(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_rxcaps(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_content_type(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 273, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 277, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 296, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 300, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 304, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 326, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 330, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 334, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 353, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 374, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 379, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 401, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 405, i32 10}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 409, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 428, i32 10}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 476, i32 10}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 480, i32 11}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 487, i32 11}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 491, i32 10}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 495, i32 10}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 514, i32 10}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 518, i32 10}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 548, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 554, i32 11}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 231, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 235, i32 10}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 240, i32 11}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 246, i32 4}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 619, i32 19}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 623, i32 19}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 627, i32 19}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 631, i32 19}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 661, i32 19}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 666, i32 19}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 699, i32 20}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 703, i32 19}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 707, i32 19}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 727, i32 19}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 731, i32 10}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c", i32 753, i32 10}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
