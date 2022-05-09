; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp1_execution.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mod_hdcp_config = type { %struct.mod_hdcp_psp, %struct.mod_hdcp_ddc, i8 }
%struct.mod_hdcp_psp = type { ptr, ptr, %struct.mod_hdcp_psp_caps }
%struct.mod_hdcp_psp_caps = type { i8 }
%struct.mod_hdcp_ddc = type { ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.mod_hdcp = type { %struct.mod_hdcp_config, %struct.mod_hdcp_connection, [6 x %struct.mod_hdcp_display], %struct.mod_hdcp_authentication, %struct.mod_hdcp_state, [2025 x i8] }
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
%struct.mod_hdcp_transition_input_hdcp1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[Link %d]\09PASS %s\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[Link %d]\09FAIL %s\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bksv_read\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcaps_read\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_session\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"an_write\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aksv_write\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bksv_validation\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ainfo_write\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r0p_read\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_validation\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encryption\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stream_encryption_dp\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link_maintenance\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bstatus_read\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_integrity_check\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reauth_request_check\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ready_check\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"binfo_read_dp\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_cascade_check\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_devs_check\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device_count_check\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ksvlist_read\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vp_read\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ksvlist_vp_validation\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdcp_capable_dp\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r0p_available_dp\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [9 x i64] [i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 457, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 460, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 161, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 165, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 184, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 188, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 192, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 200, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 205, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 226, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 230, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 237, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 248, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 268, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 289, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 293, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 297, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 307, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 328, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 338, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 342, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 346, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 352, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 356, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 360, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 394, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [72 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 418, i32 10 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mod_hdcp_execute_and_set(ptr nocapture noundef readonly %func, ptr nocapture noundef %flag, ptr nocapture noundef %status, ptr noundef %hdcp, ptr noundef %str) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 %func(ptr noundef %hdcp) #2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flag, align 1
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true6

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp1.not = icmp eq i8 %2, 1
  br i1 %cmp1.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.if.end14.sink.split_crit_edge

land.lhs.true.if.end14.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

land.lhs.true6:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp8.not = icmp eq i8 %2, 2
  br i1 %cmp8.not, label %land.lhs.true6.if.end14_crit_edge, label %land.lhs.true6.if.end14.sink.split_crit_edge

land.lhs.true6.if.end14.sink.split_crit_edge:     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split

land.lhs.true6.if.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.end14.sink.split:                              ; preds = %land.lhs.true6.if.end14.sink.split_crit_edge, %land.lhs.true.if.end14.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str, %land.lhs.true.if.end14.sink.split_crit_edge ], [ @.str.1, %land.lhs.true6.if.end14.sink.split_crit_edge ]
  %.sink = phi i8 [ 1, %land.lhs.true.if.end14.sink.split_crit_edge ], [ 2, %land.lhs.true6.if.end14.sink.split_crit_edge ]
  %index12 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %3 = ptrtoint ptr %index12 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index12, align 4
  %conv13 = zext i8 %4 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink, i32 noundef %conv13, ptr noundef %str) #2
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %flag, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %land.lhs.true6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp eq i32 %7, 0
  %conv17 = zext i1 %cmp15 to i8
  ret i8 %conv17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_execution(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr nocapture noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb2
    i8 5, label %sw.bb4
    i8 6, label %sw.bb6
    i8 7, label %sw.bb8
    i8 8, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %5 = ptrtoint ptr %unexpected_event.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %unexpected_event.i, align 1
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %call.i.i = tail call i32 @mod_hdcp_read_bksv(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input, align 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %land.lhs.true6.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp1.not.i.i = icmp eq i8 %7, 1
  br i1 %cmp1.not.i.i, label %land.lhs.true.i.i.if.end2.i_crit_edge, label %if.end2.critedge.i

land.lhs.true.i.i.if.end2.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2.i

land.lhs.true6.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp8.not.i.i = icmp eq i8 %7, 2
  br i1 %cmp8.not.i.i, label %land.lhs.true6.i.i.sw.epilog_crit_edge, label %out.critedge.i

land.lhs.true6.i.i.sw.epilog_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end2.critedge.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %8 = ptrtoint ptr %index12.i.c.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index12.i.c.i, align 4
  %conv13.i.c.i = zext i8 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i.c.i, ptr noundef nonnull @.str.2) #2
  %10 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %input, align 1
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end2.critedge.i, %land.lhs.true.i.i.if.end2.i_crit_edge
  %bcaps_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 6
  %call.i10.i = tail call i32 @mod_hdcp_read_bcaps(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp.i11.i = icmp eq i32 %call.i10.i, 0
  %11 = ptrtoint ptr %bcaps_read.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bcaps_read.i, align 1
  br i1 %cmp.i11.i, label %land.lhs.true.i13.i, label %land.lhs.true6.i15.i

land.lhs.true.i13.i:                              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp1.not.i12.i = icmp eq i8 %12, 1
  br i1 %cmp1.not.i12.i, label %land.lhs.true.i13.i.sw.epilog_crit_edge, label %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge

land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i20.i

land.lhs.true.i13.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true6.i15.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp8.not.i14.i = icmp eq i8 %12, 2
  br i1 %cmp8.not.i14.i, label %land.lhs.true6.i15.i.sw.epilog_crit_edge, label %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge

land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge: ; preds = %land.lhs.true6.i15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i20.i

land.lhs.true6.i15.i.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end14.sink.split.i20.i:                        ; preds = %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge, %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge
  %.str.1.sink.i16.i = phi ptr [ @.str, %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge ], [ @.str.1, %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge ]
  %.sink.i17.i = phi i8 [ 1, %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge ], [ 2, %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge ]
  %index12.i18.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %13 = ptrtoint ptr %index12.i18.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %index12.i18.i, align 4
  %conv13.i19.i = zext i8 %14 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i16.i, i32 noundef %conv13.i19.i, ptr noundef nonnull @.str.3) #2
  %15 = ptrtoint ptr %bcaps_read.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink.i17.i, ptr %bcaps_read.i, align 1
  br label %sw.epilog

out.critedge.i:                                   ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c31.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %16 = ptrtoint ptr %index12.i.c31.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index12.i.c31.i, align 4
  %conv13.i.c32.i = zext i8 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c32.i, ptr noundef nonnull @.str.2) #2
  %18 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %input, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call fastcc i32 @exchange_ksvs(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call5 = tail call fastcc i32 @computations_validate_rx_test_for_repeater(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %19 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i28 = icmp eq i32 %20, 0
  br i1 %cmp.not.i28, label %if.end.i33, label %if.then.i30

if.then.i30:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event.i29 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %21 = ptrtoint ptr %unexpected_event.i29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %unexpected_event.i29, align 1
  br label %sw.epilog

if.end.i33:                                       ; preds = %sw.bb6
  %link_maintenance.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 10
  %call.i.i31 = tail call i32 @mod_hdcp_hdcp1_link_maintenance(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i32 = icmp eq i32 %call.i.i31, 0
  %22 = ptrtoint ptr %link_maintenance.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_maintenance.i, align 1
  br i1 %cmp.i.i32, label %land.lhs.true.i.i35, label %land.lhs.true6.i.i37

land.lhs.true.i.i35:                              ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp1.not.i.i34 = icmp eq i8 %23, 1
  br i1 %cmp1.not.i.i34, label %land.lhs.true.i.i35.sw.epilog_crit_edge, label %land.lhs.true.i.i35.if.end14.sink.split.i.i_crit_edge

land.lhs.true.i.i35.if.end14.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i35
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i.i

land.lhs.true.i.i35.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.i35
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true6.i.i37:                             ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp8.not.i.i36 = icmp eq i8 %23, 2
  br i1 %cmp8.not.i.i36, label %land.lhs.true6.i.i37.sw.epilog_crit_edge, label %land.lhs.true6.i.i37.if.end14.sink.split.i.i_crit_edge

land.lhs.true6.i.i37.if.end14.sink.split.i.i_crit_edge: ; preds = %land.lhs.true6.i.i37
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i.i

land.lhs.true6.i.i37.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i.i37
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end14.sink.split.i.i:                          ; preds = %land.lhs.true6.i.i37.if.end14.sink.split.i.i_crit_edge, %land.lhs.true.i.i35.if.end14.sink.split.i.i_crit_edge
  %.str.1.sink.i.i = phi ptr [ @.str, %land.lhs.true.i.i35.if.end14.sink.split.i.i_crit_edge ], [ @.str.1, %land.lhs.true6.i.i37.if.end14.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ 1, %land.lhs.true.i.i35.if.end14.sink.split.i.i_crit_edge ], [ 2, %land.lhs.true6.i.i37.if.end14.sink.split.i.i_crit_edge ]
  %index12.i.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %24 = ptrtoint ptr %index12.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %index12.i.i, align 4
  %conv13.i.i = zext i8 %25 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i.i, i32 noundef %conv13.i.i, ptr noundef nonnull @.str.13) #2
  %26 = ptrtoint ptr %link_maintenance.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i.i, ptr %link_maintenance.i, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call9 = tail call fastcc i32 @wait_for_ready(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call11 = tail call fastcc i32 @read_ksv_list(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %if.end14.sink.split.i.i, %land.lhs.true6.i.i37.sw.epilog_crit_edge, %land.lhs.true.i.i35.sw.epilog_crit_edge, %if.then.i30, %sw.bb4, %sw.bb2, %out.critedge.i, %if.end14.sink.split.i20.i, %land.lhs.true6.i15.i.sw.epilog_crit_edge, %land.lhs.true.i13.i.sw.epilog_crit_edge, %land.lhs.true6.i.i.sw.epilog_crit_edge, %if.then.i, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ 5, %entry.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %land.lhs.true.i13.i.sw.epilog_crit_edge ], [ %call.i10.i, %land.lhs.true6.i15.i.sw.epilog_crit_edge ], [ %call.i10.i, %if.end14.sink.split.i20.i ], [ %call.i.i, %land.lhs.true6.i.i.sw.epilog_crit_edge ], [ %call.i.i, %out.critedge.i ], [ 0, %if.then.i30 ], [ 0, %land.lhs.true.i.i35.sw.epilog_crit_edge ], [ %call.i.i31, %land.lhs.true6.i.i37.sw.epilog_crit_edge ], [ %call.i.i31, %if.end14.sink.split.i.i ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exchange_ksvs(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr nocapture noundef %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.end:                                           ; preds = %entry
  %create_session = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 2
  %call.i = tail call i32 @mod_hdcp_hdcp1_create_session(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %3 = ptrtoint ptr %create_session to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %create_session, align 1
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp1.not.i = icmp eq i8 %4, 1
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end2_crit_edge, label %if.end2.critedge

land.lhs.true.i.if.end2_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2

land.lhs.true6.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp8.not.i = icmp eq i8 %4, 2
  br i1 %cmp8.not.i, label %land.lhs.true6.i.out_crit_edge, label %out.critedge

land.lhs.true6.i.out_crit_edge:                   ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end2.critedge:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %5 = ptrtoint ptr %index12.i.c to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index12.i.c, align 4
  %conv13.i.c = zext i8 %6 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i.c, ptr noundef nonnull @.str.4) #2
  %7 = ptrtoint ptr %create_session to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %create_session, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.end2.critedge, %land.lhs.true.i.if.end2_crit_edge
  %an_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 3
  %call.i38 = tail call i32 @mod_hdcp_write_an(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp eq i32 %call.i38, 0
  %8 = ptrtoint ptr %an_write to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %an_write, align 1
  br i1 %cmp.i39, label %land.lhs.true.i41, label %land.lhs.true6.i43

land.lhs.true.i41:                                ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp1.not.i40 = icmp eq i8 %9, 1
  br i1 %cmp1.not.i40, label %land.lhs.true.i41.if.end6_crit_edge, label %if.end6.critedge

land.lhs.true.i41.if.end6_crit_edge:              ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

land.lhs.true6.i43:                               ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp8.not.i42 = icmp eq i8 %9, 2
  br i1 %cmp8.not.i42, label %land.lhs.true6.i43.out_crit_edge, label %out.critedge154

land.lhs.true6.i43.out_crit_edge:                 ; preds = %land.lhs.true6.i43
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end6.critedge:                                 ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i46.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %10 = ptrtoint ptr %index12.i46.c to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index12.i46.c, align 4
  %conv13.i47.c = zext i8 %11 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i47.c, ptr noundef nonnull @.str.5) #2
  %12 = ptrtoint ptr %an_write to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %an_write, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.end6.critedge, %land.lhs.true.i41.if.end6_crit_edge
  %aksv_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 4
  %call.i52 = tail call i32 @mod_hdcp_write_aksv(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp eq i32 %call.i52, 0
  %13 = ptrtoint ptr %aksv_write to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aksv_write, align 1
  br i1 %cmp.i53, label %land.lhs.true.i55, label %land.lhs.true6.i57

land.lhs.true.i55:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp1.not.i54 = icmp eq i8 %14, 1
  br i1 %cmp1.not.i54, label %land.lhs.true.i55.if.end10_crit_edge, label %if.end10.critedge

land.lhs.true.i55.if.end10_crit_edge:             ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true6.i57:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp8.not.i56 = icmp eq i8 %14, 2
  br i1 %cmp8.not.i56, label %land.lhs.true6.i57.out_crit_edge, label %out.critedge157

land.lhs.true6.i57.out_crit_edge:                 ; preds = %land.lhs.true6.i57
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end10.critedge:                                ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i60.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %15 = ptrtoint ptr %index12.i60.c to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index12.i60.c, align 4
  %conv13.i61.c = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i61.c, ptr noundef nonnull @.str.6) #2
  %17 = ptrtoint ptr %aksv_write to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %aksv_write, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end10.critedge, %land.lhs.true.i55.if.end10_crit_edge
  %call.i66 = tail call i32 @mod_hdcp_read_bksv(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i67 = icmp eq i32 %call.i66, 0
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %input, align 1
  br i1 %cmp.i67, label %land.lhs.true.i69, label %land.lhs.true6.i71

land.lhs.true.i69:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp1.not.i68 = icmp eq i8 %19, 1
  br i1 %cmp1.not.i68, label %land.lhs.true.i69.if.end14_crit_edge, label %if.end14.critedge

land.lhs.true.i69.if.end14_crit_edge:             ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

land.lhs.true6.i71:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp8.not.i70 = icmp eq i8 %19, 2
  br i1 %cmp8.not.i70, label %land.lhs.true6.i71.out_crit_edge, label %out.critedge160

land.lhs.true6.i71.out_crit_edge:                 ; preds = %land.lhs.true6.i71
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14.critedge:                                ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i74.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %20 = ptrtoint ptr %index12.i74.c to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index12.i74.c, align 4
  %conv13.i75.c = zext i8 %21 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i75.c, ptr noundef nonnull @.str.2) #2
  %22 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %input, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.end14.critedge, %land.lhs.true.i69.if.end14_crit_edge
  %bksv_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 1
  %bksv1.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %bksv1.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 5)
  %bksv.sroa.0.0.copyload.i = load i40, ptr %bksv1.i, align 2
  %tobool.not9.i = icmp eq i40 %bksv.sroa.0.0.copyload.i, 0
  br i1 %tobool.not9.i, label %if.end14.land.lhs.true6.i85_crit_edge, label %while.body.preheader.i

if.end14.land.lhs.true6.i85_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i85

while.body.preheader.i:                           ; preds = %if.end14
  %bksv.sroa.0.0.insert.ext.i = zext i40 %bksv.sroa.0.0.copyload.i to i64
  %bksv.sroa.0.0.insert.shift.i = shl nuw i64 %bksv.sroa.0.0.insert.ext.i, 24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %count.011.i = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %n.010.i = phi i64 [ %and.i, %while.body.i.while.body.i_crit_edge ], [ %bksv.sroa.0.0.insert.shift.i, %while.body.preheader.i ]
  %inc.i = add i8 %count.011.i, 1
  %sub.i = add i64 %n.010.i, -1
  %and.i = and i64 %sub.i, %n.010.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %inc.i)
  %phi.cmp.i = icmp eq i8 %inc.i, 20
  br i1 %phi.cmp.i, label %land.lhs.true.i83, label %while.end.loopexit.i.land.lhs.true6.i85_crit_edge

while.end.loopexit.i.land.lhs.true6.i85_crit_edge: ; preds = %while.end.loopexit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i85

land.lhs.true.i83:                                ; preds = %while.end.loopexit.i
  %24 = ptrtoint ptr %bksv_validation to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bksv_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp1.not.i82 = icmp eq i8 %25, 1
  br i1 %cmp1.not.i82, label %land.lhs.true.i83.if.end18_crit_edge, label %mod_hdcp_execute_and_set.exit93

land.lhs.true.i83.if.end18_crit_edge:             ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

land.lhs.true6.i85:                               ; preds = %while.end.loopexit.i.land.lhs.true6.i85_crit_edge, %if.end14.land.lhs.true6.i85_crit_edge
  %26 = ptrtoint ptr %bksv_validation to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bksv_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp8.not.i84 = icmp eq i8 %27, 2
  br i1 %cmp8.not.i84, label %land.lhs.true6.i85.out_crit_edge, label %mod_hdcp_execute_and_set.exit93.thread

land.lhs.true6.i85.out_crit_edge:                 ; preds = %land.lhs.true6.i85
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

mod_hdcp_execute_and_set.exit93.thread:           ; preds = %land.lhs.true6.i85
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i88167 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %28 = ptrtoint ptr %index12.i88167 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index12.i88167, align 4
  %conv13.i89168 = zext i8 %29 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i89168, ptr noundef nonnull @.str.7) #2
  %30 = ptrtoint ptr %bksv_validation to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %bksv_validation, align 1
  br label %out

mod_hdcp_execute_and_set.exit93:                  ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i88 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %31 = ptrtoint ptr %index12.i88 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index12.i88, align 4
  %conv13.i89 = zext i8 %32 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i89, ptr noundef nonnull @.str.7) #2
  %33 = ptrtoint ptr %bksv_validation to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %bksv_validation, align 1
  br label %if.end18

if.end18:                                         ; preds = %mod_hdcp_execute_and_set.exit93, %land.lhs.true.i83.if.end18_crit_edge
  %ainfo = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 7
  %34 = ptrtoint ptr %ainfo to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ainfo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool19.not = icmp eq i8 %35, 0
  br i1 %tobool19.not, label %if.end18.out_crit_edge, label %if.then20

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.then20:                                        ; preds = %if.end18
  %ainfo_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 5
  %call.i94 = tail call i32 @mod_hdcp_write_ainfo(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp eq i32 %call.i94, 0
  %36 = ptrtoint ptr %ainfo_write to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ainfo_write, align 1
  br i1 %cmp.i95, label %land.lhs.true.i97, label %land.lhs.true6.i99

land.lhs.true.i97:                                ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp1.not.i96 = icmp eq i8 %37, 1
  br i1 %cmp1.not.i96, label %land.lhs.true.i97.out_crit_edge, label %land.lhs.true.i97.if.end14.sink.split.i104_crit_edge

land.lhs.true.i97.if.end14.sink.split.i104_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i104

land.lhs.true.i97.out_crit_edge:                  ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

land.lhs.true6.i99:                               ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp8.not.i98 = icmp eq i8 %37, 2
  br i1 %cmp8.not.i98, label %land.lhs.true6.i99.out_crit_edge, label %land.lhs.true6.i99.if.end14.sink.split.i104_crit_edge

land.lhs.true6.i99.if.end14.sink.split.i104_crit_edge: ; preds = %land.lhs.true6.i99
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i104

land.lhs.true6.i99.out_crit_edge:                 ; preds = %land.lhs.true6.i99
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14.sink.split.i104:                         ; preds = %land.lhs.true6.i99.if.end14.sink.split.i104_crit_edge, %land.lhs.true.i97.if.end14.sink.split.i104_crit_edge
  %.str.1.sink.i100 = phi ptr [ @.str, %land.lhs.true.i97.if.end14.sink.split.i104_crit_edge ], [ @.str.1, %land.lhs.true6.i99.if.end14.sink.split.i104_crit_edge ]
  %.sink.i101 = phi i8 [ 1, %land.lhs.true.i97.if.end14.sink.split.i104_crit_edge ], [ 2, %land.lhs.true6.i99.if.end14.sink.split.i104_crit_edge ]
  %index12.i102 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %38 = ptrtoint ptr %index12.i102 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %index12.i102, align 4
  %conv13.i103 = zext i8 %39 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i100, i32 noundef %conv13.i103, ptr noundef nonnull @.str.8) #2
  %40 = ptrtoint ptr %ainfo_write to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink.i101, ptr %ainfo_write, align 1
  br label %out

out.critedge:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c152 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %41 = ptrtoint ptr %index12.i.c152 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %index12.i.c152, align 4
  %conv13.i.c153 = zext i8 %42 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c153, ptr noundef nonnull @.str.4) #2
  %43 = ptrtoint ptr %create_session to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %create_session, align 1
  br label %out

out.critedge154:                                  ; preds = %land.lhs.true6.i43
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i46.c155 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %44 = ptrtoint ptr %index12.i46.c155 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index12.i46.c155, align 4
  %conv13.i47.c156 = zext i8 %45 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i47.c156, ptr noundef nonnull @.str.5) #2
  %46 = ptrtoint ptr %an_write to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %an_write, align 1
  br label %out

