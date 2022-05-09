; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mod_hdcp_output = type { i8, i8, i8, i8, i16, i16, i8 }
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
%struct.mod_hdcp_display_query = type { ptr, ptr, ptr, i32 }
%struct.mod_hdcp_event_context = type { i32, i8, i8 }

@mod_hdcp_setup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mod_hdcp_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[HDCP_TOP]:\0A\00", [19 x i8] zeroinitializer }, align 32
@mod_hdcp_setup.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[HDCP_TOP]:[Link %d] %s\00", [40 x i8] zeroinitializer }, align 32
@mod_hdcp_teardown.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mod_hdcp_teardown\00", [46 x i8] zeroinitializer }, align 32
@mod_hdcp_teardown.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.4, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mod_hdcp_add_display.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mod_hdcp_add_display\00", [43 x i8] zeroinitializer }, align 32
@mod_hdcp_add_display.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[HDCP_TOP]:[Link %d] %s display %d\00", [61 x i8] zeroinitializer }, align 32
@mod_hdcp_remove_display.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mod_hdcp_remove_display\00", [40 x i8] zeroinitializer }, align 32
@mod_hdcp_remove_display.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.7, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mod_hdcp_update_authentication.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.3, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mod_hdcp_update_authentication\00", [33 x i8] zeroinitializer }, align 32
@mod_hdcp_update_authentication.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.7, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mod_hdcp_reset_connection.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mod_hdcp_reset_connection\00", [38 x i8] zeroinitializer }, align 32
@mod_hdcp_reset_connection.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.4, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[Link %d] --> TIMEOUT\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[Link %d] --> CPIRQ\00", [44 x i8] zeroinitializer }, align 32
@reset_connection.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset_connection\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[HDCP_TOP]:[Link %d]\09reset connection\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[Link %d] WARNING %s IN STATE %s STAY COUNT %d\00", [49 x i8] zeroinitializer }, align 32
@reset_authentication.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reset_authentication\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[HDCP_TOP]:[Link %d]\09reset authentication\00", [54 x i8] zeroinitializer }, align 32
@reset_authentication.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@reset_authentication.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[Link %d] > %s with %d ms watchdog\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[Link %d] > %s\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 32, i64 64, i64 128]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 270, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 282, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 299, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 357, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 403, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 491, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 505, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 246, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 37, i32 3 }
@___asan_gen_.76 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 202, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 421, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mod_hdcp_get_memory_size() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3436
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_setup(ptr noundef %hdcp, ptr nocapture noundef readonly %config) local_unnamed_addr #1 align 64 {
entry:
  %output = alloca %struct.mod_hdcp_output, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %output) #7
  %0 = call ptr @memset(ptr %output, i32 0, i32 10)
  %1 = call ptr @memcpy(ptr %hdcp, ptr %config, i32 36)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_setup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_setup, %if.then)) #7
          to label %do.body5 [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_setup.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.3) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_setup.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_setup, %if.then17)) #7
          to label %do.end23 [label %if.then17], !srcloc !58

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_setup.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef nonnull @.str.1) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body5
  %call24 = call fastcc i32 @reset_connection(ptr noundef %hdcp, ptr noundef nonnull %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp.not = icmp eq i32 %call24, 0
  br i1 %cmp.not, label %do.end23.if.end27_crit_edge, label %if.then26

do.end23.if.end27_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %call24)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.end23.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %output) #7
  ret i32 %call24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_connection(ptr noundef %hdcp, ptr nocapture noundef %output) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %output, i32 0, i32 10)
  %call = tail call fastcc i32 @reset_authentication(ptr noundef %hdcp, ptr noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2.not = icmp eq i8 %2, 0
  br i1 %cmp2.not, label %if.end.if.end11_crit_edge, label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_connection.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_connection, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !58

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index, align 4
  %conv9 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reset_connection.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.14, i32 noundef %conv9) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %state.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %6 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %7 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %8 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %watchdog_timer_needed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %10 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %11 to i32
  %call9.i = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 0) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %12 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %watchdog_timer_delay.i, align 2
  %conv4.i = zext i16 %13 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i) #7
  br label %if.end11

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i, ptr noundef %call9.i) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else.i, %if.then.i, %if.end.if.end11_crit_edge
  %connection = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %14 = call ptr @memset(ptr %connection, i32 0, i32 112)
  br label %out

out:                                              ; preds = %if.end11, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @push_error_status(ptr nocapture noundef %hdcp, i32 noundef %status) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %error_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 5, i32 1
  %0 = ptrtoint ptr %error_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp ult i8 %1, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %1 to i32
  %trace1 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 5
  %arrayidx = getelementptr [10 x %struct.mod_hdcp_error], ptr %trace1, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 4
  %5 = ptrtoint ptr %error_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %error_count, align 4
  %idxprom7 = zext i8 %6 to i32
  %state_id = getelementptr [10 x %struct.mod_hdcp_error], ptr %trace1, i32 0, i32 %idxprom7, i32 1
  %7 = ptrtoint ptr %state_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %state_id, align 4
  %inc = add i8 %6, 1
  store i8 %inc, ptr %error_count, align 4
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 4
  %conv10 = zext i8 %9 to i32
  %call = tail call ptr @mod_hdcp_status_to_str(i32 noundef %status) #7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 4
  %conv13 = zext i8 %11 to i32
  %call14 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef %conv13) #7
  %stay_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stay_count, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv10, ptr noundef %call, ptr noundef %call14, i32 noundef %13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %14 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state.i.i.i, align 4
  %16 = add i8 %15, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %16)
  %17 = icmp ult i8 %16, -13
  br i1 %17, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  %hdcp1_retry_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %hdcp1_retry_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdcp1_retry_count, align 4
  %inc19 = add i8 %19, 1
  store i8 %inc19, ptr %hdcp1_retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc19)
  %cmp23 = icmp eq i8 %inc19, 4
  br i1 %cmp23, label %if.then25, label %if.then17.if.end47_crit_edge

if.then17.if.end47_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %hdcp1 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %hdcp1, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hdcp1, align 1
  br label %if.end47

if.else:                                          ; preds = %if.end
  %21 = and i8 %15, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %21)
  %.not.i = icmp ne i8 %21, 16
  %22 = add i8 %15, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %22)
  %23 = icmp ult i8 %22, -17
  %tobool29.not = and i1 %.not.i, %23
  br i1 %tobool29.not, label %if.else.if.end47_crit_edge, label %if.then30

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then30:                                        ; preds = %if.else
  %hdcp2_retry_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %hdcp2_retry_count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdcp2_retry_count, align 1
  %inc32 = add i8 %25, 1
  store i8 %inc32, ptr %hdcp2_retry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc32)
  %cmp36 = icmp eq i8 %inc32, 4
  br i1 %cmp36, label %if.then38, label %if.then30.if.end47_crit_edge

if.then30.if.end47_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then38:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %hdcp2 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load42 = load i8, ptr %hdcp2, align 2
  %bf.set44 = or i8 %bf.load42, -128
  store i8 %bf.set44, ptr %hdcp2, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.then30.if.end47_crit_edge, %if.else.if.end47_crit_edge, %if.then25, %if.then17.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_teardown(ptr noundef %hdcp) local_unnamed_addr #1 align 64 {
entry:
  %output = alloca %struct.mod_hdcp_output, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %output) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_teardown.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_teardown, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_teardown.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.3) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_teardown.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_teardown, %if.then16)) #7
          to label %do.end21 [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_teardown.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef nonnull @.str.5) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  %2 = call ptr @memset(ptr %output, i32 0, i32 10)
  %call22 = call fastcc i32 @reset_connection(ptr noundef %hdcp, ptr noundef nonnull %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp eq i32 %call22, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memset(ptr %hdcp, i32 0, i32 3436)
  br label %if.end25

if.else:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %call22)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %output) #7
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_add_display(ptr noundef %hdcp, ptr nocapture noundef readonly %link, ptr nocapture noundef readonly %display, ptr nocapture noundef %output) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_add_display.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_add_display, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_add_display.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.3) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_add_display.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_add_display, %if.then16)) #7
          to label %do.end23 [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %index17 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 1
  %2 = ptrtoint ptr %index17 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index17, align 4
  %conv18 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_add_display.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.7, i32 noundef %conv, ptr noundef nonnull @.str.6, i32 noundef %conv18) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then16, %do.body4
  %4 = call ptr @memset(ptr %output, i32 0, i32 10)
  %5 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end26, label %do.end23.if.end61_crit_edge

do.end23.if.end61_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end26:                                         ; preds = %do.end23
  %index27 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 1
  %7 = ptrtoint ptr %index27 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index27, align 4
  %index2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %8)
  %cmp5.i = icmp eq i8 %10, %8
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end26.for.inc.i_crit_edge

if.end26.for.inc.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end26
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end26.for.inc.i_crit_edge
  %index2.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %index2.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %index2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %8)
  %cmp5.1.i = icmp eq i8 %14, %8
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.not.1.i = icmp eq i32 %16, 0
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index2.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %17 = ptrtoint ptr %index2.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %index2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %8)
  %cmp5.2.i = icmp eq i8 %18, %8
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.not.2.i = icmp eq i32 %20, 0
  br i1 %cmp.i.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index2.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %21 = ptrtoint ptr %index2.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %index2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %8)
  %cmp5.3.i = icmp eq i8 %22, %8
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.not.3.i = icmp eq i32 %24, 0
  br i1 %cmp.i.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index2.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %25 = ptrtoint ptr %index2.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %8)
  %cmp5.4.i = icmp eq i8 %26, %8
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.not.4.i = icmp eq i32 %28, 0
  br i1 %cmp.i.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index2.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %29 = ptrtoint ptr %index2.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %8)
  %cmp5.5.i = icmp eq i8 %30, %8
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.if.end31_crit_edge

for.inc.4.i.if.end31_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not.5.i = icmp eq i32 %32, 0
  br i1 %cmp.i.not.5.i, label %land.lhs.true.5.i.if.end31_crit_edge, label %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.5.i.if.end31_crit_edge:             ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

get_active_display_at_index.exit:                 ; preds = %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge ]
  %tobool29.not = icmp eq ptr %display.0.i, null
  br i1 %tobool29.not, label %get_active_display_at_index.exit.if.end31_crit_edge, label %get_active_display_at_index.exit.if.end61_crit_edge

get_active_display_at_index.exit.if.end61_crit_edge: ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

get_active_display_at_index.exit.if.end31_crit_edge: ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %get_active_display_at_index.exit.if.end31_crit_edge, %land.lhs.true.5.i.if.end31_crit_edge, %for.inc.4.i.if.end31_crit_edge
  %arrayidx.i88 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %33 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.not.i89 = icmp eq i32 %34, 0
  br i1 %cmp.i.not.i89, label %if.end31.get_empty_display_container.exit_crit_edge, label %for.cond.i

if.end31.get_empty_display_container.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_empty_display_container.exit

for.cond.i:                                       ; preds = %if.end31
  %arrayidx.1.i90 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.not.1.i91 = icmp eq i32 %36, 0
  br i1 %cmp.i.not.1.i91, label %for.cond.i.get_empty_display_container.exit_crit_edge, label %for.cond.1.i

for.cond.i.get_empty_display_container.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_empty_display_container.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i92 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.2.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.not.2.i93 = icmp eq i32 %38, 0
  br i1 %cmp.i.not.2.i93, label %for.cond.1.i.get_empty_display_container.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.get_empty_display_container.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_empty_display_container.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i94 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx.3.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.3.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.not.3.i95 = icmp eq i32 %40, 0
  br i1 %cmp.i.not.3.i95, label %for.cond.2.i.get_empty_display_container.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.get_empty_display_container.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_empty_display_container.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i96 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %arrayidx.4.i96 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.4.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.not.4.i97 = icmp eq i32 %42, 0
  br i1 %cmp.i.not.4.i97, label %for.cond.3.i.get_empty_display_container.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.get_empty_display_container.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_empty_display_container.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i98 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %arrayidx.5.i98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.5.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.not.5.i99 = icmp eq i32 %44, 0
  br i1 %cmp.i.not.5.i99, label %for.cond.4.i.get_empty_display_container.exit_crit_edge, label %for.cond.4.i.if.then60_crit_edge

for.cond.4.i.if.then60_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

for.cond.4.i.get_empty_display_container.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_empty_display_container.exit

