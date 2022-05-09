; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
%struct.komeda_layer = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i32, i32, ptr }
%struct.malidp_range = type { i32, i32 }
%struct.komeda_timing_ctrlr = type { %struct.komeda_component, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.komeda_pipeline_funcs = type { ptr, ptr }
%struct.komeda_component_funcs = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Exceed max support %d pipelines.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Request pipeline size too small.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"please large KOMEDA_COMPONENT_N_INPUTS to %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"please add Layer by id sequence.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"please add Scaler by id sequence.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0A======== Pipeline-%d ==========\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A------%s------\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"compiz-%d doesn't exist.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ips-%d doesn't exist.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown pipeline resource ID: %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@komeda_pipeline_assemble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014[drm] PIPE-%d doesn't support dual-link, ignore DT dual-link configuration.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"komeda_pipeline_assemble\00", [39 x i8] zeroinitializer }, align 32
@komeda_pipeline_assemble._entry_ptr = internal global ptr @komeda_pipeline_assemble._entry, section ".printk_index", align 4
@komeda_component_verify_inputs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014[drm] Can not find input(ID-%d) for component: %s.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"komeda_component_verify_inputs\00", [33 x i8] zeroinitializer }, align 32
@komeda_component_verify_inputs._entry_ptr = internal global ptr @komeda_component_verify_inputs._entry, section ".printk_index", align 4
@komeda_pipeline_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016[drm] Pipeline-%d: n_layers: %d, n_scalers: %d, output: %s.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"komeda_pipeline_dump\00", [43 x i8] zeroinitializer }, align 32
@komeda_pipeline_dump._entry_ptr = internal global ptr @komeda_pipeline_dump._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dual-link\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"single-link\00", [20 x i8] zeroinitializer }, align 32
@komeda_pipeline_dump._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] \09output_link[0]: %s.\0A\00", [34 x i8] zeroinitializer }, align 32
@komeda_pipeline_dump._entry_ptr.21 = internal global ptr @komeda_pipeline_dump._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@komeda_pipeline_dump._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] \09output_link[1]: %s.\0A\00", [34 x i8] zeroinitializer }, align 32
@komeda_pipeline_dump._entry_ptr.25 = internal global ptr @komeda_pipeline_dump._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09%s: ID %d-0x%08lx.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\09\09max_active_inputs:%d, supported_inputs: 0x%08x.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\09\09max_active_outputs:%d, supported_outputs: 0x%08x.\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7, i64 8, i64 9, i64 12, i64 14, i64 16, i64 17, i64 20, i64 21, i64 22]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 20, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 26, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 173, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 186, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 193, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 364, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 373, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 87, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 106, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 116, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 323, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 281, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 253, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 256, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 259, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 239, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 241, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [56 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 243, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @komeda_component_verify_inputs._entry, ptr @komeda_component_verify_inputs._entry_ptr, ptr @komeda_pipeline_assemble._entry, ptr @komeda_pipeline_assemble._entry_ptr, ptr @komeda_pipeline_dump._entry, ptr @komeda_pipeline_dump._entry.19, ptr @komeda_pipeline_dump._entry.23, ptr @komeda_pipeline_dump._entry_ptr, ptr @komeda_pipeline_dump._entry_ptr.21, ptr @komeda_pipeline_dump._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_pipeline_assemble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_component_verify_inputs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_pipeline_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_pipeline_dump._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_pipeline_dump._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_pipeline_add(ptr noundef %mdev, i32 noundef %size, ptr noundef %funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_pipelines, align 4
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp = icmp sgt i32 %add, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef 2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %size)
  %cmp1 = icmp ult i32 %size, 224
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %size, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %mdev9 = getelementptr inbounds %struct.komeda_pipeline, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mdev9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mdev, ptr %mdev9, align 4
  %5 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_pipelines, align 4
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id, align 4
  %funcs11 = getelementptr inbounds %struct.komeda_pipeline, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %funcs11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %funcs, ptr %funcs11, align 4
  %arrayidx = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %arrayidx, align 4
  %10 = load i32, ptr %n_pipelines, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %n_pipelines, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -28 to ptr), %if.then ], [ inttoptr (i32 -22 to ptr), %if.then2 ], [ %call.i, %if.end8 ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_pipeline_destroy(ptr nocapture noundef readonly %mdev, ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  %avail_comps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail_comps) #6
  %avail_comps1 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %avail_comps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avail_comps1, align 4
  %2 = ptrtoint ptr %avail_comps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %avail_comps, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp16 = icmp slt i32 %call, 32
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %komeda_pipeline_get_component.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %call3, %komeda_pipeline_get_component.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call.i = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %pipe, i32 noundef %i.017) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.komeda_pipeline_get_component.exit_crit_edge, label %if.then.i