out.critedge157:                                  ; preds = %land.lhs.true6.i57
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i60.c158 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %47 = ptrtoint ptr %index12.i60.c158 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %index12.i60.c158, align 4
  %conv13.i61.c159 = zext i8 %48 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i61.c159, ptr noundef nonnull @.str.6) #2
  %49 = ptrtoint ptr %aksv_write to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %aksv_write, align 1
  br label %out

out.critedge160:                                  ; preds = %land.lhs.true6.i71
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i74.c161 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %50 = ptrtoint ptr %index12.i74.c161 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %index12.i74.c161, align 4
  %conv13.i75.c162 = zext i8 %51 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i75.c162, ptr noundef nonnull @.str.2) #2
  %52 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %input, align 1
  br label %out

out:                                              ; preds = %out.critedge160, %out.critedge157, %out.critedge154, %out.critedge, %if.end14.sink.split.i104, %land.lhs.true6.i99.out_crit_edge, %land.lhs.true.i97.out_crit_edge, %if.end18.out_crit_edge, %mod_hdcp_execute_and_set.exit93.thread, %land.lhs.true6.i85.out_crit_edge, %land.lhs.true6.i71.out_crit_edge, %land.lhs.true6.i57.out_crit_edge, %land.lhs.true6.i43.out_crit_edge, %land.lhs.true6.i.out_crit_edge, %if.then
  %status.0 = phi i32 [ 0, %if.end18.out_crit_edge ], [ 0, %if.then ], [ 0, %land.lhs.true.i97.out_crit_edge ], [ %call.i94, %land.lhs.true6.i99.out_crit_edge ], [ %call.i94, %if.end14.sink.split.i104 ], [ %call.i, %land.lhs.true6.i.out_crit_edge ], [ %call.i38, %land.lhs.true6.i43.out_crit_edge ], [ %call.i52, %land.lhs.true6.i57.out_crit_edge ], [ %call.i66, %land.lhs.true6.i71.out_crit_edge ], [ 30, %land.lhs.true6.i85.out_crit_edge ], [ %call.i, %out.critedge ], [ %call.i38, %out.critedge154 ], [ %call.i52, %out.critedge157 ], [ %call.i66, %out.critedge160 ], [ 30, %mod_hdcp_execute_and_set.exit93.thread ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @computations_validate_rx_test_for_repeater(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr nocapture noundef %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.end:                                           ; preds = %entry
  %r0p_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 7
  %call.i = tail call i32 @mod_hdcp_read_r0p(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %3 = ptrtoint ptr %r0p_read to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %r0p_read, align 1
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp1.not.i = icmp eq i8 %4, 1
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end2_crit_edge, label %if.end2.critedge

land.lhs.true.i.if.end2_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2

land.lhs.true6.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp8.not.i = icmp eq i8 %4, 2
  br i1 %cmp8.not.i, label %land.lhs.true6.i.out_crit_edge, label %out.critedge

land.lhs.true6.i.out_crit_edge:                   ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end2.critedge:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %5 = ptrtoint ptr %index12.i.c to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index12.i.c, align 4
  %conv13.i.c = zext i8 %6 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i.c, ptr noundef nonnull @.str.9) #2
  %7 = ptrtoint ptr %r0p_read to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %r0p_read, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.end2.critedge, %land.lhs.true.i.if.end2_crit_edge
  %rx_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 8
  %call.i43 = tail call i32 @mod_hdcp_hdcp1_validate_rx(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp eq i32 %call.i43, 0
  %8 = ptrtoint ptr %rx_validation to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_validation, align 1
  br i1 %cmp.i44, label %land.lhs.true.i46, label %land.lhs.true6.i48

land.lhs.true.i46:                                ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp1.not.i45 = icmp eq i8 %9, 1
  br i1 %cmp1.not.i45, label %land.lhs.true.i46.if.end6_crit_edge, label %if.end6.critedge

land.lhs.true.i46.if.end6_crit_edge:              ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

land.lhs.true6.i48:                               ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp8.not.i47 = icmp eq i8 %9, 2
  br i1 %cmp8.not.i47, label %land.lhs.true6.i48.out_crit_edge, label %out.critedge124

land.lhs.true6.i48.out_crit_edge:                 ; preds = %land.lhs.true6.i48
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end6.critedge:                                 ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i51.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %10 = ptrtoint ptr %index12.i51.c to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index12.i51.c, align 4
  %conv13.i52.c = zext i8 %11 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i52.c, ptr noundef nonnull @.str.10) #2
  %12 = ptrtoint ptr %rx_validation to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rx_validation, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.end6.critedge, %land.lhs.true.i46.if.end6_crit_edge
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %hdcp1 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %hdcp1, align 1
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.then11:                                        ; preds = %if.then8
  %encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %call.i57 = tail call i32 @mod_hdcp_hdcp1_enable_encryption(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp eq i32 %call.i57, 0
  %17 = ptrtoint ptr %encryption to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %encryption, align 1
  br i1 %cmp.i58, label %land.lhs.true.i60, label %land.lhs.true6.i62

land.lhs.true.i60:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp1.not.i59 = icmp eq i8 %18, 1
  br i1 %cmp1.not.i59, label %land.lhs.true.i60.out_crit_edge, label %land.lhs.true.i60.if.end14.sink.split.i67_crit_edge

land.lhs.true.i60.if.end14.sink.split.i67_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i67

land.lhs.true.i60.out_crit_edge:                  ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

land.lhs.true6.i62:                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp8.not.i61 = icmp eq i8 %18, 2
  br i1 %cmp8.not.i61, label %land.lhs.true6.i62.out_crit_edge, label %land.lhs.true6.i62.if.end14.sink.split.i67_crit_edge

land.lhs.true6.i62.if.end14.sink.split.i67_crit_edge: ; preds = %land.lhs.true6.i62
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i67

land.lhs.true6.i62.out_crit_edge:                 ; preds = %land.lhs.true6.i62
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14.sink.split.i67:                          ; preds = %land.lhs.true6.i62.if.end14.sink.split.i67_crit_edge, %land.lhs.true.i60.if.end14.sink.split.i67_crit_edge
  %.str.1.sink.i63 = phi ptr [ @.str, %land.lhs.true.i60.if.end14.sink.split.i67_crit_edge ], [ @.str.1, %land.lhs.true6.i62.if.end14.sink.split.i67_crit_edge ]
  %.sink.i64 = phi i8 [ 1, %land.lhs.true.i60.if.end14.sink.split.i67_crit_edge ], [ 2, %land.lhs.true6.i62.if.end14.sink.split.i67_crit_edge ]
  %index12.i65 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %19 = ptrtoint ptr %index12.i65 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index12.i65, align 4
  %conv13.i66 = zext i8 %20 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i63, i32 noundef %conv13.i66, ptr noundef nonnull @.str.11) #2
  %21 = ptrtoint ptr %encryption to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i64, ptr %encryption, align 1
  br label %out

if.else:                                          ; preds = %if.end6
  %encryption17 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %call.i71 = tail call i32 @mod_hdcp_hdcp1_enable_encryption(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp eq i32 %call.i71, 0
  %22 = ptrtoint ptr %encryption17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %encryption17, align 1
  br i1 %cmp.i72, label %land.lhs.true.i74, label %land.lhs.true6.i76

land.lhs.true.i74:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp1.not.i73 = icmp eq i8 %23, 1
  br i1 %cmp1.not.i73, label %land.lhs.true.i74.if.end21_crit_edge, label %if.end21.critedge

land.lhs.true.i74.if.end21_crit_edge:             ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end21

land.lhs.true6.i76:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp8.not.i75 = icmp eq i8 %23, 2
  br i1 %cmp8.not.i75, label %land.lhs.true6.i76.out_crit_edge, label %out.critedge127

land.lhs.true6.i76.out_crit_edge:                 ; preds = %land.lhs.true6.i76
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end21.critedge:                                ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i79.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %24 = ptrtoint ptr %index12.i79.c to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %index12.i79.c, align 4
  %conv13.i80.c = zext i8 %25 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i80.c, ptr noundef nonnull @.str.11) #2
  %26 = ptrtoint ptr %encryption17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %encryption17, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.end21.critedge, %land.lhs.true.i74.if.end21_crit_edge
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %27 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i85 = icmp eq i32 %28, 2
  br i1 %cmp.i85, label %is_dp_mst_hdcp.exit, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

is_dp_mst_hdcp.exit:                              ; preds = %if.end21
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %29 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.not = icmp eq i8 %30, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.out_crit_edge, label %if.then24

is_dp_mst_hdcp.exit.out_crit_edge:                ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.then24:                                        ; preds = %is_dp_mst_hdcp.exit
  %stream_encryption_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 24
  %call.i86 = tail call i32 @mod_hdcp_hdcp1_enable_dp_stream_encryption(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i87 = icmp eq i32 %call.i86, 0
  %31 = ptrtoint ptr %stream_encryption_dp to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stream_encryption_dp, align 1
  br i1 %cmp.i87, label %land.lhs.true.i89, label %land.lhs.true6.i91

land.lhs.true.i89:                                ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp1.not.i88 = icmp eq i8 %32, 1
  br i1 %cmp1.not.i88, label %land.lhs.true.i89.out_crit_edge, label %land.lhs.true.i89.if.end14.sink.split.i96_crit_edge

land.lhs.true.i89.if.end14.sink.split.i96_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i96

land.lhs.true.i89.out_crit_edge:                  ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

land.lhs.true6.i91:                               ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp8.not.i90 = icmp eq i8 %32, 2
  br i1 %cmp8.not.i90, label %land.lhs.true6.i91.out_crit_edge, label %land.lhs.true6.i91.if.end14.sink.split.i96_crit_edge

land.lhs.true6.i91.if.end14.sink.split.i96_crit_edge: ; preds = %land.lhs.true6.i91
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i96

land.lhs.true6.i91.out_crit_edge:                 ; preds = %land.lhs.true6.i91
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14.sink.split.i96:                          ; preds = %land.lhs.true6.i91.if.end14.sink.split.i96_crit_edge, %land.lhs.true.i89.if.end14.sink.split.i96_crit_edge
  %.str.1.sink.i92 = phi ptr [ @.str, %land.lhs.true.i89.if.end14.sink.split.i96_crit_edge ], [ @.str.1, %land.lhs.true6.i91.if.end14.sink.split.i96_crit_edge ]
  %.sink.i93 = phi i8 [ 1, %land.lhs.true.i89.if.end14.sink.split.i96_crit_edge ], [ 2, %land.lhs.true6.i91.if.end14.sink.split.i96_crit_edge ]
  %index12.i94 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %33 = ptrtoint ptr %index12.i94 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index12.i94, align 4
  %conv13.i95 = zext i8 %34 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i92, i32 noundef %conv13.i95, ptr noundef nonnull @.str.12) #2
  %35 = ptrtoint ptr %stream_encryption_dp to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i93, ptr %stream_encryption_dp, align 1
  br label %out

out.critedge:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c122 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %36 = ptrtoint ptr %index12.i.c122 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %index12.i.c122, align 4
  %conv13.i.c123 = zext i8 %37 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c123, ptr noundef nonnull @.str.9) #2
  %38 = ptrtoint ptr %r0p_read to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %r0p_read, align 1
  br label %out

out.critedge124:                                  ; preds = %land.lhs.true6.i48
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i51.c125 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %39 = ptrtoint ptr %index12.i51.c125 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %index12.i51.c125, align 4
  %conv13.i52.c126 = zext i8 %40 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i52.c126, ptr noundef nonnull @.str.10) #2
  %41 = ptrtoint ptr %rx_validation to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %rx_validation, align 1
  br label %out

