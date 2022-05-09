; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp_log.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mod_hdcp_log_ddc_trace\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[HDCP_DDC]:[Link %d] Read %s%s\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BKSV\00", [27 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BCAPS\00", [26 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BSTATUS\00", [24 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[HDCP_DDC]:[Link %d] Write %s%s\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AN\00", [29 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AKSV\00", [27 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AINFO\00", [26 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RI' / R0'\00", [22 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BINFO\00", [26 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KSVLIST\00", [24 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V'\00", [29 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDCP2Version\00", [19 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rx Caps\00", [24 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AKE Init\00", [23 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AKE Cert\00", [23 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Stored KM\00", [22 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No Stored KM\00", [19 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"H'\00", [29 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pairing Info\00", [19 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LC Init\00", [24 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L'\00", [29 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Exchange KS\00", [20 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx Status\00", [22 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rx Id List\00", [21 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Rx Id List Ack\00", [17 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Content Stream Management\00", [38 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stream Ready\00", [19 x i8] zeroinitializer }, align 32
@mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Content Stream Type\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MOD_HDCP_STATUS_SUCCESS\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MOD_HDCP_STATUS_FAILURE\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MOD_HDCP_STATUS_RESET_NEEDED\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MOD_HDCP_STATUS_DISPLAY_OUT_OF_BOUND\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MOD_HDCP_STATUS_DISPLAY_NOT_FOUND\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MOD_HDCP_STATUS_INVALID_STATE\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MOD_HDCP_STATUS_NOT_IMPLEMENTED\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MOD_HDCP_STATUS_INTERNAL_POLICY_FAILURE\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MOD_HDCP_STATUS_UPDATE_TOPOLOGY_FAILURE\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MOD_HDCP_STATUS_CREATE_PSP_SERVICE_FAILURE\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MOD_HDCP_STATUS_DESTROY_PSP_SERVICE_FAILURE\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MOD_HDCP_STATUS_HDCP1_CREATE_SESSION_FAILURE\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MOD_HDCP_STATUS_HDCP1_DESTROY_SESSION_FAILURE\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MOD_HDCP_STATUS_HDCP1_VALIDATE_ENCRYPTION_FAILURE\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MOD_HDCP_STATUS_HDCP1_NOT_HDCP_REPEATER\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MOD_HDCP_STATUS_HDCP1_NOT_CAPABLE\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOD_HDCP_STATUS_HDCP1_R0_PRIME_PENDING\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MOD_HDCP_STATUS_HDCP1_VALIDATE_RX_FAILURE\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MOD_HDCP_STATUS_HDCP1_BKSV_REVOKED\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MOD_HDCP_STATUS_HDCP1_KSV_LIST_NOT_READY\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MOD_HDCP_STATUS_HDCP1_VALIDATE_KSV_LIST_FAILURE\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOD_HDCP_STATUS_HDCP1_KSV_LIST_REVOKED\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MOD_HDCP_STATUS_HDCP1_ENABLE_ENCRYPTION_FAILURE\00", [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MOD_HDCP_STATUS_HDCP1_ENABLE_STREAM_ENCRYPTION_FAILURE\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MOD_HDCP_STATUS_HDCP1_MAX_CASCADE_EXCEEDED_FAILURE\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MOD_HDCP_STATUS_HDCP1_MAX_DEVS_EXCEEDED_FAILURE\00", [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MOD_HDCP_STATUS_HDCP1_DEVICE_COUNT_MISMATCH_FAILURE\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MOD_HDCP_STATUS_HDCP1_LINK_INTEGRITY_FAILURE\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MOD_HDCP_STATUS_HDCP1_REAUTH_REQUEST_ISSUED\00", [52 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MOD_HDCP_STATUS_HDCP1_LINK_MAINTENANCE_FAILURE\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MOD_HDCP_STATUS_HDCP1_INVALID_BKSV\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MOD_HDCP_STATUS_DDC_FAILURE\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MOD_HDCP_STATUS_INVALID_OPERATION\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MOD_HDCP_STATUS_HDCP2_CREATE_SESSION_FAILURE\00", [51 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MOD_HDCP_STATUS_HDCP2_DESTROY_SESSION_FAILURE\00", [50 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MOD_HDCP_STATUS_HDCP2_PREP_AKE_INIT_FAILURE\00", [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOD_HDCP_STATUS_HDCP2_AKE_CERT_PENDING\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDING\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MOD_HDCP_STATUS_HDCP2_VALIDATE_AKE_CERT_FAILURE\00", [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOD_HDCP_STATUS_HDCP2_AKE_CERT_REVOKED\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MOD_HDCP_STATUS_HDCP2_VALIDATE_H_PRIME_FAILURE\00", [49 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MOD_HDCP_STATUS_HDCP2_VALIDATE_PAIRING_INFO_FAILURE\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MOD_HDCP_STATUS_HDCP2_PREP_LC_INIT_FAILURE\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MOD_HDCP_STATUS_HDCP2_L_PRIME_PENDING\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MOD_HDCP_STATUS_HDCP2_VALIDATE_L_PRIME_FAILURE\00", [49 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOD_HDCP_STATUS_HDCP2_PREP_EKS_FAILURE\00", [57 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MOD_HDCP_STATUS_HDCP2_ENABLE_ENCRYPTION_FAILURE\00", [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MOD_HDCP_STATUS_HDCP2_VALIDATE_RX_ID_LIST_FAILURE\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_REVOKED\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MOD_HDCP_STATUS_HDCP2_ENABLE_STREAM_ENCRYPTION_FAILURE\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MOD_HDCP_STATUS_HDCP2_STREAM_READY_PENDING\00", [53 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MOD_HDCP_STATUS_HDCP2_VALIDATE_STREAM_READY_FAILURE\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"MOD_HDCP_STATUS_HDCP2_PREPARE_STREAM_MANAGEMENT_FAILURE\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MOD_HDCP_STATUS_HDCP2_REAUTH_LINK_INTEGRITY_FAILURE\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MOD_HDCP_STATUS_HDCP2_DEVICE_COUNT_MISMATCH_FAILURE\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MOD_HDCP_STATUS_UNSUPPORTED_PSP_VER_FAILURE\00", [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MOD_HDCP_STATUS_UNKNOWN\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDCP_UNINITIALIZED\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDCP_INITIALIZED\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDCP_CP_NOT_DESIRED\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"H1_A0_WAIT_FOR_ACTIVE_RX\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H1_A1_EXCHANGE_KSVS\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"H1_A2_COMPUTATIONS_A3_VALIDATE_RX_A6_TEST_FOR_REPEATER\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"H1_A45_AUTHENTICATED\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"H1_A8_WAIT_FOR_READY\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H1_A9_READ_KSV_LIST\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"D1_A0_DETERMINE_RX_HDCP_CAPABLE\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"D1_A1_EXCHANGE_KSVS\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"D1_A23_WAIT_FOR_R0_PRIME\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"D1_A2_COMPUTATIONS_A3_VALIDATE_RX_A5_TEST_FOR_REPEATER\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"D1_A4_AUTHENTICATED\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D1_A6_WAIT_FOR_READY\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"D1_A7_READ_KSV_LIST\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"H2_A0_KNOWN_HDCP2_CAPABLE_RX\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2_A1_SEND_AKE_INIT\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"H2_A1_VALIDATE_AKE_CERT\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"H2_A1_SEND_NO_STORED_KM\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H2_A1_READ_H_PRIME\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"H2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME\00", [51 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"H2_A1_SEND_STORED_KM\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"H2_A1_VALIDATE_H_PRIME\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"H2_A2_LOCALITY_CHECK\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"H2_A3_EXCHANGE_KS_AND_TEST_FOR_REPEATER\00", [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"H2_ENABLE_ENCRYPTION\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"H2_A5_AUTHENTICATED\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"H2_A6_WAIT_FOR_RX_ID_LIST\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"H2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK\00", [58 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"H2_A9_SEND_STREAM_MANAGEMENT\00", [35 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"H2_A9_VALIDATE_STREAM_READY\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"D2_A0_DETERMINE_RX_HDCP_CAPABLE\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"D2_A1_SEND_AKE_INIT\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"D2_A1_VALIDATE_AKE_CERT\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"D2_A1_SEND_NO_STORED_KM\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"D2_A1_READ_H_PRIME\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"D2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME\00", [51 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D2_A1_SEND_STORED_KM\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"D2_A1_VALIDATE_H_PRIME\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D2_A2_LOCALITY_CHECK\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"D2_A34_EXCHANGE_KS_AND_TEST_FOR_REPEATER\00", [55 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"D2_SEND_CONTENT_STREAM_TYPE\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D2_ENABLE_ENCRYPTION\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"D2_A5_AUTHENTICATED\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"D2_A6_WAIT_FOR_RX_ID_LIST\00", [38 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"D2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK\00", [58 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"D2_A9_SEND_STREAM_MANAGEMENT\00", [35 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"D2_A9_VALIDATE_STREAM_READY\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNKNOWN_STATE_ID\00", [47 x i8] zeroinitializer }, align 32
@switch.table.mod_hdcp_status_to_str = internal constant { [60 x ptr], [48 x i8] } { [60 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], [48 x i8] zeroinitializer }, align 32
@switch.table.mod_hdcp_state_id_to_str = internal constant { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 47, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 57, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 59, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 61, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 64, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 66, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 68, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 70, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 73, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 76, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 78, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 81, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 84, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 86, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 88, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 90, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 93, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 96, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 98, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 101, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 103, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 105, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 107, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 110, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 113, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 116, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 119, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 122, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 132, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 134, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 136, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 138, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 140, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 142, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 144, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 146, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 148, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 150, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 152, i32 10 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 154, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 156, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 158, i32 10 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 160, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 162, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 164, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 166, i32 10 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 168, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 170, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 172, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 174, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 176, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 178, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 180, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 182, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 184, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 186, i32 10 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 188, i32 10 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 190, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 192, i32 10 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 194, i32 10 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 196, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 198, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 200, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 202, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 204, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 206, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 208, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 210, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 212, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 214, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 216, i32 10 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 218, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 220, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 222, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 224, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 226, i32 10 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 228, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 230, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 232, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 234, i32 10 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 236, i32 10 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 238, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 240, i32 10 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 242, i32 10 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 244, i32 10 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 246, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 248, i32 10 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 250, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 252, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 260, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 262, i32 10 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 264, i32 10 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 266, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 268, i32 10 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 270, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 272, i32 10 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 274, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 276, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 278, i32 10 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 280, i32 10 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 282, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 284, i32 10 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 286, i32 10 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 288, i32 10 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 290, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 292, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 294, i32 10 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 296, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 298, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 300, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 302, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 304, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 306, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 308, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 310, i32 10 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 312, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 314, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 316, i32 10 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 318, i32 10 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 320, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 322, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 324, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 326, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 328, i32 10 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 330, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 332, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 334, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 336, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 338, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 340, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 342, i32 10 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 344, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 346, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 348, i32 10 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 350, i32 10 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 352, i32 10 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 354, i32 10 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 356, i32 10 }
@___asan_gen_.573 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.574 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 358, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant [36 x i8] c"switch.table.mod_hdcp_status_to_str\00", align 1
@___asan_gen_.577 = private unnamed_addr constant [38 x i8] c"switch.table.mod_hdcp_state_id_to_str\00", align 1
@llvm.compiler.used = appending global [146 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @switch.table.mod_hdcp_status_to_str, ptr @switch.table.mod_hdcp_state_id_to_str], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mod_hdcp_status_to_str to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mod_hdcp_state_id_to_str to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_hdcp_dump_binary_message(ptr nocapture noundef readonly %msg, i32 noundef %msg_size, ptr nocapture noundef writeonly %buf, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div25 = lshr i32 %msg_size, 4
  %rem = and i32 %msg_size, 15
  %mul = mul i32 %div25, 49
  %mul1 = mul nuw nsw i32 %rem, 3
  %add = add nuw nsw i32 %mul1, 2
  %add3 = add i32 %add, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %buf_size)
  %cmp.not = icmp ugt i32 %add3, %buf_size
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %for.cond.preheader

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_size)
  %cmp426.not = icmp eq i32 %msg_size, 0
  br i1 %cmp426.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc11, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %buf_pos.027 = phi i32 [ %add10, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rem5 = and i32 %i.028, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5)
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %buf_pos.027, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %buf_pos.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body.if.end_crit_edge
  %buf_pos.1 = phi i32 [ %inc, %if.then7 ], [ %buf_pos.027, %for.body.if.end_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %buf, i32 %buf_pos.1
  %arrayidx9 = getelementptr i8, ptr %msg, i32 %i.028
  %1 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %2 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8, ptr noundef nonnull @.str, i32 noundef %conv)
  %add10 = add i32 %buf_pos.1, 3
  %inc11 = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc11, %msg_size
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %buf_pos.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add10, %if.end.for.end_crit_edge ]
  %arrayidx13 = getelementptr i8, ptr %buf, i32 %buf_pos.0.lcssa
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx13, align 1
  br label %if.end14

if.end14:                                         ; preds = %for.end, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i.i.i, align 4
  %2 = add i8 %1, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %2)
  %3 = icmp ult i8 %2, -13
  br i1 %3, label %if.else, label %if.end.i.4

if.end.i.4:                                       ; preds = %entry
  %bksv = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 8
  %buf = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %buf, align 1
  %arrayidx8.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %bksv to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bksv, align 1
  %conv.i = zext i8 %6 to i32
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i) #5
  %arrayidx8.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 4
  %arrayidx9.i.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 9
  %7 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9.i.1, align 1
  %conv.i.1 = zext i8 %8 to i32
  %call.i.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.1, ptr noundef nonnull @.str, i32 noundef %conv.i.1) #5
  %arrayidx8.i.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 7
  %arrayidx9.i.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i.2, align 1
  %conv.i.2 = zext i8 %10 to i32
  %call.i.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.2, ptr noundef nonnull @.str, i32 noundef %conv.i.2) #5
  %arrayidx8.i.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 10
  %arrayidx9.i.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 11
  %11 = ptrtoint ptr %arrayidx9.i.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9.i.3, align 1
  %conv.i.3 = zext i8 %12 to i32
  %call.i.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.3, ptr noundef nonnull @.str, i32 noundef %conv.i.3) #5
  %arrayidx8.i.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 13
  %arrayidx9.i.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx9.i.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9.i.4, align 1
  %conv.i.4 = zext i8 %14 to i32
  %call.i.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.4, ptr noundef nonnull @.str, i32 noundef %conv.i.4) #5
  %msg = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1
  %arrayidx13.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 16
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx13.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then7)) #5
          to label %if.end.i926 [label %if.then7], !srcloc !319

if.then7:                                         ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index, align 4
  %conv = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef nonnull @.str.5, ptr noundef %buf) #5
  br label %if.end.i926

if.end.i926:                                      ; preds = %if.then7, %if.end.i.4
  %bcaps = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %buf, align 1
  %19 = ptrtoint ptr %bcaps to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bcaps, align 1
  %conv.i921 = zext i8 %20 to i32
  %call.i922 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i921) #5
  %21 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx8.i.1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then28)) #5
          to label %if.end.i945.1 [label %if.then28], !srcloc !319

if.then28:                                        ; preds = %if.end.i926
  call void @__sanitizer_cov_trace_pc() #7
  %index30 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %22 = ptrtoint ptr %index30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index30, align 4
  %conv31 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.4, i32 noundef %conv31, ptr noundef nonnull @.str.6, ptr noundef %buf) #5
  br label %if.end.i945.1

if.end.i945.1:                                    ; preds = %if.then28, %if.end.i926
  %bstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %buf, align 1
  %25 = ptrtoint ptr %bstatus to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bstatus, align 1
  %conv.i940 = zext i8 %26 to i32
  %call.i941 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i940) #5
  %arrayidx9.i939.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 7
  %27 = ptrtoint ptr %arrayidx9.i939.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9.i939.1, align 1
  %conv.i940.1 = zext i8 %28 to i32
  %call.i941.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.1, ptr noundef nonnull @.str, i32 noundef %conv.i940.1) #5
  %29 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx8.i.2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then54)) #5
          to label %if.end.i964.7 [label %if.then54], !srcloc !319

if.then54:                                        ; preds = %if.end.i945.1
  call void @__sanitizer_cov_trace_pc() #7
  %index56 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %30 = ptrtoint ptr %index56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index56, align 4
  %conv57 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.4, i32 noundef %conv57, ptr noundef nonnull @.str.7, ptr noundef %buf) #5
  br label %if.end.i964.7

if.end.i964.7:                                    ; preds = %if.then54, %if.end.i945.1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %buf, align 1
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msg, align 1
  %conv.i959 = zext i8 %34 to i32
  %call.i960 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i959) #5
  %arrayidx9.i958.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx9.i958.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx9.i958.1, align 1
  %conv.i959.1 = zext i8 %36 to i32
  %call.i960.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.1, ptr noundef nonnull @.str, i32 noundef %conv.i959.1) #5
  %arrayidx9.i958.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %arrayidx9.i958.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx9.i958.2, align 1
  %conv.i959.2 = zext i8 %38 to i32
  %call.i960.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.2, ptr noundef nonnull @.str, i32 noundef %conv.i959.2) #5
  %arrayidx9.i958.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %arrayidx9.i958.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx9.i958.3, align 1
  %conv.i959.3 = zext i8 %40 to i32
  %call.i960.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.3, ptr noundef nonnull @.str, i32 noundef %conv.i959.3) #5
  %arrayidx9.i958.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx9.i958.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx9.i958.4, align 1
  %conv.i959.4 = zext i8 %42 to i32
  %call.i960.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.4, ptr noundef nonnull @.str, i32 noundef %conv.i959.4) #5
  %arrayidx9.i958.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx9.i958.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx9.i958.5, align 1
  %conv.i959.5 = zext i8 %44 to i32
  %call.i960.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i, ptr noundef nonnull @.str, i32 noundef %conv.i959.5) #5
  %arrayidx8.i957.6 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 19
  %arrayidx9.i958.6 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx9.i958.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx9.i958.6, align 1
  %conv.i959.6 = zext i8 %46 to i32
  %call.i960.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i957.6, ptr noundef nonnull @.str, i32 noundef %conv.i959.6) #5
  %arrayidx8.i957.7 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 22
  %arrayidx9.i958.7 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %arrayidx9.i958.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx9.i958.7, align 1
  %conv.i959.7 = zext i8 %48 to i32
  %call.i960.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i957.7, ptr noundef nonnull @.str, i32 noundef %conv.i959.7) #5
  %arrayidx13.i965 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 25
  %49 = ptrtoint ptr %arrayidx13.i965 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx13.i965, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then81)) #5
          to label %if.end.i983.4 [label %if.then81], !srcloc !319