for.body.komeda_pipeline_get_component.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_get_component.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  br label %komeda_pipeline_get_component.exit

komeda_pipeline_get_component.exit:               ; preds = %if.then.i, %for.body.komeda_pipeline_get_component.exit_crit_edge
  %c.0.i = phi ptr [ %4, %if.then.i ], [ null, %for.body.komeda_pipeline_get_component.exit_crit_edge ]
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 4
  call void @devm_kfree(ptr noundef %6, ptr noundef %c.0.i) #6
  %add = add nsw i32 %i.017, 1
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp slt i32 %call3, 32
  br i1 %cmp, label %komeda_pipeline_get_component.exit.for.body_crit_edge, label %komeda_pipeline_get_component.exit.for.end_crit_edge

komeda_pipeline_get_component.exit.for.end_crit_edge: ; preds = %komeda_pipeline_get_component.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

komeda_pipeline_get_component.exit.for.body_crit_edge: ; preds = %komeda_pipeline_get_component.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %komeda_pipeline_get_component.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pxlclk = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 2
  %7 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pxlclk, align 4
  call void @clk_put(ptr noundef %8) #6
  %of_output_links = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 19
  %9 = ptrtoint ptr %of_output_links to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_output_links, align 4
  call void @of_node_put(ptr noundef %10) #6
  %arrayidx5 = getelementptr %struct.komeda_pipeline, ptr %pipe, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5, align 4
  call void @of_node_put(ptr noundef %12) #6
  %of_output_port = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 18
  %13 = ptrtoint ptr %of_output_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_output_port, align 4
  call void @of_node_put(ptr noundef %14) #6
  %of_node = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 17
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 4
  call void @of_node_put(ptr noundef %16) #6
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 4
  call void @devm_kfree(ptr noundef %18, ptr noundef %pipe) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail_comps) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_pipeline_get_component(ptr noundef %pipe, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %pipe, i32 noundef %id)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %c.0 = phi ptr [ %1, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %c.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_component_destroy(ptr nocapture noundef readonly %mdev, ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %c) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef readonly %pipe, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %2 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge39
    i32 2, label %entry.sw.bb_crit_edge40
    i32 3, label %entry.sw.bb_crit_edge41
    i32 7, label %sw.bb2
    i32 16, label %entry.sw.bb3_crit_edge
    i32 17, label %entry.sw.bb3_crit_edge42
    i32 8, label %entry.sw.bb6_crit_edge
    i32 9, label %entry.sw.bb6_crit_edge43
    i32 12, label %sw.bb9
    i32 14, label %sw.bb10
    i32 20, label %entry.sw.bb11_crit_edge
    i32 21, label %entry.sw.bb11_crit_edge44
    i32 22, label %sw.bb18
  ]

entry.sw.bb11_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

entry.sw.bb6_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb3_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41
  %arrayidx = getelementptr %struct.komeda_pipeline, ptr %pipe, i32 0, i32 7, i32 %id
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wb_layer = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 13
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge42
  %sub4 = add nsw i32 %id, -16
  %arrayidx5 = getelementptr %struct.komeda_dev, ptr %1, i32 0, i32 9, i32 %sub4
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %id) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %compiz = getelementptr inbounds %struct.komeda_pipeline, ptr %4, i32 0, i32 10
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge43
  %sub7 = add nsw i32 %id, -8
  %arrayidx8 = getelementptr %struct.komeda_pipeline, ptr %pipe, i32 0, i32 9, i32 %sub7
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %splitter = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 11
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %merger = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 12
  br label %cleanup

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge44
  %sub13 = add nsw i32 %id, -20
  %arrayidx14 = getelementptr %struct.komeda_dev, ptr %1, i32 0, i32 9, i32 %sub13
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %id) #6
  br label %cleanup