out.critedge127:                                  ; preds = %land.lhs.true6.i76
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i79.c128 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %42 = ptrtoint ptr %index12.i79.c128 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index12.i79.c128, align 4
  %conv13.i80.c129 = zext i8 %43 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i80.c129, ptr noundef nonnull @.str.11) #2
  %44 = ptrtoint ptr %encryption17 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %encryption17, align 1
  br label %out

out:                                              ; preds = %out.critedge127, %out.critedge124, %out.critedge, %if.end14.sink.split.i96, %land.lhs.true6.i91.out_crit_edge, %land.lhs.true.i89.out_crit_edge, %is_dp_mst_hdcp.exit.out_crit_edge, %if.end21.out_crit_edge, %land.lhs.true6.i76.out_crit_edge, %if.end14.sink.split.i67, %land.lhs.true6.i62.out_crit_edge, %land.lhs.true.i60.out_crit_edge, %if.then8.out_crit_edge, %land.lhs.true6.i48.out_crit_edge, %land.lhs.true6.i.out_crit_edge, %if.then
  %status.0 = phi i32 [ 0, %is_dp_mst_hdcp.exit.out_crit_edge ], [ 0, %if.then8.out_crit_edge ], [ 0, %if.then ], [ 0, %land.lhs.true.i60.out_crit_edge ], [ %call.i57, %land.lhs.true6.i62.out_crit_edge ], [ %call.i57, %if.end14.sink.split.i67 ], [ 0, %land.lhs.true.i89.out_crit_edge ], [ %call.i86, %land.lhs.true6.i91.out_crit_edge ], [ %call.i86, %if.end14.sink.split.i96 ], [ %call.i, %land.lhs.true6.i.out_crit_edge ], [ %call.i43, %land.lhs.true6.i48.out_crit_edge ], [ %call.i71, %land.lhs.true6.i76.out_crit_edge ], [ 0, %if.end21.out_crit_edge ], [ %call.i, %out.critedge ], [ %call.i43, %out.critedge124 ], [ %call.i71, %out.critedge127 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_ready(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr nocapture noundef %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.end:                                           ; preds = %entry
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %3 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 2
  br i1 %cmp.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %bstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 12
  %call.i = tail call i32 @mod_hdcp_read_bstatus(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i40 = icmp eq i32 %call.i, 0
  %5 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bstatus_read, align 1
  br i1 %cmp.i40, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp1.not.i = icmp eq i8 %6, 1
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %if.end10.critedge

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true6.i:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp8.not.i = icmp eq i8 %6, 2
  br i1 %cmp8.not.i, label %land.lhs.true6.i.out_crit_edge, label %out.critedge

land.lhs.true6.i.out_crit_edge:                   ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end10.critedge:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %7 = ptrtoint ptr %index12.i.c to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index12.i.c, align 4
  %conv13.i.c = zext i8 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i.c, ptr noundef nonnull @.str.14) #2
  %9 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bstatus_read, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end10.critedge, %land.lhs.true.i.if.end10_crit_edge
  %link_integrity_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 22
  %bstatus.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %bstatus.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bstatus.i, align 4
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %13 = ptrtoint ptr %link_integrity_check to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link_integrity_check, align 1
  br i1 %tobool.not.i, label %land.lhs.true.i44, label %land.lhs.true6.i46

land.lhs.true.i44:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp1.not.i43 = icmp eq i8 %14, 1
  br i1 %cmp1.not.i43, label %land.lhs.true.i44.if.end14_crit_edge, label %mod_hdcp_execute_and_set.exit54.thread

land.lhs.true.i44.if.end14_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

mod_hdcp_execute_and_set.exit54.thread:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i49133 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %15 = ptrtoint ptr %index12.i49133 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index12.i49133, align 4
  %conv13.i50134 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i50134, ptr noundef nonnull @.str.15) #2
  %17 = ptrtoint ptr %link_integrity_check to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %link_integrity_check, align 1
  br label %if.end14

land.lhs.true6.i46:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp8.not.i45 = icmp eq i8 %14, 2
  br i1 %cmp8.not.i45, label %land.lhs.true6.i46.out_crit_edge, label %mod_hdcp_execute_and_set.exit54

land.lhs.true6.i46.out_crit_edge:                 ; preds = %land.lhs.true6.i46
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

mod_hdcp_execute_and_set.exit54:                  ; preds = %land.lhs.true6.i46
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i49 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %18 = ptrtoint ptr %index12.i49 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index12.i49, align 4
  %conv13.i50 = zext i8 %19 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i50, ptr noundef nonnull @.str.15) #2
  %20 = ptrtoint ptr %link_integrity_check to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %link_integrity_check, align 1
  br label %out