if.then81:                                        ; preds = %if.end.i964.7
  call void @__sanitizer_cov_trace_pc() #7
  %index83 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %50 = ptrtoint ptr %index83 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %index83, align 4
  %conv84 = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.8, i32 noundef %conv84, ptr noundef nonnull @.str.9, ptr noundef %buf) #5
  br label %if.end.i983.4

if.end.i983.4:                                    ; preds = %if.then81, %if.end.i964.7
  %aksv = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 10, ptr %buf, align 1
  %53 = ptrtoint ptr %aksv to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %aksv, align 1
  %conv.i978 = zext i8 %54 to i32
  %call.i979 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i978) #5
  %arrayidx9.i977.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %arrayidx9.i977.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx9.i977.1, align 1
  %conv.i978.1 = zext i8 %56 to i32
  %call.i979.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.1, ptr noundef nonnull @.str, i32 noundef %conv.i978.1) #5
  %arrayidx9.i977.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %arrayidx9.i977.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx9.i977.2, align 1
  %conv.i978.2 = zext i8 %58 to i32
  %call.i979.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.2, ptr noundef nonnull @.str, i32 noundef %conv.i978.2) #5
  %arrayidx9.i977.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 5
  %59 = ptrtoint ptr %arrayidx9.i977.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx9.i977.3, align 1
  %conv.i978.3 = zext i8 %60 to i32
  %call.i979.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.3, ptr noundef nonnull @.str, i32 noundef %conv.i978.3) #5
  %arrayidx9.i977.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 6
  %61 = ptrtoint ptr %arrayidx9.i977.4 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx9.i977.4, align 1
  %conv.i978.4 = zext i8 %62 to i32
  %call.i979.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.4, ptr noundef nonnull @.str, i32 noundef %conv.i978.4) #5
  %63 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx13.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then108)) #5
          to label %if.end.i1002 [label %if.then108], !srcloc !319

if.then108:                                       ; preds = %if.end.i983.4
  call void @__sanitizer_cov_trace_pc() #7
  %index110 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %64 = ptrtoint ptr %index110 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %index110, align 4
  %conv111 = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.8, i32 noundef %conv111, ptr noundef nonnull @.str.10, ptr noundef %buf) #5
  br label %if.end.i1002

if.end.i1002:                                     ; preds = %if.then108, %if.end.i983.4
  %ainfo = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 7
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 10, ptr %buf, align 1
  %67 = ptrtoint ptr %ainfo to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ainfo, align 1
  %conv.i997 = zext i8 %68 to i32
  %call.i998 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i997) #5
  %69 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx8.i.1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then134)) #5
          to label %if.end.i1021.1 [label %if.then134], !srcloc !319

if.then134:                                       ; preds = %if.end.i1002
  call void @__sanitizer_cov_trace_pc() #7
  %index136 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %70 = ptrtoint ptr %index136 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %index136, align 4
  %conv137 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.8, i32 noundef %conv137, ptr noundef nonnull @.str.11, ptr noundef %buf) #5
  br label %if.end.i1021.1

if.end.i1021.1:                                   ; preds = %if.then134, %if.end.i1002
  %r0p = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 10, ptr %buf, align 1
  %73 = ptrtoint ptr %r0p to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %r0p, align 1
  %conv.i1016 = zext i8 %74 to i32
  %call.i1017 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i1016) #5
  %arrayidx9.i1015.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 3
  %75 = ptrtoint ptr %arrayidx9.i1015.1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx9.i1015.1, align 1
  %conv.i1016.1 = zext i8 %76 to i32
  %call.i1017.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.1, ptr noundef nonnull @.str, i32 noundef %conv.i1016.1) #5
  %77 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx8.i.2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then160)) #5
          to label %if.end.i1040.1 [label %if.then160], !srcloc !319

if.then160:                                       ; preds = %if.end.i1021.1
  call void @__sanitizer_cov_trace_pc() #7
  %index162 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %78 = ptrtoint ptr %index162 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %index162, align 4
  %conv163 = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4, i32 noundef %conv163, ptr noundef nonnull @.str.12, ptr noundef %buf) #5
  br label %if.end.i1040.1