if.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %improc = getelementptr inbounds %struct.komeda_pipeline, ptr %6, i32 0, i32 14
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctrlr = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 15
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %id) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb18, %if.end17, %if.then16, %sw.bb10, %sw.bb9, %sw.bb6, %if.end, %if.then, %sw.bb2, %sw.bb
  %retval.0 = phi ptr [ null, %if.then16 ], [ null, %if.then ], [ null, %sw.default ], [ %ctrlr, %sw.bb18 ], [ %improc, %if.end17 ], [ %merger, %sw.bb10 ], [ %splitter, %sw.bb9 ], [ %arrayidx8, %sw.bb6 ], [ %compiz, %if.end ], [ %wb_layer, %sw.bb2 ], [ %arrayidx, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_pipeline_get_first_component(ptr noundef %pipe, i32 noundef %comp_mask) local_unnamed_addr #0 align 64 {
entry:
  %comp_mask_local = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_mask_local) #6
  %0 = ptrtoint ptr %comp_mask_local to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %comp_mask, ptr %comp_mask_local, align 4
  %call = call i32 @_find_first_bit_be(ptr noundef nonnull %comp_mask_local, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp = icmp slt i32 %call, 32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %pipe, i32 noundef %call) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %c.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %2, %if.then.i ], [ null, %if.then.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_mask_local) #6
  ret ptr %c.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_component_add(ptr noundef %pipe, i32 noundef %comp_sz, i32 noundef %id, i32 noundef %hw_id, ptr noundef %funcs, i8 noundef zeroext %max_active_inputs, i32 noundef %supported_inputs, i8 noundef zeroext %max_active_outputs, ptr noundef %reg, ptr noundef readonly %name_fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %max_active_inputs)
  %cmp = icmp ugt i8 %max_active_inputs, 5
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %max_active_inputs to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #6
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call19 = tail call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %pipe, i32 noundef %id)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %lor.lhs.false

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  %0 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call19, align 4
  %tobool21.not = icmp eq ptr %1, null
  br i1 %tobool21.not, label %if.end24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %id)
  %tobool25.not = icmp ugt i32 %id, 3
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  %n_layers = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 6
  %2 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp28.not = icmp eq i32 %3, %id
  br i1 %cmp28.not, label %if.then26.if.end45_crit_edge, label %if.then30

if.then26.if.end45_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.else:                                          ; preds = %if.end24
  %shl = shl nuw i32 1, %id
  %and34 = and i32 %shl, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else.if.end45_crit_edge, label %if.then36

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then36:                                        ; preds = %if.else
  %sub37 = add i32 %id, -8
  %n_scalers = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 8
  %4 = ptrtoint ptr %n_scalers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_scalers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub37, i32 %5)
  %cmp39.not = icmp eq i32 %sub37, %5
  br i1 %cmp39.not, label %if.then36.if.end45_crit_edge, label %if.then41

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end45:                                         ; preds = %if.then36.if.end45_crit_edge, %if.else.if.end45_crit_edge, %if.then26.if.end45_crit_edge
  %num.0 = phi ptr [ %n_layers, %if.then26.if.end45_crit_edge ], [ %n_scalers, %if.then36.if.end45_crit_edge ], [ null, %if.else.if.end45_crit_edge ]
  %mdev = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %comp_sz, i32 noundef 3520) #6
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %id51 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %id51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %id, ptr %id51, align 4
  %hw_id52 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %hw_id52 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %hw_id, ptr %hw_id52, align 4
  %reg53 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %reg53 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg, ptr %reg53, align 4
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %pipeline to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pipe, ptr %pipeline, align 4
  %max_active_inputs54 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %max_active_inputs54 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %max_active_inputs, ptr %max_active_inputs54, align 4
  %max_active_outputs55 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %max_active_outputs55 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %max_active_outputs, ptr %max_active_outputs55, align 1
  %supported_inputs56 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %supported_inputs56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %supported_inputs, ptr %supported_inputs56, align 4
  %funcs57 = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %funcs57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %funcs, ptr %funcs57, align 4
  %tobool58.not = icmp eq ptr %name_fmt, null
  br i1 %tobool58.not, label %if.end50.if.end61_crit_edge, label %if.then59

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %18 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !62
  call void @llvm.va_start(ptr nonnull %args)
  %name = getelementptr inbounds %struct.komeda_component, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call60 = call i32 @vsnprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull %name_fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end50.if.end61_crit_edge
  %tobool62.not = icmp eq ptr %num.0, null
  br i1 %tobool62.not, label %if.end61.if.end64_crit_edge, label %if.then63

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %num.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num.0, align 4
  %add = add i32 %21, 1
  store i32 %add, ptr %num.0, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61.if.end64_crit_edge
  %22 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id51, align 4
  %shl66 = shl nuw i32 1, %23
  %avail_comps = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 4
  %24 = ptrtoint ptr %avail_comps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %avail_comps, align 4
  %or = or i32 %25, %shl66
  store i32 %or, ptr %avail_comps, align 4
  %26 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %call19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end45.cleanup_crit_edge, %if.then41, %if.then30, %lor.lhs.false.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -28 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.then30 ], [ %call.i, %if.end64 ], [ inttoptr (i32 -22 to ptr), %if.then41 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end18.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end45.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_pipeline_get_slave(ptr nocapture noundef readonly %master) local_unnamed_addr #0 align 64 {
entry:
  %comp_mask_local.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %compiz = getelementptr inbounds %struct.komeda_pipeline, ptr %master, i32 0, i32 10
  %0 = ptrtoint ptr %compiz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compiz, align 4
  %supported_inputs.i = getelementptr inbounds %struct.komeda_component, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %supported_inputs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_inputs.i, align 4
  %and.i = and i32 %3, 196608
  %pipeline.i = getelementptr inbounds %struct.komeda_component, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipeline.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_mask_local.i.i) #6
  %6 = ptrtoint ptr %comp_mask_local.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %comp_mask_local.i.i, align 4
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull %comp_mask_local.i.i, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 32
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.komeda_component_pickup_input.exit.thread_crit_edge