if.end14:                                         ; preds = %mod_hdcp_execute_and_set.exit54.thread, %land.lhs.true.i44.if.end14_crit_edge
  %reauth_request_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 23
  %21 = ptrtoint ptr %bstatus.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bstatus.i, align 4
  %23 = and i16 %22, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i98 = icmp eq i16 %23, 0
  %24 = ptrtoint ptr %reauth_request_check to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reauth_request_check, align 1
  br i1 %tobool.not.i98, label %land.lhs.true.i58, label %land.lhs.true6.i60

land.lhs.true.i58:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp1.not.i57 = icmp eq i8 %25, 1
  br i1 %cmp1.not.i57, label %land.lhs.true.i58.if.end23_crit_edge, label %land.lhs.true.i58.if.end23.sink.split_crit_edge

land.lhs.true.i58.if.end23.sink.split_crit_edge:  ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23.sink.split

land.lhs.true.i58.if.end23_crit_edge:             ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23

land.lhs.true6.i60:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp8.not.i59 = icmp eq i8 %25, 2
  br i1 %cmp8.not.i59, label %land.lhs.true6.i60.out_crit_edge, label %mod_hdcp_execute_and_set.exit68

land.lhs.true6.i60.out_crit_edge:                 ; preds = %land.lhs.true6.i60
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

mod_hdcp_execute_and_set.exit68:                  ; preds = %land.lhs.true6.i60
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i63 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %26 = ptrtoint ptr %index12.i63 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index12.i63, align 4
  %conv13.i64 = zext i8 %27 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i64, ptr noundef nonnull @.str.16) #2
  %28 = ptrtoint ptr %reauth_request_check to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %reauth_request_check, align 1
  br label %out

if.else:                                          ; preds = %if.end
  %bcaps_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 6
  %call.i69 = tail call i32 @mod_hdcp_read_bcaps(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp eq i32 %call.i69, 0
  %29 = ptrtoint ptr %bcaps_read to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bcaps_read, align 1
  br i1 %cmp.i70, label %land.lhs.true.i72, label %land.lhs.true6.i74

land.lhs.true.i72:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp1.not.i71 = icmp eq i8 %30, 1
  br i1 %cmp1.not.i71, label %land.lhs.true.i72.if.end23_crit_edge, label %land.lhs.true.i72.if.end23.sink.split_crit_edge

land.lhs.true.i72.if.end23.sink.split_crit_edge:  ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23.sink.split

land.lhs.true.i72.if.end23_crit_edge:             ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end23

land.lhs.true6.i74:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp8.not.i73 = icmp eq i8 %30, 2
  br i1 %cmp8.not.i73, label %land.lhs.true6.i74.out_crit_edge, label %out.critedge128

land.lhs.true6.i74.out_crit_edge:                 ; preds = %land.lhs.true6.i74
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end23.sink.split:                              ; preds = %land.lhs.true.i72.if.end23.sink.split_crit_edge, %land.lhs.true.i58.if.end23.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %land.lhs.true.i58.if.end23.sink.split_crit_edge ], [ @.str.3, %land.lhs.true.i72.if.end23.sink.split_crit_edge ]
  %reauth_request_check.sink = phi ptr [ %reauth_request_check, %land.lhs.true.i58.if.end23.sink.split_crit_edge ], [ %bcaps_read, %land.lhs.true.i72.if.end23.sink.split_crit_edge ]
  %index12.i63137 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %31 = ptrtoint ptr %index12.i63137 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index12.i63137, align 4
  %conv13.i64138 = zext i8 %32 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i64138, ptr noundef nonnull %.str.16.sink) #2
  %33 = ptrtoint ptr %reauth_request_check.sink to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %reauth_request_check.sink, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.i72.if.end23_crit_edge, %land.lhs.true.i58.if.end23_crit_edge
  %ready_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 11
  %34 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.not.i = icmp eq i32 %35, 2
  br i1 %cmp.i.not.i, label %check_ksv_ready.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end23
  %bcaps.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %bcaps.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bcaps.i, align 2
  %38 = and i8 %37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool6.not.i = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %ready_check to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ready_check, align 1
  br i1 %tobool6.not.i, label %if.end.i.land.lhs.true6.i88_crit_edge, label %if.end.i.land.lhs.true.i86_crit_edge

if.end.i.land.lhs.true.i86_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i86

if.end.i.land.lhs.true6.i88_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i88

check_ksv_ready.exit:                             ; preds = %if.end23
  %bstatus.i100 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %bstatus.i100 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bstatus.i100, align 4
  %43 = and i16 %42, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool1.not.i = icmp eq i16 %43, 0
  %44 = ptrtoint ptr %ready_check to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ready_check, align 1
  br i1 %tobool1.not.i, label %check_ksv_ready.exit.land.lhs.true6.i88_crit_edge, label %check_ksv_ready.exit.land.lhs.true.i86_crit_edge

check_ksv_ready.exit.land.lhs.true.i86_crit_edge: ; preds = %check_ksv_ready.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true.i86

check_ksv_ready.exit.land.lhs.true6.i88_crit_edge: ; preds = %check_ksv_ready.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i88

land.lhs.true.i86:                                ; preds = %check_ksv_ready.exit.land.lhs.true.i86_crit_edge, %if.end.i.land.lhs.true.i86_crit_edge
  %46 = phi i8 [ %40, %if.end.i.land.lhs.true.i86_crit_edge ], [ %45, %check_ksv_ready.exit.land.lhs.true.i86_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp1.not.i85 = icmp eq i8 %46, 1
  br i1 %cmp1.not.i85, label %land.lhs.true.i86.out_crit_edge, label %land.lhs.true.i86.if.end14.sink.split.i93_crit_edge

land.lhs.true.i86.if.end14.sink.split.i93_crit_edge: ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i93

land.lhs.true.i86.out_crit_edge:                  ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

land.lhs.true6.i88:                               ; preds = %check_ksv_ready.exit.land.lhs.true6.i88_crit_edge, %if.end.i.land.lhs.true6.i88_crit_edge
  %47 = phi i8 [ %40, %if.end.i.land.lhs.true6.i88_crit_edge ], [ %45, %check_ksv_ready.exit.land.lhs.true6.i88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp8.not.i87 = icmp eq i8 %47, 2
  br i1 %cmp8.not.i87, label %land.lhs.true6.i88.out_crit_edge, label %land.lhs.true6.i88.if.end14.sink.split.i93_crit_edge

land.lhs.true6.i88.if.end14.sink.split.i93_crit_edge: ; preds = %land.lhs.true6.i88
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i93

land.lhs.true6.i88.out_crit_edge:                 ; preds = %land.lhs.true6.i88
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14.sink.split.i93:                          ; preds = %land.lhs.true6.i88.if.end14.sink.split.i93_crit_edge, %land.lhs.true.i86.if.end14.sink.split.i93_crit_edge
  %cond7.i140 = phi i32 [ 0, %land.lhs.true.i86.if.end14.sink.split.i93_crit_edge ], [ 19, %land.lhs.true6.i88.if.end14.sink.split.i93_crit_edge ]
  %.str.1.sink.i89 = phi ptr [ @.str, %land.lhs.true.i86.if.end14.sink.split.i93_crit_edge ], [ @.str.1, %land.lhs.true6.i88.if.end14.sink.split.i93_crit_edge ]
  %.sink.i90 = phi i8 [ 1, %land.lhs.true.i86.if.end14.sink.split.i93_crit_edge ], [ 2, %land.lhs.true6.i88.if.end14.sink.split.i93_crit_edge ]
  %index12.i91 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %48 = ptrtoint ptr %index12.i91 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %index12.i91, align 4
  %conv13.i92 = zext i8 %49 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i89, i32 noundef %conv13.i92, ptr noundef nonnull @.str.17) #2
  %50 = ptrtoint ptr %ready_check to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink.i90, ptr %ready_check, align 1
  br label %out

out.critedge:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c126 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %51 = ptrtoint ptr %index12.i.c126 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index12.i.c126, align 4
  %conv13.i.c127 = zext i8 %52 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c127, ptr noundef nonnull @.str.14) #2
  %53 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %bstatus_read, align 1
  br label %out

out.critedge128:                                  ; preds = %land.lhs.true6.i74
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i77.c129 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %54 = ptrtoint ptr %index12.i77.c129 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %index12.i77.c129, align 4
  %conv13.i78.c130 = zext i8 %55 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i78.c130, ptr noundef nonnull @.str.3) #2
  %56 = ptrtoint ptr %bcaps_read to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %bcaps_read, align 1
  br label %out

