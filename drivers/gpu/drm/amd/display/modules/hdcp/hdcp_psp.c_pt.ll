; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp_psp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mod_hdcp_psp = type { ptr, ptr, %struct.mod_hdcp_psp_caps }
%struct.mod_hdcp_psp_caps = type { i8 }
%struct.mod_hdcp = type { %struct.mod_hdcp_config, %struct.mod_hdcp_connection, [6 x %struct.mod_hdcp_display], %struct.mod_hdcp_authentication, %struct.mod_hdcp_state, [2025 x i8] }
%struct.mod_hdcp_config = type { %struct.mod_hdcp_psp, %struct.mod_hdcp_ddc, i8 }
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
%struct.psp_context = type { ptr, %struct.psp_ring, ptr, ptr, ptr, i64, ptr, ptr, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, ptr, i64, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr, %struct.atomic_t, i8, i8, ptr, i32, %struct.ta_context, %struct.psp_xgmi_context, %struct.psp_ras_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.mutex, %struct.psp_memory_training_context, i32 }
%struct.psp_ring = type { i32, ptr, i64, ptr, i32, i32 }
%struct.psp_bin_desc = type { i32, i32, i32, ptr }
%struct.ta_context = type { i8, i32, %struct.ta_mem_context, %struct.psp_bin_desc, i32 }
%struct.ta_mem_context = type { ptr, i64, ptr, i32 }
%struct.psp_xgmi_context = type { %struct.ta_context, %struct.psp_xgmi_topology_info, i8 }
%struct.psp_xgmi_topology_info = type { i32, [64 x %struct.psp_xgmi_node_info] }
%struct.psp_xgmi_node_info = type { i64, i8, i8, i32, i8 }
%struct.psp_ras_context = type { %struct.ta_context, ptr }
%struct.ta_cp_context = type { %struct.ta_context, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.psp_memory_training_context = type { i64, ptr, i64, i64, ptr, i32, i32, i8 }
%struct.ta_dtm_shared_memory = type { i32, i32, i32, i32, %union.ta_dtm_cmd_input, %union.ta_dtm_cmd_output }
%union.ta_dtm_cmd_input = type { %struct.ta_dtm_topology_update_input_v3 }
%struct.ta_dtm_topology_update_input_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ta_dtm_cmd_output = type { i32 }
%struct.ta_hdcp_shared_memory = type { i32, i32, i32, %union.ta_hdcp_cmd_input, %union.ta_hdcp_cmd_output }
%union.ta_hdcp_cmd_input = type { %struct.ta_hdcp_cmd_set_srm_input }
%struct.ta_hdcp_cmd_set_srm_input = type { i32, [5120 x i8] }
%union.ta_hdcp_cmd_output = type { %struct.ta_hdcp_cmd_get_srm_output }
%struct.ta_hdcp_cmd_get_srm_output = type { i32, i32, [5120 x i8] }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to create hdcp session. HDCP TA is not initialized.\00", [37 x i8] zeroinitializer }, align 32
@mod_hdcp_hdcp1_destroy_session.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mod_hdcp_hdcp1_destroy_session\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[HDCP_TOP]:[Link %d]\09destroy hdcp1 session\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: [HDCP_TOP]:[Link %d]\09destroy hdcp1 session\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[Link %d] HDCP 1.4 disabled on display %d\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[Link %d] HDCP 1.4 enabled on display %d\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to create hdcp session, HDCP TA is not initialized\00", [38 x i8] zeroinitializer }, align 32
@mod_hdcp_hdcp2_destroy_session.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mod_hdcp_hdcp2_destroy_session\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[HDCP_TOP]:[Link %d]\09destroy hdcp2 session\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: [HDCP_TOP]:[Link %d]\09destroy hdcp2 session\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[Link %d] HDCP 2.2 disabled on display %d\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[Link %d] HDCP 2.2 enabled on display %d\00", [55 x i8] zeroinitializer }, align 32
@remove_display_from_topology_v3.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remove_display_from_topology_v3\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[HDCP_TOP]:[Link %d]\09remove display %d\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: [HDCP_TOP]:[Link %d]\09remove display %d\00", [49 x i8] zeroinitializer }, align 32
@remove_display_from_topology_v2.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.15, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remove_display_from_topology_v2\00", [32 x i8] zeroinitializer }, align 32
@add_display_to_topology_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016[drm] Failed to add display topology, DTM TA is not initialized.\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"add_display_to_topology_v3\00", [37 x i8] zeroinitializer }, align 32
@add_display_to_topology_v3._entry_ptr = internal global ptr @add_display_to_topology_v3._entry, section ".printk_index", align 4
@add_display_to_topology_v3.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[HDCP_TOP]:[Link %d]\09add display %d\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: [HDCP_TOP]:[Link %d]\09add display %d\00", [52 x i8] zeroinitializer }, align 32
@add_display_to_topology_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.22, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"add_display_to_topology_v2\00", [37 x i8] zeroinitializer }, align 32
@add_display_to_topology_v2._entry_ptr = internal global ptr @add_display_to_topology_v2._entry, section ".printk_index", align 4
@add_display_to_topology_v2.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.20, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 112]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 112]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 255, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 305, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 310, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 380, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 500, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 557, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 562, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 846, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 116, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 77, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 178, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 214, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 131, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @add_display_to_topology_v2._entry, ptr @add_display_to_topology_v2._entry_ptr, ptr @add_display_to_topology_v3._entry, ptr @add_display_to_topology_v3._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_display_to_topology_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_display_to_topology_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_remove_display_from_topology(ptr noundef %hdcp, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mod_hdcp_psp, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @remove_display_from_topology_v3(ptr noundef %hdcp, i8 noundef zeroext %index)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call fastcc i32 @remove_display_from_topology_v2(ptr noundef %hdcp, i8 noundef zeroext %index)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_display_from_topology_v3(ptr noundef %hdcp, i8 noundef zeroext %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %index2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %index)
  %cmp5.i = icmp eq i8 %3, %index
  br i1 %cmp5.i, label %land.lhs.true.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %index2.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %index2.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %index)
  %cmp5.1.i = icmp eq i8 %7, %index
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.1.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index2.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %index2.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %index)
  %cmp5.2.i = icmp eq i8 %11, %index
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.2.i = icmp eq i32 %13, 0
  br i1 %cmp.i.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index2.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %14 = ptrtoint ptr %index2.3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %index)
  %cmp5.3.i = icmp eq i8 %15, %index
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not.3.i = icmp eq i32 %17, 0
  br i1 %cmp.i.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index2.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %index2.4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %index)
  %cmp5.4.i = icmp eq i8 %19, %index
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.not.4.i = icmp eq i32 %21, 0
  br i1 %cmp.i.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index2.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %22 = ptrtoint ptr %index2.5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %index)
  %cmp5.5.i = icmp eq i8 %23, %index
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.cleanup_crit_edge

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not.5.i = icmp eq i32 %25, 0
  br i1 %cmp.i.not.5.i, label %land.lhs.true.5.i.cleanup_crit_edge, label %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