entry.komeda_component_pickup_input.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_component_pickup_input.exit.thread

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %5, i32 noundef %call.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.komeda_component_pickup_input.exit.thread_crit_edge, label %komeda_component_pickup_input.exit

if.then.i.i.komeda_component_pickup_input.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_component_pickup_input.exit.thread

komeda_component_pickup_input.exit.thread:        ; preds = %if.then.i.i.komeda_component_pickup_input.exit.thread_crit_edge, %entry.komeda_component_pickup_input.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_mask_local.i.i) #6
  br label %cond.end

komeda_component_pickup_input.exit:               ; preds = %if.then.i.i
  %7 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_mask_local.i.i) #6
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %komeda_component_pickup_input.exit.cond.end_crit_edge, label %cond.true

komeda_component_pickup_input.exit.cond.end_crit_edge: ; preds = %komeda_component_pickup_input.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %komeda_component_pickup_input.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipeline, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %komeda_component_pickup_input.exit.cond.end_crit_edge, %komeda_component_pickup_input.exit.thread
  %cond = phi ptr [ %10, %cond.true ], [ null, %komeda_component_pickup_input.exit.cond.end_crit_edge ], [ null, %komeda_component_pickup_input.exit.thread ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_assemble_pipelines(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  %avail_comps.i5 = alloca i32, align 4
  %supported_inputs.i.i = alloca i32, align 4
  %avail_comps.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp sgt i32 %1, 0
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %komeda_pipeline_dump.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %komeda_pipeline_dump.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %i.024
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail_comps.i) #6
  %avail_comps1.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %avail_comps1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_comps1.i, align 4
  %6 = ptrtoint ptr %avail_comps.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %avail_comps.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp32.i = icmp slt i32 %call.i, 32
  br i1 %cmp32.i, label %for.body.for.body.i_crit_edge, label %for.body.for.cond4.preheader.i_crit_edge

for.body.for.cond4.preheader.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader.i

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %komeda_component_verify_inputs.exit.i.for.cond4.preheader.i_crit_edge, %for.body.for.cond4.preheader.i_crit_edge
  %n_layers.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %n_layers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_layers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp534.i = icmp sgt i32 %8, 0
  br i1 %cmp534.i, label %for.cond4.preheader.i.for.body6.i_crit_edge, label %for.cond4.preheader.i.for.end9.i_crit_edge

for.cond4.preheader.i.for.end9.i_crit_edge:       ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end9.i

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.body.i:                                       ; preds = %komeda_component_verify_inputs.exit.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %id.033.i = phi i32 [ %call3.i, %komeda_component_verify_inputs.exit.i.for.body.i_crit_edge ], [ %call.i, %for.body.for.body.i_crit_edge ]
  %call.i.i = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %3, i32 noundef %id.033.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.komeda_pipeline_get_component.exit.i_crit_edge, label %if.then.i.i

for.body.i.komeda_pipeline_get_component.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_get_component.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i.i, align 4
  br label %komeda_pipeline_get_component.exit.i

komeda_pipeline_get_component.exit.i:             ; preds = %if.then.i.i, %for.body.i.komeda_pipeline_get_component.exit.i_crit_edge
  %c.0.i.i = phi ptr [ %10, %if.then.i.i ], [ null, %for.body.i.komeda_pipeline_get_component.exit.i_crit_edge ]
  %pipeline.i.i = getelementptr inbounds %struct.komeda_component, ptr %c.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pipeline.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipeline.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported_inputs.i.i) #6
  %supported_inputs1.i.i = getelementptr inbounds %struct.komeda_component, ptr %c.0.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %supported_inputs1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %supported_inputs1.i.i, align 4
  %15 = ptrtoint ptr %supported_inputs.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %supported_inputs.i.i, align 4
  %call.i27.i = call i32 @_find_next_bit_be(ptr noundef nonnull %supported_inputs.i.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i27.i)
  %cmp19.i.i = icmp slt i32 %call.i27.i, 32
  br i1 %cmp19.i.i, label %for.body.lr.ph.i.i, label %komeda_pipeline_get_component.exit.i.komeda_component_verify_inputs.exit.i_crit_edge