if.end.i1040.1:                                   ; preds = %if.then160, %if.end.i1021.1
  %binfo_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 10, ptr %buf, align 1
  %81 = ptrtoint ptr %binfo_dp to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %binfo_dp, align 1
  %conv.i1035 = zext i8 %82 to i32
  %call.i1036 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i, ptr noundef nonnull @.str, i32 noundef %conv.i1035) #5
  %arrayidx9.i1034.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 4
  %83 = ptrtoint ptr %arrayidx9.i1034.1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx9.i1034.1, align 1
  %conv.i1035.1 = zext i8 %84 to i32
  %call.i1036.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i.1, ptr noundef nonnull @.str, i32 noundef %conv.i1035.1) #5
  %85 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx8.i.2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then186)) #5
          to label %do.body195 [label %if.then186], !srcloc !319

if.then186:                                       ; preds = %if.end.i1040.1
  call void @__sanitizer_cov_trace_pc() #7
  %index188 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %86 = ptrtoint ptr %index188 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %index188, align 4
  %conv189 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.4, i32 noundef %conv189, ptr noundef nonnull @.str.13, ptr noundef %buf) #5
  br label %do.body195

do.body195:                                       ; preds = %if.then186, %if.end.i1040.1
  %ksvlist = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 8
  %ksvlist_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 110
  %88 = ptrtoint ptr %ksvlist_size to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ksvlist_size, align 2
  %conv201 = zext i16 %89 to i32
  %div25.i = lshr i32 %conv201, 4
  %rem.i = and i32 %conv201, 15
  %mul.i = mul nuw nsw i32 %div25.i, 49
  %mul1.i = mul nuw nsw i32 %rem.i, 3
  %add.i = add nuw nsw i32 %mul1.i, 2
  %add3.i = add nuw nsw i32 %add.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2025, i32 %add3.i)
  %cmp.not.i = icmp ugt i32 %add3.i, 2025
  br i1 %cmp.not.i, label %do.body195.mod_hdcp_dump_binary_message.exit1061_crit_edge, label %for.cond.preheader.i

do.body195.mod_hdcp_dump_binary_message.exit1061_crit_edge: ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #7
  br label %mod_hdcp_dump_binary_message.exit1061

for.cond.preheader.i:                             ; preds = %do.body195
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp426.not.i = icmp eq i16 %89, 0
  br i1 %cmp426.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i1047_crit_edge

for.cond.preheader.i.for.body.i1047_crit_edge:    ; preds = %for.cond.preheader.i
  br label %for.body.i1047

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i1047:                                   ; preds = %if.end.i1059.for.body.i1047_crit_edge, %for.cond.preheader.i.for.body.i1047_crit_edge
  %i.028.i1043 = phi i32 [ %inc11.i1057, %if.end.i1059.for.body.i1047_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i1047_crit_edge ]
  %buf_pos.027.i1044 = phi i32 [ %add10.i1056, %if.end.i1059.for.body.i1047_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i1047_crit_edge ]
  %rem5.i1045 = and i32 %i.028.i1043, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1045)
  %cmp6.i1046 = icmp eq i32 %rem5.i1045, 0
  br i1 %cmp6.i1046, label %if.then7.i1050, label %for.body.i1047.if.end.i1059_crit_edge

for.body.i1047.if.end.i1059_crit_edge:            ; preds = %for.body.i1047
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1059

if.then7.i1050:                                   ; preds = %for.body.i1047
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1048 = add i32 %buf_pos.027.i1044, 1
  %arrayidx.i1049 = getelementptr i8, ptr %buf, i32 %buf_pos.027.i1044
  %90 = ptrtoint ptr %arrayidx.i1049 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 10, ptr %arrayidx.i1049, align 1
  br label %if.end.i1059

if.end.i1059:                                     ; preds = %if.then7.i1050, %for.body.i1047.if.end.i1059_crit_edge
  %buf_pos.1.i1051 = phi i32 [ %inc.i1048, %if.then7.i1050 ], [ %buf_pos.027.i1044, %for.body.i1047.if.end.i1059_crit_edge ]
  %arrayidx8.i1052 = getelementptr i8, ptr %buf, i32 %buf_pos.1.i1051
  %arrayidx9.i1053 = getelementptr i8, ptr %ksvlist, i32 %i.028.i1043
  %91 = ptrtoint ptr %arrayidx9.i1053 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx9.i1053, align 1
  %conv.i1054 = zext i8 %92 to i32
  %call.i1055 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1052, ptr noundef nonnull @.str, i32 noundef %conv.i1054) #5
  %add10.i1056 = add i32 %buf_pos.1.i1051, 3
  %inc11.i1057 = add nuw nsw i32 %i.028.i1043, 1
  %exitcond.not.i1058 = icmp eq i32 %inc11.i1057, %conv201
  br i1 %exitcond.not.i1058, label %if.end.i1059.for.end.i_crit_edge, label %if.end.i1059.for.body.i1047_crit_edge

if.end.i1059.for.body.i1047_crit_edge:            ; preds = %if.end.i1059
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1047

if.end.i1059.for.end.i_crit_edge:                 ; preds = %if.end.i1059
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i1059.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %buf_pos.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add10.i1056, %if.end.i1059.for.end.i_crit_edge ]
  %arrayidx13.i1060 = getelementptr i8, ptr %buf, i32 %buf_pos.0.lcssa.i
  %93 = ptrtoint ptr %arrayidx13.i1060 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx13.i1060, align 1
  br label %mod_hdcp_dump_binary_message.exit1061

mod_hdcp_dump_binary_message.exit1061:            ; preds = %for.end.i, %do.body195.mod_hdcp_dump_binary_message.exit1061_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then216)) #5
          to label %do.body225 [label %if.then216], !srcloc !319

if.then216:                                       ; preds = %mod_hdcp_dump_binary_message.exit1061
  call void @__sanitizer_cov_trace_pc() #7
  %index218 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %94 = ptrtoint ptr %index218 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %index218, align 4
  %conv219 = zext i8 %95 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.4, i32 noundef %conv219, ptr noundef nonnull @.str.14, ptr noundef %buf) #5
  br label %do.body225

do.body225:                                       ; preds = %if.then216, %mod_hdcp_dump_binary_message.exit1061
  %vp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 112
  br label %for.body.i1067

for.body.i1067:                                   ; preds = %if.end.i1079.for.body.i1067_crit_edge, %do.body225
  %i.028.i1063 = phi i32 [ %inc11.i1077, %if.end.i1079.for.body.i1067_crit_edge ], [ 0, %do.body225 ]
  %buf_pos.027.i1064 = phi i32 [ %add10.i1076, %if.end.i1079.for.body.i1067_crit_edge ], [ 0, %do.body225 ]
  %rem5.i1065 = and i32 %i.028.i1063, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1065)
  %cmp6.i1066 = icmp eq i32 %rem5.i1065, 0
  br i1 %cmp6.i1066, label %if.then7.i1070, label %for.body.i1067.if.end.i1079_crit_edge

for.body.i1067.if.end.i1079_crit_edge:            ; preds = %for.body.i1067
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1079

if.then7.i1070:                                   ; preds = %for.body.i1067
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1068 = add i32 %buf_pos.027.i1064, 1
  %arrayidx.i1069 = getelementptr i8, ptr %buf, i32 %buf_pos.027.i1064
  %96 = ptrtoint ptr %arrayidx.i1069 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 10, ptr %arrayidx.i1069, align 1
  br label %if.end.i1079

if.end.i1079:                                     ; preds = %if.then7.i1070, %for.body.i1067.if.end.i1079_crit_edge
  %buf_pos.1.i1071 = phi i32 [ %inc.i1068, %if.then7.i1070 ], [ %buf_pos.027.i1064, %for.body.i1067.if.end.i1079_crit_edge ]
  %arrayidx8.i1072 = getelementptr i8, ptr %buf, i32 %buf_pos.1.i1071
  %arrayidx9.i1073 = getelementptr i8, ptr %vp, i32 %i.028.i1063
  %97 = ptrtoint ptr %arrayidx9.i1073 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx9.i1073, align 1
  %conv.i1074 = zext i8 %98 to i32
  %call.i1075 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1072, ptr noundef nonnull @.str, i32 noundef %conv.i1074) #5
  %add10.i1076 = add i32 %buf_pos.1.i1071, 3
  %inc11.i1077 = add nuw nsw i32 %i.028.i1063, 1
  %exitcond.not.i1078 = icmp eq i32 %inc11.i1077, 20
  br i1 %exitcond.not.i1078, label %mod_hdcp_dump_binary_message.exit1083, label %if.end.i1079.for.body.i1067_crit_edge

if.end.i1079.for.body.i1067_crit_edge:            ; preds = %if.end.i1079
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1067

mod_hdcp_dump_binary_message.exit1083:            ; preds = %if.end.i1079
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.i1081 = getelementptr i8, ptr %buf, i32 %add10.i1076
  %99 = ptrtoint ptr %arrayidx13.i1081 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx13.i1081, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then243)) #5
          to label %if.end719 [label %if.then243], !srcloc !319

if.then243:                                       ; preds = %mod_hdcp_dump_binary_message.exit1083
  call void @__sanitizer_cov_trace_pc() #7
  %index245 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %100 = ptrtoint ptr %index245 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %index245, align 4
  %conv246 = zext i8 %101 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.4, i32 noundef %conv246, ptr noundef nonnull @.str.15, ptr noundef %buf) #5
  br label %if.end719

if.else:                                          ; preds = %entry
  %102 = and i8 %1, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %102)
  %.not.i = icmp ne i8 %102, 16
  %103 = add i8 %1, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %103)
  %104 = icmp ult i8 %103, -17
  %tobool253.not = and i1 %.not.i, %104
  br i1 %tobool253.not, label %if.else.if.end719_crit_edge, label %if.end.i1103

if.else.if.end719_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end719

if.end.i1103:                                     ; preds = %if.else
  %msg257 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1
  %buf258 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5
  %105 = ptrtoint ptr %buf258 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 10, ptr %buf258, align 1
  %arrayidx8.i1096 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 1
  %106 = ptrtoint ptr %msg257 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %msg257, align 1
  %conv.i1098 = zext i8 %107 to i32
  %call.i1099 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1096, ptr noundef nonnull @.str, i32 noundef %conv.i1098) #5
  %arrayidx13.i1105 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 4
  %108 = ptrtoint ptr %arrayidx13.i1105 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx13.i1105, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then272)) #5
          to label %if.end.i1125.2 [label %if.then272], !srcloc !319

if.then272:                                       ; preds = %if.end.i1103
  call void @__sanitizer_cov_trace_pc() #7
  %index274 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %109 = ptrtoint ptr %index274 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %index274, align 4
  %conv275 = zext i8 %110 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.4, i32 noundef %conv275, ptr noundef nonnull @.str.16, ptr noundef %buf258) #5
  br label %if.end.i1125.2

if.end.i1125.2:                                   ; preds = %if.then272, %if.end.i1103
  %rxcaps_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1
  %111 = ptrtoint ptr %buf258 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 10, ptr %buf258, align 1
  %112 = ptrtoint ptr %rxcaps_dp to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rxcaps_dp, align 1
  %conv.i1120 = zext i8 %113 to i32
  %call.i1121 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1096, ptr noundef nonnull @.str, i32 noundef %conv.i1120) #5
  %arrayidx9.i1119.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %arrayidx9.i1119.1 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx9.i1119.1, align 1
  %conv.i1120.1 = zext i8 %115 to i32
  %call.i1121.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1105, ptr noundef nonnull @.str, i32 noundef %conv.i1120.1) #5
  %arrayidx8.i1118.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 7
  %arrayidx9.i1119.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %arrayidx9.i1119.2 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx9.i1119.2, align 1
  %conv.i1120.2 = zext i8 %117 to i32
  %call.i1121.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1118.2, ptr noundef nonnull @.str, i32 noundef %conv.i1120.2) #5
  %arrayidx13.i1127 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 10
  %118 = ptrtoint ptr %arrayidx13.i1127 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %arrayidx13.i1127, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then299)) #5
          to label %if.end.i1147.11 [label %if.then299], !srcloc !319