get_active_display_at_index.exit:                 ; preds = %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge ]
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared_buf, align 8
  %tobool.not = icmp eq ptr %display.0.i, null
  br i1 %tobool.not, label %get_active_display_at_index.exit.cleanup_crit_edge, label %lor.lhs.false

get_active_display_at_index.exit.cleanup_crit_edge: ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_active_display_at_index.exit
  %28 = ptrtoint ptr %display.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %display.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.not = icmp eq i32 %29, 0
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %30 = getelementptr inbounds i8, ptr %27, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 68)
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %27, align 4
  %index5 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index5, align 4
  %conv = zext i8 %34 to i32
  %dtm_in_message = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %27, i32 0, i32 4
  %35 = ptrtoint ptr %dtm_in_message to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %dtm_in_message, align 4
  %is_active = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %27, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %is_active, align 4
  %dtm_status = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %27, i32 0, i32 2
  %37 = ptrtoint ptr %dtm_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %dtm_status, align 4
  %call8 = tail call i32 @psp_dtm_invoke(ptr noundef %1, i32 noundef 4) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %38 = ptrtoint ptr %dtm_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dtm_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not = icmp eq i32 %39, 0
  br i1 %cmp.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %call14 = tail call fastcc i32 @remove_display_from_topology_v2(ptr noundef %hdcp, i8 noundef zeroext %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.then13.cleanup_crit_edge, label %if.then17

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %display.0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %display.0.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %display.0.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %display.0.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_display_from_topology_v3.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_display_from_topology_v3, %if.then24)) #3
          to label %cleanup [label %if.then24], !srcloc !56

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %index26 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %42 = ptrtoint ptr %index26 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index26, align 4
  %conv27 = zext i8 %43 to i32
  %44 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index5, align 4
  %conv29 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_display_from_topology_v3.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.16, i32 noundef %conv27, i32 noundef %conv29) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else, %if.then17, %if.then13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %get_active_display_at_index.exit.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %lor.lhs.false.cleanup_crit_edge ], [ 4, %get_active_display_at_index.exit.cleanup_crit_edge ], [ %call14, %if.then17 ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.else ], [ 4, %for.inc.4.i.cleanup_crit_edge ], [ 4, %land.lhs.true.5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_display_from_topology_v2(ptr noundef %hdcp, i8 noundef zeroext %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %index2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %index2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %index)
  %cmp5.i = icmp eq i8 %3, %index
  br i1 %cmp5.i, label %land.lhs.true.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %index2.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %index2.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %index)
  %cmp5.1.i = icmp eq i8 %7, %index
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.1.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index2.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %10 = ptrtoint ptr %index2.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %index)
  %cmp5.2.i = icmp eq i8 %11, %index
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.2.i = icmp eq i32 %13, 0
  br i1 %cmp.i.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index2.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %14 = ptrtoint ptr %index2.3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %index)
  %cmp5.3.i = icmp eq i8 %15, %index
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not.3.i = icmp eq i32 %17, 0
  br i1 %cmp.i.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index2.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %index2.4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index2.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %index)
  %cmp5.4.i = icmp eq i8 %19, %index
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.not.4.i = icmp eq i32 %21, 0
  br i1 %cmp.i.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index2.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %22 = ptrtoint ptr %index2.5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index2.5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %index)
  %cmp5.5.i = icmp eq i8 %23, %index
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.cleanup_crit_edge

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.not.5.i = icmp eq i32 %25, 0
  br i1 %cmp.i.not.5.i, label %land.lhs.true.5.i.cleanup_crit_edge, label %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge

land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_active_display_at_index.exit

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

get_active_display_at_index.exit:                 ; preds = %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %land.lhs.true.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.1.i, %land.lhs.true.1.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.2.i, %land.lhs.true.2.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.3.i, %land.lhs.true.3.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.4.i, %land.lhs.true.4.i.get_active_display_at_index.exit_crit_edge ], [ %arrayidx.5.i, %land.lhs.true.5.i.get_active_display_at_index.exit_crit_edge ]
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared_buf, align 8
  %tobool.not = icmp eq ptr %display.0.i, null
  br i1 %tobool.not, label %get_active_display_at_index.exit.cleanup_crit_edge, label %lor.lhs.false