get_empty_display_container.exit:                 ; preds = %for.cond.4.i.get_empty_display_container.exit_crit_edge, %for.cond.3.i.get_empty_display_container.exit_crit_edge, %for.cond.2.i.get_empty_display_container.exit_crit_edge, %for.cond.1.i.get_empty_display_container.exit_crit_edge, %for.cond.i.get_empty_display_container.exit_crit_edge, %if.end31.get_empty_display_container.exit_crit_edge
  %display.0.i100 = phi ptr [ %arrayidx.i88, %if.end31.get_empty_display_container.exit_crit_edge ], [ %arrayidx.1.i90, %for.cond.i.get_empty_display_container.exit_crit_edge ], [ %arrayidx.2.i92, %for.cond.1.i.get_empty_display_container.exit_crit_edge ], [ %arrayidx.3.i94, %for.cond.2.i.get_empty_display_container.exit_crit_edge ], [ %arrayidx.4.i96, %for.cond.3.i.get_empty_display_container.exit_crit_edge ], [ %arrayidx.5.i98, %for.cond.4.i.get_empty_display_container.exit_crit_edge ]
  %tobool33.not = icmp eq ptr %display.0.i100, null
  br i1 %tobool33.not, label %get_empty_display_container.exit.if.then60_crit_edge, label %if.end35

get_empty_display_container.exit.if.then60_crit_edge: ; preds = %get_empty_display_container.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end35:                                         ; preds = %get_empty_display_container.exit
  %call36 = tail call fastcc i32 @reset_authentication(ptr noundef %hdcp, ptr noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end40, label %if.end35.if.then60_crit_edge

if.end35.if.then60_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end40:                                         ; preds = %if.end35
  %connection = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %trace = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 5
  %45 = call ptr @memset(ptr %trace, i32 0, i32 86)
  %46 = call ptr @memcpy(ptr %connection, ptr %link, i32 20)
  %47 = call ptr @memcpy(ptr %display.0.i100, ptr %display, i32 12)
  %call43 = tail call i32 @mod_hdcp_add_display_to_topology(ptr noundef %hdcp, ptr noundef nonnull %display.0.i100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end47, label %if.end40.if.then60_crit_edge

if.end40.if.then60_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end47:                                         ; preds = %if.end40
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp50.not = icmp eq i8 %49, 1
  br i1 %cmp50.not, label %if.end47.if.end53_crit_edge, label %if.then52

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 1)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47.if.end53_crit_edge
  %adjust = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8
  %50 = ptrtoint ptr %adjust to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %adjust, align 2
  %conv56 = zext i8 %51 to i16
  %mul = mul i16 %conv56, 1000
  %52 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %53 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %mul, ptr %callback_delay.i, align 2
  br label %if.end61

if.then60:                                        ; preds = %if.end40.if.then60_crit_edge, %if.end35.if.then60_crit_edge, %get_empty_display_container.exit.if.then60_crit_edge, %for.cond.4.i.if.then60_crit_edge
  %status.0.ph = phi i32 [ 3, %get_empty_display_container.exit.if.then60_crit_edge ], [ %call43, %if.end40.if.then60_crit_edge ], [ %call36, %if.end35.if.then60_crit_edge ], [ 3, %for.cond.4.i.if.then60_crit_edge ]
  tail call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %status.0.ph)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end53, %get_active_display_at_index.exit.if.end61_crit_edge, %do.end23.if.end61_crit_edge
  %status.0110 = phi i32 [ %status.0.ph, %if.then60 ], [ 0, %if.end53 ], [ 0, %do.end23.if.end61_crit_edge ], [ 0, %get_active_display_at_index.exit.if.end61_crit_edge ]
  ret i32 %status.0110
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_authentication(ptr noundef %hdcp, ptr nocapture noundef %output) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i.i.i, align 4
  %2 = add i8 %1, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %2)
  %3 = icmp ult i8 %2, -13
  br i1 %3, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %create_session = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %create_session to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %create_session, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.then.do.body_crit_edge, label %if.then2

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @mod_hdcp_hdcp1_destroy_session(ptr noundef %hdcp) #7
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_authentication.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_authentication, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !58

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %conv9 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reset_authentication.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.17, i32 noundef %conv9) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %8 = call ptr @memset(ptr %auth, i32 0, i32 1188)
  %9 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %state.i.i.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %10 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %11 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %12 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %watchdog_timer_needed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %14 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %15 to i32
  %call9.i = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 1) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %16 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %watchdog_timer_delay.i, align 2
  %conv4.i108 = zext i16 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i108) #7
  br label %out

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i, ptr noundef %call9.i) #7
  br label %out

if.else:                                          ; preds = %entry
  %18 = and i8 %1, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %.not.i = icmp ne i8 %18, 16
  %19 = add i8 %1, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %19)
  %20 = icmp ult i8 %19, -17
  %tobool13.not = and i1 %.not.i, %20
  br i1 %tobool13.not, label %if.else49, label %if.then14

if.then14:                                        ; preds = %if.else
  %auth15 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %create_session17 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %create_session17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %create_session17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp19 = icmp eq i8 %22, 1
  br i1 %cmp19, label %if.then21, label %if.then14.do.body28_crit_edge

if.then14.do.body28_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then21:                                        ; preds = %if.then14
  %call22 = tail call i32 @mod_hdcp_hdcp2_destroy_session(ptr noundef %hdcp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.then21.do.body28_crit_edge, label %if.then25

if.then21.do.body28_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %output, align 2
  %watchdog_timer_needed = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %24 = ptrtoint ptr %watchdog_timer_needed to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %watchdog_timer_needed, align 2
  br label %out

do.body28:                                        ; preds = %if.then21.do.body28_crit_edge, %if.then14.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_authentication.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_authentication, %if.then40)) #7
          to label %do.end46 [label %if.then40], !srcloc !58

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %index42 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %25 = ptrtoint ptr %index42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index42, align 4
  %conv43 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reset_authentication.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.17, i32 noundef %conv43) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  %27 = call ptr @memset(ptr %auth15, i32 0, i32 1188)
  %28 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %state.i.i.i, align 4
  %callback_stop.i112 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %29 = ptrtoint ptr %callback_stop.i112 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %callback_stop.i112, align 1
  %watchdog_timer_stop.i113 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %30 = ptrtoint ptr %watchdog_timer_stop.i113 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %watchdog_timer_stop.i113, align 1
  %watchdog_timer_needed.i114 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %31 = ptrtoint ptr %watchdog_timer_needed.i114 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %watchdog_timer_needed.i114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i115 = icmp eq i8 %32, 0
  %index6.i116 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %33 = ptrtoint ptr %index6.i116 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index6.i116, align 4
  %conv7.i117 = zext i8 %34 to i32
  %call9.i118 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 1) #7
  br i1 %tobool.not.i115, label %if.else.i122, label %if.then.i121

if.then.i121:                                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i119 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %35 = ptrtoint ptr %watchdog_timer_delay.i119 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %watchdog_timer_delay.i119, align 2
  %conv4.i120 = zext i16 %36 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i117, ptr noundef %call9.i118, i32 noundef %conv4.i120) #7
  br label %out

if.else.i122:                                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i117, ptr noundef %call9.i118) #7
  br label %out

if.else49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i.not = icmp eq i8 %1, 2
  br i1 %cmp.i.not, label %do.body53, label %if.else49.out_crit_edge

if.else49.out_crit_edge:                          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body53:                                        ; preds = %if.else49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_authentication.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_authentication, %if.then65)) #7
          to label %do.end71 [label %if.then65], !srcloc !58

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %index67 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %37 = ptrtoint ptr %index67 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index67, align 4
  %conv68 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reset_authentication.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.17, i32 noundef %conv68) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then65, %do.body53
  %auth72 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %39 = call ptr @memset(ptr %auth72, i32 0, i32 1188)
  %40 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %state.i.i.i, align 4
  %callback_stop.i125 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %41 = ptrtoint ptr %callback_stop.i125 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %callback_stop.i125, align 1
  %watchdog_timer_stop.i126 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %42 = ptrtoint ptr %watchdog_timer_stop.i126 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %watchdog_timer_stop.i126, align 1
  %watchdog_timer_needed.i127 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %43 = ptrtoint ptr %watchdog_timer_needed.i127 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %watchdog_timer_needed.i127, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i128 = icmp eq i8 %44, 0
  %index6.i129 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %45 = ptrtoint ptr %index6.i129 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %index6.i129, align 4
  %conv7.i130 = zext i8 %46 to i32
  %call9.i131 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 1) #7
  br i1 %tobool.not.i128, label %if.else.i135, label %if.then.i134

if.then.i134:                                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i132 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %47 = ptrtoint ptr %watchdog_timer_delay.i132 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %watchdog_timer_delay.i132, align 2
  %conv4.i133 = zext i16 %48 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i130, ptr noundef %call9.i131, i32 noundef %conv4.i133) #7
  br label %out

if.else.i135:                                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i130, ptr noundef %call9.i131) #7
  br label %out

out:                                              ; preds = %if.else.i135, %if.then.i134, %if.else49.out_crit_edge, %if.else.i122, %if.then.i121, %if.then25, %if.else.i, %if.then.i
  %status.1 = phi i32 [ %call22, %if.then25 ], [ 0, %if.else49.out_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then.i121 ], [ 0, %if.else.i122 ], [ 0, %if.then.i134 ], [ 0, %if.else.i135 ]
  %watchdog_timer_stop = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %49 = ptrtoint ptr %watchdog_timer_stop to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %watchdog_timer_stop, align 1
  %callback_stop = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %50 = ptrtoint ptr %callback_stop to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %callback_stop, align 1
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_add_display_to_topology(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_state_id(ptr nocapture noundef %hdcp, ptr nocapture noundef %output, i8 noundef zeroext %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %state, align 4
  store i8 %id, ptr %state, align 4
  %callback_stop = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %1 = ptrtoint ptr %callback_stop to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %callback_stop, align 1
  %watchdog_timer_stop = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %2 = ptrtoint ptr %watchdog_timer_stop to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %watchdog_timer_stop, align 1
  %watchdog_timer_needed = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %3 = ptrtoint ptr %watchdog_timer_needed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %watchdog_timer_needed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %index6 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %5 = ptrtoint ptr %index6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index6, align 4
  %conv7 = zext i8 %6 to i32
  %conv8 = zext i8 %id to i32
  %call9 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef %conv8) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %7 = ptrtoint ptr %watchdog_timer_delay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %watchdog_timer_delay, align 2
  %conv4 = zext i16 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7, ptr noundef %call9, i32 noundef %conv4) #7
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7, ptr noundef %call9) #7
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_remove_display(ptr noundef %hdcp, i8 noundef zeroext %index, ptr nocapture noundef %output) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_remove_display.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_remove_display, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_remove_display.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.3) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_remove_display.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_remove_display, %if.then16)) #7
          to label %do.end23 [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %index17 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %index17 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index17, align 4
  %conv = zext i8 %1 to i32
  %conv18 = zext i8 %index to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_remove_display.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.7, i32 noundef %conv, ptr noundef nonnull @.str.8, i32 noundef %conv18) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then16, %do.body4
  %2 = call ptr @memset(ptr %output, i32 0, i32 10)
  %index2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %index)
  %cmp5.i = icmp eq i8 %4, %index
  br i1 %cmp5.i, label %land.lhs.true.i, label %do.end23.for.inc.i_crit_edge

do.end23.for.inc.i_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %do.end23
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %do.end23.for.inc.i_crit_edge
  %index2.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %index2.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %index)
  %cmp5.1.i = icmp eq i8 %8, %index
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not.1.i = icmp eq i32 %10, 0
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index2.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %11 = ptrtoint ptr %index2.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %index)
  %cmp5.2.i = icmp eq i8 %12, %index
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not.2.i = icmp eq i32 %14, 0
  br i1 %cmp.i.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index2.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %index2.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %index)
  %cmp5.3.i = icmp eq i8 %16, %index
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not.3.i = icmp eq i32 %18, 0
  br i1 %cmp.i.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index2.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %19 = ptrtoint ptr %index2.4.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %index)
  %cmp5.4.i = icmp eq i8 %20, %index
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.not.4.i = icmp eq i32 %22, 0
  br i1 %cmp.i.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index2.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %23 = ptrtoint ptr %index2.5.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %index)
  %cmp5.5.i = icmp eq i8 %24, %index
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.if.end49_crit_edge

for.inc.4.i.if.end49_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.not.5.i = icmp eq i32 %26, 0
  br i1 %cmp.i.not.5.i, label %land.lhs.true.5.i.if.end49_crit_edge, label %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.5.i.if.end49_crit_edge:             ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

get_active_display_at_index.exit:                 ; preds = %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge ]
  %tobool25.not = icmp eq ptr %display.0.i, null
  br i1 %tobool25.not, label %get_active_display_at_index.exit.if.end49_crit_edge, label %if.end27