if.then299:                                       ; preds = %if.end.i1125.2
  call void @__sanitizer_cov_trace_pc() #7
  %index301 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %119 = ptrtoint ptr %index301 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %index301, align 4
  %conv302 = zext i8 %120 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.4, i32 noundef %conv302, ptr noundef nonnull @.str.17, ptr noundef %buf258) #5
  br label %if.end.i1147.11

if.end.i1147.11:                                  ; preds = %if.then299, %if.end.i1125.2
  %ake_init = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3
  %121 = ptrtoint ptr %buf258 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 10, ptr %buf258, align 1
  %122 = ptrtoint ptr %ake_init to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ake_init, align 1
  %conv.i1142 = zext i8 %123 to i32
  %call.i1143 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1096, ptr noundef nonnull @.str, i32 noundef %conv.i1142) #5
  %arrayidx9.i1141.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %arrayidx9.i1141.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx9.i1141.1, align 1
  %conv.i1142.1 = zext i8 %125 to i32
  %call.i1143.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1105, ptr noundef nonnull @.str, i32 noundef %conv.i1142.1) #5
  %arrayidx9.i1141.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 2
  %126 = ptrtoint ptr %arrayidx9.i1141.2 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx9.i1141.2, align 1
  %conv.i1142.2 = zext i8 %127 to i32
  %call.i1143.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1118.2, ptr noundef nonnull @.str, i32 noundef %conv.i1142.2) #5
  %arrayidx9.i1141.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 3
  %128 = ptrtoint ptr %arrayidx9.i1141.3 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx9.i1141.3, align 1
  %conv.i1142.3 = zext i8 %129 to i32
  %call.i1143.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1127, ptr noundef nonnull @.str, i32 noundef %conv.i1142.3) #5
  %arrayidx8.i1140.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 13
  %arrayidx9.i1141.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 4
  %130 = ptrtoint ptr %arrayidx9.i1141.4 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx9.i1141.4, align 1
  %conv.i1142.4 = zext i8 %131 to i32
  %call.i1143.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.4, ptr noundef nonnull @.str, i32 noundef %conv.i1142.4) #5
  %arrayidx8.i1140.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 16
  %arrayidx9.i1141.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 5
  %132 = ptrtoint ptr %arrayidx9.i1141.5 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx9.i1141.5, align 1
  %conv.i1142.5 = zext i8 %133 to i32
  %call.i1143.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.5, ptr noundef nonnull @.str, i32 noundef %conv.i1142.5) #5
  %arrayidx8.i1140.6 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 19
  %arrayidx9.i1141.6 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 6
  %134 = ptrtoint ptr %arrayidx9.i1141.6 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx9.i1141.6, align 1
  %conv.i1142.6 = zext i8 %135 to i32
  %call.i1143.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.6, ptr noundef nonnull @.str, i32 noundef %conv.i1142.6) #5
  %arrayidx8.i1140.7 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 22
  %arrayidx9.i1141.7 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 7
  %136 = ptrtoint ptr %arrayidx9.i1141.7 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx9.i1141.7, align 1
  %conv.i1142.7 = zext i8 %137 to i32
  %call.i1143.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.7, ptr noundef nonnull @.str, i32 noundef %conv.i1142.7) #5
  %arrayidx8.i1140.8 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 25
  %arrayidx9.i1141.8 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 8
  %138 = ptrtoint ptr %arrayidx9.i1141.8 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx9.i1141.8, align 1
  %conv.i1142.8 = zext i8 %139 to i32
  %call.i1143.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.8, ptr noundef nonnull @.str, i32 noundef %conv.i1142.8) #5
  %arrayidx8.i1140.9 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 28
  %arrayidx9.i1141.9 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 9
  %140 = ptrtoint ptr %arrayidx9.i1141.9 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx9.i1141.9, align 1
  %conv.i1142.9 = zext i8 %141 to i32
  %call.i1143.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.9, ptr noundef nonnull @.str, i32 noundef %conv.i1142.9) #5
  %arrayidx8.i1140.10 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 31
  %arrayidx9.i1141.10 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 10
  %142 = ptrtoint ptr %arrayidx9.i1141.10 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx9.i1141.10, align 1
  %conv.i1142.10 = zext i8 %143 to i32
  %call.i1143.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.10, ptr noundef nonnull @.str, i32 noundef %conv.i1142.10) #5
  %arrayidx8.i1140.11 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 34
  %arrayidx9.i1141.11 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 11
  %144 = ptrtoint ptr %arrayidx9.i1141.11 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx9.i1141.11, align 1
  %conv.i1142.11 = zext i8 %145 to i32
  %call.i1143.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.11, ptr noundef nonnull @.str, i32 noundef %conv.i1142.11) #5
  %arrayidx13.i1149 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 5, i32 37
  %146 = ptrtoint ptr %arrayidx13.i1149 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx13.i1149, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then326)) #5
          to label %do.body335 [label %if.then326], !srcloc !319

if.then326:                                       ; preds = %if.end.i1147.11
  call void @__sanitizer_cov_trace_pc() #7
  %index328 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %147 = ptrtoint ptr %index328 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %index328, align 4
  %conv329 = zext i8 %148 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.8, i32 noundef %conv329, ptr noundef nonnull @.str.18, ptr noundef %buf258) #5
  br label %do.body335

do.body335:                                       ; preds = %if.then326, %if.end.i1147.11
  %ake_cert = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4
  br label %for.body.i1157

for.body.i1157:                                   ; preds = %if.end.i1169.for.body.i1157_crit_edge, %do.body335
  %i.028.i1153 = phi i32 [ %inc11.i1167, %if.end.i1169.for.body.i1157_crit_edge ], [ 0, %do.body335 ]
  %buf_pos.027.i1154 = phi i32 [ %add10.i1166, %if.end.i1169.for.body.i1157_crit_edge ], [ 0, %do.body335 ]
  %rem5.i1155 = and i32 %i.028.i1153, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1155)
  %cmp6.i1156 = icmp eq i32 %rem5.i1155, 0
  br i1 %cmp6.i1156, label %if.then7.i1160, label %for.body.i1157.if.end.i1169_crit_edge

for.body.i1157.if.end.i1169_crit_edge:            ; preds = %for.body.i1157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1169

if.then7.i1160:                                   ; preds = %for.body.i1157
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1158 = add i32 %buf_pos.027.i1154, 1
  %arrayidx.i1159 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1154
  %149 = ptrtoint ptr %arrayidx.i1159 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 10, ptr %arrayidx.i1159, align 1
  br label %if.end.i1169

if.end.i1169:                                     ; preds = %if.then7.i1160, %for.body.i1157.if.end.i1169_crit_edge
  %buf_pos.1.i1161 = phi i32 [ %inc.i1158, %if.then7.i1160 ], [ %buf_pos.027.i1154, %for.body.i1157.if.end.i1169_crit_edge ]
  %arrayidx8.i1162 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1161
  %arrayidx9.i1163 = getelementptr i8, ptr %ake_cert, i32 %i.028.i1153
  %150 = ptrtoint ptr %arrayidx9.i1163 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx9.i1163, align 1
  %conv.i1164 = zext i8 %151 to i32
  %call.i1165 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1162, ptr noundef nonnull @.str, i32 noundef %conv.i1164) #5
  %add10.i1166 = add i32 %buf_pos.1.i1161, 3
  %inc11.i1167 = add nuw nsw i32 %i.028.i1153, 1
  %exitcond.not.i1168 = icmp eq i32 %inc11.i1167, 534
  br i1 %exitcond.not.i1168, label %mod_hdcp_dump_binary_message.exit1173, label %if.end.i1169.for.body.i1157_crit_edge

if.end.i1169.for.body.i1157_crit_edge:            ; preds = %if.end.i1169
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1157

mod_hdcp_dump_binary_message.exit1173:            ; preds = %if.end.i1169
  %arrayidx13.i1171 = getelementptr i8, ptr %buf258, i32 %add10.i1166
  %152 = ptrtoint ptr %arrayidx13.i1171 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx13.i1171, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then353)) #5
          to label %do.body362 [label %if.then353], !srcloc !319

if.then353:                                       ; preds = %mod_hdcp_dump_binary_message.exit1173
  call void @__sanitizer_cov_trace_pc() #7
  %index355 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %153 = ptrtoint ptr %index355 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %index355, align 4
  %conv356 = zext i8 %154 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.4, i32 noundef %conv356, ptr noundef nonnull @.str.19, ptr noundef %buf258) #5
  br label %do.body362

do.body362:                                       ; preds = %if.then353, %mod_hdcp_dump_binary_message.exit1173
  %ake_stored_km = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6
  br label %for.body.i1179

for.body.i1179:                                   ; preds = %if.end.i1191.for.body.i1179_crit_edge, %do.body362
  %i.028.i1175 = phi i32 [ %inc11.i1189, %if.end.i1191.for.body.i1179_crit_edge ], [ 0, %do.body362 ]
  %buf_pos.027.i1176 = phi i32 [ %add10.i1188, %if.end.i1191.for.body.i1179_crit_edge ], [ 0, %do.body362 ]
  %rem5.i1177 = and i32 %i.028.i1175, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1177)
  %cmp6.i1178 = icmp eq i32 %rem5.i1177, 0
  br i1 %cmp6.i1178, label %if.then7.i1182, label %for.body.i1179.if.end.i1191_crit_edge

for.body.i1179.if.end.i1191_crit_edge:            ; preds = %for.body.i1179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1191

if.then7.i1182:                                   ; preds = %for.body.i1179
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1180 = add i32 %buf_pos.027.i1176, 1
  %arrayidx.i1181 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1176
  %155 = ptrtoint ptr %arrayidx.i1181 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 10, ptr %arrayidx.i1181, align 1
  br label %if.end.i1191

if.end.i1191:                                     ; preds = %if.then7.i1182, %for.body.i1179.if.end.i1191_crit_edge
  %buf_pos.1.i1183 = phi i32 [ %inc.i1180, %if.then7.i1182 ], [ %buf_pos.027.i1176, %for.body.i1179.if.end.i1191_crit_edge ]
  %arrayidx8.i1184 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1183
  %arrayidx9.i1185 = getelementptr i8, ptr %ake_stored_km, i32 %i.028.i1175
  %156 = ptrtoint ptr %arrayidx9.i1185 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx9.i1185, align 1
  %conv.i1186 = zext i8 %157 to i32
  %call.i1187 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1184, ptr noundef nonnull @.str, i32 noundef %conv.i1186) #5
  %add10.i1188 = add i32 %buf_pos.1.i1183, 3
  %inc11.i1189 = add nuw nsw i32 %i.028.i1175, 1
  %exitcond.not.i1190 = icmp eq i32 %inc11.i1189, 33
  br i1 %exitcond.not.i1190, label %mod_hdcp_dump_binary_message.exit1195, label %if.end.i1191.for.body.i1179_crit_edge

if.end.i1191.for.body.i1179_crit_edge:            ; preds = %if.end.i1191
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1179

mod_hdcp_dump_binary_message.exit1195:            ; preds = %if.end.i1191
  %arrayidx13.i1193 = getelementptr i8, ptr %buf258, i32 %add10.i1188
  %158 = ptrtoint ptr %arrayidx13.i1193 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %arrayidx13.i1193, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then380)) #5
          to label %do.body389 [label %if.then380], !srcloc !319