get_active_display_at_index.exit.cleanup_crit_edge: ; preds = %get_active_display_at_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_active_display_at_index.exit
  %28 = ptrtoint ptr %display.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %display.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.not = icmp eq i32 %29, 0
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %30 = getelementptr inbounds i8, ptr %27, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 68)
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %27, align 4
  %index5 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index5, align 4
  %conv = zext i8 %34 to i32
  %dtm_in_message = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %27, i32 0, i32 4
  %35 = ptrtoint ptr %dtm_in_message to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %dtm_in_message, align 4
  %is_active = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %27, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %is_active, align 4
  %dtm_status = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %27, i32 0, i32 2
  %37 = ptrtoint ptr %dtm_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %dtm_status, align 4
  %call8 = tail call i32 @psp_dtm_invoke(ptr noundef %1, i32 noundef 2) #3
  %38 = ptrtoint ptr %dtm_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dtm_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not = icmp eq i32 %39, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %display.0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %display.0.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_display_from_topology_v2.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_display_from_topology_v2, %if.then16)) #3
          to label %if.end23 [label %if.then16], !srcloc !56

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %index18 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %41 = ptrtoint ptr %index18 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %index18, align 4
  %conv19 = zext i8 %42 to i32
  %43 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %index5, align 4
  %conv21 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_display_from_topology_v2.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.16, i32 noundef %conv19, i32 noundef %conv21) #3
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.else, %if.end.if.end23_crit_edge
  %status.0 = phi i32 [ 0, %if.then16 ], [ 8, %if.end.if.end23_crit_edge ], [ 0, %if.else ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %lor.lhs.false.cleanup_crit_edge, %get_active_display_at_index.exit.cleanup_crit_edge, %land.lhs.true.5.i.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end23 ], [ 4, %lor.lhs.false.cleanup_crit_edge ], [ 4, %get_active_display_at_index.exit.cleanup_crit_edge ], [ 4, %for.inc.4.i.cleanup_crit_edge ], [ 4, %land.lhs.true.5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_add_display_to_topology(ptr nocapture noundef readonly %hdcp, ptr nocapture noundef %display) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mod_hdcp_psp, ptr %hdcp, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @add_display_to_topology_v3(ptr noundef %hdcp, ptr noundef %display)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call fastcc i32 @add_display_to_topology_v2(ptr noundef %hdcp, ptr noundef %display)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_display_to_topology_v3(ptr nocapture noundef readonly %hdcp, ptr nocapture noundef %display) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %dtm_context = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dtm_context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dtm_context, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #6
  %4 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %display, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shared_buf, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 68)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %6, align 4
  %index = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 4
  %conv = zext i8 %11 to i32
  %dtm_in_message = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %dtm_in_message to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %dtm_in_message, align 4
  %is_active = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %is_active, align 4
  %controller = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 2
  %14 = ptrtoint ptr %controller to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %controller, align 1
  %conv7 = zext i8 %15 to i32
  %controller9 = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %controller9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %controller9, align 4
  %ddc_line = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %ddc_line to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ddc_line, align 1
  %conv10 = zext i8 %18 to i32
  %ddc_line12 = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 4
  %19 = ptrtoint ptr %ddc_line12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %ddc_line12, align 4
  %link_enc_idx = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %link_enc_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_enc_idx, align 2
  %conv13 = zext i8 %21 to i32
  %link_enc = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 5
  %22 = ptrtoint ptr %link_enc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv13, ptr %link_enc, align 4
  %stream_enc_idx = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 4
  %23 = ptrtoint ptr %stream_enc_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %stream_enc_idx, align 1
  %conv15 = zext i8 %24 to i32
  %stream_enc = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 6
  %25 = ptrtoint ptr %stream_enc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv15, ptr %stream_enc, align 4
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %26 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.not = icmp eq i32 %27, 2
  br i1 %cmp.i.not, label %if.then19, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %assr_enabled = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %assr_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %assr_enabled, align 1
  %conv20 = zext i8 %29 to i32
  %is_assr = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 8
  %30 = ptrtoint ptr %is_assr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv20, ptr %is_assr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %31 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv23 = zext i8 %33 to i32
  %dp_mst_vcid = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 7
  %34 = ptrtoint ptr %dp_mst_vcid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv23, ptr %dp_mst_vcid, align 4
  %max_hdcp_supported_version = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 9
  %35 = ptrtoint ptr %max_hdcp_supported_version to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 23, ptr %max_hdcp_supported_version, align 4
  %encoder_type = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 10
  %36 = ptrtoint ptr %encoder_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %encoder_type, align 4
  %dtm_status = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 2
  %37 = ptrtoint ptr %dtm_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %dtm_status, align 4
  %phy_idx = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %phy_idx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %phy_idx, align 1
  %conv27 = zext i8 %39 to i32
  %phy_id = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 11
  %40 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv27, ptr %phy_id, align 4
  %hdcp_supported_informational = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 6
  %41 = ptrtoint ptr %hdcp_supported_informational to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hdcp_supported_informational, align 1
  %conv29 = zext i8 %42 to i32
  %link_hdcp_cap = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 12
  %43 = ptrtoint ptr %link_hdcp_cap to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv29, ptr %link_hdcp_cap, align 4
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %6, align 4
  %call32 = tail call i32 @psp_dtm_invoke(ptr noundef %1, i32 noundef %45) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %46 = ptrtoint ptr %dtm_status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dtm_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not = icmp eq i32 %47, 0
  br i1 %cmp.not, label %do.body44, label %if.then37

if.then37:                                        ; preds = %if.end22
  %call38 = tail call fastcc i32 @add_display_to_topology_v2(ptr noundef %hdcp, ptr noundef %display)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.then37.cleanup_crit_edge, label %if.then41

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %display, align 4
  br label %cleanup

do.body44:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_display_to_topology_v3.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_display_to_topology_v3, %if.then50)) #3
          to label %cleanup [label %if.then50], !srcloc !56

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #5
  %index52 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %49 = ptrtoint ptr %index52 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %index52, align 4
  %conv53 = zext i8 %50 to i32
  %51 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index, align 4
  %conv55 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_display_to_topology_v3.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.21, i32 noundef %conv53, i32 noundef %conv55) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body44, %if.then41, %if.then37.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %call38, %if.then41 ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_display_to_topology_v2(ptr nocapture noundef readonly %hdcp, ptr nocapture noundef %display) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %dtm_context = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dtm_context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dtm_context, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #6
  %4 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %display, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shared_buf, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 36, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 68)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %6, align 4
  %index = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 4
  %conv = zext i8 %11 to i32
  %dtm_in_message = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %dtm_in_message to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %dtm_in_message, align 4
  %is_active = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %is_active, align 4
  %controller = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 2
  %14 = ptrtoint ptr %controller to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %controller, align 1
  %conv7 = zext i8 %15 to i32
  %controller9 = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %controller9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %controller9, align 4
  %ddc_line = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %ddc_line to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ddc_line, align 1
  %conv10 = zext i8 %18 to i32
  %ddc_line12 = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 4
  %19 = ptrtoint ptr %ddc_line12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %ddc_line12, align 4
  %dig_be = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %dig_be to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dig_be, align 4
  %conv13 = zext i8 %21 to i32
  %dig_be15 = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 5
  %22 = ptrtoint ptr %dig_be15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv13, ptr %dig_be15, align 4
  %dig_fe = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 3
  %23 = ptrtoint ptr %dig_fe to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dig_fe, align 2
  %conv16 = zext i8 %24 to i32
  %dig_fe18 = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 6
  %25 = ptrtoint ptr %dig_fe18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv16, ptr %dig_fe18, align 4
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %26 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.not = icmp eq i32 %27, 2
  br i1 %cmp.i.not, label %if.then21, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %assr_enabled = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %assr_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %assr_enabled, align 1
  %conv22 = zext i8 %29 to i32
  %is_assr = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 8
  %30 = ptrtoint ptr %is_assr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv22, ptr %is_assr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %31 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv25 = zext i8 %33 to i32
  %dp_mst_vcid = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 7
  %34 = ptrtoint ptr %dp_mst_vcid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv25, ptr %dp_mst_vcid, align 4
  %max_hdcp_supported_version = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 4, i32 0, i32 9
  %35 = ptrtoint ptr %max_hdcp_supported_version to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 22, ptr %max_hdcp_supported_version, align 4
  %dtm_status = getelementptr inbounds %struct.ta_dtm_shared_memory, ptr %6, i32 0, i32 2
  %36 = ptrtoint ptr %dtm_status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %dtm_status, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %6, align 4
  %call29 = tail call i32 @psp_dtm_invoke(ptr noundef %1, i32 noundef %38) #3
  %39 = ptrtoint ptr %dtm_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dtm_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not = icmp eq i32 %40, 0
  br i1 %cmp.not, label %do.body34, label %if.then32

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %display to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %display, align 4
  br label %if.end49

do.body34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_display_to_topology_v2.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_display_to_topology_v2, %if.then40)) #3
          to label %if.end49 [label %if.then40], !srcloc !56

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  %index42 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %42 = ptrtoint ptr %index42 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index42, align 4
  %conv43 = zext i8 %43 to i32
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index, align 4
  %conv45 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_display_to_topology_v2.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.21, i32 noundef %conv43, i32 noundef %conv45) #3
  br label %if.end49