get_active_display_at_index.exit.if.end49_crit_edge: ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end27:                                         ; preds = %get_active_display_at_index.exit
  %call28 = tail call fastcc i32 @reset_authentication(ptr noundef %hdcp, ptr noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp.not = icmp eq i32 %call28, 0
  br i1 %cmp.not, label %if.end31, label %if.end27.if.then48_crit_edge

if.end27.if.then48_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.end31:                                         ; preds = %if.end27
  %trace = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 5
  %27 = call ptr @memset(ptr %trace, i32 0, i32 86)
  %call32 = tail call i32 @mod_hdcp_remove_display_from_topology(ptr noundef %hdcp, i8 noundef zeroext %index) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end36, label %if.end31.if.then48_crit_edge

if.end31.if.then48_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.end36:                                         ; preds = %if.end31
  %28 = call ptr @memset(ptr %display.0.i, i32 0, i32 12)
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp39.not = icmp eq i8 %30, 0
  br i1 %cmp39.not, label %if.end36.if.end49_crit_edge, label %if.then41

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %adjust = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8
  %31 = ptrtoint ptr %adjust to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %adjust, align 2
  %conv43 = zext i8 %32 to i16
  %mul = mul i16 %conv43, 1000
  %33 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %34 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %mul, ptr %callback_delay.i, align 2
  br label %if.end49

if.then48:                                        ; preds = %if.end31.if.then48_crit_edge, %if.end27.if.then48_crit_edge
  %status.0 = phi i32 [ %call28, %if.end27.if.then48_crit_edge ], [ %call32, %if.end31.if.then48_crit_edge ]
  tail call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %status.0)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then41, %if.end36.if.end49_crit_edge, %get_active_display_at_index.exit.if.end49_crit_edge, %land.lhs.true.5.i.if.end49_crit_edge, %for.inc.4.i.if.end49_crit_edge
  %status.076 = phi i32 [ %status.0, %if.then48 ], [ 0, %if.then41 ], [ 0, %if.end36.if.end49_crit_edge ], [ 0, %get_active_display_at_index.exit.if.end49_crit_edge ], [ 0, %for.inc.4.i.if.end49_crit_edge ], [ 0, %land.lhs.true.5.i.if.end49_crit_edge ]
  ret i32 %status.076
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_remove_display_from_topology(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_update_authentication(ptr noundef %hdcp, i8 noundef zeroext %index, ptr nocapture noundef readonly %link_adjust, ptr nocapture noundef readonly %display_adjust, ptr nocapture noundef %output) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_update_authentication.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_update_authentication, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_update_authentication.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.3) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_update_authentication.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_update_authentication, %if.then16)) #7
          to label %do.end23 [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %index17 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %index17 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index17, align 4
  %conv = zext i8 %1 to i32
  %conv18 = zext i8 %index to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_update_authentication.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.7, i32 noundef %conv, ptr noundef nonnull @.str.9, i32 noundef %conv18) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then16, %do.body4
  %2 = call ptr @memset(ptr %output, i32 0, i32 10)
  %index2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %index)
  %cmp5.i = icmp eq i8 %4, %index
  br i1 %cmp5.i, label %land.lhs.true.i, label %do.end23.for.inc.i_crit_edge

do.end23.for.inc.i_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %do.end23
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %do.end23.for.inc.i_crit_edge
  %index2.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %index2.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %index)
  %cmp5.1.i = icmp eq i8 %8, %index
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not.1.i = icmp eq i32 %10, 0
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index2.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %11 = ptrtoint ptr %index2.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %index)
  %cmp5.2.i = icmp eq i8 %12, %index
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not.2.i = icmp eq i32 %14, 0
  br i1 %cmp.i.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index2.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %index2.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %index)
  %cmp5.3.i = icmp eq i8 %16, %index
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not.3.i = icmp eq i32 %18, 0
  br i1 %cmp.i.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index2.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %19 = ptrtoint ptr %index2.4.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %index)
  %cmp5.4.i = icmp eq i8 %20, %index
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.not.4.i = icmp eq i32 %22, 0
  br i1 %cmp.i.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index2.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %23 = ptrtoint ptr %index2.5.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %index)
  %cmp5.5.i = icmp eq i8 %24, %index
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.if.then54_crit_edge

for.inc.4.i.if.then54_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.not.5.i = icmp eq i32 %26, 0
  br i1 %cmp.i.not.5.i, label %land.lhs.true.5.i.if.then54_crit_edge, label %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.5.i.if.then54_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

get_active_display_at_index.exit:                 ; preds = %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge ]
  %tobool25.not = icmp eq ptr %display.0.i, null
  br i1 %tobool25.not, label %get_active_display_at_index.exit.if.then54_crit_edge, label %if.end27

get_active_display_at_index.exit.if.then54_crit_edge: ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.end27:                                         ; preds = %get_active_display_at_index.exit
  %adjust = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %link_adjust, ptr noundef dereferenceable(3) %adjust, i32 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %land.lhs.true, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end27
  %adjust30 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %display_adjust to i32
  call void @__asan_load1_noabort(i32 %27)
  %lhsc = load i8, ptr %display_adjust, align 1
  %28 = ptrtoint ptr %adjust30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %rhsc = load i8, ptr %adjust30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %lhsc, i8 %rhsc)
  %cmp32 = icmp eq i8 %lhsc, %rhsc
  br i1 %cmp32, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %call36 = tail call fastcc i32 @reset_authentication(ptr noundef %hdcp, ptr noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end40, label %if.end35.if.then54_crit_edge

if.end35.if.then54_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.end40:                                         ; preds = %if.end35
  %trace = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 5
  %29 = call ptr @memset(ptr %trace, i32 0, i32 86)
  %30 = call ptr @memcpy(ptr %adjust, ptr %link_adjust, i32 3)
  %adjust45 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 6
  %31 = ptrtoint ptr %display_adjust to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %display_adjust, align 1
  %33 = ptrtoint ptr %adjust45 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %adjust45, align 1
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp48.not = icmp eq i8 %35, 0
  br i1 %cmp48.not, label %if.end40.if.end55_crit_edge, label %if.then50

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %37 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 100, ptr %callback_delay.i, align 2
  br label %if.end55

if.then54:                                        ; preds = %if.end35.if.then54_crit_edge, %get_active_display_at_index.exit.if.then54_crit_edge, %land.lhs.true.5.i.if.then54_crit_edge, %for.inc.4.i.if.then54_crit_edge
  %status.0 = phi i32 [ %call36, %if.end35.if.then54_crit_edge ], [ 4, %get_active_display_at_index.exit.if.then54_crit_edge ], [ 4, %for.inc.4.i.if.then54_crit_edge ], [ 4, %land.lhs.true.5.i.if.then54_crit_edge ]
  tail call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %status.0)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then50, %if.end40.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge
  %status.084 = phi i32 [ %status.0, %if.then54 ], [ 0, %if.then50 ], [ 0, %if.end40.if.end55_crit_edge ], [ 0, %land.lhs.true.if.end55_crit_edge ]
  ret i32 %status.084
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mod_hdcp_query_display(ptr noundef %hdcp, i8 noundef zeroext %index, ptr nocapture noundef %query) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %index)
  %cmp5.i = icmp eq i8 %1, %index
  br i1 %cmp5.i, label %land.lhs.true.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %index2.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %index2.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %index)
  %cmp5.1.i = icmp eq i8 %5, %index
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.1.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index2.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %index2.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %index)
  %cmp5.2.i = icmp eq i8 %9, %index
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.2.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index2.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %12 = ptrtoint ptr %index2.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %index)
  %cmp5.3.i = icmp eq i8 %13, %index
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not.3.i = icmp eq i32 %15, 0
  br i1 %cmp.i.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index2.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %16 = ptrtoint ptr %index2.4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %index)
  %cmp5.4.i = icmp eq i8 %17, %index
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not.4.i = icmp eq i32 %19, 0
  br i1 %cmp.i.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index2.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %20 = ptrtoint ptr %index2.5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %index)
  %cmp5.5.i = icmp eq i8 %21, %index
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.out_crit_edge

for.inc.4.i.out_crit_edge:                        ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not.5.i = icmp eq i32 %23, 0
  br i1 %cmp.i.not.5.i, label %land.lhs.true.5.i.out_crit_edge, label %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_active_display_at_index.exit

land.lhs.true.5.i.out_crit_edge:                  ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

get_active_display_at_index.exit:                 ; preds = %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge ]
  %tobool.not = icmp eq ptr %display.0.i, null
  br i1 %tobool.not, label %get_active_display_at_index.exit.out_crit_edge, label %if.end

get_active_display_at_index.exit.out_crit_edge:   ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %get_active_display_at_index.exit
  %connection = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %link1 = getelementptr inbounds %struct.mod_hdcp_display_query, ptr %query, i32 0, i32 1
  %24 = ptrtoint ptr %link1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %connection, ptr %link1, align 4
  %25 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %display.0.i, ptr %query, align 4
  %trace = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 5
  %trace4 = getelementptr inbounds %struct.mod_hdcp_display_query, ptr %query, i32 0, i32 2
  %26 = ptrtoint ptr %trace4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %trace, ptr %trace4, align 4
  %encryption_status = getelementptr inbounds %struct.mod_hdcp_display_query, ptr %query, i32 0, i32 3
  %27 = ptrtoint ptr %encryption_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %encryption_status, align 4
  %28 = ptrtoint ptr %display.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %display.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i = icmp ult i32 %29, 2
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.then7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then7:                                         ; preds = %if.end
  %state.i.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %30 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %state.i.i.i, align 4
  %32 = add i8 %31, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -13, i8 %32)
  %33 = icmp ult i8 %32, -13
  br i1 %33, label %if.else, label %if.then7.out.sink.split_crit_edge

if.then7.out.sink.split_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.else:                                          ; preds = %if.then7
  %34 = and i8 %31, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %34)
  %.not.i = icmp ne i8 %34, 16
  %35 = add i8 %31, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %35)
  %36 = icmp ult i8 %35, -17
  %tobool13.not = and i1 %.not.i, %36
  br i1 %tobool13.not, label %if.else.out_crit_edge, label %if.then14

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hdcp2 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %hdcp2, align 2
  %bf.lshr = lshr i8 %bf.load, 5
  %trunc = trunc i8 %bf.lshr to i2
  %38 = sext i2 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %38)
  %switch.selectcmp = icmp eq i2 %trunc, -2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 4
  %39 = sext i2 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %switch.selectcmp60 = icmp eq i2 %trunc, 1
  %switch.select61 = select i1 %switch.selectcmp60, i32 2, i32 %switch.select
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then14, %if.then7.out.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then7.out.sink.split_crit_edge ], [ %switch.select61, %if.then14 ]
  %40 = ptrtoint ptr %encryption_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %encryption_status, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else.out_crit_edge, %if.end.out_crit_edge, %get_active_display_at_index.exit.out_crit_edge, %land.lhs.true.5.i.out_crit_edge, %for.inc.4.i.out_crit_edge
  %status.0 = phi i32 [ 0, %if.else.out_crit_edge ], [ 4, %get_active_display_at_index.exit.out_crit_edge ], [ 4, %for.inc.4.i.out_crit_edge ], [ 4, %land.lhs.true.5.i.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %out.sink.split ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_reset_connection(ptr noundef %hdcp, ptr nocapture noundef %output) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_reset_connection.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_reset_connection, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_reset_connection.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.3) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_reset_connection.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_reset_connection, %if.then16)) #7
          to label %do.end21 [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_reset_connection.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef nonnull @.str.10) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  %call22 = tail call fastcc i32 @reset_connection(ptr noundef %hdcp, ptr noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp.not = icmp eq i32 %call22, 0
  br i1 %cmp.not, label %do.end21.if.end25_crit_edge, label %if.then24

do.end21.if.end25_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %call22)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.end21.if.end25_crit_edge
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_process_event(ptr noundef %hdcp, i32 noundef %event, ptr noundef %output) local_unnamed_addr #1 align 64 {
entry:
  %event_ctx = alloca %struct.mod_hdcp_event_context, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event_ctx) #7
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.if.end7_crit_edge [
    i32 1, label %entry.if.end7.sink.split_crit_edge
    i32 2, label %if.then3
  ]

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.sink.split

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then3, %entry.if.end7.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.then3 ], [ @.str.11, %entry.if.end7.sink.split_crit_edge ]
  %index5 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %1 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index5, align 4
  %conv6 = zext i8 %2 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.12.sink, i32 noundef %conv6) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  %3 = call ptr @memset(ptr %output, i32 0, i32 10)
  %4 = ptrtoint ptr %event_ctx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %event_ctx, align 8
  store i32 %event, ptr %event_ctx, align 8
  %trans_input = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 2
  %state.i.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %5 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state.i.i.i, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %6, label %if.else10.i [
    i8 1, label %if.then.i
    i8 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp.not.i = icmp eq i32 %event, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %unexpected_event.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %8 = ptrtoint ptr %unexpected_event.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %unexpected_event.i, align 1
  br label %execution.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memset(ptr %trans_input, i32 0, i32 38)
  br label %execution.exit

if.then4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp6.not.i = icmp eq i32 %event, 0
  br i1 %cmp6.not.i, label %if.then4.i.execution.exit_crit_edge, label %if.then7.i

if.then4.i.execution.exit_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %execution.exit

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %unexpected_event8.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %10 = ptrtoint ptr %unexpected_event8.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %unexpected_event8.i, align 1
  br label %execution.exit

if.else10.i:                                      ; preds = %if.end7
  %11 = add i8 %6, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %11)
  %12 = icmp ult i8 %11, -6
  br i1 %12, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 @mod_hdcp_hdcp1_execution(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input) #7
  br label %execution.exit