if.then380:                                       ; preds = %mod_hdcp_dump_binary_message.exit1195
  call void @__sanitizer_cov_trace_pc() #7
  %index382 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %159 = ptrtoint ptr %index382 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %index382, align 4
  %conv383 = zext i8 %160 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.8, i32 noundef %conv383, ptr noundef nonnull @.str.20, ptr noundef %buf258) #5
  br label %do.body389

do.body389:                                       ; preds = %if.then380, %mod_hdcp_dump_binary_message.exit1195
  %ake_no_stored_km = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5
  br label %for.body.i1201

for.body.i1201:                                   ; preds = %if.end.i1213.for.body.i1201_crit_edge, %do.body389
  %i.028.i1197 = phi i32 [ %inc11.i1211, %if.end.i1213.for.body.i1201_crit_edge ], [ 0, %do.body389 ]
  %buf_pos.027.i1198 = phi i32 [ %add10.i1210, %if.end.i1213.for.body.i1201_crit_edge ], [ 0, %do.body389 ]
  %rem5.i1199 = and i32 %i.028.i1197, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1199)
  %cmp6.i1200 = icmp eq i32 %rem5.i1199, 0
  br i1 %cmp6.i1200, label %if.then7.i1204, label %for.body.i1201.if.end.i1213_crit_edge

for.body.i1201.if.end.i1213_crit_edge:            ; preds = %for.body.i1201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1213

if.then7.i1204:                                   ; preds = %for.body.i1201
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1202 = add i32 %buf_pos.027.i1198, 1
  %arrayidx.i1203 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1198
  %161 = ptrtoint ptr %arrayidx.i1203 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 10, ptr %arrayidx.i1203, align 1
  br label %if.end.i1213

if.end.i1213:                                     ; preds = %if.then7.i1204, %for.body.i1201.if.end.i1213_crit_edge
  %buf_pos.1.i1205 = phi i32 [ %inc.i1202, %if.then7.i1204 ], [ %buf_pos.027.i1198, %for.body.i1201.if.end.i1213_crit_edge ]
  %arrayidx8.i1206 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1205
  %arrayidx9.i1207 = getelementptr i8, ptr %ake_no_stored_km, i32 %i.028.i1197
  %162 = ptrtoint ptr %arrayidx9.i1207 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx9.i1207, align 1
  %conv.i1208 = zext i8 %163 to i32
  %call.i1209 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1206, ptr noundef nonnull @.str, i32 noundef %conv.i1208) #5
  %add10.i1210 = add i32 %buf_pos.1.i1205, 3
  %inc11.i1211 = add nuw nsw i32 %i.028.i1197, 1
  %exitcond.not.i1212 = icmp eq i32 %inc11.i1211, 129
  br i1 %exitcond.not.i1212, label %mod_hdcp_dump_binary_message.exit1217, label %if.end.i1213.for.body.i1201_crit_edge

if.end.i1213.for.body.i1201_crit_edge:            ; preds = %if.end.i1213
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1201

mod_hdcp_dump_binary_message.exit1217:            ; preds = %if.end.i1213
  %arrayidx13.i1215 = getelementptr i8, ptr %buf258, i32 %add10.i1210
  %164 = ptrtoint ptr %arrayidx13.i1215 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %arrayidx13.i1215, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then407)) #5
          to label %do.body416 [label %if.then407], !srcloc !319

if.then407:                                       ; preds = %mod_hdcp_dump_binary_message.exit1217
  call void @__sanitizer_cov_trace_pc() #7
  %index409 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %165 = ptrtoint ptr %index409 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %index409, align 4
  %conv410 = zext i8 %166 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.8, i32 noundef %conv410, ptr noundef nonnull @.str.21, ptr noundef %buf258) #5
  br label %do.body416

do.body416:                                       ; preds = %if.then407, %mod_hdcp_dump_binary_message.exit1217
  %ake_h_prime = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 7
  br label %for.body.i1223

for.body.i1223:                                   ; preds = %if.end.i1235.for.body.i1223_crit_edge, %do.body416
  %i.028.i1219 = phi i32 [ %inc11.i1233, %if.end.i1235.for.body.i1223_crit_edge ], [ 0, %do.body416 ]
  %buf_pos.027.i1220 = phi i32 [ %add10.i1232, %if.end.i1235.for.body.i1223_crit_edge ], [ 0, %do.body416 ]
  %rem5.i1221 = and i32 %i.028.i1219, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1221)
  %cmp6.i1222 = icmp eq i32 %rem5.i1221, 0
  br i1 %cmp6.i1222, label %if.then7.i1226, label %for.body.i1223.if.end.i1235_crit_edge

for.body.i1223.if.end.i1235_crit_edge:            ; preds = %for.body.i1223
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1235

if.then7.i1226:                                   ; preds = %for.body.i1223
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1224 = add i32 %buf_pos.027.i1220, 1
  %arrayidx.i1225 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1220
  %167 = ptrtoint ptr %arrayidx.i1225 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 10, ptr %arrayidx.i1225, align 1
  br label %if.end.i1235

if.end.i1235:                                     ; preds = %if.then7.i1226, %for.body.i1223.if.end.i1235_crit_edge
  %buf_pos.1.i1227 = phi i32 [ %inc.i1224, %if.then7.i1226 ], [ %buf_pos.027.i1220, %for.body.i1223.if.end.i1235_crit_edge ]
  %arrayidx8.i1228 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1227
  %arrayidx9.i1229 = getelementptr i8, ptr %ake_h_prime, i32 %i.028.i1219
  %168 = ptrtoint ptr %arrayidx9.i1229 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx9.i1229, align 1
  %conv.i1230 = zext i8 %169 to i32
  %call.i1231 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1228, ptr noundef nonnull @.str, i32 noundef %conv.i1230) #5
  %add10.i1232 = add i32 %buf_pos.1.i1227, 3
  %inc11.i1233 = add nuw nsw i32 %i.028.i1219, 1
  %exitcond.not.i1234 = icmp eq i32 %inc11.i1233, 33
  br i1 %exitcond.not.i1234, label %mod_hdcp_dump_binary_message.exit1239, label %if.end.i1235.for.body.i1223_crit_edge

if.end.i1235.for.body.i1223_crit_edge:            ; preds = %if.end.i1235
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1223

mod_hdcp_dump_binary_message.exit1239:            ; preds = %if.end.i1235
  %arrayidx13.i1237 = getelementptr i8, ptr %buf258, i32 %add10.i1232
  %170 = ptrtoint ptr %arrayidx13.i1237 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %arrayidx13.i1237, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then434)) #5
          to label %do.body443 [label %if.then434], !srcloc !319

if.then434:                                       ; preds = %mod_hdcp_dump_binary_message.exit1239
  call void @__sanitizer_cov_trace_pc() #7
  %index436 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %171 = ptrtoint ptr %index436 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %index436, align 4
  %conv437 = zext i8 %172 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.4, i32 noundef %conv437, ptr noundef nonnull @.str.22, ptr noundef %buf258) #5
  br label %do.body443

do.body443:                                       ; preds = %if.then434, %mod_hdcp_dump_binary_message.exit1239
  %ake_pairing_info = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 8
  br label %for.body.i1245

for.body.i1245:                                   ; preds = %if.end.i1257.for.body.i1245_crit_edge, %do.body443
  %i.028.i1241 = phi i32 [ %inc11.i1255, %if.end.i1257.for.body.i1245_crit_edge ], [ 0, %do.body443 ]
  %buf_pos.027.i1242 = phi i32 [ %add10.i1254, %if.end.i1257.for.body.i1245_crit_edge ], [ 0, %do.body443 ]
  %rem5.i1243 = and i32 %i.028.i1241, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1243)
  %cmp6.i1244 = icmp eq i32 %rem5.i1243, 0
  br i1 %cmp6.i1244, label %if.then7.i1248, label %for.body.i1245.if.end.i1257_crit_edge

for.body.i1245.if.end.i1257_crit_edge:            ; preds = %for.body.i1245
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1257

if.then7.i1248:                                   ; preds = %for.body.i1245
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1246 = add i32 %buf_pos.027.i1242, 1
  %arrayidx.i1247 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1242
  %173 = ptrtoint ptr %arrayidx.i1247 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 10, ptr %arrayidx.i1247, align 1
  br label %if.end.i1257

if.end.i1257:                                     ; preds = %if.then7.i1248, %for.body.i1245.if.end.i1257_crit_edge
  %buf_pos.1.i1249 = phi i32 [ %inc.i1246, %if.then7.i1248 ], [ %buf_pos.027.i1242, %for.body.i1245.if.end.i1257_crit_edge ]
  %arrayidx8.i1250 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1249
  %arrayidx9.i1251 = getelementptr i8, ptr %ake_pairing_info, i32 %i.028.i1241
  %174 = ptrtoint ptr %arrayidx9.i1251 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx9.i1251, align 1
  %conv.i1252 = zext i8 %175 to i32
  %call.i1253 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1250, ptr noundef nonnull @.str, i32 noundef %conv.i1252) #5
  %add10.i1254 = add i32 %buf_pos.1.i1249, 3
  %inc11.i1255 = add nuw nsw i32 %i.028.i1241, 1
  %exitcond.not.i1256 = icmp eq i32 %inc11.i1255, 17
  br i1 %exitcond.not.i1256, label %mod_hdcp_dump_binary_message.exit1261, label %if.end.i1257.for.body.i1245_crit_edge

if.end.i1257.for.body.i1245_crit_edge:            ; preds = %if.end.i1257
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1245

mod_hdcp_dump_binary_message.exit1261:            ; preds = %if.end.i1257
  %arrayidx13.i1259 = getelementptr i8, ptr %buf258, i32 %add10.i1254
  %176 = ptrtoint ptr %arrayidx13.i1259 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %arrayidx13.i1259, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then461)) #5
          to label %if.end.i1279.8 [label %if.then461], !srcloc !319

if.then461:                                       ; preds = %mod_hdcp_dump_binary_message.exit1261
  call void @__sanitizer_cov_trace_pc() #7
  %index463 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %177 = ptrtoint ptr %index463 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %index463, align 4
  %conv464 = zext i8 %178 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.4, i32 noundef %conv464, ptr noundef nonnull @.str.23, ptr noundef %buf258) #5
  br label %if.end.i1279.8