if.end49:                                         ; preds = %if.then40, %do.body34, %if.then32
  %status.0 = phi i32 [ 8, %if.then32 ], [ 0, %if.then40 ], [ 0, %do.body34 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  %retval.0 = phi i32 [ %status.0, %if.end49 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_create_session(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %for.cond.i, label %entry.get_first_active_display.exit_crit_edge

entry.get_first_active_display.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.1.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.1.i, label %for.cond.1.i, label %for.cond.i.get_first_active_display.exit_crit_edge

for.cond.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.2.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.2.i, label %for.cond.2.i, label %for.cond.1.i.get_first_active_display.exit_crit_edge

for.cond.1.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.3.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.3.i, label %for.cond.3.i, label %for.cond.2.i.get_first_active_display.exit_crit_edge

for.cond.2.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.4.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.4.i, label %for.cond.4.i, label %for.cond.3.i.get_first_active_display.exit_crit_edge

for.cond.3.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.5.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %cmp.i.not.5.i, ptr null, ptr %arrayidx.5.i
  br label %get_first_active_display.exit

get_first_active_display.exit:                    ; preds = %for.cond.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge, %for.cond.2.i.get_first_active_display.exit_crit_edge, %for.cond.1.i.get_first_active_display.exit_crit_edge, %for.cond.i.get_first_active_display.exit_crit_edge, %entry.get_first_active_display.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %entry.get_first_active_display.exit_crit_edge ], [ %arrayidx.1.i, %for.cond.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %hdcp_context = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35
  %14 = ptrtoint ptr %hdcp_context to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdcp_context, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %get_first_active_display.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %get_first_active_display.exit
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shared_buf, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %18 = call ptr @memset(ptr %17, i32 0, i32 10264)
  %index = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %in_msg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %in_msg, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %17, align 4
  %call6 = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 1) #3
  %out_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 4
  %23 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_msg, align 4
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %25 = ptrtoint ptr %auth to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %auth, align 4
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ainfo_primary = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 4, i32 0, i32 2, i32 9
  %28 = ptrtoint ptr %ainfo_primary to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ainfo_primary, align 1
  %msg = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1
  %ainfo = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %ainfo to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ainfo, align 1
  %aksv = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 2
  %aksv_primary = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 4, i32 0, i32 2, i32 4
  %31 = call ptr @memcpy(ptr %aksv, ptr %aksv_primary, i32 5)
  %an_primary = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %an_primary to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %an_primary, align 4
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %msg, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end.if.end19_crit_edge
  %status.0 = phi i32 [ 0, %if.else ], [ 11, %if.end.if.end19_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  %retval.0 = phi i32 [ %status.0, %if.end19 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_hdcp_invoke(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_destroy_session(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 2) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %do.body, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_hdcp1_destroy_session.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_hdcp1_destroy_session, %if.then7)) #3
          to label %do.end [label %if.then7], !srcloc !56

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 4
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_hdcp1_destroy_session.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.5, i32 noundef %conv) #3
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %index19 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp ult i32 %14, 2
  br i1 %cmp.i, label %do.end.for.inc_crit_edge, label %if.then14

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index19, align 4
  %conv20 = zext i8 %17 to i32
  %index24 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %index24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index24, align 4
  %conv25 = zext i8 %19 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv20, i32 noundef %conv25) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.1 = icmp ult i32 %21, 2
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then14.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx.1, align 4
  %23 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index19, align 4
  %conv20.1 = zext i8 %24 to i32
  %index24.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %index24.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index24.1, align 4
  %conv25.1 = zext i8 %26 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv20.1, i32 noundef %conv25.1) #3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.2 = icmp ult i32 %28, 2
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then14.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then14.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx.2, align 4
  %30 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index19, align 4
  %conv20.2 = zext i8 %31 to i32
  %index24.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %32 = ptrtoint ptr %index24.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index24.2, align 4
  %conv25.2 = zext i8 %33 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv20.2, i32 noundef %conv25.2) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then14.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.3 = icmp ult i32 %35, 2
  br i1 %cmp.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then14.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.then14.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %arrayidx.3, align 4
  %37 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index19, align 4
  %conv20.3 = zext i8 %38 to i32
  %index24.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %39 = ptrtoint ptr %index24.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %index24.3, align 4
  %conv25.3 = zext i8 %40 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv20.3, i32 noundef %conv25.3) #3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then14.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i.4 = icmp ult i32 %42, 2
  br i1 %cmp.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then14.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

if.then14.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx.4, align 4
  %44 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index19, align 4
  %conv20.4 = zext i8 %45 to i32
  %index24.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %46 = ptrtoint ptr %index24.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index24.4, align 4
  %conv25.4 = zext i8 %47 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv20.4, i32 noundef %conv25.4) #3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then14.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i.5 = icmp ult i32 %49, 2
  br i1 %cmp.i.5, label %for.inc.4.if.end27_crit_edge, label %if.then14.5