out:                                              ; preds = %out.critedge128, %out.critedge, %if.end14.sink.split.i93, %land.lhs.true6.i88.out_crit_edge, %land.lhs.true.i86.out_crit_edge, %land.lhs.true6.i74.out_crit_edge, %mod_hdcp_execute_and_set.exit68, %land.lhs.true6.i60.out_crit_edge, %mod_hdcp_execute_and_set.exit54, %land.lhs.true6.i46.out_crit_edge, %land.lhs.true6.i.out_crit_edge, %if.then
  %status.0 = phi i32 [ 27, %mod_hdcp_execute_and_set.exit54 ], [ 28, %mod_hdcp_execute_and_set.exit68 ], [ 0, %if.then ], [ 0, %land.lhs.true.i86.out_crit_edge ], [ 19, %land.lhs.true6.i88.out_crit_edge ], [ %cond7.i140, %if.end14.sink.split.i93 ], [ %call.i, %land.lhs.true6.i.out_crit_edge ], [ 27, %land.lhs.true6.i46.out_crit_edge ], [ 28, %land.lhs.true6.i60.out_crit_edge ], [ %call.i69, %land.lhs.true6.i74.out_crit_edge ], [ %call.i, %out.critedge ], [ %call.i69, %out.critedge128 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_ksv_list(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr nocapture noundef %input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %2 = ptrtoint ptr %unexpected_event to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %unexpected_event, align 1
  br label %out

if.end:                                           ; preds = %entry
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %3 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 2
  br i1 %cmp.i.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %binfo_read_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 20
  %call.i = tail call i32 @mod_hdcp_read_binfo(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i79 = icmp eq i32 %call.i, 0
  %5 = ptrtoint ptr %binfo_read_dp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %binfo_read_dp, align 1
  br i1 %cmp.i79, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp1.not.i = icmp eq i8 %6, 1
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true.i.if.end10.sink.split_crit_edge

land.lhs.true.i.if.end10.sink.split_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10.sink.split

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true6.i:                                 ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp8.not.i = icmp eq i8 %6, 2
  br i1 %cmp8.not.i, label %land.lhs.true6.i.out_crit_edge, label %out.critedge

land.lhs.true6.i.out_crit_edge:                   ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.else:                                          ; preds = %if.end
  %bstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 12
  %call.i80 = tail call i32 @mod_hdcp_read_bstatus(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp.i81 = icmp eq i32 %call.i80, 0
  %7 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bstatus_read, align 1
  br i1 %cmp.i81, label %land.lhs.true.i83, label %land.lhs.true6.i85

land.lhs.true.i83:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp1.not.i82 = icmp eq i8 %8, 1
  br i1 %cmp1.not.i82, label %land.lhs.true.i83.if.end10_crit_edge, label %land.lhs.true.i83.if.end10.sink.split_crit_edge

land.lhs.true.i83.if.end10.sink.split_crit_edge:  ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10.sink.split

land.lhs.true.i83.if.end10_crit_edge:             ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true6.i85:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp8.not.i84 = icmp eq i8 %8, 2
  br i1 %cmp8.not.i84, label %land.lhs.true6.i85.out_crit_edge, label %out.critedge292

land.lhs.true6.i85.out_crit_edge:                 ; preds = %land.lhs.true6.i85
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end10.sink.split:                              ; preds = %land.lhs.true.i83.if.end10.sink.split_crit_edge, %land.lhs.true.i.if.end10.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.18, %land.lhs.true.i.if.end10.sink.split_crit_edge ], [ @.str.14, %land.lhs.true.i83.if.end10.sink.split_crit_edge ]
  %bstatus_read.sink = phi ptr [ %binfo_read_dp, %land.lhs.true.i.if.end10.sink.split_crit_edge ], [ %bstatus_read, %land.lhs.true.i83.if.end10.sink.split_crit_edge ]
  %index12.i88.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %9 = ptrtoint ptr %index12.i88.c to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index12.i88.c, align 4
  %conv13.i89.c = zext i8 %10 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i89.c, ptr noundef nonnull %.str.14.sink) #2
  %11 = ptrtoint ptr %bstatus_read.sink to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bstatus_read.sink, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %land.lhs.true.i83.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge
  %max_cascade_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 13
  %12 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.not.i209 = icmp eq i32 %13, 2
  %bstatus.i210 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %binfo_dp.i211 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 3
  %bstatus.sink.i212 = select i1 %cmp.i.not.i209, ptr %binfo_dp.i211, ptr %bstatus.i210
  %14 = ptrtoint ptr %bstatus.sink.i212 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bstatus.sink.i212, align 4
  %16 = and i16 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool7.not.i = icmp eq i16 %16, 0
  %17 = ptrtoint ptr %max_cascade_check to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_cascade_check, align 1
  br i1 %tobool7.not.i, label %land.lhs.true.i97, label %land.lhs.true6.i99

land.lhs.true.i97:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp1.not.i96 = icmp eq i8 %18, 1
  br i1 %cmp1.not.i96, label %land.lhs.true.i97.if.end14_crit_edge, label %mod_hdcp_execute_and_set.exit107.thread

land.lhs.true.i97.if.end14_crit_edge:             ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

mod_hdcp_execute_and_set.exit107.thread:          ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i102309 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %19 = ptrtoint ptr %index12.i102309 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index12.i102309, align 4
  %conv13.i103310 = zext i8 %20 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i103310, ptr noundef nonnull @.str.19) #2
  %21 = ptrtoint ptr %max_cascade_check to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %max_cascade_check, align 1
  br label %if.end14

land.lhs.true6.i99:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp8.not.i98 = icmp eq i8 %18, 2
  br i1 %cmp8.not.i98, label %land.lhs.true6.i99.out_crit_edge, label %mod_hdcp_execute_and_set.exit107

land.lhs.true6.i99.out_crit_edge:                 ; preds = %land.lhs.true6.i99
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

mod_hdcp_execute_and_set.exit107:                 ; preds = %land.lhs.true6.i99
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i102 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %22 = ptrtoint ptr %index12.i102 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index12.i102, align 4
  %conv13.i103 = zext i8 %23 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i103, ptr noundef nonnull @.str.19) #2
  %24 = ptrtoint ptr %max_cascade_check to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %max_cascade_check, align 1
  br label %out

if.end14:                                         ; preds = %mod_hdcp_execute_and_set.exit107.thread, %land.lhs.true.i97.if.end14_crit_edge
  %max_devs_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 14
  %25 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i.not.i214 = icmp eq i32 %26, 2
  %bstatus.sink.i217 = select i1 %cmp.i.not.i214, ptr %binfo_dp.i211, ptr %bstatus.i210
  %27 = ptrtoint ptr %bstatus.sink.i217 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bstatus.sink.i217, align 4
  %29 = and i16 %28, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool6.not.i = icmp eq i16 %29, 0
  %30 = ptrtoint ptr %max_devs_check to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_devs_check, align 1
  br i1 %tobool6.not.i, label %land.lhs.true.i111, label %land.lhs.true6.i113

land.lhs.true.i111:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp1.not.i110 = icmp eq i8 %31, 1
  br i1 %cmp1.not.i110, label %land.lhs.true.i111.if.end18_crit_edge, label %mod_hdcp_execute_and_set.exit121.thread

land.lhs.true.i111.if.end18_crit_edge:            ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end18

mod_hdcp_execute_and_set.exit121.thread:          ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i116313 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %32 = ptrtoint ptr %index12.i116313 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index12.i116313, align 4
  %conv13.i117314 = zext i8 %33 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i117314, ptr noundef nonnull @.str.20) #2
  %34 = ptrtoint ptr %max_devs_check to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %max_devs_check, align 1
  br label %if.end18

land.lhs.true6.i113:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp8.not.i112 = icmp eq i8 %31, 2
  br i1 %cmp8.not.i112, label %land.lhs.true6.i113.out_crit_edge, label %mod_hdcp_execute_and_set.exit121

land.lhs.true6.i113.out_crit_edge:                ; preds = %land.lhs.true6.i113
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

mod_hdcp_execute_and_set.exit121:                 ; preds = %land.lhs.true6.i113
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i116 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %35 = ptrtoint ptr %index12.i116 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %index12.i116, align 4
  %conv13.i117 = zext i8 %36 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i117, ptr noundef nonnull @.str.20) #2
  %37 = ptrtoint ptr %max_devs_check to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %max_devs_check, align 1
  br label %out

if.end18:                                         ; preds = %mod_hdcp_execute_and_set.exit121.thread, %land.lhs.true.i111.if.end18_crit_edge
  %device_count_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 15
  %38 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i.not.i.i = icmp eq i32 %39, 2
  %bstatus.sink.i.i = select i1 %cmp.i.not.i.i, ptr %binfo_dp.i211, ptr %bstatus.i210
  %40 = ptrtoint ptr %bstatus.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bstatus.sink.i.i, align 4
  %42 = trunc i16 %41 to i8
  %cond.i.i = and i8 %42, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.i.i)
  %cmp.i218 = icmp eq i8 %cond.i.i, 0
  br i1 %cmp.i218, label %if.end18.land.lhs.true6.i127_crit_edge, label %if.end.i

if.end18.land.lhs.true6.i127_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i127

if.end.i:                                         ; preds = %if.end18
  %narrow.i = add nuw i8 %cond.i.i, 1
  %add.i = zext i8 %narrow.i to i32
  %arrayidx.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.not.i16.i = icmp ne i32 %44, 0
  %inc.i.i = zext i1 %cmp.i.not.i16.i to i32
  %arrayidx.1.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.not.1.i.i = icmp ne i32 %46, 0
  %inc.1.i.i = zext i1 %cmp.i.not.1.i.i to i32
  %spec.select.1.i.i = add nuw nsw i32 %inc.1.i.i, %inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.not.2.i.i = icmp ne i32 %48, 0
  %inc.2.i.i = zext i1 %cmp.i.not.2.i.i to i32
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %inc.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.not.3.i.i = icmp ne i32 %50, 0
  %inc.3.i.i = zext i1 %cmp.i.not.3.i.i to i32
  %spec.select.3.i.i = add nuw nsw i32 %spec.select.2.i.i, %inc.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.not.4.i.i = icmp ne i32 %52, 0
  %inc.4.i.i = zext i1 %cmp.i.not.4.i.i to i32
  %spec.select.4.i.i = add nuw nsw i32 %spec.select.3.i.i, %inc.4.i.i
  %arrayidx.5.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.not.5.i.i = icmp ne i32 %54, 0
  %inc.5.i.i = zext i1 %cmp.i.not.5.i.i to i32
  %spec.select.5.i.i = add nuw nsw i32 %spec.select.4.i.i, %inc.5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.5.i.i, i32 %add.i)
  %cmp6.i = icmp ugt i32 %spec.select.5.i.i, %add.i
  br i1 %cmp6.i, label %if.end.i.land.lhs.true6.i127_crit_edge, label %land.lhs.true.i125

if.end.i.land.lhs.true6.i127_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i127

land.lhs.true.i125:                               ; preds = %if.end.i
  %55 = ptrtoint ptr %device_count_check to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %device_count_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp1.not.i124 = icmp eq i8 %56, 1
  br i1 %cmp1.not.i124, label %land.lhs.true.i125.if.end22_crit_edge, label %mod_hdcp_execute_and_set.exit135

land.lhs.true.i125.if.end22_crit_edge:            ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end22

land.lhs.true6.i127:                              ; preds = %if.end.i.land.lhs.true6.i127_crit_edge, %if.end18.land.lhs.true6.i127_crit_edge
  %57 = ptrtoint ptr %device_count_check to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %device_count_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp8.not.i126 = icmp eq i8 %58, 2
  br i1 %cmp8.not.i126, label %land.lhs.true6.i127.out_crit_edge, label %mod_hdcp_execute_and_set.exit135.thread

land.lhs.true6.i127.out_crit_edge:                ; preds = %land.lhs.true6.i127
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