if.else15.i:                                      ; preds = %if.else10.i
  %13 = add i8 %6, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %13)
  %14 = icmp ult i8 %13, -7
  br i1 %14, label %if.else20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 @mod_hdcp_hdcp1_dp_execution(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input) #7
  br label %execution.exit

if.else20.i:                                      ; preds = %if.else15.i
  %15 = and i8 %6, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %15)
  %.not.i = icmp eq i8 %15, 16
  br i1 %.not.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = call i32 @mod_hdcp_hdcp2_execution(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input) #7
  br label %execution.exit

if.else25.i:                                      ; preds = %if.else20.i
  %16 = add i8 %6, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %16)
  %17 = icmp ult i8 %16, -17
  br i1 %17, label %if.else30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = call i32 @mod_hdcp_hdcp2_dp_execution(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input) #7
  br label %execution.exit

if.else30.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  %unexpected_event31.i = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %18 = ptrtoint ptr %unexpected_event31.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %unexpected_event31.i, align 1
  br label %execution.exit

execution.exit:                                   ; preds = %if.else30.i, %if.then28.i, %if.then23.i, %if.then18.i, %if.then13.i, %if.then7.i, %if.then4.i.execution.exit_crit_edge, %if.end.i, %if.then1.i
  %status.0.i = phi i32 [ 0, %if.then1.i ], [ 0, %if.end.i ], [ 0, %if.then7.i ], [ 0, %if.then4.i.execution.exit_crit_edge ], [ %call14.i, %if.then13.i ], [ %call19.i, %if.then18.i ], [ %call24.i, %if.then23.i ], [ %call29.i, %if.then28.i ], [ 0, %if.else30.i ]
  %unexpected_event.i64 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 2
  %19 = ptrtoint ptr %unexpected_event.i64 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %unexpected_event.i64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i66, label %execution.exit.if.end30_crit_edge

execution.exit.if.end30_crit_edge:                ; preds = %execution.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end.i66:                                       ; preds = %execution.exit
  %21 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %state.i.i.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %22, label %if.else36.i [
    i8 1, label %if.then2.i
    i8 2, label %if.then35.i
  ]

if.then2.i:                                       ; preds = %if.end.i66
  %connection.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %24 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connection.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %25, label %if.else29.i [
    i32 2, label %if.then5.i
    i32 1, label %if.then18.i67
  ]

if.then5.i:                                       ; preds = %if.then2.i
  %arrayidx.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp1.not.i.i, label %if.then5.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

if.then5.i.for.inc.i.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.then5.i
  %adjust.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 6
  %29 = ptrtoint ptr %adjust.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %adjust.i.i, align 1
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i)
  %cmp4.not.i.i = icmp eq i8 %bf.lshr.mask.i.i, 64
  br i1 %cmp4.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true6.critedge.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true6.critedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.then5.i.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.not.1.i.i = icmp eq i32 %31, 0
  br i1 %cmp1.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  %adjust.1.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 6
  %32 = ptrtoint ptr %adjust.1.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.1.i.i = load i8, ptr %adjust.1.i.i, align 1
  %bf.lshr.mask.1.i.i = and i8 %bf.load.1.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.1.i.i)
  %cmp4.not.1.i.i = icmp eq i8 %bf.lshr.mask.1.i.i, 64
  br i1 %cmp4.not.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i.land.lhs.true6.critedge.i.i_crit_edge

land.lhs.true.1.i.i.land.lhs.true6.critedge.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i.i

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.not.2.i.i = icmp eq i32 %34, 0
  br i1 %cmp1.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i
  %adjust.2.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 6
  %35 = ptrtoint ptr %adjust.2.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.2.i.i = load i8, ptr %adjust.2.i.i, align 1
  %bf.lshr.mask.2.i.i = and i8 %bf.load.2.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.2.i.i)
  %cmp4.not.2.i.i = icmp eq i8 %bf.lshr.mask.2.i.i, 64
  br i1 %cmp4.not.2.i.i, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i.land.lhs.true6.critedge.i.i_crit_edge

land.lhs.true.2.i.i.land.lhs.true6.critedge.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i.i

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.not.3.i.i = icmp eq i32 %37, 0
  br i1 %cmp1.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

land.lhs.true.3.i.i:                              ; preds = %for.inc.2.i.i
  %adjust.3.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 6
  %38 = ptrtoint ptr %adjust.3.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.3.i.i = load i8, ptr %adjust.3.i.i, align 1
  %bf.lshr.mask.3.i.i = and i8 %bf.load.3.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.3.i.i)
  %cmp4.not.3.i.i = icmp eq i8 %bf.lshr.mask.3.i.i, 64
  br i1 %cmp4.not.3.i.i, label %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.3.i.i.land.lhs.true6.critedge.i.i_crit_edge

land.lhs.true.3.i.i.land.lhs.true6.critedge.i.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i.i

land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge:      ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %arrayidx.4.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.not.4.i.i = icmp eq i32 %40, 0
  br i1 %cmp1.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %land.lhs.true.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

land.lhs.true.4.i.i:                              ; preds = %for.inc.3.i.i
  %adjust.4.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 6
  %41 = ptrtoint ptr %adjust.4.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.4.i.i = load i8, ptr %adjust.4.i.i, align 1
  %bf.lshr.mask.4.i.i = and i8 %bf.load.4.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.4.i.i)
  %cmp4.not.4.i.i = icmp eq i8 %bf.lshr.mask.4.i.i, 64
  br i1 %cmp4.not.4.i.i, label %land.lhs.true.4.i.i.for.inc.4.i.i_crit_edge, label %land.lhs.true.4.i.i.land.lhs.true6.critedge.i.i_crit_edge

land.lhs.true.4.i.i.land.lhs.true6.critedge.i.i_crit_edge: ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i.i

land.lhs.true.4.i.i.for.inc.4.i.i_crit_edge:      ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %land.lhs.true.4.i.i.for.inc.4.i.i_crit_edge, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %arrayidx.5.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1.not.5.i.i = icmp eq i32 %43, 0
  br i1 %cmp1.not.5.i.i, label %for.inc.4.i.i.if.else.i_crit_edge, label %land.lhs.true.5.i.i

for.inc.4.i.i.if.else.i_crit_edge:                ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.5.i.i:                              ; preds = %for.inc.4.i.i
  %adjust.5.i.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 6
  %44 = ptrtoint ptr %adjust.5.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.5.i.i = load i8, ptr %adjust.5.i.i, align 1
  %bf.lshr.mask.5.i.i = and i8 %bf.load.5.i.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.5.i.i)
  %cmp4.not.5.i.i = icmp eq i8 %bf.lshr.mask.5.i.i, 64
  br i1 %cmp4.not.5.i.i, label %land.lhs.true.5.i.i.if.else.i_crit_edge, label %land.lhs.true.5.i.i.land.lhs.true6.critedge.i.i_crit_edge

land.lhs.true.5.i.i.land.lhs.true6.critedge.i.i_crit_edge: ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i.i

land.lhs.true.5.i.i.if.else.i_crit_edge:          ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true6.critedge.i.i:                      ; preds = %land.lhs.true.5.i.i.land.lhs.true6.critedge.i.i_crit_edge, %land.lhs.true.4.i.i.land.lhs.true6.critedge.i.i_crit_edge, %land.lhs.true.3.i.i.land.lhs.true6.critedge.i.i_crit_edge, %land.lhs.true.2.i.i.land.lhs.true6.critedge.i.i_crit_edge, %land.lhs.true.1.i.i.land.lhs.true6.critedge.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true6.critedge.i.i_crit_edge
  %hdcp2.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %45 = ptrtoint ptr %hdcp2.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load8.i.i = load i8, ptr %hdcp2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8.i.i)
  %tobool10.not.i.i = icmp sgt i8 %bf.load8.i.i, -1
  br i1 %tobool10.not.i.i, label %is_cp_desired_hdcp2.exit.i, label %land.lhs.true6.critedge.i.i.if.else.i_crit_edge

land.lhs.true6.critedge.i.i.if.else.i_crit_edge:  ; preds = %land.lhs.true6.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

is_cp_desired_hdcp2.exit.i:                       ; preds = %land.lhs.true6.critedge.i.i
  %is_hdcp2_revoked.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %is_hdcp2_revoked.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_hdcp2_revoked.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool12.not.i.not.i = icmp eq i8 %47, 0
  br i1 %tobool12.not.i.not.i, label %if.then8.i, label %is_cp_desired_hdcp2.exit.i.if.else.i_crit_edge

is_cp_desired_hdcp2.exit.i.if.else.i_crit_edge:   ; preds = %is_cp_desired_hdcp2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then8.i:                                       ; preds = %is_cp_desired_hdcp2.exit.i
  %48 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %output, align 2
  %callback_delay.i.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %49 = ptrtoint ptr %callback_delay.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %callback_delay.i.i, align 2
  %50 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 2305843009213693952, ptr %state.i.i.i, align 4
  %callback_stop.i.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %51 = ptrtoint ptr %callback_stop.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %callback_stop.i.i, align 1
  %watchdog_timer_stop.i.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %52 = ptrtoint ptr %watchdog_timer_stop.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %watchdog_timer_stop.i.i, align 1
  %watchdog_timer_needed.i.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %53 = ptrtoint ptr %watchdog_timer_needed.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %watchdog_timer_needed.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  %index6.i.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %55 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %index6.i.i, align 4
  %conv7.i.i = zext i8 %56 to i32
  %call9.i.i = call ptr @mod_hdcp_state_id_to_str(i32 noundef 32) #7
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %57 = ptrtoint ptr %watchdog_timer_delay.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %watchdog_timer_delay.i.i, align 2
  %conv4.i.i = zext i16 %58 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i.i, ptr noundef %call9.i.i, i32 noundef %conv4.i.i) #7
  br label %if.end30

if.else.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i.i, ptr noundef %call9.i.i) #7
  br label %if.end30

if.else.i:                                        ; preds = %is_cp_desired_hdcp2.exit.i.if.else.i_crit_edge, %land.lhs.true6.critedge.i.i.if.else.i_crit_edge, %land.lhs.true.5.i.i.if.else.i_crit_edge, %for.inc.4.i.i.if.else.i_crit_edge
  br i1 %cmp1.not.i.i, label %if.else.i.for.inc.i126.i_crit_edge, label %land.lhs.true.i123.i

if.else.i.for.inc.i126.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i126.i

land.lhs.true.i123.i:                             ; preds = %if.else.i
  %adjust.i119.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 6
  %59 = ptrtoint ptr %adjust.i119.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i120.i = load i8, ptr %adjust.i119.i, align 1
  %bf.lshr.mask.i121.i = and i8 %bf.load.i120.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i121.i)
  %cmp4.not.i122.i = icmp eq i8 %bf.lshr.mask.i121.i, 64
  br i1 %cmp4.not.i122.i, label %land.lhs.true.i123.i.for.inc.i126.i_crit_edge, label %land.lhs.true.i123.i.land.lhs.true6.critedge.i166.i_crit_edge

land.lhs.true.i123.i.land.lhs.true6.critedge.i166.i_crit_edge: ; preds = %land.lhs.true.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i166.i

land.lhs.true.i123.i.for.inc.i126.i_crit_edge:    ; preds = %land.lhs.true.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i126.i

for.inc.i126.i:                                   ; preds = %land.lhs.true.i123.i.for.inc.i126.i_crit_edge, %if.else.i.for.inc.i126.i_crit_edge
  %arrayidx.1.i124.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i124.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.1.i124.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1.not.1.i125.i = icmp eq i32 %61, 0
  br i1 %cmp1.not.1.i125.i, label %for.inc.i126.i.for.inc.1.i134.i_crit_edge, label %land.lhs.true.1.i131.i

for.inc.i126.i.for.inc.1.i134.i_crit_edge:        ; preds = %for.inc.i126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i134.i