for.inc.4.if.end27_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then14.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %arrayidx.5, align 4
  %51 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index19, align 4
  %conv20.5 = zext i8 %52 to i32
  %index24.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %53 = ptrtoint ptr %index24.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %index24.5, align 4
  %conv25.5 = zext i8 %54 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv20.5, i32 noundef %conv25.5) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then14.5, %for.inc.4.if.end27_crit_edge, %entry.if.end27_crit_edge
  %status.0 = phi i32 [ 12, %entry.if.end27_crit_edge ], [ 0, %if.then14.5 ], [ 0, %for.inc.4.if.end27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_validate_rx(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %bksv_primary = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %bksv = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3, i32 8
  %8 = call ptr @memcpy(ptr %bksv_primary, ptr %bksv, i32 5)
  %r0p = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %r0p to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %r0p, align 4
  %r0_prime_primary = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %r0_prime_primary to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %r0_prime_primary, align 4
  %bcaps = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %bcaps to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bcaps, align 2
  %bcaps12 = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 10
  %14 = ptrtoint ptr %bcaps12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %bcaps12, align 2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 3) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.else:                                          ; preds = %entry
  %out_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_msg, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.else.if.end32_crit_edge [
    i32 2, label %if.then15
    i32 4, label %if.then20
    i32 10, label %if.then27
  ]

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %is_repeater to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %is_repeater, align 4
  br label %if.end32

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_repeater22 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %is_repeater22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %is_repeater22, align 4
  br label %if.end32

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_hdcp1_revoked = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %is_hdcp1_revoked to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_hdcp1_revoked, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.then20, %if.then15, %if.else.if.end32_crit_edge, %entry.if.end32_crit_edge
  %status.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then20 ], [ 18, %if.then27 ], [ 17, %entry.if.end32_crit_edge ], [ 17, %if.else.if.end32_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_enable_encryption(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %for.cond.i, label %entry.get_first_active_display.exit_crit_edge

entry.get_first_active_display.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.1.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.1.i, label %for.cond.1.i, label %for.cond.i.get_first_active_display.exit_crit_edge

for.cond.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.2.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.2.i, label %for.cond.2.i, label %for.cond.1.i.get_first_active_display.exit_crit_edge

for.cond.1.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.3.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.3.i, label %for.cond.3.i, label %for.cond.2.i.get_first_active_display.exit_crit_edge

for.cond.2.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.4.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.4.i, label %for.cond.4.i, label %for.cond.3.i.get_first_active_display.exit_crit_edge

for.cond.3.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.5.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %cmp.i.not.5.i, ptr null, ptr %arrayidx.5.i
  br label %get_first_active_display.exit

get_first_active_display.exit:                    ; preds = %for.cond.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge, %for.cond.2.i.get_first_active_display.exit_crit_edge, %for.cond.1.i.get_first_active_display.exit_crit_edge, %for.cond.i.get_first_active_display.exit_crit_edge, %entry.get_first_active_display.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %entry.get_first_active_display.exit_crit_edge ], [ %arrayidx.1.i, %for.cond.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shared_buf, align 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %17 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %in_msg, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %15, align 4
  %call4 = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 5) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.else, label %get_first_active_display.exit.if.end10_crit_edge

get_first_active_display.exit.if.end10_crit_edge: ; preds = %get_first_active_display.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.else:                                          ; preds = %get_first_active_display.exit
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %23 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %is_dp_mst_hdcp.exit, label %if.else.if.then6_crit_edge

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

is_dp_mst_hdcp.exit:                              ; preds = %if.else
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %25 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.if.then6_crit_edge, label %is_dp_mst_hdcp.exit.if.end10_crit_edge

is_dp_mst_hdcp.exit.if.end10_crit_edge:           ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

is_dp_mst_hdcp.exit.if.then6_crit_edge:           ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then6:                                         ; preds = %is_dp_mst_hdcp.exit.if.then6_crit_edge, %if.else.if.then6_crit_edge
  %27 = ptrtoint ptr %display.0.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %display.0.i, align 4
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index, align 4
  %conv = zext i8 %29 to i32
  %index8 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index8, align 4
  %conv9 = zext i8 %31 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv9) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %is_dp_mst_hdcp.exit.if.end10_crit_edge, %get_first_active_display.exit.if.end10_crit_edge
  %status.0 = phi i32 [ 0, %is_dp_mst_hdcp.exit.if.end10_crit_edge ], [ 0, %if.then6 ], [ 22, %get_first_active_display.exit.if.end10_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_validate_ksvlist_vp(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %ksvlist_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 110
  %8 = ptrtoint ptr %ksvlist_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ksvlist_size, align 2
  %conv = zext i16 %9 to i32
  %ksv_list_size = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 640
  %10 = ptrtoint ptr %ksv_list_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %ksv_list_size, align 4
  %ksv_list = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 2
  %ksvlist = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 8
  %11 = load i16, ptr %ksvlist_size, align 2
  %conv12 = zext i16 %11 to i32
  %12 = call ptr @memcpy(ptr %ksv_list, ptr %ksvlist, i32 %conv12)
  %v_prime = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 645
  %vp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5, i32 112
  %13 = call ptr @memcpy(ptr %v_prime, ptr %vp, i32 20)
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %14 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 2
  %binfo_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6, i32 3
  %bstatus = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4, i32 6
  %cond.in.in = select i1 %cmp.i.not, ptr %binfo_dp, ptr %bstatus
  %16 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %16)
  %cond.in63 = load i16, ptr %cond.in.in, align 4
  %bstatus_binfo = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %bstatus_binfo to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %cond.in63, ptr %bstatus_binfo, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %3, align 4
  %call28 = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 4) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %out_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp30 = icmp eq i32 %22, 4
  br i1 %cmp30, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %out_msg32 = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %out_msg32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_msg32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp34 = icmp eq i32 %24, 10
  br i1 %cmp34, label %if.then36, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_hdcp1_revoked = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %is_hdcp1_revoked to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %is_hdcp1_revoked, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.else.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  %status.0 = phi i32 [ 21, %if.then36 ], [ 0, %land.lhs.true.if.end38_crit_edge ], [ 20, %if.else.if.end38_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_enable_dp_stream_encryption(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %display_handle = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %index20 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.049 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 %i.049
  %adjust = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 %i.049, i32 6
  %4 = ptrtoint ptr %adjust to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %adjust, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %tobool.not = icmp ult i8 %bf.load, 64
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5.not = icmp eq i32 %6, 1
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %7 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %8 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %auth, align 4
  %10 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %in_msg, align 4
  %index = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 %i.049, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 4
  %conv9 = zext i8 %12 to i32
  %13 = ptrtoint ptr %display_handle to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv9, ptr %display_handle, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 6) #3
  %15 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12.not = icmp eq i32 %16, 0
  br i1 %cmp12.not, label %if.end15, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %index20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index20, align 4
  %conv21 = zext i8 %19 to i32
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index, align 4
  %conv25 = zext i8 %21 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %conv21, i32 noundef %conv25) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %status.0 = phi i32 [ 0, %for.inc.for.end_crit_edge ], [ 23, %if.end.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_link_maintenance(ptr nocapture noundef readonly %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %out_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %out_msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %out_msg, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 7) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6.not = icmp eq i32 %13, 1
  br i1 %cmp6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %status.0 = phi i32 [ 29, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_create_session(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %for.cond.i, label %entry.get_first_active_display.exit_crit_edge

entry.get_first_active_display.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.1.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.1.i, label %for.cond.1.i, label %for.cond.i.get_first_active_display.exit_crit_edge

for.cond.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.2.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.2.i, label %for.cond.2.i, label %for.cond.1.i.get_first_active_display.exit_crit_edge

for.cond.1.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.3.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.3.i, label %for.cond.3.i, label %for.cond.2.i.get_first_active_display.exit_crit_edge

for.cond.2.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.4.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.4.i, label %for.cond.4.i, label %for.cond.3.i.get_first_active_display.exit_crit_edge

for.cond.3.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.5.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %cmp.i.not.5.i, ptr null, ptr %arrayidx.5.i
  br label %get_first_active_display.exit

get_first_active_display.exit:                    ; preds = %for.cond.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge, %for.cond.2.i.get_first_active_display.exit_crit_edge, %for.cond.1.i.get_first_active_display.exit_crit_edge, %for.cond.i.get_first_active_display.exit_crit_edge, %entry.get_first_active_display.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %entry.get_first_active_display.exit_crit_edge ], [ %arrayidx.1.i, %for.cond.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  %hdcp_context = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35
  %14 = ptrtoint ptr %hdcp_context to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdcp_context, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %get_first_active_display.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #3
  br label %cleanup

if.end:                                           ; preds = %get_first_active_display.exit
  %tobool2.not = icmp eq ptr %display.0.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shared_buf, align 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 10264)
  %index = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index, align 4
  %conv = zext i8 %20 to i32
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %in_msg, align 4
  %hdcp2 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %hdcp2, align 2
  %bf.lshr = lshr i8 %bf.load, 5
  %trunc = trunc i8 %bf.lshr to i2
  %23 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.23)
  switch i2 %trunc, label %if.end4.if.end41_crit_edge [
    i2 1, label %if.end4.if.end41.sink.split_crit_edge
    i2 -2, label %if.then22
    i2 0, label %if.then36
  ]

if.end4.if.end41.sink.split_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.sink.split

if.end4.if.end41_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then22:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.sink.split

if.then36:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then36, %if.then22, %if.end4.if.end41.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then22 ], [ 3, %if.then36 ], [ 1, %if.end4.if.end41.sink.split_crit_edge ]
  %negotiate_content_type24 = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %negotiate_content_type24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %negotiate_content_type24, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.end4.if.end41_crit_edge
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 14, ptr %17, align 4
  %call43 = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 14) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp44.not = icmp eq i32 %27, 0
  br i1 %cmp44.not, label %if.else47, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.else47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %out_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %17, i32 0, i32 4
  %28 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_msg, align 4
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %30 = ptrtoint ptr %auth to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %auth, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.end41.if.end48_crit_edge
  %status.0 = phi i32 [ 0, %if.else47 ], [ 34, %if.end41.if.end48_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %status.0, %if.end48 ], [ 1, %if.then ], [ 4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_destroy_session(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 9) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %do.body, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mod_hdcp_hdcp2_destroy_session.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mod_hdcp_hdcp2_destroy_session, %if.then7)) #3
          to label %do.end [label %if.then7], !srcloc !56

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 4
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mod_hdcp_hdcp2_destroy_session.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.11, i32 noundef %conv) #3
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %index19 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp ult i32 %14, 2
  br i1 %cmp.i, label %do.end.for.inc_crit_edge, label %if.then14

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index19, align 4
  %conv20 = zext i8 %17 to i32
  %index24 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %index24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index24, align 4
  %conv25 = zext i8 %19 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv20, i32 noundef %conv25) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.1 = icmp ult i32 %21, 2
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then14.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx.1, align 4
  %23 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index19, align 4
  %conv20.1 = zext i8 %24 to i32
  %index24.1 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %index24.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index24.1, align 4
  %conv25.1 = zext i8 %26 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv20.1, i32 noundef %conv25.1) #3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.2 = icmp ult i32 %28, 2
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then14.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.then14.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx.2, align 4
  %30 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index19, align 4
  %conv20.2 = zext i8 %31 to i32
  %index24.2 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2, i32 1
  %32 = ptrtoint ptr %index24.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index24.2, align 4
  %conv25.2 = zext i8 %33 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv20.2, i32 noundef %conv25.2) #3
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then14.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.3 = icmp ult i32 %35, 2
  br i1 %cmp.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then14.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.then14.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %arrayidx.3, align 4
  %37 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index19, align 4
  %conv20.3 = zext i8 %38 to i32
  %index24.3 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3, i32 1
  %39 = ptrtoint ptr %index24.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %index24.3, align 4
  %conv25.3 = zext i8 %40 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv20.3, i32 noundef %conv25.3) #3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then14.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i.4 = icmp ult i32 %42, 2
  br i1 %cmp.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then14.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