komeda_pipeline_get_component.exit.i.komeda_component_verify_inputs.exit.i_crit_edge: ; preds = %komeda_pipeline_get_component.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_component_verify_inputs.exit.i

for.body.lr.ph.i.i:                               ; preds = %komeda_pipeline_get_component.exit.i
  %id5.i.i = getelementptr inbounds %struct.komeda_component, ptr %c.0.i.i, i32 0, i32 4
  %name.i.i = getelementptr inbounds %struct.komeda_component, ptr %c.0.i.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %id.020.i.i = phi i32 [ %call.i27.i, %for.body.lr.ph.i.i ], [ %call7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %12, i32 noundef %id.020.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.then.i29.i_crit_edge, label %komeda_pipeline_get_component.exit.i.i

for.body.i.i.if.then.i29.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i29.i

komeda_pipeline_get_component.exit.i.i:           ; preds = %for.body.i.i
  %16 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i.i.i, align 4
  %tobool.not.i28.i = icmp eq ptr %17, null
  br i1 %tobool.not.i28.i, label %komeda_pipeline_get_component.exit.i.i.if.then.i29.i_crit_edge, label %if.end.i.i

komeda_pipeline_get_component.exit.i.i.if.then.i29.i_crit_edge: ; preds = %komeda_pipeline_get_component.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i29.i

if.then.i29.i:                                    ; preds = %komeda_pipeline_get_component.exit.i.i.if.then.i29.i_crit_edge, %for.body.i.i.if.then.i29.i_crit_edge
  %shl.i.i = shl nuw i32 1, %id.020.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %18 = ptrtoint ptr %supported_inputs1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %supported_inputs1.i.i, align 4
  %and.i.i = and i32 %19, %neg.i.i
  store i32 %and.i.i, ptr %supported_inputs1.i.i, align 4
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %id.020.i.i, ptr noundef %name.i.i) #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %komeda_pipeline_get_component.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %id5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id5.i.i, align 4
  %shl6.i.i = shl nuw i32 1, %21
  %supported_outputs.i.i = getelementptr inbounds %struct.komeda_component, ptr %17, i32 0, i32 9
  %22 = ptrtoint ptr %supported_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %supported_outputs.i.i, align 4
  %or.i.i = or i32 %23, %shl6.i.i
  store i32 %or.i.i, ptr %supported_outputs.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %if.then.i29.i
  %add.i.i = add nsw i32 %id.020.i.i, 1
  %call7.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %supported_inputs.i.i, i32 noundef 32, i32 noundef %add.i.i) #6
  %cmp.i.i = icmp slt i32 %call7.i.i, 32
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.komeda_component_verify_inputs.exit.i_crit_edge

for.inc.i.i.komeda_component_verify_inputs.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_component_verify_inputs.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

komeda_component_verify_inputs.exit.i:            ; preds = %for.inc.i.i.komeda_component_verify_inputs.exit.i_crit_edge, %komeda_pipeline_get_component.exit.i.komeda_component_verify_inputs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported_inputs.i.i) #6
  %add.i = add i32 %id.033.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps.i, i32 noundef 32, i32 noundef %add.i) #6
  %cmp.i = icmp slt i32 %call3.i, 32
  br i1 %cmp.i, label %komeda_component_verify_inputs.exit.i.for.body.i_crit_edge, label %komeda_component_verify_inputs.exit.i.for.cond4.preheader.i_crit_edge

komeda_component_verify_inputs.exit.i.for.cond4.preheader.i_crit_edge: ; preds = %komeda_component_verify_inputs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader.i