mod_hdcp_execute_and_set.exit135.thread:          ; preds = %land.lhs.true6.i127
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i130319 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %59 = ptrtoint ptr %index12.i130319 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %index12.i130319, align 4
  %conv13.i131320 = zext i8 %60 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i131320, ptr noundef nonnull @.str.21) #2
  %61 = ptrtoint ptr %device_count_check to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %device_count_check, align 1
  br label %out

mod_hdcp_execute_and_set.exit135:                 ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i130 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %62 = ptrtoint ptr %index12.i130 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %index12.i130, align 4
  %conv13.i131 = zext i8 %63 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i131, ptr noundef nonnull @.str.21) #2
  %64 = ptrtoint ptr %device_count_check to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %device_count_check, align 1
  br label %if.end22

if.end22:                                         ; preds = %mod_hdcp_execute_and_set.exit135, %land.lhs.true.i125.if.end22_crit_edge
  %65 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp.i.not.i = icmp eq i32 %66, 2
  %bstatus.sink.i = select i1 %cmp.i.not.i, ptr %binfo_dp.i211, ptr %bstatus.i210
  %67 = ptrtoint ptr %bstatus.sink.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bstatus.sink.i, align 4
  %conv = and i16 %68, 127
  %mul = mul nuw nsw i16 %conv, 5
  %ksvlist_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 110
  %69 = ptrtoint ptr %ksvlist_size to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %mul, ptr %ksvlist_size, align 2
  %ksvlist_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 16
  %call.i136 = tail call i32 @mod_hdcp_read_ksvlist(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp.i137 = icmp eq i32 %call.i136, 0
  %70 = ptrtoint ptr %ksvlist_read to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ksvlist_read, align 1
  br i1 %cmp.i137, label %land.lhs.true.i139, label %land.lhs.true6.i141

land.lhs.true.i139:                               ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp1.not.i138 = icmp eq i8 %71, 1
  br i1 %cmp1.not.i138, label %land.lhs.true.i139.if.end28_crit_edge, label %if.end28.critedge

land.lhs.true.i139.if.end28_crit_edge:            ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end28

land.lhs.true6.i141:                              ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp8.not.i140 = icmp eq i8 %71, 2
  br i1 %cmp8.not.i140, label %land.lhs.true6.i141.out_crit_edge, label %out.critedge295

land.lhs.true6.i141.out_crit_edge:                ; preds = %land.lhs.true6.i141
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end28.critedge:                                ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i144.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %72 = ptrtoint ptr %index12.i144.c to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %index12.i144.c, align 4
  %conv13.i145.c = zext i8 %73 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i145.c, ptr noundef nonnull @.str.22) #2
  %74 = ptrtoint ptr %ksvlist_read to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %ksvlist_read, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %land.lhs.true.i139.if.end28_crit_edge
  %vp_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 17
  %call.i150 = tail call i32 @mod_hdcp_read_vp(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp.i151 = icmp eq i32 %call.i150, 0
  %75 = ptrtoint ptr %vp_read to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %vp_read, align 1
  br i1 %cmp.i151, label %land.lhs.true.i153, label %land.lhs.true6.i155

land.lhs.true.i153:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp1.not.i152 = icmp eq i8 %76, 1
  br i1 %cmp1.not.i152, label %land.lhs.true.i153.if.end32_crit_edge, label %if.end32.critedge

land.lhs.true.i153.if.end32_crit_edge:            ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

land.lhs.true6.i155:                              ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %cmp8.not.i154 = icmp eq i8 %76, 2
  br i1 %cmp8.not.i154, label %land.lhs.true6.i155.out_crit_edge, label %out.critedge298

land.lhs.true6.i155.out_crit_edge:                ; preds = %land.lhs.true6.i155
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end32.critedge:                                ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i158.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %77 = ptrtoint ptr %index12.i158.c to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %index12.i158.c, align 4
  %conv13.i159.c = zext i8 %78 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i159.c, ptr noundef nonnull @.str.23) #2
  %79 = ptrtoint ptr %vp_read to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %vp_read, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.end32.critedge, %land.lhs.true.i153.if.end32_crit_edge
  %ksvlist_vp_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 18
  %call.i164 = tail call i32 @mod_hdcp_hdcp1_validate_ksvlist_vp(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp.i165 = icmp eq i32 %call.i164, 0
  %80 = ptrtoint ptr %ksvlist_vp_validation to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ksvlist_vp_validation, align 1
  br i1 %cmp.i165, label %land.lhs.true.i167, label %land.lhs.true6.i169

land.lhs.true.i167:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp1.not.i166 = icmp eq i8 %81, 1
  br i1 %cmp1.not.i166, label %land.lhs.true.i167.if.end36_crit_edge, label %if.end36.critedge

land.lhs.true.i167.if.end36_crit_edge:            ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

land.lhs.true6.i169:                              ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp8.not.i168 = icmp eq i8 %81, 2
  br i1 %cmp8.not.i168, label %land.lhs.true6.i169.out_crit_edge, label %out.critedge301

land.lhs.true6.i169.out_crit_edge:                ; preds = %land.lhs.true6.i169
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end36.critedge:                                ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i172.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %82 = ptrtoint ptr %index12.i172.c to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %index12.i172.c, align 4
  %conv13.i173.c = zext i8 %83 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i173.c, ptr noundef nonnull @.str.24) #2
  %84 = ptrtoint ptr %ksvlist_vp_validation to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %ksvlist_vp_validation, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end36.critedge, %land.lhs.true.i167.if.end36_crit_edge
  %encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %85 = ptrtoint ptr %encryption to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %encryption, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp38.not = icmp eq i8 %86, 1
  br i1 %cmp38.not, label %if.end36.if.end46_crit_edge, label %if.then40

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46

if.then40:                                        ; preds = %if.end36
  %call.i178 = tail call i32 @mod_hdcp_hdcp1_enable_encryption(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp.i179 = icmp eq i32 %call.i178, 0
  %87 = ptrtoint ptr %encryption to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %encryption, align 1
  br i1 %cmp.i179, label %land.lhs.true.i181, label %land.lhs.true6.i183

land.lhs.true.i181:                               ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp1.not.i180 = icmp eq i8 %88, 1
  br i1 %cmp1.not.i180, label %land.lhs.true.i181.if.end46_crit_edge, label %if.end46.critedge

land.lhs.true.i181.if.end46_crit_edge:            ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46

land.lhs.true6.i183:                              ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp8.not.i182 = icmp eq i8 %88, 2
  br i1 %cmp8.not.i182, label %land.lhs.true6.i183.out_crit_edge, label %out.critedge304

land.lhs.true6.i183.out_crit_edge:                ; preds = %land.lhs.true6.i183
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end46.critedge:                                ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i186.c = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %89 = ptrtoint ptr %index12.i186.c to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %index12.i186.c, align 4
  %conv13.i187.c = zext i8 %90 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i187.c, ptr noundef nonnull @.str.11) #2
  %91 = ptrtoint ptr %encryption to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %encryption, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.end46.critedge, %land.lhs.true.i181.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  %92 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i193 = icmp eq i32 %93, 2
  br i1 %cmp.i193, label %is_dp_mst_hdcp.exit, label %if.end46.out_crit_edge

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

is_dp_mst_hdcp.exit:                              ; preds = %if.end46
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %94 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.i.not = icmp eq i8 %95, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.out_crit_edge, label %if.then49

is_dp_mst_hdcp.exit.out_crit_edge:                ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.then49:                                        ; preds = %is_dp_mst_hdcp.exit
  %stream_encryption_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 24
  %call.i194 = tail call i32 @mod_hdcp_hdcp1_enable_dp_stream_encryption(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp eq i32 %call.i194, 0
  %96 = ptrtoint ptr %stream_encryption_dp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %stream_encryption_dp, align 1
  br i1 %cmp.i195, label %land.lhs.true.i197, label %land.lhs.true6.i199

land.lhs.true.i197:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp1.not.i196 = icmp eq i8 %97, 1
  br i1 %cmp1.not.i196, label %land.lhs.true.i197.out_crit_edge, label %land.lhs.true.i197.if.end14.sink.split.i204_crit_edge

land.lhs.true.i197.if.end14.sink.split.i204_crit_edge: ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i204

land.lhs.true.i197.out_crit_edge:                 ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

land.lhs.true6.i199:                              ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp8.not.i198 = icmp eq i8 %97, 2
  br i1 %cmp8.not.i198, label %land.lhs.true6.i199.out_crit_edge, label %land.lhs.true6.i199.if.end14.sink.split.i204_crit_edge

land.lhs.true6.i199.if.end14.sink.split.i204_crit_edge: ; preds = %land.lhs.true6.i199
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i204

land.lhs.true6.i199.out_crit_edge:                ; preds = %land.lhs.true6.i199
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14.sink.split.i204:                         ; preds = %land.lhs.true6.i199.if.end14.sink.split.i204_crit_edge, %land.lhs.true.i197.if.end14.sink.split.i204_crit_edge
  %.str.1.sink.i200 = phi ptr [ @.str, %land.lhs.true.i197.if.end14.sink.split.i204_crit_edge ], [ @.str.1, %land.lhs.true6.i199.if.end14.sink.split.i204_crit_edge ]
  %.sink.i201 = phi i8 [ 1, %land.lhs.true.i197.if.end14.sink.split.i204_crit_edge ], [ 2, %land.lhs.true6.i199.if.end14.sink.split.i204_crit_edge ]
  %index12.i202 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %98 = ptrtoint ptr %index12.i202 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %index12.i202, align 4
  %conv13.i203 = zext i8 %99 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i200, i32 noundef %conv13.i203, ptr noundef nonnull @.str.12) #2
  %100 = ptrtoint ptr %stream_encryption_dp to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.sink.i201, ptr %stream_encryption_dp, align 1
  br label %out

out.critedge:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c289 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %101 = ptrtoint ptr %index12.i.c289 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %index12.i.c289, align 4
  %conv13.i.c290 = zext i8 %102 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c290, ptr noundef nonnull @.str.18) #2
  %103 = ptrtoint ptr %binfo_read_dp to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 2, ptr %binfo_read_dp, align 1
  br label %out

out.critedge292:                                  ; preds = %land.lhs.true6.i85
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i88.c293 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %104 = ptrtoint ptr %index12.i88.c293 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %index12.i88.c293, align 4
  %conv13.i89.c294 = zext i8 %105 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i89.c294, ptr noundef nonnull @.str.14) #2
  %106 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %bstatus_read, align 1
  br label %out

out.critedge295:                                  ; preds = %land.lhs.true6.i141
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i144.c296 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %107 = ptrtoint ptr %index12.i144.c296 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %index12.i144.c296, align 4
  %conv13.i145.c297 = zext i8 %108 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i145.c297, ptr noundef nonnull @.str.22) #2
  %109 = ptrtoint ptr %ksvlist_read to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %ksvlist_read, align 1
  br label %out

out.critedge298:                                  ; preds = %land.lhs.true6.i155
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i158.c299 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %110 = ptrtoint ptr %index12.i158.c299 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %index12.i158.c299, align 4
  %conv13.i159.c300 = zext i8 %111 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i159.c300, ptr noundef nonnull @.str.23) #2
  %112 = ptrtoint ptr %vp_read to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 2, ptr %vp_read, align 1
  br label %out

out.critedge301:                                  ; preds = %land.lhs.true6.i169
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i172.c302 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %113 = ptrtoint ptr %index12.i172.c302 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %index12.i172.c302, align 4
  %conv13.i173.c303 = zext i8 %114 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i173.c303, ptr noundef nonnull @.str.24) #2
  %115 = ptrtoint ptr %ksvlist_vp_validation to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 2, ptr %ksvlist_vp_validation, align 1
  br label %out