if.end.i1279.8:                                   ; preds = %if.then461, %mod_hdcp_dump_binary_message.exit1261
  %lc_init = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9
  %179 = ptrtoint ptr %buf258 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 10, ptr %buf258, align 1
  %180 = ptrtoint ptr %lc_init to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %lc_init, align 1
  %conv.i1274 = zext i8 %181 to i32
  %call.i1275 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1096, ptr noundef nonnull @.str, i32 noundef %conv.i1274) #5
  %arrayidx9.i1273.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 1
  %182 = ptrtoint ptr %arrayidx9.i1273.1 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx9.i1273.1, align 1
  %conv.i1274.1 = zext i8 %183 to i32
  %call.i1275.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1105, ptr noundef nonnull @.str, i32 noundef %conv.i1274.1) #5
  %arrayidx9.i1273.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 2
  %184 = ptrtoint ptr %arrayidx9.i1273.2 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx9.i1273.2, align 1
  %conv.i1274.2 = zext i8 %185 to i32
  %call.i1275.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1118.2, ptr noundef nonnull @.str, i32 noundef %conv.i1274.2) #5
  %arrayidx9.i1273.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 3
  %186 = ptrtoint ptr %arrayidx9.i1273.3 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx9.i1273.3, align 1
  %conv.i1274.3 = zext i8 %187 to i32
  %call.i1275.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1127, ptr noundef nonnull @.str, i32 noundef %conv.i1274.3) #5
  %arrayidx9.i1273.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 4
  %188 = ptrtoint ptr %arrayidx9.i1273.4 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx9.i1273.4, align 1
  %conv.i1274.4 = zext i8 %189 to i32
  %call.i1275.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.4, ptr noundef nonnull @.str, i32 noundef %conv.i1274.4) #5
  %arrayidx9.i1273.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 5
  %190 = ptrtoint ptr %arrayidx9.i1273.5 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx9.i1273.5, align 1
  %conv.i1274.5 = zext i8 %191 to i32
  %call.i1275.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.5, ptr noundef nonnull @.str, i32 noundef %conv.i1274.5) #5
  %arrayidx9.i1273.6 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 6
  %192 = ptrtoint ptr %arrayidx9.i1273.6 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx9.i1273.6, align 1
  %conv.i1274.6 = zext i8 %193 to i32
  %call.i1275.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.6, ptr noundef nonnull @.str, i32 noundef %conv.i1274.6) #5
  %arrayidx9.i1273.7 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 7
  %194 = ptrtoint ptr %arrayidx9.i1273.7 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx9.i1273.7, align 1
  %conv.i1274.7 = zext i8 %195 to i32
  %call.i1275.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.7, ptr noundef nonnull @.str, i32 noundef %conv.i1274.7) #5
  %arrayidx9.i1273.8 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9, i32 8
  %196 = ptrtoint ptr %arrayidx9.i1273.8 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx9.i1273.8, align 1
  %conv.i1274.8 = zext i8 %197 to i32
  %call.i1275.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1140.8, ptr noundef nonnull @.str, i32 noundef %conv.i1274.8) #5
  %198 = ptrtoint ptr %arrayidx8.i1140.9 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %arrayidx8.i1140.9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then488)) #5
          to label %do.body497 [label %if.then488], !srcloc !319

if.then488:                                       ; preds = %if.end.i1279.8
  call void @__sanitizer_cov_trace_pc() #7
  %index490 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %199 = ptrtoint ptr %index490 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %index490, align 4
  %conv491 = zext i8 %200 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.8, i32 noundef %conv491, ptr noundef nonnull @.str.24, ptr noundef %buf258) #5
  br label %do.body497

do.body497:                                       ; preds = %if.then488, %if.end.i1279.8
  %lc_l_prime = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 10
  br label %for.body.i1289

for.body.i1289:                                   ; preds = %if.end.i1301.for.body.i1289_crit_edge, %do.body497
  %i.028.i1285 = phi i32 [ %inc11.i1299, %if.end.i1301.for.body.i1289_crit_edge ], [ 0, %do.body497 ]
  %buf_pos.027.i1286 = phi i32 [ %add10.i1298, %if.end.i1301.for.body.i1289_crit_edge ], [ 0, %do.body497 ]
  %rem5.i1287 = and i32 %i.028.i1285, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1287)
  %cmp6.i1288 = icmp eq i32 %rem5.i1287, 0
  br i1 %cmp6.i1288, label %if.then7.i1292, label %for.body.i1289.if.end.i1301_crit_edge

for.body.i1289.if.end.i1301_crit_edge:            ; preds = %for.body.i1289
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1301

if.then7.i1292:                                   ; preds = %for.body.i1289
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1290 = add i32 %buf_pos.027.i1286, 1
  %arrayidx.i1291 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1286
  %201 = ptrtoint ptr %arrayidx.i1291 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 10, ptr %arrayidx.i1291, align 1
  br label %if.end.i1301

if.end.i1301:                                     ; preds = %if.then7.i1292, %for.body.i1289.if.end.i1301_crit_edge
  %buf_pos.1.i1293 = phi i32 [ %inc.i1290, %if.then7.i1292 ], [ %buf_pos.027.i1286, %for.body.i1289.if.end.i1301_crit_edge ]
  %arrayidx8.i1294 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1293
  %arrayidx9.i1295 = getelementptr i8, ptr %lc_l_prime, i32 %i.028.i1285
  %202 = ptrtoint ptr %arrayidx9.i1295 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx9.i1295, align 1
  %conv.i1296 = zext i8 %203 to i32
  %call.i1297 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1294, ptr noundef nonnull @.str, i32 noundef %conv.i1296) #5
  %add10.i1298 = add i32 %buf_pos.1.i1293, 3
  %inc11.i1299 = add nuw nsw i32 %i.028.i1285, 1
  %exitcond.not.i1300 = icmp eq i32 %inc11.i1299, 33
  br i1 %exitcond.not.i1300, label %mod_hdcp_dump_binary_message.exit1305, label %if.end.i1301.for.body.i1289_crit_edge

if.end.i1301.for.body.i1289_crit_edge:            ; preds = %if.end.i1301
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1289

mod_hdcp_dump_binary_message.exit1305:            ; preds = %if.end.i1301
  %arrayidx13.i1303 = getelementptr i8, ptr %buf258, i32 %add10.i1298
  %204 = ptrtoint ptr %arrayidx13.i1303 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %arrayidx13.i1303, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then515)) #5
          to label %do.body524 [label %if.then515], !srcloc !319

if.then515:                                       ; preds = %mod_hdcp_dump_binary_message.exit1305
  call void @__sanitizer_cov_trace_pc() #7
  %index517 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %205 = ptrtoint ptr %index517 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %index517, align 4
  %conv518 = zext i8 %206 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.4, i32 noundef %conv518, ptr noundef nonnull @.str.25, ptr noundef %buf258) #5
  br label %do.body524

do.body524:                                       ; preds = %if.then515, %mod_hdcp_dump_binary_message.exit1305
  %ske_eks = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 11
  br label %for.body.i1311

for.body.i1311:                                   ; preds = %if.end.i1323.for.body.i1311_crit_edge, %do.body524
  %i.028.i1307 = phi i32 [ %inc11.i1321, %if.end.i1323.for.body.i1311_crit_edge ], [ 0, %do.body524 ]
  %buf_pos.027.i1308 = phi i32 [ %add10.i1320, %if.end.i1323.for.body.i1311_crit_edge ], [ 0, %do.body524 ]
  %rem5.i1309 = and i32 %i.028.i1307, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1309)
  %cmp6.i1310 = icmp eq i32 %rem5.i1309, 0
  br i1 %cmp6.i1310, label %if.then7.i1314, label %for.body.i1311.if.end.i1323_crit_edge

for.body.i1311.if.end.i1323_crit_edge:            ; preds = %for.body.i1311
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1323

if.then7.i1314:                                   ; preds = %for.body.i1311
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1312 = add i32 %buf_pos.027.i1308, 1
  %arrayidx.i1313 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1308
  %207 = ptrtoint ptr %arrayidx.i1313 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 10, ptr %arrayidx.i1313, align 1
  br label %if.end.i1323

if.end.i1323:                                     ; preds = %if.then7.i1314, %for.body.i1311.if.end.i1323_crit_edge
  %buf_pos.1.i1315 = phi i32 [ %inc.i1312, %if.then7.i1314 ], [ %buf_pos.027.i1308, %for.body.i1311.if.end.i1323_crit_edge ]
  %arrayidx8.i1316 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1315
  %arrayidx9.i1317 = getelementptr i8, ptr %ske_eks, i32 %i.028.i1307
  %208 = ptrtoint ptr %arrayidx9.i1317 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx9.i1317, align 1
  %conv.i1318 = zext i8 %209 to i32
  %call.i1319 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1316, ptr noundef nonnull @.str, i32 noundef %conv.i1318) #5
  %add10.i1320 = add i32 %buf_pos.1.i1315, 3
  %inc11.i1321 = add nuw nsw i32 %i.028.i1307, 1
  %exitcond.not.i1322 = icmp eq i32 %inc11.i1321, 25
  br i1 %exitcond.not.i1322, label %mod_hdcp_dump_binary_message.exit1327, label %if.end.i1323.for.body.i1311_crit_edge

if.end.i1323.for.body.i1311_crit_edge:            ; preds = %if.end.i1323
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1311

mod_hdcp_dump_binary_message.exit1327:            ; preds = %if.end.i1323
  %arrayidx13.i1325 = getelementptr i8, ptr %buf258, i32 %add10.i1320
  %210 = ptrtoint ptr %arrayidx13.i1325 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %arrayidx13.i1325, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then542)) #5
          to label %if.end.i1345.1 [label %if.then542], !srcloc !319

if.then542:                                       ; preds = %mod_hdcp_dump_binary_message.exit1327
  call void @__sanitizer_cov_trace_pc() #7
  %index544 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %211 = ptrtoint ptr %index544 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %index544, align 4
  %conv545 = zext i8 %212 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.8, i32 noundef %conv545, ptr noundef nonnull @.str.26, ptr noundef %buf258) #5
  br label %if.end.i1345.1

if.end.i1345.1:                                   ; preds = %if.then542, %mod_hdcp_dump_binary_message.exit1327
  %rxstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2
  %213 = ptrtoint ptr %buf258 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 10, ptr %buf258, align 1
  %214 = ptrtoint ptr %rxstatus to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %rxstatus, align 1
  %conv.i1340 = zext i8 %215 to i32
  %call.i1341 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1096, ptr noundef nonnull @.str, i32 noundef %conv.i1340) #5
  %arrayidx9.i1339.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 2, i32 1
  %216 = ptrtoint ptr %arrayidx9.i1339.1 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx9.i1339.1, align 1
  %conv.i1340.1 = zext i8 %217 to i32
  %call.i1341.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1105, ptr noundef nonnull @.str, i32 noundef %conv.i1340.1) #5
  %218 = ptrtoint ptr %arrayidx8.i1118.2 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %arrayidx8.i1118.2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then568)) #5
          to label %do.body577 [label %if.then568], !srcloc !319

if.then568:                                       ; preds = %if.end.i1345.1
  call void @__sanitizer_cov_trace_pc() #7
  %index570 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %219 = ptrtoint ptr %index570 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %index570, align 4
  %conv571 = zext i8 %220 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.4, i32 noundef %conv571, ptr noundef nonnull @.str.27, ptr noundef %buf258) #5
  br label %do.body577

do.body577:                                       ; preds = %if.then568, %if.end.i1345.1
  %rx_id_list = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12
  %rx_id_list_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 13
  %221 = ptrtoint ptr %rx_id_list_size to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %rx_id_list_size, align 4
  %conv583 = zext i16 %222 to i32
  %div25.i1350 = lshr i32 %conv583, 4
  %rem.i1351 = and i32 %conv583, 15
  %mul.i1352 = mul nuw nsw i32 %div25.i1350, 49
  %mul1.i1353 = mul nuw nsw i32 %rem.i1351, 3
  %add.i1354 = add nuw nsw i32 %mul1.i1353, 2
  %add3.i1355 = add nuw nsw i32 %add.i1354, %mul.i1352
  call void @__sanitizer_cov_trace_const_cmp4(i32 2025, i32 %add3.i1355)
  %cmp.not.i1356 = icmp ugt i32 %add3.i1355, 2025
  br i1 %cmp.not.i1356, label %do.body577.mod_hdcp_dump_binary_message.exit1379_crit_edge, label %for.cond.preheader.i1358

do.body577.mod_hdcp_dump_binary_message.exit1379_crit_edge: ; preds = %do.body577
  call void @__sanitizer_cov_trace_pc() #7
  br label %mod_hdcp_dump_binary_message.exit1379

for.cond.preheader.i1358:                         ; preds = %do.body577
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %222)
  %cmp426.not.i1357 = icmp eq i16 %222, 0
  br i1 %cmp426.not.i1357, label %for.cond.preheader.i1358.for.end.i1378_crit_edge, label %for.cond.preheader.i1358.for.body.i1363_crit_edge

for.cond.preheader.i1358.for.body.i1363_crit_edge: ; preds = %for.cond.preheader.i1358
  br label %for.body.i1363