komeda_component_verify_inputs.exit.i.for.body.i_crit_edge: ; preds = %komeda_component_verify_inputs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body6.i:                                      ; preds = %komeda_get_layer_split_right_layer.exit.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %24 = phi i32 [ %37, %komeda_get_layer_split_right_layer.exit.i.for.body6.i_crit_edge ], [ %8, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %i.035.i = phi i32 [ %inc.i, %komeda_get_layer_split_right_layer.exit.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.komeda_pipeline, ptr %3, i32 0, i32 7, i32 %i.035.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %id.i.i = getelementptr inbounds %struct.komeda_component, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i.i, align 4
  %layer_type.i.i = getelementptr inbounds %struct.komeda_layer, ptr %26, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i31.i.for.cond.i.i_crit_edge, %for.body6.i
  %i.0.in.i.i = phi i32 [ %28, %for.body6.i ], [ %i.0.i.i, %for.body.i31.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add i32 %i.0.in.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %24)
  %cmp.i30.i = icmp slt i32 %i.0.i.i, %24
  br i1 %cmp.i30.i, label %for.body.i31.i, label %for.cond.i.i.komeda_get_layer_split_right_layer.exit.i_crit_edge

for.cond.i.i.komeda_get_layer_split_right_layer.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_get_layer_split_right_layer.exit.i

for.body.i31.i:                                   ; preds = %for.cond.i.i
  %29 = ptrtoint ptr %layer_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %layer_type.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.komeda_pipeline, ptr %3, i32 0, i32 7, i32 %i.0.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %layer_type1.i.i = getelementptr inbounds %struct.komeda_layer, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %layer_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %layer_type1.i.i, align 4
  %cmp2.i.i = icmp eq i32 %30, %34
  br i1 %cmp2.i.i, label %for.body.i31.i.komeda_get_layer_split_right_layer.exit.i_crit_edge, label %for.body.i31.i.for.cond.i.i_crit_edge

for.body.i31.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

for.body.i31.i.komeda_get_layer_split_right_layer.exit.i_crit_edge: ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_get_layer_split_right_layer.exit.i

komeda_get_layer_split_right_layer.exit.i:        ; preds = %for.body.i31.i.komeda_get_layer_split_right_layer.exit.i_crit_edge, %for.cond.i.i.komeda_get_layer_split_right_layer.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %for.body.i31.i.komeda_get_layer_split_right_layer.exit.i_crit_edge ], [ null, %for.cond.i.i.komeda_get_layer_split_right_layer.exit.i_crit_edge ]
  %right.i = getelementptr inbounds %struct.komeda_layer, ptr %26, i32 0, i32 7
  %35 = ptrtoint ptr %right.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i.i, ptr %right.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %36 = ptrtoint ptr %n_layers.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_layers.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %37
  br i1 %cmp5.i, label %komeda_get_layer_split_right_layer.exit.i.for.body6.i_crit_edge, label %komeda_get_layer_split_right_layer.exit.i.for.end9.i_crit_edge

komeda_get_layer_split_right_layer.exit.i.for.end9.i_crit_edge: ; preds = %komeda_get_layer_split_right_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end9.i

komeda_get_layer_split_right_layer.exit.i.for.body6.i_crit_edge: ; preds = %komeda_get_layer_split_right_layer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.end9.i:                                       ; preds = %komeda_get_layer_split_right_layer.exit.i.for.end9.i_crit_edge, %for.cond4.preheader.i.for.end9.i_crit_edge
  %dual_link.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 20
  %38 = ptrtoint ptr %dual_link.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dual_link.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %for.end9.i.komeda_pipeline_assemble.exit_crit_edge, label %land.lhs.true.i

for.end9.i.komeda_pipeline_assemble.exit_crit_edge: ; preds = %for.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_assemble.exit

land.lhs.true.i:                                  ; preds = %for.end9.i
  %ctrlr.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 15
  %40 = ptrtoint ptr %ctrlr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrlr.i, align 4
  %supports_dual_link.i = getelementptr inbounds %struct.komeda_timing_ctrlr, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %supports_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %supports_dual_link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool10.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool10.not.i, label %if.then.i, label %land.lhs.true.i.komeda_pipeline_assemble.exit_crit_edge

land.lhs.true.i.komeda_pipeline_assemble.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_assemble.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dual_link.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %dual_link.i, align 4
  %id12.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %id12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id12.i, align 4
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %45) #9
  br label %komeda_pipeline_assemble.exit

komeda_pipeline_assemble.exit:                    ; preds = %if.then.i, %land.lhs.true.i.komeda_pipeline_assemble.exit_crit_edge, %for.end9.i.komeda_pipeline_assemble.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail_comps.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail_comps.i5) #6
  %46 = ptrtoint ptr %avail_comps1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %avail_comps1.i, align 4
  %48 = ptrtoint ptr %avail_comps.i5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %avail_comps.i5, align 4
  %id2.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id2.i, align 4
  %51 = ptrtoint ptr %n_layers.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_layers.i, align 4
  %n_scalers.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 8
  %53 = ptrtoint ptr %n_scalers.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_scalers.i, align 4
  %55 = ptrtoint ptr %dual_link.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dual_link.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i9 = icmp eq i8 %56, 0
  %cond.i = select i1 %tobool.not.i9, ptr @.str.18, ptr @.str.17
  %call.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %50, i32 noundef %52, i32 noundef %54, ptr noundef nonnull %cond.i) #9
  %of_output_links.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 19
  %57 = ptrtoint ptr %of_output_links.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_output_links.i, align 4
  %tobool7.not.i = icmp eq ptr %58, null
  br i1 %tobool7.not.i, label %komeda_pipeline_assemble.exit.cond.end.i_crit_edge, label %cond.true.i