land.lhs.true.1.i131.i:                           ; preds = %for.inc.i126.i
  %adjust.1.i127.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 6
  %62 = ptrtoint ptr %adjust.1.i127.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.1.i128.i = load i8, ptr %adjust.1.i127.i, align 1
  %bf.lshr.mask.1.i129.i = and i8 %bf.load.1.i128.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.1.i129.i)
  %cmp4.not.1.i130.i = icmp eq i8 %bf.lshr.mask.1.i129.i, 64
  br i1 %cmp4.not.1.i130.i, label %land.lhs.true.1.i131.i.for.inc.1.i134.i_crit_edge, label %land.lhs.true.1.i131.i.land.lhs.true6.critedge.i166.i_crit_edge

land.lhs.true.1.i131.i.land.lhs.true6.critedge.i166.i_crit_edge: ; preds = %land.lhs.true.1.i131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i166.i

land.lhs.true.1.i131.i.for.inc.1.i134.i_crit_edge: ; preds = %land.lhs.true.1.i131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i134.i

for.inc.1.i134.i:                                 ; preds = %land.lhs.true.1.i131.i.for.inc.1.i134.i_crit_edge, %for.inc.i126.i.for.inc.1.i134.i_crit_edge
  %arrayidx.2.i132.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %63 = ptrtoint ptr %arrayidx.2.i132.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.2.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1.not.2.i133.i = icmp eq i32 %64, 0
  br i1 %cmp1.not.2.i133.i, label %for.inc.1.i134.i.for.inc.2.i142.i_crit_edge, label %land.lhs.true.2.i139.i

for.inc.1.i134.i.for.inc.2.i142.i_crit_edge:      ; preds = %for.inc.1.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i142.i

land.lhs.true.2.i139.i:                           ; preds = %for.inc.1.i134.i
  %adjust.2.i135.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 6
  %65 = ptrtoint ptr %adjust.2.i135.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.2.i136.i = load i8, ptr %adjust.2.i135.i, align 1
  %bf.lshr.mask.2.i137.i = and i8 %bf.load.2.i136.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.2.i137.i)
  %cmp4.not.2.i138.i = icmp eq i8 %bf.lshr.mask.2.i137.i, 64
  br i1 %cmp4.not.2.i138.i, label %land.lhs.true.2.i139.i.for.inc.2.i142.i_crit_edge, label %land.lhs.true.2.i139.i.land.lhs.true6.critedge.i166.i_crit_edge

land.lhs.true.2.i139.i.land.lhs.true6.critedge.i166.i_crit_edge: ; preds = %land.lhs.true.2.i139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i166.i

land.lhs.true.2.i139.i.for.inc.2.i142.i_crit_edge: ; preds = %land.lhs.true.2.i139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i142.i

for.inc.2.i142.i:                                 ; preds = %land.lhs.true.2.i139.i.for.inc.2.i142.i_crit_edge, %for.inc.1.i134.i.for.inc.2.i142.i_crit_edge
  %arrayidx.3.i140.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %arrayidx.3.i140.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.3.i140.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.not.3.i141.i = icmp eq i32 %67, 0
  br i1 %cmp1.not.3.i141.i, label %for.inc.2.i142.i.for.inc.3.i150.i_crit_edge, label %land.lhs.true.3.i147.i

for.inc.2.i142.i.for.inc.3.i150.i_crit_edge:      ; preds = %for.inc.2.i142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i150.i

land.lhs.true.3.i147.i:                           ; preds = %for.inc.2.i142.i
  %adjust.3.i143.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 6
  %68 = ptrtoint ptr %adjust.3.i143.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.3.i144.i = load i8, ptr %adjust.3.i143.i, align 1
  %bf.lshr.mask.3.i145.i = and i8 %bf.load.3.i144.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.3.i145.i)
  %cmp4.not.3.i146.i = icmp eq i8 %bf.lshr.mask.3.i145.i, 64
  br i1 %cmp4.not.3.i146.i, label %land.lhs.true.3.i147.i.for.inc.3.i150.i_crit_edge, label %land.lhs.true.3.i147.i.land.lhs.true6.critedge.i166.i_crit_edge

land.lhs.true.3.i147.i.land.lhs.true6.critedge.i166.i_crit_edge: ; preds = %land.lhs.true.3.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i166.i

land.lhs.true.3.i147.i.for.inc.3.i150.i_crit_edge: ; preds = %land.lhs.true.3.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i150.i

for.inc.3.i150.i:                                 ; preds = %land.lhs.true.3.i147.i.for.inc.3.i150.i_crit_edge, %for.inc.2.i142.i.for.inc.3.i150.i_crit_edge
  %arrayidx.4.i148.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %arrayidx.4.i148.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.4.i148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp1.not.4.i149.i = icmp eq i32 %70, 0
  br i1 %cmp1.not.4.i149.i, label %for.inc.3.i150.i.for.inc.4.i158.i_crit_edge, label %land.lhs.true.4.i155.i

for.inc.3.i150.i.for.inc.4.i158.i_crit_edge:      ; preds = %for.inc.3.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i158.i

land.lhs.true.4.i155.i:                           ; preds = %for.inc.3.i150.i
  %adjust.4.i151.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 6
  %71 = ptrtoint ptr %adjust.4.i151.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.4.i152.i = load i8, ptr %adjust.4.i151.i, align 1
  %bf.lshr.mask.4.i153.i = and i8 %bf.load.4.i152.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.4.i153.i)
  %cmp4.not.4.i154.i = icmp eq i8 %bf.lshr.mask.4.i153.i, 64
  br i1 %cmp4.not.4.i154.i, label %land.lhs.true.4.i155.i.for.inc.4.i158.i_crit_edge, label %land.lhs.true.4.i155.i.land.lhs.true6.critedge.i166.i_crit_edge

land.lhs.true.4.i155.i.land.lhs.true6.critedge.i166.i_crit_edge: ; preds = %land.lhs.true.4.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i166.i

land.lhs.true.4.i155.i.for.inc.4.i158.i_crit_edge: ; preds = %land.lhs.true.4.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i158.i

for.inc.4.i158.i:                                 ; preds = %land.lhs.true.4.i155.i.for.inc.4.i158.i_crit_edge, %for.inc.3.i150.i.for.inc.4.i158.i_crit_edge
  %arrayidx.5.i156.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %72 = ptrtoint ptr %arrayidx.5.i156.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.5.i156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp1.not.5.i157.i = icmp eq i32 %73, 0
  br i1 %cmp1.not.5.i157.i, label %for.inc.4.i158.i.if.else12.i_crit_edge, label %land.lhs.true.5.i163.i

for.inc.4.i158.i.if.else12.i_crit_edge:           ; preds = %for.inc.4.i158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else12.i

land.lhs.true.5.i163.i:                           ; preds = %for.inc.4.i158.i
  %adjust.5.i159.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 6
  %74 = ptrtoint ptr %adjust.5.i159.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.5.i160.i = load i8, ptr %adjust.5.i159.i, align 1
  %bf.lshr.mask.5.i161.i = and i8 %bf.load.5.i160.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.5.i161.i)
  %cmp4.not.5.i162.i = icmp eq i8 %bf.lshr.mask.5.i161.i, 64
  br i1 %cmp4.not.5.i162.i, label %land.lhs.true.5.i163.i.if.else12.i_crit_edge, label %land.lhs.true.5.i163.i.land.lhs.true6.critedge.i166.i_crit_edge

land.lhs.true.5.i163.i.land.lhs.true6.critedge.i166.i_crit_edge: ; preds = %land.lhs.true.5.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i166.i

land.lhs.true.5.i163.i.if.else12.i_crit_edge:     ; preds = %land.lhs.true.5.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else12.i

land.lhs.true6.critedge.i166.i:                   ; preds = %land.lhs.true.5.i163.i.land.lhs.true6.critedge.i166.i_crit_edge, %land.lhs.true.4.i155.i.land.lhs.true6.critedge.i166.i_crit_edge, %land.lhs.true.3.i147.i.land.lhs.true6.critedge.i166.i_crit_edge, %land.lhs.true.2.i139.i.land.lhs.true6.critedge.i166.i_crit_edge, %land.lhs.true.1.i131.i.land.lhs.true6.critedge.i166.i_crit_edge, %land.lhs.true.i123.i.land.lhs.true6.critedge.i166.i_crit_edge
  %hdcp1.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %hdcp1.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load8.i164.i = load i8, ptr %hdcp1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8.i164.i)
  %tobool10.not.i165.i = icmp sgt i8 %bf.load8.i164.i, -1
  br i1 %tobool10.not.i165.i, label %is_cp_desired_hdcp1.exit.i, label %land.lhs.true6.critedge.i166.i.if.else12.i_crit_edge

land.lhs.true6.critedge.i166.i.if.else12.i_crit_edge: ; preds = %land.lhs.true6.critedge.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else12.i

is_cp_desired_hdcp1.exit.i:                       ; preds = %land.lhs.true6.critedge.i166.i
  %is_hdcp1_revoked.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %is_hdcp1_revoked.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %is_hdcp1_revoked.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool12.not.i167.not.i = icmp eq i8 %77, 0
  br i1 %tobool12.not.i167.not.i, label %if.then11.i, label %is_cp_desired_hdcp1.exit.i.if.else12.i_crit_edge

is_cp_desired_hdcp1.exit.i.if.else12.i_crit_edge: ; preds = %is_cp_desired_hdcp1.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else12.i

if.then11.i:                                      ; preds = %is_cp_desired_hdcp1.exit.i
  %78 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %output, align 2
  %callback_delay.i170.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %79 = ptrtoint ptr %callback_delay.i170.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %callback_delay.i170.i, align 2
  %80 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 648518346341351424, ptr %state.i.i.i, align 4
  %callback_stop.i172.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %81 = ptrtoint ptr %callback_stop.i172.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %callback_stop.i172.i, align 1
  %watchdog_timer_stop.i173.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %82 = ptrtoint ptr %watchdog_timer_stop.i173.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %watchdog_timer_stop.i173.i, align 1
  %watchdog_timer_needed.i174.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %83 = ptrtoint ptr %watchdog_timer_needed.i174.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %watchdog_timer_needed.i174.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i175.i = icmp eq i8 %84, 0
  %index6.i176.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %85 = ptrtoint ptr %index6.i176.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %index6.i176.i, align 4
  %conv7.i177.i = zext i8 %86 to i32
  %call9.i178.i = call ptr @mod_hdcp_state_id_to_str(i32 noundef 9) #7
  br i1 %tobool.not.i175.i, label %if.else.i182.i, label %if.then.i181.i

if.then.i181.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i179.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %87 = ptrtoint ptr %watchdog_timer_delay.i179.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %watchdog_timer_delay.i179.i, align 2
  %conv4.i180.i = zext i16 %88 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i177.i, ptr noundef %call9.i178.i, i32 noundef %conv4.i180.i) #7
  br label %if.end30

if.else.i182.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i177.i, ptr noundef %call9.i178.i) #7
  br label %if.end30

if.else12.i:                                      ; preds = %is_cp_desired_hdcp1.exit.i.if.else12.i_crit_edge, %land.lhs.true6.critedge.i166.i.if.else12.i_crit_edge, %land.lhs.true.5.i163.i.if.else12.i_crit_edge, %for.inc.4.i158.i.if.else12.i_crit_edge
  %89 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %output, align 2
  %callback_delay.i184.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %90 = ptrtoint ptr %callback_delay.i184.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %callback_delay.i184.i, align 2
  %91 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 144115188075855872, ptr %state.i.i.i, align 4
  %callback_stop.i186.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %92 = ptrtoint ptr %callback_stop.i186.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %callback_stop.i186.i, align 1
  %watchdog_timer_stop.i187.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %93 = ptrtoint ptr %watchdog_timer_stop.i187.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %watchdog_timer_stop.i187.i, align 1
  %watchdog_timer_needed.i188.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %94 = ptrtoint ptr %watchdog_timer_needed.i188.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %watchdog_timer_needed.i188.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i189.i = icmp eq i8 %95, 0
  %index6.i190.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %96 = ptrtoint ptr %index6.i190.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %index6.i190.i, align 4
  %conv7.i191.i = zext i8 %97 to i32
  %call9.i192.i = call ptr @mod_hdcp_state_id_to_str(i32 noundef 2) #7
  br i1 %tobool.not.i189.i, label %if.else.i196.i, label %if.then.i195.i

if.then.i195.i:                                   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i193.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %98 = ptrtoint ptr %watchdog_timer_delay.i193.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %watchdog_timer_delay.i193.i, align 2
  %conv4.i194.i = zext i16 %99 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i191.i, ptr noundef %call9.i192.i, i32 noundef %conv4.i194.i) #7
  br label %set_state_id.exit197.i