out.critedge304:                                  ; preds = %land.lhs.true6.i183
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i186.c305 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %116 = ptrtoint ptr %index12.i186.c305 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %index12.i186.c305, align 4
  %conv13.i187.c306 = zext i8 %117 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i187.c306, ptr noundef nonnull @.str.11) #2
  %118 = ptrtoint ptr %encryption to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %encryption, align 1
  br label %out

out:                                              ; preds = %out.critedge304, %out.critedge301, %out.critedge298, %out.critedge295, %out.critedge292, %out.critedge, %if.end14.sink.split.i204, %land.lhs.true6.i199.out_crit_edge, %land.lhs.true.i197.out_crit_edge, %is_dp_mst_hdcp.exit.out_crit_edge, %if.end46.out_crit_edge, %land.lhs.true6.i183.out_crit_edge, %land.lhs.true6.i169.out_crit_edge, %land.lhs.true6.i155.out_crit_edge, %land.lhs.true6.i141.out_crit_edge, %mod_hdcp_execute_and_set.exit135.thread, %land.lhs.true6.i127.out_crit_edge, %mod_hdcp_execute_and_set.exit121, %land.lhs.true6.i113.out_crit_edge, %mod_hdcp_execute_and_set.exit107, %land.lhs.true6.i99.out_crit_edge, %land.lhs.true6.i85.out_crit_edge, %land.lhs.true6.i.out_crit_edge, %if.then
  %status.1 = phi i32 [ 24, %mod_hdcp_execute_and_set.exit107 ], [ 25, %mod_hdcp_execute_and_set.exit121 ], [ 0, %is_dp_mst_hdcp.exit.out_crit_edge ], [ 0, %if.then ], [ 0, %land.lhs.true.i197.out_crit_edge ], [ %call.i194, %land.lhs.true6.i199.out_crit_edge ], [ %call.i194, %if.end14.sink.split.i204 ], [ %call.i, %land.lhs.true6.i.out_crit_edge ], [ %call.i80, %land.lhs.true6.i85.out_crit_edge ], [ 24, %land.lhs.true6.i99.out_crit_edge ], [ 25, %land.lhs.true6.i113.out_crit_edge ], [ 26, %land.lhs.true6.i127.out_crit_edge ], [ %call.i136, %land.lhs.true6.i141.out_crit_edge ], [ %call.i150, %land.lhs.true6.i155.out_crit_edge ], [ %call.i164, %land.lhs.true6.i169.out_crit_edge ], [ %call.i178, %land.lhs.true6.i183.out_crit_edge ], [ 0, %if.end46.out_crit_edge ], [ %call.i, %out.critedge ], [ %call.i80, %out.critedge292 ], [ %call.i136, %out.critedge295 ], [ %call.i150, %out.critedge298 ], [ %call.i164, %out.critedge301 ], [ %call.i178, %out.critedge304 ], [ 26, %mod_hdcp_execute_and_set.exit135.thread ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_dp_execution(ptr noundef %hdcp, ptr nocapture noundef %event_ctx, ptr nocapture noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 9, label %sw.bb
    i8 10, label %sw.bb2
    i8 11, label %sw.bb4
    i8 12, label %sw.bb6
    i8 13, label %sw.bb8
    i8 14, label %sw.bb10
    i8 15, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %5 = ptrtoint ptr %unexpected_event.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %unexpected_event.i, align 1
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %bcaps_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 6
  %call.i.i = tail call i32 @mod_hdcp_read_bcaps(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  %6 = ptrtoint ptr %bcaps_read.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bcaps_read.i, align 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %land.lhs.true6.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp1.not.i.i = icmp eq i8 %7, 1
  br i1 %cmp1.not.i.i, label %land.lhs.true.i.i.if.end2.i_crit_edge, label %if.end2.critedge.i

land.lhs.true.i.i.if.end2.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2.i

land.lhs.true6.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp8.not.i.i = icmp eq i8 %7, 2
  br i1 %cmp8.not.i.i, label %land.lhs.true6.i.i.sw.epilog_crit_edge, label %out.critedge.i

land.lhs.true6.i.i.sw.epilog_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end2.critedge.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %8 = ptrtoint ptr %index12.i.c.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index12.i.c.i, align 4
  %conv13.i.c.i = zext i8 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i.c.i, ptr noundef nonnull @.str.3) #2
  %10 = ptrtoint ptr %bcaps_read.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bcaps_read.i, align 1
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end2.critedge.i, %land.lhs.true.i.i.if.end2.i_crit_edge
  %hdcp_capable_dp.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 19
  %bcaps.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %bcaps.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bcaps.i.i, align 2
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 15, i32 0
  %14 = ptrtoint ptr %hdcp_capable_dp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdcp_capable_dp.i, align 1
  br i1 %tobool.not.i.i, label %land.lhs.true6.i15.i, label %land.lhs.true.i13.i

land.lhs.true.i13.i:                              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp1.not.i12.i = icmp eq i8 %15, 1
  br i1 %cmp1.not.i12.i, label %land.lhs.true.i13.i.sw.epilog_crit_edge, label %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge

land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i20.i

land.lhs.true.i13.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true6.i15.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp8.not.i14.i = icmp eq i8 %15, 2
  br i1 %cmp8.not.i14.i, label %land.lhs.true6.i15.i.sw.epilog_crit_edge, label %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge

land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge: ; preds = %land.lhs.true6.i15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i20.i

land.lhs.true6.i15.i.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end14.sink.split.i20.i:                        ; preds = %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge, %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge
  %.str.1.sink.i16.i = phi ptr [ @.str, %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge ], [ @.str.1, %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge ]
  %.sink.i17.i = phi i8 [ 1, %land.lhs.true.i13.i.if.end14.sink.split.i20.i_crit_edge ], [ 2, %land.lhs.true6.i15.i.if.end14.sink.split.i20.i_crit_edge ]
  %index12.i18.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %16 = ptrtoint ptr %index12.i18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index12.i18.i, align 4
  %conv13.i19.i = zext i8 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i16.i, i32 noundef %conv13.i19.i, ptr noundef nonnull @.str.25) #2
  %18 = ptrtoint ptr %hdcp_capable_dp.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink.i17.i, ptr %hdcp_capable_dp.i, align 1
  br label %sw.epilog

out.critedge.i:                                   ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c31.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %19 = ptrtoint ptr %index12.i.c31.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index12.i.c31.i, align 4
  %conv13.i.c32.i = zext i8 %20 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c32.i, ptr noundef nonnull @.str.3) #2
  %21 = ptrtoint ptr %bcaps_read.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %bcaps_read.i, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call fastcc i32 @exchange_ksvs(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %22 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event_ctx, align 4
  %.off.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i37, label %if.then.i34

if.then.i34:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event.i33 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %24 = ptrtoint ptr %unexpected_event.i33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %unexpected_event.i33, align 1
  br label %sw.epilog

if.end.i37:                                       ; preds = %sw.bb4
  %bstatus_read.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 12
  %call.i.i35 = tail call i32 @mod_hdcp_read_bstatus(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i.i36 = icmp eq i32 %call.i.i35, 0
  %25 = ptrtoint ptr %bstatus_read.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bstatus_read.i, align 1
  br i1 %cmp.i.i36, label %land.lhs.true.i.i39, label %land.lhs.true6.i.i41

land.lhs.true.i.i39:                              ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp1.not.i.i38 = icmp eq i8 %26, 1
  br i1 %cmp1.not.i.i38, label %land.lhs.true.i.i39.if.end4.i_crit_edge, label %if.end4.critedge.i

land.lhs.true.i.i39.if.end4.i_crit_edge:          ; preds = %land.lhs.true.i.i39
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

land.lhs.true6.i.i41:                             ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp8.not.i.i40 = icmp eq i8 %26, 2
  br i1 %cmp8.not.i.i40, label %land.lhs.true6.i.i41.sw.epilog_crit_edge, label %out.critedge.i44

land.lhs.true6.i.i41.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i.i41
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end4.critedge.i:                               ; preds = %land.lhs.true.i.i39
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c.i42 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %27 = ptrtoint ptr %index12.i.c.i42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %index12.i.c.i42, align 4
  %conv13.i.c.i43 = zext i8 %28 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i.c.i43, ptr noundef nonnull @.str.14) #2
  %29 = ptrtoint ptr %bstatus_read.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %bstatus_read.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.critedge.i, %land.lhs.true.i.i39.if.end4.i_crit_edge
  %r0p_available_dp.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 21
  %connection.i.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %30 = ptrtoint ptr %connection.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %connection.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i.not.i.i = icmp eq i32 %31, 2
  br i1 %cmp.i.not.i.i, label %check_r0p_available_dp.exit.i, label %check_r0p_available_dp.exit.thread.i

check_r0p_available_dp.exit.thread.i:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %32 = ptrtoint ptr %r0p_available_dp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %r0p_available_dp.i, align 1
  br label %land.lhs.true6.i18.i

check_r0p_available_dp.exit.i:                    ; preds = %if.end4.i
  %bstatus.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %bstatus.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bstatus.i.i, align 4
  %36 = shl i16 %35, 3
  %37 = and i16 %36, 16
  %38 = xor i16 %37, 16
  %39 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp.i14.i = icmp eq i16 %38, 0
  %40 = ptrtoint ptr %r0p_available_dp.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %r0p_available_dp.i, align 1
  br i1 %cmp.i14.i, label %land.lhs.true.i16.i, label %check_r0p_available_dp.exit.i.land.lhs.true6.i18.i_crit_edge

check_r0p_available_dp.exit.i.land.lhs.true6.i18.i_crit_edge: ; preds = %check_r0p_available_dp.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.lhs.true6.i18.i

land.lhs.true.i16.i:                              ; preds = %check_r0p_available_dp.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp1.not.i15.i = icmp eq i8 %41, 1
  br i1 %cmp1.not.i15.i, label %land.lhs.true.i16.i.sw.epilog_crit_edge, label %land.lhs.true.i16.i.if.end14.sink.split.i23.i_crit_edge

land.lhs.true.i16.i.if.end14.sink.split.i23.i_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i23.i

land.lhs.true.i16.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true6.i18.i:                             ; preds = %check_r0p_available_dp.exit.i.land.lhs.true6.i18.i_crit_edge, %check_r0p_available_dp.exit.thread.i
  %42 = phi i8 [ %33, %check_r0p_available_dp.exit.thread.i ], [ %41, %check_r0p_available_dp.exit.i.land.lhs.true6.i18.i_crit_edge ]
  %status.0.i38.i = phi i32 [ 32, %check_r0p_available_dp.exit.thread.i ], [ %39, %check_r0p_available_dp.exit.i.land.lhs.true6.i18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp8.not.i17.i = icmp eq i8 %42, 2
  br i1 %cmp8.not.i17.i, label %land.lhs.true6.i18.i.sw.epilog_crit_edge, label %land.lhs.true6.i18.i.if.end14.sink.split.i23.i_crit_edge

land.lhs.true6.i18.i.if.end14.sink.split.i23.i_crit_edge: ; preds = %land.lhs.true6.i18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i23.i

land.lhs.true6.i18.i.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end14.sink.split.i23.i:                        ; preds = %land.lhs.true6.i18.i.if.end14.sink.split.i23.i_crit_edge, %land.lhs.true.i16.i.if.end14.sink.split.i23.i_crit_edge
  %status.0.i36.i = phi i32 [ 0, %land.lhs.true.i16.i.if.end14.sink.split.i23.i_crit_edge ], [ %status.0.i38.i, %land.lhs.true6.i18.i.if.end14.sink.split.i23.i_crit_edge ]
  %.str.1.sink.i19.i = phi ptr [ @.str, %land.lhs.true.i16.i.if.end14.sink.split.i23.i_crit_edge ], [ @.str.1, %land.lhs.true6.i18.i.if.end14.sink.split.i23.i_crit_edge ]
  %.sink.i20.i = phi i8 [ 1, %land.lhs.true.i16.i.if.end14.sink.split.i23.i_crit_edge ], [ 2, %land.lhs.true6.i18.i.if.end14.sink.split.i23.i_crit_edge ]
  %index12.i21.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %43 = ptrtoint ptr %index12.i21.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %index12.i21.i, align 4
  %conv13.i22.i = zext i8 %44 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i19.i, i32 noundef %conv13.i22.i, ptr noundef nonnull @.str.26) #2
  %45 = ptrtoint ptr %r0p_available_dp.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink.i20.i, ptr %r0p_available_dp.i, align 1
  br label %sw.epilog

out.critedge.i44:                                 ; preds = %land.lhs.true6.i.i41
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.c39.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %46 = ptrtoint ptr %index12.i.c39.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index12.i.c39.i, align 4
  %conv13.i.c40.i = zext i8 %47 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.c40.i, ptr noundef nonnull @.str.14) #2
  %48 = ptrtoint ptr %bstatus_read.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %bstatus_read.i, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call fastcc i32 @computations_validate_rx_test_for_repeater(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %49 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.not.i46 = icmp eq i32 %50, 2
  br i1 %cmp.not.i46, label %if.then2.i, label %if.then.i48

if.then.i48:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #4
  %unexpected_event.i47 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %51 = ptrtoint ptr %unexpected_event.i47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %unexpected_event.i47, align 1
  br label %sw.epilog

if.then2.i:                                       ; preds = %sw.bb8
  %bstatus_read.i49 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 12
  %call.i.i50 = tail call i32 @mod_hdcp_read_bstatus(ptr noundef %hdcp) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i.i51 = icmp eq i32 %call.i.i50, 0
  %52 = ptrtoint ptr %bstatus_read.i49 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bstatus_read.i49, align 1
  br i1 %cmp.i.i51, label %land.lhs.true.i.i53, label %land.lhs.true6.i.i55

land.lhs.true.i.i53:                              ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp1.not.i.i52 = icmp eq i8 %53, 1
  br i1 %cmp1.not.i.i52, label %land.lhs.true.i.i53.if.then5.i_crit_edge, label %mod_hdcp_execute_and_set.exit.thread54.i

land.lhs.true.i.i53.if.then5.i_crit_edge:         ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5.i

mod_hdcp_execute_and_set.exit.thread54.i:         ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i57.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %54 = ptrtoint ptr %index12.i57.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %index12.i57.i, align 4
  %conv13.i58.i = zext i8 %55 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i58.i, ptr noundef nonnull @.str.14) #2
  %56 = ptrtoint ptr %bstatus_read.i49 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %bstatus_read.i49, align 1
  br label %if.then5.i