komeda_pipeline_assemble.exit.cond.end.i_crit_edge: ; preds = %komeda_pipeline_assemble.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %komeda_pipeline_assemble.exit
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %full_name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %komeda_pipeline_assemble.exit.cond.end.i_crit_edge
  %cond10.i = phi ptr [ %60, %cond.true.i ], [ @.str.22, %komeda_pipeline_assemble.exit.cond.end.i_crit_edge ]
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %cond10.i) #9
  %arrayidx17.i = getelementptr %struct.komeda_pipeline, ptr %3, i32 0, i32 19, i32 1
  %61 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %62, null
  br i1 %tobool18.not.i, label %cond.end.i.cond.end24.i_crit_edge, label %cond.true19.i

cond.end.i.cond.end24.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end24.i

cond.true19.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %full_name22.i = getelementptr inbounds %struct.device_node, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %full_name22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %full_name22.i, align 4
  br label %cond.end24.i

cond.end24.i:                                     ; preds = %cond.true19.i, %cond.end.i.cond.end24.i_crit_edge
  %cond25.i = phi ptr [ %64, %cond.true19.i ], [ @.str.22, %cond.end.i.cond.end24.i_crit_edge ]
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %cond25.i) #9
  %call27.i = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps.i5, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call27.i)
  %cmp45.i = icmp slt i32 %call27.i, 32
  br i1 %cmp45.i, label %cond.end24.i.for.body.i13_crit_edge, label %cond.end24.i.komeda_pipeline_dump.exit_crit_edge

cond.end24.i.komeda_pipeline_dump.exit_crit_edge: ; preds = %cond.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_dump.exit

cond.end24.i.for.body.i13_crit_edge:              ; preds = %cond.end24.i
  br label %for.body.i13

for.body.i13:                                     ; preds = %komeda_component_dump.exit.i.for.body.i13_crit_edge, %cond.end24.i.for.body.i13_crit_edge
  %id.046.i = phi i32 [ %call29.i, %komeda_component_dump.exit.i.for.body.i13_crit_edge ], [ %call27.i, %cond.end24.i.for.body.i13_crit_edge ]
  %call.i.i11 = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %3, i32 noundef %id.046.i) #6
  %tobool.not.i.i12 = icmp eq ptr %call.i.i11, null
  br i1 %tobool.not.i.i12, label %for.body.i13.komeda_component_dump.exit.i_crit_edge, label %komeda_pipeline_get_component.exit.i14

for.body.i13.komeda_component_dump.exit.i_crit_edge: ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_component_dump.exit.i

komeda_pipeline_get_component.exit.i14:           ; preds = %for.body.i13
  %65 = ptrtoint ptr %call.i.i11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i.i11, align 4
  %tobool.not.i42.i = icmp eq ptr %66, null
  br i1 %tobool.not.i42.i, label %komeda_pipeline_get_component.exit.i14.komeda_component_dump.exit.i_crit_edge, label %if.end.i.i20

komeda_pipeline_get_component.exit.i14.komeda_component_dump.exit.i_crit_edge: ; preds = %komeda_pipeline_get_component.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_component_dump.exit.i

if.end.i.i20:                                     ; preds = %komeda_pipeline_get_component.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i15 = getelementptr inbounds %struct.komeda_component, ptr %66, i32 0, i32 2
  %id.i.i16 = getelementptr inbounds %struct.komeda_component, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %id.i.i16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i.i16, align 4
  %shl.i.i17 = shl nuw i32 1, %68
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %name.i.i15, i32 noundef %68, i32 noundef %shl.i.i17) #6
  %max_active_inputs.i.i = getelementptr inbounds %struct.komeda_component, ptr %66, i32 0, i32 6
  %69 = ptrtoint ptr %max_active_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %max_active_inputs.i.i, align 4
  %conv.i.i = zext i8 %70 to i32
  %supported_inputs.i.i18 = getelementptr inbounds %struct.komeda_component, ptr %66, i32 0, i32 8
  %71 = ptrtoint ptr %supported_inputs.i.i18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %supported_inputs.i.i18, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef %conv.i.i, i32 noundef %72) #6
  %max_active_outputs.i.i = getelementptr inbounds %struct.komeda_component, ptr %66, i32 0, i32 7
  %73 = ptrtoint ptr %max_active_outputs.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %max_active_outputs.i.i, align 1
  %conv2.i.i = zext i8 %74 to i32
  %supported_outputs.i.i19 = getelementptr inbounds %struct.komeda_component, ptr %66, i32 0, i32 9
  %75 = ptrtoint ptr %supported_outputs.i.i19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %supported_outputs.i.i19, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %conv2.i.i, i32 noundef %76) #6
  br label %komeda_component_dump.exit.i