for.cond.preheader.i1358.for.end.i1378_crit_edge: ; preds = %for.cond.preheader.i1358
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i1378

for.body.i1363:                                   ; preds = %if.end.i1375.for.body.i1363_crit_edge, %for.cond.preheader.i1358.for.body.i1363_crit_edge
  %i.028.i1359 = phi i32 [ %inc11.i1373, %if.end.i1375.for.body.i1363_crit_edge ], [ 0, %for.cond.preheader.i1358.for.body.i1363_crit_edge ]
  %buf_pos.027.i1360 = phi i32 [ %add10.i1372, %if.end.i1375.for.body.i1363_crit_edge ], [ 0, %for.cond.preheader.i1358.for.body.i1363_crit_edge ]
  %rem5.i1361 = and i32 %i.028.i1359, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1361)
  %cmp6.i1362 = icmp eq i32 %rem5.i1361, 0
  br i1 %cmp6.i1362, label %if.then7.i1366, label %for.body.i1363.if.end.i1375_crit_edge

for.body.i1363.if.end.i1375_crit_edge:            ; preds = %for.body.i1363
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1375

if.then7.i1366:                                   ; preds = %for.body.i1363
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1364 = add i32 %buf_pos.027.i1360, 1
  %arrayidx.i1365 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1360
  %223 = ptrtoint ptr %arrayidx.i1365 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 10, ptr %arrayidx.i1365, align 1
  br label %if.end.i1375

if.end.i1375:                                     ; preds = %if.then7.i1366, %for.body.i1363.if.end.i1375_crit_edge
  %buf_pos.1.i1367 = phi i32 [ %inc.i1364, %if.then7.i1366 ], [ %buf_pos.027.i1360, %for.body.i1363.if.end.i1375_crit_edge ]
  %arrayidx8.i1368 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1367
  %arrayidx9.i1369 = getelementptr i8, ptr %rx_id_list, i32 %i.028.i1359
  %224 = ptrtoint ptr %arrayidx9.i1369 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx9.i1369, align 1
  %conv.i1370 = zext i8 %225 to i32
  %call.i1371 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1368, ptr noundef nonnull @.str, i32 noundef %conv.i1370) #5
  %add10.i1372 = add i32 %buf_pos.1.i1367, 3
  %inc11.i1373 = add nuw nsw i32 %i.028.i1359, 1
  %exitcond.not.i1374 = icmp eq i32 %inc11.i1373, %conv583
  br i1 %exitcond.not.i1374, label %if.end.i1375.for.end.i1378_crit_edge, label %if.end.i1375.for.body.i1363_crit_edge

if.end.i1375.for.body.i1363_crit_edge:            ; preds = %if.end.i1375
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1363

if.end.i1375.for.end.i1378_crit_edge:             ; preds = %if.end.i1375
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i1378

for.end.i1378:                                    ; preds = %if.end.i1375.for.end.i1378_crit_edge, %for.cond.preheader.i1358.for.end.i1378_crit_edge
  %buf_pos.0.lcssa.i1376 = phi i32 [ 0, %for.cond.preheader.i1358.for.end.i1378_crit_edge ], [ %add10.i1372, %if.end.i1375.for.end.i1378_crit_edge ]
  %arrayidx13.i1377 = getelementptr i8, ptr %buf258, i32 %buf_pos.0.lcssa.i1376
  %226 = ptrtoint ptr %arrayidx13.i1377 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %arrayidx13.i1377, align 1
  br label %mod_hdcp_dump_binary_message.exit1379

mod_hdcp_dump_binary_message.exit1379:            ; preds = %for.end.i1378, %do.body577.mod_hdcp_dump_binary_message.exit1379_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then598)) #5
          to label %do.body607 [label %if.then598], !srcloc !319

if.then598:                                       ; preds = %mod_hdcp_dump_binary_message.exit1379
  call void @__sanitizer_cov_trace_pc() #7
  %index600 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %227 = ptrtoint ptr %index600 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %index600, align 4
  %conv601 = zext i8 %228 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.4, i32 noundef %conv601, ptr noundef nonnull @.str.28, ptr noundef %buf258) #5
  br label %do.body607

do.body607:                                       ; preds = %if.then598, %mod_hdcp_dump_binary_message.exit1379
  %repeater_auth_ack = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 14
  br label %for.body.i1385

for.body.i1385:                                   ; preds = %if.end.i1397.for.body.i1385_crit_edge, %do.body607
  %i.028.i1381 = phi i32 [ %inc11.i1395, %if.end.i1397.for.body.i1385_crit_edge ], [ 0, %do.body607 ]
  %buf_pos.027.i1382 = phi i32 [ %add10.i1394, %if.end.i1397.for.body.i1385_crit_edge ], [ 0, %do.body607 ]
  %rem5.i1383 = and i32 %i.028.i1381, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1383)
  %cmp6.i1384 = icmp eq i32 %rem5.i1383, 0
  br i1 %cmp6.i1384, label %if.then7.i1388, label %for.body.i1385.if.end.i1397_crit_edge

for.body.i1385.if.end.i1397_crit_edge:            ; preds = %for.body.i1385
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1397

if.then7.i1388:                                   ; preds = %for.body.i1385
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1386 = add i32 %buf_pos.027.i1382, 1
  %arrayidx.i1387 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1382
  %229 = ptrtoint ptr %arrayidx.i1387 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 10, ptr %arrayidx.i1387, align 1
  br label %if.end.i1397

if.end.i1397:                                     ; preds = %if.then7.i1388, %for.body.i1385.if.end.i1397_crit_edge
  %buf_pos.1.i1389 = phi i32 [ %inc.i1386, %if.then7.i1388 ], [ %buf_pos.027.i1382, %for.body.i1385.if.end.i1397_crit_edge ]
  %arrayidx8.i1390 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1389
  %arrayidx9.i1391 = getelementptr i8, ptr %repeater_auth_ack, i32 %i.028.i1381
  %230 = ptrtoint ptr %arrayidx9.i1391 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx9.i1391, align 1
  %conv.i1392 = zext i8 %231 to i32
  %call.i1393 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1390, ptr noundef nonnull @.str, i32 noundef %conv.i1392) #5
  %add10.i1394 = add i32 %buf_pos.1.i1389, 3
  %inc11.i1395 = add nuw nsw i32 %i.028.i1381, 1
  %exitcond.not.i1396 = icmp eq i32 %inc11.i1395, 17
  br i1 %exitcond.not.i1396, label %mod_hdcp_dump_binary_message.exit1401, label %if.end.i1397.for.body.i1385_crit_edge

if.end.i1397.for.body.i1385_crit_edge:            ; preds = %if.end.i1397
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1385

mod_hdcp_dump_binary_message.exit1401:            ; preds = %if.end.i1397
  %arrayidx13.i1399 = getelementptr i8, ptr %buf258, i32 %add10.i1394
  %232 = ptrtoint ptr %arrayidx13.i1399 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %arrayidx13.i1399, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then625)) #5
          to label %do.body634 [label %if.then625], !srcloc !319

if.then625:                                       ; preds = %mod_hdcp_dump_binary_message.exit1401
  call void @__sanitizer_cov_trace_pc() #7
  %index627 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %233 = ptrtoint ptr %index627 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %index627, align 4
  %conv628 = zext i8 %234 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.8, i32 noundef %conv628, ptr noundef nonnull @.str.29, ptr noundef %buf258) #5
  br label %do.body634

do.body634:                                       ; preds = %if.then625, %mod_hdcp_dump_binary_message.exit1401
  %repeater_auth_stream_manage = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 15
  %stream_manage_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 16
  %235 = ptrtoint ptr %stream_manage_size to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %stream_manage_size, align 4
  %conv640 = zext i16 %236 to i32
  %div25.i1402 = lshr i32 %conv640, 4
  %rem.i1403 = and i32 %conv640, 15
  %mul.i1404 = mul nuw nsw i32 %div25.i1402, 49
  %mul1.i1405 = mul nuw nsw i32 %rem.i1403, 3
  %add.i1406 = add nuw nsw i32 %mul1.i1405, 2
  %add3.i1407 = add nuw nsw i32 %add.i1406, %mul.i1404
  call void @__sanitizer_cov_trace_const_cmp4(i32 2025, i32 %add3.i1407)
  %cmp.not.i1408 = icmp ugt i32 %add3.i1407, 2025
  br i1 %cmp.not.i1408, label %do.body634.mod_hdcp_dump_binary_message.exit1431_crit_edge, label %for.cond.preheader.i1410

do.body634.mod_hdcp_dump_binary_message.exit1431_crit_edge: ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #7
  br label %mod_hdcp_dump_binary_message.exit1431

for.cond.preheader.i1410:                         ; preds = %do.body634
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %cmp426.not.i1409 = icmp eq i16 %236, 0
  br i1 %cmp426.not.i1409, label %for.cond.preheader.i1410.for.end.i1430_crit_edge, label %for.cond.preheader.i1410.for.body.i1415_crit_edge

for.cond.preheader.i1410.for.body.i1415_crit_edge: ; preds = %for.cond.preheader.i1410
  br label %for.body.i1415

for.cond.preheader.i1410.for.end.i1430_crit_edge: ; preds = %for.cond.preheader.i1410
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i1430

for.body.i1415:                                   ; preds = %if.end.i1427.for.body.i1415_crit_edge, %for.cond.preheader.i1410.for.body.i1415_crit_edge
  %i.028.i1411 = phi i32 [ %inc11.i1425, %if.end.i1427.for.body.i1415_crit_edge ], [ 0, %for.cond.preheader.i1410.for.body.i1415_crit_edge ]
  %buf_pos.027.i1412 = phi i32 [ %add10.i1424, %if.end.i1427.for.body.i1415_crit_edge ], [ 0, %for.cond.preheader.i1410.for.body.i1415_crit_edge ]
  %rem5.i1413 = and i32 %i.028.i1411, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1413)
  %cmp6.i1414 = icmp eq i32 %rem5.i1413, 0
  br i1 %cmp6.i1414, label %if.then7.i1418, label %for.body.i1415.if.end.i1427_crit_edge

for.body.i1415.if.end.i1427_crit_edge:            ; preds = %for.body.i1415
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1427

if.then7.i1418:                                   ; preds = %for.body.i1415
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1416 = add i32 %buf_pos.027.i1412, 1
  %arrayidx.i1417 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1412
  %237 = ptrtoint ptr %arrayidx.i1417 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 10, ptr %arrayidx.i1417, align 1
  br label %if.end.i1427

if.end.i1427:                                     ; preds = %if.then7.i1418, %for.body.i1415.if.end.i1427_crit_edge
  %buf_pos.1.i1419 = phi i32 [ %inc.i1416, %if.then7.i1418 ], [ %buf_pos.027.i1412, %for.body.i1415.if.end.i1427_crit_edge ]
  %arrayidx8.i1420 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1419
  %arrayidx9.i1421 = getelementptr i8, ptr %repeater_auth_stream_manage, i32 %i.028.i1411
  %238 = ptrtoint ptr %arrayidx9.i1421 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx9.i1421, align 1
  %conv.i1422 = zext i8 %239 to i32
  %call.i1423 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1420, ptr noundef nonnull @.str, i32 noundef %conv.i1422) #5
  %add10.i1424 = add i32 %buf_pos.1.i1419, 3
  %inc11.i1425 = add nuw nsw i32 %i.028.i1411, 1
  %exitcond.not.i1426 = icmp eq i32 %inc11.i1425, %conv640
  br i1 %exitcond.not.i1426, label %if.end.i1427.for.end.i1430_crit_edge, label %if.end.i1427.for.body.i1415_crit_edge