land.lhs.true6.i.i55:                             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp8.not.i.i54 = icmp eq i8 %53, 2
  br i1 %cmp8.not.i.i54, label %land.lhs.true6.i.i55.sw.epilog_crit_edge, label %mod_hdcp_execute_and_set.exit.i

land.lhs.true6.i.i55.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i.i55
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

mod_hdcp_execute_and_set.exit.i:                  ; preds = %land.lhs.true6.i.i55
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %57 = ptrtoint ptr %index12.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %index12.i.i, align 4
  %conv13.i.i = zext i8 %58 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i.i, ptr noundef nonnull @.str.14) #2
  %59 = ptrtoint ptr %bstatus_read.i49 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %bstatus_read.i49, align 1
  br label %sw.epilog

if.then5.i:                                       ; preds = %mod_hdcp_execute_and_set.exit.thread54.i, %land.lhs.true.i.i53.if.then5.i_crit_edge
  %link_integrity_check.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 22
  %bstatus.i.i56 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %bstatus.i.i56 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bstatus.i.i56, align 4
  %62 = and i16 %61, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i.i57 = icmp eq i16 %62, 0
  %63 = ptrtoint ptr %link_integrity_check.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %link_integrity_check.i, align 1
  br i1 %tobool.not.i.i57, label %land.lhs.true.i20.i, label %land.lhs.true6.i22.i

land.lhs.true.i20.i:                              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp1.not.i19.i = icmp eq i8 %64, 1
  br i1 %cmp1.not.i19.i, label %land.lhs.true.i20.i.if.then9.i_crit_edge, label %if.end7.i.thread

land.lhs.true.i20.i.if.then9.i_crit_edge:         ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then9.i

if.end7.i.thread:                                 ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i25.i60 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %65 = ptrtoint ptr %index12.i25.i60 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %index12.i25.i60, align 4
  %conv13.i26.i61 = zext i8 %66 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv13.i26.i61, ptr noundef nonnull @.str.15) #2
  %67 = ptrtoint ptr %link_integrity_check.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %link_integrity_check.i, align 1
  br label %if.then9.i

land.lhs.true6.i22.i:                             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp8.not.i21.i = icmp eq i8 %64, 2
  br i1 %cmp8.not.i21.i, label %land.lhs.true6.i22.i.sw.epilog_crit_edge, label %if.end7.i

land.lhs.true6.i22.i.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i22.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end7.i:                                        ; preds = %land.lhs.true6.i22.i
  call void @__sanitizer_cov_trace_pc() #4
  %index12.i25.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %68 = ptrtoint ptr %index12.i25.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %index12.i25.i, align 4
  %conv13.i26.i = zext i8 %69 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv13.i26.i, ptr noundef nonnull @.str.15) #2
  %70 = ptrtoint ptr %link_integrity_check.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %link_integrity_check.i, align 1
  br label %sw.epilog

if.then9.i:                                       ; preds = %if.end7.i.thread, %land.lhs.true.i20.i.if.then9.i_crit_edge
  %reauth_request_check.i = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 23
  %71 = ptrtoint ptr %bstatus.i.i56 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bstatus.i.i56, align 4
  %73 = and i16 %72, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i46.i = icmp eq i16 %73, 0
  %cond.i47.i = select i1 %tobool.not.i46.i, i32 0, i32 28
  %74 = ptrtoint ptr %reauth_request_check.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %reauth_request_check.i, align 1
  br i1 %tobool.not.i46.i, label %land.lhs.true.i34.i, label %land.lhs.true6.i36.i

land.lhs.true.i34.i:                              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp1.not.i33.i = icmp eq i8 %75, 1
  br i1 %cmp1.not.i33.i, label %land.lhs.true.i34.i.sw.epilog_crit_edge, label %land.lhs.true.i34.i.if.end14.sink.split.i41.i_crit_edge

land.lhs.true.i34.i.if.end14.sink.split.i41.i_crit_edge: ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i41.i

land.lhs.true.i34.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true6.i36.i:                             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp8.not.i35.i = icmp eq i8 %75, 2
  br i1 %cmp8.not.i35.i, label %land.lhs.true6.i36.i.sw.epilog_crit_edge, label %land.lhs.true6.i36.i.if.end14.sink.split.i41.i_crit_edge

land.lhs.true6.i36.i.if.end14.sink.split.i41.i_crit_edge: ; preds = %land.lhs.true6.i36.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split.i41.i

land.lhs.true6.i36.i.sw.epilog_crit_edge:         ; preds = %land.lhs.true6.i36.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end14.sink.split.i41.i:                        ; preds = %land.lhs.true6.i36.i.if.end14.sink.split.i41.i_crit_edge, %land.lhs.true.i34.i.if.end14.sink.split.i41.i_crit_edge
  %.str.1.sink.i37.i = phi ptr [ @.str, %land.lhs.true.i34.i.if.end14.sink.split.i41.i_crit_edge ], [ @.str.1, %land.lhs.true6.i36.i.if.end14.sink.split.i41.i_crit_edge ]
  %.sink.i38.i = phi i8 [ 1, %land.lhs.true.i34.i.if.end14.sink.split.i41.i_crit_edge ], [ 2, %land.lhs.true6.i36.i.if.end14.sink.split.i41.i_crit_edge ]
  %index12.i39.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %76 = ptrtoint ptr %index12.i39.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %index12.i39.i, align 4
  %conv13.i40.i = zext i8 %77 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.1.sink.i37.i, i32 noundef %conv13.i40.i, ptr noundef nonnull @.str.16) #2
  %78 = ptrtoint ptr %reauth_request_check.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink.i38.i, ptr %reauth_request_check.i, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call11 = tail call fastcc i32 @wait_for_ready(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call13 = tail call fastcc i32 @read_ksv_list(ptr noundef %hdcp, ptr noundef %event_ctx, ptr noundef %input)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %if.end14.sink.split.i41.i, %land.lhs.true6.i36.i.sw.epilog_crit_edge, %land.lhs.true.i34.i.sw.epilog_crit_edge, %if.end7.i, %land.lhs.true6.i22.i.sw.epilog_crit_edge, %mod_hdcp_execute_and_set.exit.i, %land.lhs.true6.i.i55.sw.epilog_crit_edge, %if.then.i48, %sw.bb6, %out.critedge.i44, %if.end14.sink.split.i23.i, %land.lhs.true6.i18.i.sw.epilog_crit_edge, %land.lhs.true.i16.i.sw.epilog_crit_edge, %land.lhs.true6.i.i41.sw.epilog_crit_edge, %if.then.i34, %sw.bb2, %out.critedge.i, %if.end14.sink.split.i20.i, %land.lhs.true6.i15.i.sw.epilog_crit_edge, %land.lhs.true.i13.i.sw.epilog_crit_edge, %land.lhs.true6.i.i.sw.epilog_crit_edge, %if.then.i, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call7, %sw.bb6 ], [ %call3, %sw.bb2 ], [ 5, %entry.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %land.lhs.true.i13.i.sw.epilog_crit_edge ], [ 15, %land.lhs.true6.i15.i.sw.epilog_crit_edge ], [ %cond.i.i, %if.end14.sink.split.i20.i ], [ %call.i.i, %land.lhs.true6.i.i.sw.epilog_crit_edge ], [ %call.i.i, %out.critedge.i ], [ 0, %if.then.i34 ], [ 0, %land.lhs.true.i16.i.sw.epilog_crit_edge ], [ %status.0.i38.i, %land.lhs.true6.i18.i.sw.epilog_crit_edge ], [ %status.0.i36.i, %if.end14.sink.split.i23.i ], [ %call.i.i35, %land.lhs.true6.i.i41.sw.epilog_crit_edge ], [ %call.i.i35, %out.critedge.i44 ], [ 27, %if.end7.i ], [ 0, %if.then.i48 ], [ 0, %land.lhs.true.i34.i.sw.epilog_crit_edge ], [ 28, %land.lhs.true6.i36.i.sw.epilog_crit_edge ], [ %cond.i47.i, %if.end14.sink.split.i41.i ], [ %call.i.i50, %mod_hdcp_execute_and_set.exit.i ], [ %call.i.i50, %land.lhs.true6.i.i55.sw.epilog_crit_edge ], [ 27, %land.lhs.true6.i22.i.sw.epilog_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_bksv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_bcaps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_create_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_an(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_aksv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_write_ainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_r0p(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_validate_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_enable_encryption(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_enable_dp_stream_encryption(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_link_maintenance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_bstatus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_binfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_ksvlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_read_vp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_validate_ksvlist_vp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 457, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 460, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 161, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 165, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 184, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 188, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 192, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 200, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 205, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 226, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 230, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 237, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 248, i32 12}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 268, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 289, i32 11}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 293, i32 11}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 297, i32 11}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 307, i32 10}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 328, i32 11}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 338, i32 10}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 342, i32 10}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 346, i32 10}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 352, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 356, i32 10}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 360, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 394, i32 10}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_execution.c", i32 418, i32 10}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