komeda_component_dump.exit.i:                     ; preds = %if.end.i.i20, %komeda_pipeline_get_component.exit.i14.komeda_component_dump.exit.i_crit_edge, %for.body.i13.komeda_component_dump.exit.i_crit_edge
  %add.i21 = add nsw i32 %id.046.i, 1
  %call29.i = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps.i5, i32 noundef 32, i32 noundef %add.i21) #6
  %cmp.i22 = icmp slt i32 %call29.i, 32
  br i1 %cmp.i22, label %komeda_component_dump.exit.i.for.body.i13_crit_edge, label %komeda_component_dump.exit.i.komeda_pipeline_dump.exit_crit_edge

komeda_component_dump.exit.i.komeda_pipeline_dump.exit_crit_edge: ; preds = %komeda_component_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_dump.exit

komeda_component_dump.exit.i.for.body.i13_crit_edge: ; preds = %komeda_component_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i13

komeda_pipeline_dump.exit:                        ; preds = %komeda_component_dump.exit.i.komeda_pipeline_dump.exit_crit_edge, %cond.end24.i.komeda_pipeline_dump.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail_comps.i5) #6
  %inc = add nuw nsw i32 %i.024, 1
  %77 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_pipelines, align 4
  %cmp = icmp slt i32 %inc, %78
  br i1 %cmp, label %komeda_pipeline_dump.exit.for.body_crit_edge, label %komeda_pipeline_dump.exit.for.end_crit_edge

komeda_pipeline_dump.exit.for.end_crit_edge:      ; preds = %komeda_pipeline_dump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

komeda_pipeline_dump.exit.for.body_crit_edge:     ; preds = %komeda_pipeline_dump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %komeda_pipeline_dump.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_pipeline_dump_register(ptr noundef %pipe, ptr noundef %sf) local_unnamed_addr #0 align 64 {
entry:
  %avail_comps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail_comps) #6
  %id1 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.6, i32 noundef %1) #6
  %funcs = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 16
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dump_register = getelementptr inbounds %struct.komeda_pipeline_funcs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dump_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_register, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %pipe, ptr noundef %sf) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %avail_comps6 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 4
  %6 = ptrtoint ptr %avail_comps6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avail_comps6, align 4
  %8 = ptrtoint ptr %avail_comps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %avail_comps, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp32 = icmp ult i32 %call, 32
  br i1 %cmp32, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %id.033 = phi i32 [ %call15, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %call.i = call fastcc ptr @komeda_pipeline_get_component_pos(ptr noundef %pipe, i32 noundef %id.033) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.komeda_pipeline_get_component.exit_crit_edge, label %if.then.i

for.body.komeda_pipeline_get_component.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %komeda_pipeline_get_component.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  br label %komeda_pipeline_get_component.exit

komeda_pipeline_get_component.exit:               ; preds = %if.then.i, %for.body.komeda_pipeline_get_component.exit_crit_edge
  %c.0.i = phi ptr [ %10, %if.then.i ], [ null, %for.body.komeda_pipeline_get_component.exit_crit_edge ]
  %name = getelementptr inbounds %struct.komeda_component, ptr %c.0.i, i32 0, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.7, ptr noundef %name) #6
  %funcs8 = getelementptr inbounds %struct.komeda_component, ptr %c.0.i, i32 0, i32 10
  %11 = ptrtoint ptr %funcs8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs8, align 4
  %dump_register9 = getelementptr inbounds %struct.komeda_component_funcs, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dump_register9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dump_register9, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %komeda_pipeline_get_component.exit.for.inc_crit_edge, label %if.then11

komeda_pipeline_get_component.exit.for.inc_crit_edge: ; preds = %komeda_pipeline_get_component.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %komeda_pipeline_get_component.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void %14(ptr noundef %c.0.i, ptr noundef %sf) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %komeda_pipeline_get_component.exit.for.inc_crit_edge
  %add = add nuw nsw i32 %id.033, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %avail_comps, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp ult i32 %call15, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail_comps) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 20, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 26, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 173, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 186, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 193, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 364, i32 17}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 373, i32 18}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 87, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 106, i32 4}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 116, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 323, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @komeda_pipeline_assemble._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @komeda_pipeline_assemble._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 281, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @komeda_component_verify_inputs._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @komeda_component_verify_inputs._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 253, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @komeda_pipeline_dump._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @komeda_pipeline_dump._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 256, i32 2}
!40 = !{ptr @komeda_pipeline_dump._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @komeda_pipeline_dump._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 259, i32 2}
!45 = !{ptr @komeda_pipeline_dump._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @komeda_pipeline_dump._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 239, i32 2}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 241, i32 2}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c", i32 243, i32 2}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i8 0, i8 2}