if.end.i1427.for.body.i1415_crit_edge:            ; preds = %if.end.i1427
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1415

if.end.i1427.for.end.i1430_crit_edge:             ; preds = %if.end.i1427
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i1430

for.end.i1430:                                    ; preds = %if.end.i1427.for.end.i1430_crit_edge, %for.cond.preheader.i1410.for.end.i1430_crit_edge
  %buf_pos.0.lcssa.i1428 = phi i32 [ 0, %for.cond.preheader.i1410.for.end.i1430_crit_edge ], [ %add10.i1424, %if.end.i1427.for.end.i1430_crit_edge ]
  %arrayidx13.i1429 = getelementptr i8, ptr %buf258, i32 %buf_pos.0.lcssa.i1428
  %240 = ptrtoint ptr %arrayidx13.i1429 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %arrayidx13.i1429, align 1
  br label %mod_hdcp_dump_binary_message.exit1431

mod_hdcp_dump_binary_message.exit1431:            ; preds = %for.end.i1430, %do.body634.mod_hdcp_dump_binary_message.exit1431_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then655)) #5
          to label %do.body664 [label %if.then655], !srcloc !319

if.then655:                                       ; preds = %mod_hdcp_dump_binary_message.exit1431
  call void @__sanitizer_cov_trace_pc() #7
  %index657 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %241 = ptrtoint ptr %index657 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %index657, align 4
  %conv658 = zext i8 %242 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.8, i32 noundef %conv658, ptr noundef nonnull @.str.30, ptr noundef %buf258) #5
  br label %do.body664

do.body664:                                       ; preds = %if.then655, %mod_hdcp_dump_binary_message.exit1431
  %repeater_auth_stream_ready = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 17
  br label %for.body.i1437

for.body.i1437:                                   ; preds = %if.end.i1449.for.body.i1437_crit_edge, %do.body664
  %i.028.i1433 = phi i32 [ %inc11.i1447, %if.end.i1449.for.body.i1437_crit_edge ], [ 0, %do.body664 ]
  %buf_pos.027.i1434 = phi i32 [ %add10.i1446, %if.end.i1449.for.body.i1437_crit_edge ], [ 0, %do.body664 ]
  %rem5.i1435 = and i32 %i.028.i1433, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i1435)
  %cmp6.i1436 = icmp eq i32 %rem5.i1435, 0
  br i1 %cmp6.i1436, label %if.then7.i1440, label %for.body.i1437.if.end.i1449_crit_edge

for.body.i1437.if.end.i1449_crit_edge:            ; preds = %for.body.i1437
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1449

if.then7.i1440:                                   ; preds = %for.body.i1437
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i1438 = add i32 %buf_pos.027.i1434, 1
  %arrayidx.i1439 = getelementptr i8, ptr %buf258, i32 %buf_pos.027.i1434
  %243 = ptrtoint ptr %arrayidx.i1439 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 10, ptr %arrayidx.i1439, align 1
  br label %if.end.i1449

if.end.i1449:                                     ; preds = %if.then7.i1440, %for.body.i1437.if.end.i1449_crit_edge
  %buf_pos.1.i1441 = phi i32 [ %inc.i1438, %if.then7.i1440 ], [ %buf_pos.027.i1434, %for.body.i1437.if.end.i1449_crit_edge ]
  %arrayidx8.i1442 = getelementptr i8, ptr %buf258, i32 %buf_pos.1.i1441
  %arrayidx9.i1443 = getelementptr i8, ptr %repeater_auth_stream_ready, i32 %i.028.i1433
  %244 = ptrtoint ptr %arrayidx9.i1443 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx9.i1443, align 1
  %conv.i1444 = zext i8 %245 to i32
  %call.i1445 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1442, ptr noundef nonnull @.str, i32 noundef %conv.i1444) #5
  %add10.i1446 = add i32 %buf_pos.1.i1441, 3
  %inc11.i1447 = add nuw nsw i32 %i.028.i1433, 1
  %exitcond.not.i1448 = icmp eq i32 %inc11.i1447, 33
  br i1 %exitcond.not.i1448, label %mod_hdcp_dump_binary_message.exit1453, label %if.end.i1449.for.body.i1437_crit_edge

if.end.i1449.for.body.i1437_crit_edge:            ; preds = %if.end.i1449
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i1437

mod_hdcp_dump_binary_message.exit1453:            ; preds = %if.end.i1449
  %arrayidx13.i1451 = getelementptr i8, ptr %buf258, i32 %add10.i1446
  %246 = ptrtoint ptr %arrayidx13.i1451 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %arrayidx13.i1451, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then682)) #5
          to label %if.end.i1471.1 [label %if.then682], !srcloc !319

if.then682:                                       ; preds = %mod_hdcp_dump_binary_message.exit1453
  call void @__sanitizer_cov_trace_pc() #7
  %index684 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %247 = ptrtoint ptr %index684 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %index684, align 4
  %conv685 = zext i8 %248 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.4, i32 noundef %conv685, ptr noundef nonnull @.str.31, ptr noundef %buf258) #5
  br label %if.end.i1471.1

if.end.i1471.1:                                   ; preds = %if.then682, %mod_hdcp_dump_binary_message.exit1453
  %content_stream_type_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 19
  %249 = ptrtoint ptr %buf258 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 10, ptr %buf258, align 1
  %250 = ptrtoint ptr %content_stream_type_dp to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %content_stream_type_dp, align 1
  %conv.i1466 = zext i8 %251 to i32
  %call.i1467 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx8.i1096, ptr noundef nonnull @.str, i32 noundef %conv.i1466) #5
  %arrayidx9.i1465.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 19, i32 1
  %252 = ptrtoint ptr %arrayidx9.i1465.1 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx9.i1465.1, align 1
  %conv.i1466.1 = zext i8 %253 to i32
  %call.i1467.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx13.i1105, ptr noundef nonnull @.str, i32 noundef %conv.i1466.1) #5
  %254 = ptrtoint ptr %arrayidx8.i1118.2 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %arrayidx8.i1118.2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_log_ddc_trace, %if.then709)) #5
          to label %if.end719 [label %if.then709], !srcloc !319

if.then709:                                       ; preds = %if.end.i1471.1
  call void @__sanitizer_cov_trace_pc() #7
  %index711 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %255 = ptrtoint ptr %index711 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %index711, align 4
  %conv712 = zext i8 %256 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.8, i32 noundef %conv712, ptr noundef nonnull @.str.32, ptr noundef %buf258) #5
  br label %if.end719

if.end719:                                        ; preds = %if.then709, %if.end.i1471.1, %if.else.if.end719_crit_edge, %if.then243, %mod_hdcp_dump_binary_message.exit1083
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mod_hdcp_status_to_str(i32 noundef %status) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %status)
  %0 = icmp ult i32 %status, 60
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [60 x ptr], ptr @switch.table.mod_hdcp_status_to_str, i32 0, i32 %status
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.93, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mod_hdcp_state_id_to_str(i32 noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %id)
  %0 = icmp ult i32 %id, 49
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [49 x ptr], ptr @switch.table.mod_hdcp_state_id_to_str, i32 0, i32 %id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.143, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308}
!llvm.module.flags = !{!310, !311, !312, !313, !314, !315, !316, !317}
!llvm.ident = !{!318}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 47, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 57, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug302, !3, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug303, !10, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 59, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug304, !13, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 61, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 64, i32 3}
!17 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug305, !16, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug306, !20, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 66, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug307, !23, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 68, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug308, !26, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 70, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug309, !29, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 73, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug310, !32, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 76, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug311, !35, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 78, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug312, !38, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 81, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug313, !41, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 84, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug314, !44, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 86, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug315, !47, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 88, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug316, !50, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 90, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug317, !53, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 93, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug318, !56, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 96, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug319, !59, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 98, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug320, !62, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 101, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug321, !65, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 103, i32 3}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug322, !68, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 105, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug323, !71, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 107, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug324, !74, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 110, i32 3}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug325, !77, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 113, i32 3}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug326, !80, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 116, i32 3}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug327, !83, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 119, i32 3}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mod_hdcp_log_ddc_trace.__UNIQUE_ID_ddebug328, !86, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 122, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 132, i32 10}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 134, i32 10}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 136, i32 10}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 138, i32 10}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 140, i32 10}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 142, i32 10}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 144, i32 10}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 146, i32 10}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 148, i32 10}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 150, i32 10}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 152, i32 10}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 154, i32 10}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 156, i32 10}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 158, i32 10}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 160, i32 10}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 162, i32 10}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 164, i32 10}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 166, i32 10}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 168, i32 10}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 170, i32 10}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 172, i32 10}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 174, i32 10}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 176, i32 10}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 178, i32 10}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 180, i32 10}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 182, i32 10}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 184, i32 10}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 186, i32 10}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 188, i32 10}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 190, i32 10}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 192, i32 10}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 194, i32 10}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 196, i32 10}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 198, i32 10}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 200, i32 10}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 202, i32 10}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 204, i32 10}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 206, i32 10}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 208, i32 10}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 210, i32 10}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 212, i32 10}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 214, i32 10}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 216, i32 10}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 218, i32 10}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 220, i32 10}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 222, i32 10}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 224, i32 10}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 226, i32 10}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 228, i32 10}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 230, i32 10}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 232, i32 10}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 234, i32 10}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 236, i32 10}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 238, i32 10}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 240, i32 10}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 242, i32 10}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 244, i32 10}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 246, i32 10}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 248, i32 10}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 250, i32 10}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 252, i32 10}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 260, i32 10}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 262, i32 10}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 264, i32 10}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 266, i32 10}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 268, i32 10}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 270, i32 10}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 272, i32 10}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 274, i32 10}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 276, i32 10}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 278, i32 10}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 280, i32 10}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 282, i32 10}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 284, i32 10}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 286, i32 10}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 288, i32 10}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 290, i32 10}
!242 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 292, i32 10}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 294, i32 10}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 296, i32 10}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 298, i32 10}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 300, i32 10}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 302, i32 10}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 304, i32 10}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 306, i32 10}
!258 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 308, i32 10}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 310, i32 10}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 312, i32 10}
!264 = !{ptr @.str.121, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 314, i32 10}
!266 = !{ptr @.str.122, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 316, i32 10}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 318, i32 10}
!270 = !{ptr @.str.124, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 320, i32 10}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 322, i32 10}
!274 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 324, i32 10}
!276 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 326, i32 10}
!278 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 328, i32 10}
!280 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 330, i32 10}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 332, i32 10}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 334, i32 10}
!286 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 336, i32 10}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 338, i32 10}
!290 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 340, i32 10}
!292 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 342, i32 10}
!294 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 344, i32 10}
!296 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 346, i32 10}
!298 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 348, i32 10}
!300 = !{ptr @.str.139, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 350, i32 10}
!302 = !{ptr @.str.140, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 352, i32 10}
!304 = !{ptr @.str.141, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 354, i32 10}
!306 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 356, i32 10}
!308 = !{ptr @.str.143, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_log.c", i32 358, i32 10}
!310 = !{i32 1, !"wchar_size", i32 2}
!311 = !{i32 1, !"min_enum_size", i32 4}
!312 = !{i32 8, !"branch-target-enforcement", i32 0}
!313 = !{i32 8, !"sign-return-address", i32 0}
!314 = !{i32 8, !"sign-return-address-all", i32 0}
!315 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!316 = !{i32 7, !"uwtable", i32 1}
!317 = !{i32 7, !"frame-pointer", i32 2}
!318 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!319 = !{i64 2148769639, i64 2148769644, i64 2148769657, i64 2148769701, i64 2148769735, i64 2148769756}