if.then14.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx.4, align 4
  %44 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index19, align 4
  %conv20.4 = zext i8 %45 to i32
  %index24.4 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4, i32 1
  %46 = ptrtoint ptr %index24.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index24.4, align 4
  %conv25.4 = zext i8 %47 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv20.4, i32 noundef %conv25.4) #3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then14.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp.i.5 = icmp ult i32 %49, 2
  br i1 %cmp.i.5, label %for.inc.4.if.end27_crit_edge, label %if.then14.5

for.inc.4.if.end27_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then14.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %arrayidx.5, align 4
  %51 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index19, align 4
  %conv20.5 = zext i8 %52 to i32
  %index24.5 = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5, i32 1
  %53 = ptrtoint ptr %index24.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %index24.5, align 4
  %conv25.5 = zext i8 %54 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv20.5, i32 noundef %conv25.5) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then14.5, %for.inc.4.if.end27_crit_edge, %entry.if.end27_crit_edge
  %status.0 = phi i32 [ 35, %entry.if.end27_crit_edge ], [ 0, %if.then14.5 ], [ 0, %for.inc.4.if.end27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_prepare_ake_init(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %8 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %process.i, align 4
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %msg_size.i, align 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %14 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_size13.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %3, align 4
  %16 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %prepare.i, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ake_init = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 3
  %transmitter_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 48
  %19 = call ptr @memcpy(ptr %ake_init, ptr %transmitter_message, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 0, %if.else ], [ 36, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_validate_ake_cert(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %8 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prepare.i, align 4
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %9 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_size13.i, align 4
  %14 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %process.i, align 4
  %15 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 534, ptr %msg_size.i, align 4
  %receiver_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 24
  %ake_cert = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %receiver_message, ptr %ake_cert, i32 534)
  store i32 4, ptr %prepare.i, align 4
  store i32 5, ptr %msg2_id.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.else:                                          ; preds = %entry
  %ake_no_stored_km = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 5
  %transmitter_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 48
  %20 = call ptr @memcpy(ptr %ake_no_stored_km, ptr %transmitter_message, i32 129)
  %ake_stored_km = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 6
  %arrayidx18 = getelementptr %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 177
  %21 = call ptr @memcpy(ptr %ake_stored_km, ptr %arrayidx18, i32 33)
  %msg1_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 12
  %22 = ptrtoint ptr %msg1_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg1_status, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %23, label %if.else.if.end39_crit_edge [
    i32 0, label %if.then21
    i32 112, label %if.then35
  ]

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_km_stored = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2
  %25 = ptrtoint ptr %is_km_stored to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %is_km_stored, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp ne i32 %26, 0
  %conv = zext i1 %tobool.not to i8
  %is_km_stored23 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %is_km_stored23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %is_km_stored23, align 1
  %is_repeater = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 8
  %28 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp ne i32 %29, 0
  %conv27 = zext i1 %tobool25.not to i8
  %is_repeater29 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %is_repeater29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv27, ptr %is_repeater29, align 4
  br label %if.end39

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_hdcp2_revoked = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %is_hdcp2_revoked to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_hdcp2_revoked, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then21, %if.else.if.end39_crit_edge, %entry.if.end39_crit_edge
  %status.0 = phi i32 [ 0, %if.then21 ], [ 41, %if.then35 ], [ 40, %entry.if.end39_crit_edge ], [ 40, %if.else.if.end39_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_validate_h_prime(ptr nocapture noundef readonly %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %8 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prepare.i, align 4
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %9 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_size13.i, align 4
  %14 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %process.i, align 4
  %15 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 33, ptr %msg_size.i, align 4
  %receiver_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 24
  %ake_h_prime = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %receiver_message, ptr %ake_h_prime, i32 33)
  %is_km_stored = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %is_km_stored to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_km_stored, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %msg2_desc.i, align 4
  %20 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 17, ptr %msg_size8.i, align 4
  %arrayidx13 = getelementptr %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 57
  %ake_pairing_info = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 8
  %21 = call ptr @memcpy(ptr %arrayidx13, ptr %ake_pairing_info, i32 17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.else:                                          ; preds = %if.end
  %msg1_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 12
  %25 = ptrtoint ptr %msg1_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg1_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp20.not = icmp eq i32 %26, 0
  br i1 %cmp20.not, label %if.else22, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.else22:                                        ; preds = %if.else
  %27 = ptrtoint ptr %is_km_stored to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_km_stored, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not = icmp eq i8 %28, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.else22.if.end31_crit_edge

if.else22.if.end31_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

land.lhs.true:                                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  %msg2_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 16
  %29 = ptrtoint ptr %msg2_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg2_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp27.not = icmp eq i32 %30, 0
  %spec.select = select i1 %cmp27.not, i32 0, i32 43
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %if.else22.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %status.0 = phi i32 [ 0, %if.else22.if.end31_crit_edge ], [ 42, %if.end.if.end31_crit_edge ], [ 42, %if.else.if.end31_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_prepare_lc_init(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %8 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %process.i, align 4
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %msg_size.i, align 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %14 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_size13.i, align 4
  %15 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %prepare.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %lc_init = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 9
  %transmitter_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 48
  %19 = call ptr @memcpy(ptr %lc_init, ptr %transmitter_message, i32 9)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 0, %if.else ], [ 44, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_validate_l_prime(ptr nocapture noundef readonly %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %8 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prepare.i, align 4
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %9 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_size13.i, align 4
  %14 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %process.i, align 4
  %15 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 33, ptr %msg_size.i, align 4
  %receiver_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 24
  %lc_l_prime = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 10
  %16 = call ptr @memcpy(ptr %receiver_message, ptr %lc_l_prime, i32 33)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %msg1_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %msg1_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg1_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.not = icmp eq i32 %21, 0
  br i1 %cmp8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %status.0 = phi i32 [ 46, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_prepare_eks(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %8 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %process.i, align 4
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %msg_size.i, align 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %14 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_size13.i, align 4
  %15 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 11, ptr %prepare.i, align 4
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %16 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i.not = icmp eq i32 %17, 2
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 129, ptr %msg2_id.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 15, ptr %3, align 4
  %call5 = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.else:                                          ; preds = %if.end
  %ske_eks = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 11
  %transmitter_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 48
  %22 = call ptr @memcpy(ptr %ske_eks, ptr %transmitter_message, i32 25)
  %msg_size = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 36
  %23 = ptrtoint ptr %msg_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 25, ptr %msg_size, align 4
  %24 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i40.not = icmp eq i32 %25, 2
  br i1 %cmp.i40.not, label %if.then11, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %content_stream_type_dp = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 19
  %arrayidx17 = getelementptr %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 73
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx17, align 1
  %28 = ptrtoint ptr %content_stream_type_dp to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %content_stream_type_dp, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.else.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %status.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.else.if.end19_crit_edge ], [ 47, %if.end.if.end19_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_enable_encryption(ptr noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %arrayidx.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %for.cond.i, label %entry.get_first_active_display.exit_crit_edge

entry.get_first_active_display.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.1.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.1.i, label %for.cond.1.i, label %for.cond.i.get_first_active_display.exit_crit_edge

for.cond.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.2.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.2.i, label %for.cond.2.i, label %for.cond.1.i.get_first_active_display.exit_crit_edge

for.cond.1.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.3.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.3.i, label %for.cond.3.i, label %for.cond.2.i.get_first_active_display.exit_crit_edge

for.cond.2.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.4.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.4.i, label %for.cond.4.i, label %for.cond.3.i.get_first_active_display.exit_crit_edge

for.cond.3.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.5.i = icmp eq i32 %13, 0
  br i1 %cmp.i.not.5.i, label %for.cond.4.i.cleanup_crit_edge, label %for.cond.4.i.get_first_active_display.exit_crit_edge

for.cond.4.i.get_first_active_display.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_first_active_display.exit

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

get_first_active_display.exit:                    ; preds = %for.cond.4.i.get_first_active_display.exit_crit_edge, %for.cond.3.i.get_first_active_display.exit_crit_edge, %for.cond.2.i.get_first_active_display.exit_crit_edge, %for.cond.1.i.get_first_active_display.exit_crit_edge, %for.cond.i.get_first_active_display.exit_crit_edge, %entry.get_first_active_display.exit_crit_edge
  %display.0.i = phi ptr [ %arrayidx.i, %entry.get_first_active_display.exit_crit_edge ], [ %arrayidx.1.i, %for.cond.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.4.i, %for.cond.3.i.get_first_active_display.exit_crit_edge ], [ %arrayidx.5.i, %for.cond.4.i.get_first_active_display.exit_crit_edge ]
  %tobool.not = icmp eq ptr %display.0.i, null
  br i1 %tobool.not, label %get_first_active_display.exit.cleanup_crit_edge, label %if.end

get_first_active_display.exit.cleanup_crit_edge:  ; preds = %get_first_active_display.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %get_first_active_display.exit
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shared_buf, align 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 10264)
  %auth = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %17 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %auth, align 4
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %in_msg, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 11, ptr %15, align 4
  %call4 = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 11) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.else:                                          ; preds = %if.end
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %23 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %is_dp_mst_hdcp.exit, label %if.else.if.then8_crit_edge

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

is_dp_mst_hdcp.exit:                              ; preds = %if.else
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %25 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.if.then8_crit_edge, label %is_dp_mst_hdcp.exit.if.end13_crit_edge

is_dp_mst_hdcp.exit.if.end13_crit_edge:           ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

is_dp_mst_hdcp.exit.if.then8_crit_edge:           ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

if.then8:                                         ; preds = %is_dp_mst_hdcp.exit.if.then8_crit_edge, %if.else.if.then8_crit_edge
  %27 = ptrtoint ptr %display.0.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %display.0.i, align 4
  %index = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index, align 4
  %conv = zext i8 %29 to i32
  %index10 = getelementptr inbounds %struct.mod_hdcp_display, ptr %display.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %index10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index10, align 4
  %conv11 = zext i8 %31 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv11) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %is_dp_mst_hdcp.exit.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %status.0 = phi i32 [ 0, %is_dp_mst_hdcp.exit.if.end13_crit_edge ], [ 0, %if.then8 ], [ 48, %if.end.if.end13_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %get_first_active_display.exit.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end13 ], [ 4, %get_first_active_display.exit.cleanup_crit_edge ], [ 4, %for.cond.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_validate_rx_id_list(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %8 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prepare.i, align 4
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %9 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_size13.i, align 4
  %14 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %process.i, align 4
  %15 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 177, ptr %msg_size.i, align 4
  %receiver_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 24
  %rx_id_list = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 12
  %16 = call ptr @memcpy(ptr %receiver_message, ptr %rx_id_list, i32 177)
  store i32 15, ptr %prepare.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.else:                                          ; preds = %entry
  %repeater_auth_ack = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 14
  %transmitter_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 48
  %20 = call ptr @memcpy(ptr %repeater_auth_ack, ptr %transmitter_message, i32 17)
  %msg1_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %msg1_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg1_status, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %22, label %if.else.if.end32_crit_edge [
    i32 0, label %if.then14
    i32 112, label %if.then28
  ]

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_km_stored = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2
  %24 = ptrtoint ptr %is_km_stored to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %is_km_stored, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp ne i32 %25, 0
  %conv = zext i1 %tobool.not to i8
  %is_km_stored16 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %is_km_stored16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %is_km_stored16, align 1
  %is_repeater = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 8
  %27 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not = icmp ne i32 %28, 0
  %conv20 = zext i1 %tobool18.not to i8
  %is_repeater22 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %is_repeater22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv20, ptr %is_repeater22, align 4
  br label %if.end32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %is_hdcp2_revoked = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %is_hdcp2_revoked to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %is_hdcp2_revoked, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then14, %if.else.if.end32_crit_edge, %entry.if.end32_crit_edge
  %status.0 = phi i32 [ 0, %if.then14 ], [ 51, %if.then28 ], [ 50, %entry.if.end32_crit_edge ], [ 50, %if.else.if.end32_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_enable_dp_stream_encryption(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %8 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prepare.i, align 4
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %9 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %process.i, align 4
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_size.i, align 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %13 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %14 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %15 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %msg_size13.i, align 4
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %index26 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 %indvars.iv
  %adjust = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 %indvars.iv, i32 6
  %16 = ptrtoint ptr %adjust to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %adjust, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %tobool.not = icmp ult i8 %bf.load, 64
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp8.not = icmp eq i32 %18, 1
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %index = getelementptr %struct.mod_hdcp, ptr %hdcp, i32 0, i32 2, i32 %indvars.iv, i32 1
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index, align 4
  %conv13 = zext i8 %20 to i32
  %21 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv13, ptr %process.i, align 4
  %22 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %auth.i, align 4
  %24 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %in_msg, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 16) #3
  %26 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp17.not = icmp eq i32 %27, 0
  br i1 %cmp17.not, label %if.end20, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %index26 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index26, align 4
  %conv27 = zext i8 %30 to i32
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index, align 4
  %conv32 = zext i8 %32 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv27, i32 noundef %conv32) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %33 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp34 = icmp eq i32 %34, 0
  %. = select i1 %cmp34, i32 0, i32 52
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_prepare_stream_management(ptr nocapture noundef %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %8 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %process.i, align 4
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %msg_size.i, align 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %14 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_size13.i, align 4
  %15 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %prepare.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %msg_size = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 36
  %19 = ptrtoint ptr %msg_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_size, align 4
  %conv = trunc i32 %20 to i16
  %stream_manage_size = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 16
  %21 = ptrtoint ptr %stream_manage_size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %stream_manage_size, align 4
  %repeater_auth_stream_manage = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 15
  %transmitter_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 48
  %22 = call ptr @memcpy(ptr %repeater_auth_stream_manage, ptr %transmitter_message, i32 68)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 0, %if.else ], [ 55, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_validate_stream_ready(ptr nocapture noundef readonly %hdcp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp, align 4
  %mutex = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %1, i32 0, i32 35, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 10264)
  %in_msg = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3
  %auth.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3
  %5 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth.i, align 4
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %in_msg, align 4
  %prepare.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 568
  %8 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %prepare.i, align 4
  %msg2_id.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 572
  %9 = ptrtoint ptr %msg2_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %msg2_id.i, align 4
  %process.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1
  %msg_size.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 4
  %msg2_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %msg2_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %msg2_desc.i, align 4
  %msg_size8.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %msg_size8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_size8.i, align 4
  %msg3_desc.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %msg3_desc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %msg3_desc.i, align 4
  %msg_size13.i = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %msg_size13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_size13.i, align 4
  %14 = ptrtoint ptr %process.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17, ptr %process.i, align 4
  %15 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 33, ptr %msg_size.i, align 4
  %receiver_message = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 24
  %repeater_auth_stream_ready = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 1, i32 0, i32 17
  %16 = call ptr @memcpy(ptr %receiver_message, ptr %repeater_auth_stream_ready, i32 33)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 15, ptr %3, align 4
  %call = tail call i32 @psp_hdcp_invoke(ptr noundef %1, i32 noundef 15) #3
  %hdcp_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %hdcp_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdcp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %msg1_status = getelementptr inbounds %struct.ta_hdcp_shared_memory, ptr %3, i32 0, i32 4, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %msg1_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg1_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8 = icmp eq i32 %21, 0
  br i1 %cmp8, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %status.0 = phi i32 [ 54, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_dtm_invoke(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 255, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 305, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mod_hdcp_hdcp1_destroy_session.__UNIQUE_ID_ddebug347, !3, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 310, i32 5}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 380, i32 3}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 500, i32 3}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 557, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mod_hdcp_hdcp2_destroy_session.__UNIQUE_ID_ddebug348, !16, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 562, i32 5}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 846, i32 3}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 116, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @remove_display_from_topology_v3.__UNIQUE_ID_ddebug344, !25, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 77, i32 3}
!31 = !{ptr @remove_display_from_topology_v2.__UNIQUE_ID_ddebug343, !30, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 178, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @add_display_to_topology_v3._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @add_display_to_topology_v3._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 214, i32 3}
!39 = !{ptr @add_display_to_topology_v3.__UNIQUE_ID_ddebug346, !38, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 131, i32 3}
!43 = !{ptr @add_display_to_topology_v2._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @add_display_to_topology_v2._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @add_display_to_topology_v2.__UNIQUE_ID_ddebug345, !46, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp_psp.c", i32 162, i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148793500, i64 2148793505, i64 2148793518, i64 2148793562, i64 2148793596, i64 2148793617}
!57 = !{i8 0, i8 2}