if.else.i196.i:                                   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i191.i, ptr noundef %call9.i192.i) #7
  br label %set_state_id.exit197.i

set_state_id.exit197.i:                           ; preds = %if.else.i196.i, %if.then.i195.i
  %auth_complete.i.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %100 = ptrtoint ptr %auth_complete.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %auth_complete.i.i, align 2
  call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #7
  br label %if.end30

if.then18.i67:                                    ; preds = %if.then2.i
  %arrayidx.i201.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %101 = ptrtoint ptr %arrayidx.i201.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i201.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp1.not.i202.i = icmp eq i32 %102, 0
  br i1 %cmp1.not.i202.i, label %if.then18.i67.for.inc.i210.i_crit_edge, label %land.lhs.true.i207.i

if.then18.i67.for.inc.i210.i_crit_edge:           ; preds = %if.then18.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i210.i

land.lhs.true.i207.i:                             ; preds = %if.then18.i67
  %adjust.i203.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 6
  %103 = ptrtoint ptr %adjust.i203.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load.i204.i = load i8, ptr %adjust.i203.i, align 1
  %bf.lshr.mask.i205.i = and i8 %bf.load.i204.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i205.i)
  %cmp4.not.i206.i = icmp eq i8 %bf.lshr.mask.i205.i, 64
  br i1 %cmp4.not.i206.i, label %land.lhs.true.i207.i.for.inc.i210.i_crit_edge, label %land.lhs.true.i207.i.land.lhs.true6.critedge.i251.i_crit_edge

land.lhs.true.i207.i.land.lhs.true6.critedge.i251.i_crit_edge: ; preds = %land.lhs.true.i207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i251.i

land.lhs.true.i207.i.for.inc.i210.i_crit_edge:    ; preds = %land.lhs.true.i207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i210.i

for.inc.i210.i:                                   ; preds = %land.lhs.true.i207.i.for.inc.i210.i_crit_edge, %if.then18.i67.for.inc.i210.i_crit_edge
  %arrayidx.1.i208.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %104 = ptrtoint ptr %arrayidx.1.i208.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.1.i208.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp1.not.1.i209.i = icmp eq i32 %105, 0
  br i1 %cmp1.not.1.i209.i, label %for.inc.i210.i.for.inc.1.i218.i_crit_edge, label %land.lhs.true.1.i215.i

for.inc.i210.i.for.inc.1.i218.i_crit_edge:        ; preds = %for.inc.i210.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i218.i

land.lhs.true.1.i215.i:                           ; preds = %for.inc.i210.i
  %adjust.1.i211.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 6
  %106 = ptrtoint ptr %adjust.1.i211.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.1.i212.i = load i8, ptr %adjust.1.i211.i, align 1
  %bf.lshr.mask.1.i213.i = and i8 %bf.load.1.i212.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.1.i213.i)
  %cmp4.not.1.i214.i = icmp eq i8 %bf.lshr.mask.1.i213.i, 64
  br i1 %cmp4.not.1.i214.i, label %land.lhs.true.1.i215.i.for.inc.1.i218.i_crit_edge, label %land.lhs.true.1.i215.i.land.lhs.true6.critedge.i251.i_crit_edge

land.lhs.true.1.i215.i.land.lhs.true6.critedge.i251.i_crit_edge: ; preds = %land.lhs.true.1.i215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i251.i

land.lhs.true.1.i215.i.for.inc.1.i218.i_crit_edge: ; preds = %land.lhs.true.1.i215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i218.i

for.inc.1.i218.i:                                 ; preds = %land.lhs.true.1.i215.i.for.inc.1.i218.i_crit_edge, %for.inc.i210.i.for.inc.1.i218.i_crit_edge
  %arrayidx.2.i216.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %107 = ptrtoint ptr %arrayidx.2.i216.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.2.i216.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp1.not.2.i217.i = icmp eq i32 %108, 0
  br i1 %cmp1.not.2.i217.i, label %for.inc.1.i218.i.for.inc.2.i226.i_crit_edge, label %land.lhs.true.2.i223.i

for.inc.1.i218.i.for.inc.2.i226.i_crit_edge:      ; preds = %for.inc.1.i218.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i226.i

land.lhs.true.2.i223.i:                           ; preds = %for.inc.1.i218.i
  %adjust.2.i219.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 6
  %109 = ptrtoint ptr %adjust.2.i219.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load.2.i220.i = load i8, ptr %adjust.2.i219.i, align 1
  %bf.lshr.mask.2.i221.i = and i8 %bf.load.2.i220.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.2.i221.i)
  %cmp4.not.2.i222.i = icmp eq i8 %bf.lshr.mask.2.i221.i, 64
  br i1 %cmp4.not.2.i222.i, label %land.lhs.true.2.i223.i.for.inc.2.i226.i_crit_edge, label %land.lhs.true.2.i223.i.land.lhs.true6.critedge.i251.i_crit_edge

land.lhs.true.2.i223.i.land.lhs.true6.critedge.i251.i_crit_edge: ; preds = %land.lhs.true.2.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i251.i

land.lhs.true.2.i223.i.for.inc.2.i226.i_crit_edge: ; preds = %land.lhs.true.2.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i226.i

for.inc.2.i226.i:                                 ; preds = %land.lhs.true.2.i223.i.for.inc.2.i226.i_crit_edge, %for.inc.1.i218.i.for.inc.2.i226.i_crit_edge
  %arrayidx.3.i224.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %110 = ptrtoint ptr %arrayidx.3.i224.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.3.i224.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp1.not.3.i225.i = icmp eq i32 %111, 0
  br i1 %cmp1.not.3.i225.i, label %for.inc.2.i226.i.for.inc.3.i234.i_crit_edge, label %land.lhs.true.3.i231.i

for.inc.2.i226.i.for.inc.3.i234.i_crit_edge:      ; preds = %for.inc.2.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i234.i

land.lhs.true.3.i231.i:                           ; preds = %for.inc.2.i226.i
  %adjust.3.i227.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 6
  %112 = ptrtoint ptr %adjust.3.i227.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.3.i228.i = load i8, ptr %adjust.3.i227.i, align 1
  %bf.lshr.mask.3.i229.i = and i8 %bf.load.3.i228.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.3.i229.i)
  %cmp4.not.3.i230.i = icmp eq i8 %bf.lshr.mask.3.i229.i, 64
  br i1 %cmp4.not.3.i230.i, label %land.lhs.true.3.i231.i.for.inc.3.i234.i_crit_edge, label %land.lhs.true.3.i231.i.land.lhs.true6.critedge.i251.i_crit_edge

land.lhs.true.3.i231.i.land.lhs.true6.critedge.i251.i_crit_edge: ; preds = %land.lhs.true.3.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i251.i

land.lhs.true.3.i231.i.for.inc.3.i234.i_crit_edge: ; preds = %land.lhs.true.3.i231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i234.i

for.inc.3.i234.i:                                 ; preds = %land.lhs.true.3.i231.i.for.inc.3.i234.i_crit_edge, %for.inc.2.i226.i.for.inc.3.i234.i_crit_edge
  %arrayidx.4.i232.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %113 = ptrtoint ptr %arrayidx.4.i232.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.4.i232.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp1.not.4.i233.i = icmp eq i32 %114, 0
  br i1 %cmp1.not.4.i233.i, label %for.inc.3.i234.i.for.inc.4.i242.i_crit_edge, label %land.lhs.true.4.i239.i

for.inc.3.i234.i.for.inc.4.i242.i_crit_edge:      ; preds = %for.inc.3.i234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i242.i

land.lhs.true.4.i239.i:                           ; preds = %for.inc.3.i234.i
  %adjust.4.i235.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 6
  %115 = ptrtoint ptr %adjust.4.i235.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load.4.i236.i = load i8, ptr %adjust.4.i235.i, align 1
  %bf.lshr.mask.4.i237.i = and i8 %bf.load.4.i236.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.4.i237.i)
  %cmp4.not.4.i238.i = icmp eq i8 %bf.lshr.mask.4.i237.i, 64
  br i1 %cmp4.not.4.i238.i, label %land.lhs.true.4.i239.i.for.inc.4.i242.i_crit_edge, label %land.lhs.true.4.i239.i.land.lhs.true6.critedge.i251.i_crit_edge

land.lhs.true.4.i239.i.land.lhs.true6.critedge.i251.i_crit_edge: ; preds = %land.lhs.true.4.i239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i251.i

land.lhs.true.4.i239.i.for.inc.4.i242.i_crit_edge: ; preds = %land.lhs.true.4.i239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i242.i

for.inc.4.i242.i:                                 ; preds = %land.lhs.true.4.i239.i.for.inc.4.i242.i_crit_edge, %for.inc.3.i234.i.for.inc.4.i242.i_crit_edge
  %arrayidx.5.i240.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %116 = ptrtoint ptr %arrayidx.5.i240.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.5.i240.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp1.not.5.i241.i = icmp eq i32 %117, 0
  br i1 %cmp1.not.5.i241.i, label %for.inc.4.i242.i.if.else22.i_crit_edge, label %land.lhs.true.5.i247.i

for.inc.4.i242.i.if.else22.i_crit_edge:           ; preds = %for.inc.4.i242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.i

land.lhs.true.5.i247.i:                           ; preds = %for.inc.4.i242.i
  %adjust.5.i243.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 6
  %118 = ptrtoint ptr %adjust.5.i243.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load.5.i244.i = load i8, ptr %adjust.5.i243.i, align 1
  %bf.lshr.mask.5.i245.i = and i8 %bf.load.5.i244.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.5.i245.i)
  %cmp4.not.5.i246.i = icmp eq i8 %bf.lshr.mask.5.i245.i, 64
  br i1 %cmp4.not.5.i246.i, label %land.lhs.true.5.i247.i.if.else22.i_crit_edge, label %land.lhs.true.5.i247.i.land.lhs.true6.critedge.i251.i_crit_edge

land.lhs.true.5.i247.i.land.lhs.true6.critedge.i251.i_crit_edge: ; preds = %land.lhs.true.5.i247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i251.i

land.lhs.true.5.i247.i.if.else22.i_crit_edge:     ; preds = %land.lhs.true.5.i247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.i

land.lhs.true6.critedge.i251.i:                   ; preds = %land.lhs.true.5.i247.i.land.lhs.true6.critedge.i251.i_crit_edge, %land.lhs.true.4.i239.i.land.lhs.true6.critedge.i251.i_crit_edge, %land.lhs.true.3.i231.i.land.lhs.true6.critedge.i251.i_crit_edge, %land.lhs.true.2.i223.i.land.lhs.true6.critedge.i251.i_crit_edge, %land.lhs.true.1.i215.i.land.lhs.true6.critedge.i251.i_crit_edge, %land.lhs.true.i207.i.land.lhs.true6.critedge.i251.i_crit_edge
  %hdcp2.i248.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %119 = ptrtoint ptr %hdcp2.i248.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load8.i249.i = load i8, ptr %hdcp2.i248.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8.i249.i)
  %tobool10.not.i250.i = icmp sgt i8 %bf.load8.i249.i, -1
  br i1 %tobool10.not.i250.i, label %is_cp_desired_hdcp2.exit256.i, label %land.lhs.true6.critedge.i251.i.if.else22.i_crit_edge

land.lhs.true6.critedge.i251.i.if.else22.i_crit_edge: ; preds = %land.lhs.true6.critedge.i251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.i

is_cp_desired_hdcp2.exit256.i:                    ; preds = %land.lhs.true6.critedge.i251.i
  %is_hdcp2_revoked.i252.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 4
  %120 = ptrtoint ptr %is_hdcp2_revoked.i252.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_hdcp2_revoked.i252.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool12.not.i253.not.i = icmp eq i8 %121, 0
  br i1 %tobool12.not.i253.not.i, label %if.then21.i, label %is_cp_desired_hdcp2.exit256.i.if.else22.i_crit_edge

is_cp_desired_hdcp2.exit256.i.if.else22.i_crit_edge: ; preds = %is_cp_desired_hdcp2.exit256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else22.i

if.then21.i:                                      ; preds = %is_cp_desired_hdcp2.exit256.i
  %122 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %output, align 2
  %callback_delay.i257.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %123 = ptrtoint ptr %callback_delay.i257.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %callback_delay.i257.i, align 2
  %124 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 1152921504606846976, ptr %state.i.i.i, align 4
  %callback_stop.i259.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %125 = ptrtoint ptr %callback_stop.i259.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %callback_stop.i259.i, align 1
  %watchdog_timer_stop.i260.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %126 = ptrtoint ptr %watchdog_timer_stop.i260.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %watchdog_timer_stop.i260.i, align 1
  %watchdog_timer_needed.i261.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %127 = ptrtoint ptr %watchdog_timer_needed.i261.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %watchdog_timer_needed.i261.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i262.i = icmp eq i8 %128, 0
  %index6.i263.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %129 = ptrtoint ptr %index6.i263.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %index6.i263.i, align 4
  %conv7.i264.i = zext i8 %130 to i32
  %call9.i265.i = call ptr @mod_hdcp_state_id_to_str(i32 noundef 16) #7
  br i1 %tobool.not.i262.i, label %if.else.i269.i, label %if.then.i268.i

if.then.i268.i:                                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i266.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %131 = ptrtoint ptr %watchdog_timer_delay.i266.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %watchdog_timer_delay.i266.i, align 2
  %conv4.i267.i = zext i16 %132 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i264.i, ptr noundef %call9.i265.i, i32 noundef %conv4.i267.i) #7
  br label %if.end30

if.else.i269.i:                                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i264.i, ptr noundef %call9.i265.i) #7
  br label %if.end30

if.else22.i:                                      ; preds = %is_cp_desired_hdcp2.exit256.i.if.else22.i_crit_edge, %land.lhs.true6.critedge.i251.i.if.else22.i_crit_edge, %land.lhs.true.5.i247.i.if.else22.i_crit_edge, %for.inc.4.i242.i.if.else22.i_crit_edge
  br i1 %cmp1.not.i202.i, label %if.else22.i.for.inc.i280.i_crit_edge, label %land.lhs.true.i277.i

if.else22.i.for.inc.i280.i_crit_edge:             ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i280.i

land.lhs.true.i277.i:                             ; preds = %if.else22.i
  %adjust.i273.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 6
  %133 = ptrtoint ptr %adjust.i273.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load.i274.i = load i8, ptr %adjust.i273.i, align 1
  %bf.lshr.mask.i275.i = and i8 %bf.load.i274.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i275.i)
  %cmp4.not.i276.i = icmp eq i8 %bf.lshr.mask.i275.i, 64
  br i1 %cmp4.not.i276.i, label %land.lhs.true.i277.i.for.inc.i280.i_crit_edge, label %land.lhs.true.i277.i.land.lhs.true6.critedge.i321.i_crit_edge

land.lhs.true.i277.i.land.lhs.true6.critedge.i321.i_crit_edge: ; preds = %land.lhs.true.i277.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i321.i

land.lhs.true.i277.i.for.inc.i280.i_crit_edge:    ; preds = %land.lhs.true.i277.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i280.i

for.inc.i280.i:                                   ; preds = %land.lhs.true.i277.i.for.inc.i280.i_crit_edge, %if.else22.i.for.inc.i280.i_crit_edge
  %arrayidx.1.i278.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %134 = ptrtoint ptr %arrayidx.1.i278.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.1.i278.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp1.not.1.i279.i = icmp eq i32 %135, 0
  br i1 %cmp1.not.1.i279.i, label %for.inc.i280.i.for.inc.1.i288.i_crit_edge, label %land.lhs.true.1.i285.i

for.inc.i280.i.for.inc.1.i288.i_crit_edge:        ; preds = %for.inc.i280.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i288.i

land.lhs.true.1.i285.i:                           ; preds = %for.inc.i280.i
  %adjust.1.i281.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 6
  %136 = ptrtoint ptr %adjust.1.i281.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load.1.i282.i = load i8, ptr %adjust.1.i281.i, align 1
  %bf.lshr.mask.1.i283.i = and i8 %bf.load.1.i282.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.1.i283.i)
  %cmp4.not.1.i284.i = icmp eq i8 %bf.lshr.mask.1.i283.i, 64
  br i1 %cmp4.not.1.i284.i, label %land.lhs.true.1.i285.i.for.inc.1.i288.i_crit_edge, label %land.lhs.true.1.i285.i.land.lhs.true6.critedge.i321.i_crit_edge

land.lhs.true.1.i285.i.land.lhs.true6.critedge.i321.i_crit_edge: ; preds = %land.lhs.true.1.i285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i321.i

land.lhs.true.1.i285.i.for.inc.1.i288.i_crit_edge: ; preds = %land.lhs.true.1.i285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i288.i

for.inc.1.i288.i:                                 ; preds = %land.lhs.true.1.i285.i.for.inc.1.i288.i_crit_edge, %for.inc.i280.i.for.inc.1.i288.i_crit_edge
  %arrayidx.2.i286.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %137 = ptrtoint ptr %arrayidx.2.i286.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.2.i286.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp1.not.2.i287.i = icmp eq i32 %138, 0
  br i1 %cmp1.not.2.i287.i, label %for.inc.1.i288.i.for.inc.2.i296.i_crit_edge, label %land.lhs.true.2.i293.i

for.inc.1.i288.i.for.inc.2.i296.i_crit_edge:      ; preds = %for.inc.1.i288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i296.i

land.lhs.true.2.i293.i:                           ; preds = %for.inc.1.i288.i
  %adjust.2.i289.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 6
  %139 = ptrtoint ptr %adjust.2.i289.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load.2.i290.i = load i8, ptr %adjust.2.i289.i, align 1
  %bf.lshr.mask.2.i291.i = and i8 %bf.load.2.i290.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.2.i291.i)
  %cmp4.not.2.i292.i = icmp eq i8 %bf.lshr.mask.2.i291.i, 64
  br i1 %cmp4.not.2.i292.i, label %land.lhs.true.2.i293.i.for.inc.2.i296.i_crit_edge, label %land.lhs.true.2.i293.i.land.lhs.true6.critedge.i321.i_crit_edge

land.lhs.true.2.i293.i.land.lhs.true6.critedge.i321.i_crit_edge: ; preds = %land.lhs.true.2.i293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i321.i

land.lhs.true.2.i293.i.for.inc.2.i296.i_crit_edge: ; preds = %land.lhs.true.2.i293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i296.i

for.inc.2.i296.i:                                 ; preds = %land.lhs.true.2.i293.i.for.inc.2.i296.i_crit_edge, %for.inc.1.i288.i.for.inc.2.i296.i_crit_edge
  %arrayidx.3.i294.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %140 = ptrtoint ptr %arrayidx.3.i294.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.3.i294.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp1.not.3.i295.i = icmp eq i32 %141, 0
  br i1 %cmp1.not.3.i295.i, label %for.inc.2.i296.i.for.inc.3.i304.i_crit_edge, label %land.lhs.true.3.i301.i

for.inc.2.i296.i.for.inc.3.i304.i_crit_edge:      ; preds = %for.inc.2.i296.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i304.i

land.lhs.true.3.i301.i:                           ; preds = %for.inc.2.i296.i
  %adjust.3.i297.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 6
  %142 = ptrtoint ptr %adjust.3.i297.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load.3.i298.i = load i8, ptr %adjust.3.i297.i, align 1
  %bf.lshr.mask.3.i299.i = and i8 %bf.load.3.i298.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.3.i299.i)
  %cmp4.not.3.i300.i = icmp eq i8 %bf.lshr.mask.3.i299.i, 64
  br i1 %cmp4.not.3.i300.i, label %land.lhs.true.3.i301.i.for.inc.3.i304.i_crit_edge, label %land.lhs.true.3.i301.i.land.lhs.true6.critedge.i321.i_crit_edge

land.lhs.true.3.i301.i.land.lhs.true6.critedge.i321.i_crit_edge: ; preds = %land.lhs.true.3.i301.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i321.i

land.lhs.true.3.i301.i.for.inc.3.i304.i_crit_edge: ; preds = %land.lhs.true.3.i301.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i304.i

for.inc.3.i304.i:                                 ; preds = %land.lhs.true.3.i301.i.for.inc.3.i304.i_crit_edge, %for.inc.2.i296.i.for.inc.3.i304.i_crit_edge
  %arrayidx.4.i302.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %143 = ptrtoint ptr %arrayidx.4.i302.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.4.i302.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp1.not.4.i303.i = icmp eq i32 %144, 0
  br i1 %cmp1.not.4.i303.i, label %for.inc.3.i304.i.for.inc.4.i312.i_crit_edge, label %land.lhs.true.4.i309.i

for.inc.3.i304.i.for.inc.4.i312.i_crit_edge:      ; preds = %for.inc.3.i304.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i312.i

land.lhs.true.4.i309.i:                           ; preds = %for.inc.3.i304.i
  %adjust.4.i305.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 6
  %145 = ptrtoint ptr %adjust.4.i305.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load.4.i306.i = load i8, ptr %adjust.4.i305.i, align 1
  %bf.lshr.mask.4.i307.i = and i8 %bf.load.4.i306.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.4.i307.i)
  %cmp4.not.4.i308.i = icmp eq i8 %bf.lshr.mask.4.i307.i, 64
  br i1 %cmp4.not.4.i308.i, label %land.lhs.true.4.i309.i.for.inc.4.i312.i_crit_edge, label %land.lhs.true.4.i309.i.land.lhs.true6.critedge.i321.i_crit_edge

land.lhs.true.4.i309.i.land.lhs.true6.critedge.i321.i_crit_edge: ; preds = %land.lhs.true.4.i309.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i321.i

land.lhs.true.4.i309.i.for.inc.4.i312.i_crit_edge: ; preds = %land.lhs.true.4.i309.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i312.i

for.inc.4.i312.i:                                 ; preds = %land.lhs.true.4.i309.i.for.inc.4.i312.i_crit_edge, %for.inc.3.i304.i.for.inc.4.i312.i_crit_edge
  %arrayidx.5.i310.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %146 = ptrtoint ptr %arrayidx.5.i310.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.5.i310.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp1.not.5.i311.i = icmp eq i32 %147, 0
  br i1 %cmp1.not.5.i311.i, label %for.inc.4.i312.i.if.else26.i_crit_edge, label %land.lhs.true.5.i317.i

for.inc.4.i312.i.if.else26.i_crit_edge:           ; preds = %for.inc.4.i312.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26.i

land.lhs.true.5.i317.i:                           ; preds = %for.inc.4.i312.i
  %adjust.5.i313.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 6
  %148 = ptrtoint ptr %adjust.5.i313.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load.5.i314.i = load i8, ptr %adjust.5.i313.i, align 1
  %bf.lshr.mask.5.i315.i = and i8 %bf.load.5.i314.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.5.i315.i)
  %cmp4.not.5.i316.i = icmp eq i8 %bf.lshr.mask.5.i315.i, 64
  br i1 %cmp4.not.5.i316.i, label %land.lhs.true.5.i317.i.if.else26.i_crit_edge, label %land.lhs.true.5.i317.i.land.lhs.true6.critedge.i321.i_crit_edge

land.lhs.true.5.i317.i.land.lhs.true6.critedge.i321.i_crit_edge: ; preds = %land.lhs.true.5.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true6.critedge.i321.i

land.lhs.true.5.i317.i.if.else26.i_crit_edge:     ; preds = %land.lhs.true.5.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26.i

land.lhs.true6.critedge.i321.i:                   ; preds = %land.lhs.true.5.i317.i.land.lhs.true6.critedge.i321.i_crit_edge, %land.lhs.true.4.i309.i.land.lhs.true6.critedge.i321.i_crit_edge, %land.lhs.true.3.i301.i.land.lhs.true6.critedge.i321.i_crit_edge, %land.lhs.true.2.i293.i.land.lhs.true6.critedge.i321.i_crit_edge, %land.lhs.true.1.i285.i.land.lhs.true6.critedge.i321.i_crit_edge, %land.lhs.true.i277.i.land.lhs.true6.critedge.i321.i_crit_edge
  %hdcp1.i318.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %149 = ptrtoint ptr %hdcp1.i318.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load8.i319.i = load i8, ptr %hdcp1.i318.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8.i319.i)
  %tobool10.not.i320.i = icmp sgt i8 %bf.load8.i319.i, -1
  br i1 %tobool10.not.i320.i, label %is_cp_desired_hdcp1.exit326.i, label %land.lhs.true6.critedge.i321.i.if.else26.i_crit_edge

land.lhs.true6.critedge.i321.i.if.else26.i_crit_edge: ; preds = %land.lhs.true6.critedge.i321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26.i

is_cp_desired_hdcp1.exit326.i:                    ; preds = %land.lhs.true6.critedge.i321.i
  %is_hdcp1_revoked.i322.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 3
  %150 = ptrtoint ptr %is_hdcp1_revoked.i322.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %is_hdcp1_revoked.i322.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool12.not.i323.not.i = icmp eq i8 %151, 0
  br i1 %tobool12.not.i323.not.i, label %if.then25.i, label %is_cp_desired_hdcp1.exit326.i.if.else26.i_crit_edge

is_cp_desired_hdcp1.exit326.i.if.else26.i_crit_edge: ; preds = %is_cp_desired_hdcp1.exit326.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26.i

if.then25.i:                                      ; preds = %is_cp_desired_hdcp1.exit326.i
  %152 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %output, align 2
  %callback_delay.i327.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %153 = ptrtoint ptr %callback_delay.i327.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %callback_delay.i327.i, align 2
  %154 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 8)
  store i64 216172782113783808, ptr %state.i.i.i, align 4
  %callback_stop.i74 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %155 = ptrtoint ptr %callback_stop.i74 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %callback_stop.i74, align 1
  %watchdog_timer_stop.i75 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %156 = ptrtoint ptr %watchdog_timer_stop.i75 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %watchdog_timer_stop.i75, align 1
  %watchdog_timer_needed.i76 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %157 = ptrtoint ptr %watchdog_timer_needed.i76 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %watchdog_timer_needed.i76, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i77 = icmp eq i8 %158, 0
  %index6.i78 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %159 = ptrtoint ptr %index6.i78 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %index6.i78, align 4
  %conv7.i79 = zext i8 %160 to i32
  %call9.i80 = call ptr @mod_hdcp_state_id_to_str(i32 noundef 3) #7
  br i1 %tobool.not.i77, label %if.else.i84, label %if.then.i83

if.then.i83:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i81 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %161 = ptrtoint ptr %watchdog_timer_delay.i81 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %watchdog_timer_delay.i81, align 2
  %conv4.i82 = zext i16 %162 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i79, ptr noundef %call9.i80, i32 noundef %conv4.i82) #7
  br label %if.end30

if.else.i84:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i79, ptr noundef %call9.i80) #7
  br label %if.end30

if.else26.i:                                      ; preds = %is_cp_desired_hdcp1.exit326.i.if.else26.i_crit_edge, %land.lhs.true6.critedge.i321.i.if.else26.i_crit_edge, %land.lhs.true.5.i317.i.if.else26.i_crit_edge, %for.inc.4.i312.i.if.else26.i_crit_edge
  %163 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %output, align 2
  %callback_delay.i328.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %164 = ptrtoint ptr %callback_delay.i328.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %callback_delay.i328.i, align 2
  %165 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 8)
  store i64 144115188075855872, ptr %state.i.i.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %166 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %167 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %168 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %watchdog_timer_needed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i70 = icmp eq i8 %169, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %170 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %171 to i32
  %call9.i = call ptr @mod_hdcp_state_id_to_str(i32 noundef 2) #7
  br i1 %tobool.not.i70, label %if.else.i72, label %if.then.i71

if.then.i71:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %172 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %watchdog_timer_delay.i, align 2
  %conv4.i = zext i16 %173 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i) #7
  br label %set_state_id.exit

if.else.i72:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i, ptr noundef %call9.i) #7
  br label %set_state_id.exit

set_state_id.exit:                                ; preds = %if.else.i72, %if.then.i71
  %auth_complete.i329.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %174 = ptrtoint ptr %auth_complete.i329.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %auth_complete.i329.i, align 2
  call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #7
  br label %if.end30

if.else29.i:                                      ; preds = %if.then2.i
  %175 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %output, align 2
  %callback_delay.i330.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %176 = ptrtoint ptr %callback_delay.i330.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %callback_delay.i330.i, align 2
  %177 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %177, i32 8)
  store i64 144115188075855872, ptr %state.i.i.i, align 4
  %callback_stop.i332.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %178 = ptrtoint ptr %callback_stop.i332.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %callback_stop.i332.i, align 1
  %watchdog_timer_stop.i333.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %179 = ptrtoint ptr %watchdog_timer_stop.i333.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %watchdog_timer_stop.i333.i, align 1
  %watchdog_timer_needed.i334.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %180 = ptrtoint ptr %watchdog_timer_needed.i334.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %watchdog_timer_needed.i334.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i335.i = icmp eq i8 %181, 0
  %index6.i336.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %182 = ptrtoint ptr %index6.i336.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %index6.i336.i, align 4
  %conv7.i337.i = zext i8 %183 to i32
  %call9.i338.i = call ptr @mod_hdcp_state_id_to_str(i32 noundef 2) #7
  br i1 %tobool.not.i335.i, label %if.else.i342.i, label %if.then.i341.i

if.then.i341.i:                                   ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_timer_delay.i339.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %184 = ptrtoint ptr %watchdog_timer_delay.i339.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %watchdog_timer_delay.i339.i, align 2
  %conv4.i340.i = zext i16 %185 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv7.i337.i, ptr noundef %call9.i338.i, i32 noundef %conv4.i340.i) #7
  br label %set_state_id.exit343.i

if.else.i342.i:                                   ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv7.i337.i, ptr noundef %call9.i338.i) #7
  br label %set_state_id.exit343.i

set_state_id.exit343.i:                           ; preds = %if.else.i342.i, %if.then.i341.i
  %auth_complete.i344.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %186 = ptrtoint ptr %auth_complete.i344.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %auth_complete.i344.i, align 2
  call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #7
  br label %if.end30

if.then35.i:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #9
  %stay_count.i.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %187 = ptrtoint ptr %stay_count.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %stay_count.i.i, align 4
  %inc.i.i = add i32 %188, 1
  store i32 %inc.i.i, ptr %stay_count.i.i, align 4
  br label %if.end30

if.else36.i:                                      ; preds = %if.end.i66
  %189 = add i8 %22, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %189)
  %190 = icmp ult i8 %189, -6
  br i1 %190, label %if.else41.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call40.i = call i32 @mod_hdcp_hdcp1_transition(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input, ptr noundef %output) #7
  br label %transition.exit

if.else41.i:                                      ; preds = %if.else36.i
  %191 = add i8 %22, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %191)
  %192 = icmp ult i8 %191, -7
  br i1 %192, label %if.else46.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #9
  %call45.i = call i32 @mod_hdcp_hdcp1_dp_transition(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input, ptr noundef %output) #7
  br label %transition.exit

if.else46.i:                                      ; preds = %if.else41.i
  %193 = and i8 %22, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %193)
  %.not.i68 = icmp eq i8 %193, 16
  br i1 %.not.i68, label %if.then49.i, label %if.else51.i

if.then49.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i = call i32 @mod_hdcp_hdcp2_transition(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input, ptr noundef %output) #7
  br label %transition.exit

if.else51.i:                                      ; preds = %if.else46.i
  %194 = add i8 %22, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %194)
  %195 = icmp ult i8 %194, -17
  br i1 %195, label %if.else51.i.if.else15_crit_edge, label %if.then54.i

if.else51.i.if.else15_crit_edge:                  ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

if.then54.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #9
  %call55.i = call i32 @mod_hdcp_hdcp2_dp_transition(ptr noundef %hdcp, ptr noundef nonnull %event_ctx, ptr noundef %trans_input, ptr noundef %output) #7
  br label %transition.exit

transition.exit:                                  ; preds = %if.then54.i, %if.then49.i, %if.then44.i, %if.then39.i
  %status.0.i69 = phi i32 [ %call40.i, %if.then39.i ], [ %call45.i, %if.then44.i ], [ %call50.i, %if.then49.i ], [ %call55.i, %if.then54.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i69)
  %cmp12 = icmp eq i32 %status.0.i69, 0
  br i1 %cmp12, label %transition.exit.if.end30_crit_edge, label %transition.exit.if.else15_crit_edge

transition.exit.if.else15_crit_edge:              ; preds = %transition.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

transition.exit.if.end30_crit_edge:               ; preds = %transition.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.else15:                                        ; preds = %transition.exit.if.else15_crit_edge, %if.else51.i.if.else15_crit_edge
  %status.0.i6992 = phi i32 [ %status.0.i69, %transition.exit.if.else15_crit_edge ], [ 5, %if.else51.i.if.else15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp16 = icmp eq i32 %status.0.i, 0
  %.status.0.i = select i1 %cmp16, i32 7, i32 %status.0.i
  call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %.status.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %status.0.i6992)
  %cmp22 = icmp eq i32 %status.0.i6992, 2
  br i1 %cmp22, label %if.then24, label %if.else15.if.end30_crit_edge

if.else15.if.end30_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24:                                        ; preds = %if.else15
  call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #7
  %call25 = call fastcc i32 @reset_authentication(ptr noundef %hdcp, ptr noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.then24.if.end30_crit_edge, label %if.then28

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %call25)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then24.if.end30_crit_edge, %if.else15.if.end30_crit_edge, %transition.exit.if.end30_crit_edge, %if.then35.i, %set_state_id.exit343.i, %set_state_id.exit, %if.else.i84, %if.then.i83, %if.else.i269.i, %if.then.i268.i, %set_state_id.exit197.i, %if.else.i182.i, %if.then.i181.i, %if.else.i.i, %if.then.i.i, %execution.exit.if.end30_crit_edge
  %status.096 = phi i32 [ %.status.0.i, %if.then24.if.end30_crit_edge ], [ %.status.0.i, %if.then28 ], [ %.status.0.i, %if.else15.if.end30_crit_edge ], [ 0, %transition.exit.if.end30_crit_edge ], [ 0, %execution.exit.if.end30_crit_edge ], [ 0, %set_state_id.exit197.i ], [ 0, %set_state_id.exit ], [ 0, %set_state_id.exit343.i ], [ 0, %if.then35.i ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then.i181.i ], [ 0, %if.else.i182.i ], [ 0, %if.then.i268.i ], [ 0, %if.else.i269.i ], [ 0, %if.then.i83 ], [ 0, %if.else.i84 ]
  %196 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %event_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp32 = icmp eq i32 %197, 2
  br i1 %cmp32, label %if.then34, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then34:                                        ; preds = %if.end30
  %call35 = call i32 @mod_hdcp_clear_cp_irq_status(ptr noundef %hdcp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.then34.if.end40_crit_edge, label %if.then38

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @push_error_status(ptr noundef %hdcp, i32 noundef %call35)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then34.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %status.1 = phi i32 [ %call35, %if.then38 ], [ 0, %if.then34.if.end40_crit_edge ], [ %status.096, %if.end30.if.end40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event_ctx) #7
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_hdcp_log_ddc_trace(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_clear_cp_irq_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mod_hdcp_signal_type_to_operation_mode(i32 noundef %signal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %signal, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge2
    i32 128, label %entry.sw.bb1_crit_edge
    i32 32, label %entry.sw.bb1_crit_edge3
    i32 64, label %entry.sw.bb1_crit_edge4
  ]

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge3, %entry.sw.bb1_crit_edge4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 2, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %mode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mod_hdcp_status_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mod_hdcp_state_id_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_destroy_session(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_destroy_session(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_execution(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_dp_execution(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_execution(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_dp_execution(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_transition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp1_dp_transition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_transition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_hdcp_hdcp2_dp_transition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 270, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mod_hdcp_setup.__UNIQUE_ID_ddebug306, !1, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mod_hdcp_setup.__UNIQUE_ID_ddebug307, !1, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 282, i32 2}
!10 = !{ptr @mod_hdcp_teardown.__UNIQUE_ID_ddebug308, !9, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!11 = !{ptr @mod_hdcp_teardown.__UNIQUE_ID_ddebug309, !9, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 299, i32 2}
!14 = !{ptr @mod_hdcp_add_display.__UNIQUE_ID_ddebug310, !13, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mod_hdcp_add_display.__UNIQUE_ID_ddebug311, !13, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 357, i32 2}
!19 = !{ptr @mod_hdcp_remove_display.__UNIQUE_ID_ddebug312, !18, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!20 = !{ptr @mod_hdcp_remove_display.__UNIQUE_ID_ddebug313, !18, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 403, i32 2}
!23 = !{ptr @mod_hdcp_update_authentication.__UNIQUE_ID_ddebug314, !22, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!24 = !{ptr @mod_hdcp_update_authentication.__UNIQUE_ID_ddebug315, !22, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 491, i32 2}
!27 = !{ptr @mod_hdcp_reset_connection.__UNIQUE_ID_ddebug316, !26, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!28 = !{ptr @mod_hdcp_reset_connection.__UNIQUE_ID_ddebug317, !26, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 505, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 246, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @reset_connection.__UNIQUE_ID_ddebug305, !33, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 37, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 202, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @reset_authentication.__UNIQUE_ID_ddebug302, !39, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!42 = !{ptr @reset_authentication.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 216, i32 3}
!44 = !{ptr @reset_authentication.__UNIQUE_ID_ddebug304, !45, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.c", i32 221, i32 3}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.h", i32 421, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148771326, i64 2148771331, i64 2148771344, i64 2148771388, i64 2148771422, i64 2148771443}
