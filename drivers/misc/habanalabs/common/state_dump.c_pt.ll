; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/state_dump.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/state_dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.__va_list = type { ptr }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
%struct.cpucp_sensor = type { i32, i32 }
%struct.cpucp_security_info = type { i8, i8, i8, i8 }
%struct.hl_mmu_properties = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8 }
%struct.hl_hints_range = type { i64, i64 }
%struct.hl_vm = type { ptr, %struct.kref, %struct.spinlock, %struct.idr, i8 }
%struct.hl_dbg_device_entry = type { ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.debugfs_blob_wrapper, [5 x ptr], %struct.rw_semaphore, i64, i64, i64, i32, i32, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.76, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.76 = type { %struct.dynamic_fw_load_mgr }
%struct.dynamic_fw_load_mgr = type { %struct.fw_response, %struct.lkd_fw_comms_desc, ptr, i32, i32, i8 }
%struct.fw_response = type { i32, i8, i8 }
%struct.lkd_fw_comms_desc = type { %struct.comms_desc_header, %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.comms_desc_header = type { i32, i32, i16, i8, [5 x i8] }
%struct.cpu_dyn_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x i32] }
%struct.fw_image_props = type { ptr, i32, i32 }
%struct.pci_mem_region = type { i64, i64, i64, i64, i8, i8 }
%struct.hl_state_dump_specs = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], %struct.hl_state_dump_specs_funcs, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.hl_hw_obj_name_entry = type { %struct.hlist_node, ptr, i32 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_sync_to_engine_map_entry = type { %struct.hlist_node, i32, i32, i32 }
%struct.hl_mon_state_dump = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MME\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TPC\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid Engine Type\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Timestamp taken on: %llu\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Non zero sync objects:\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sync id: %u\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", value: %u\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", Engine: \00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Valid (armed) monitor objects:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Valid (armed) fences:\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.hl_sync_engine_to_string = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str, ptr @.str.1], [20 x i8] zeroinitializer }, align 32
@switch.table.hl_state_dump_print_syncs_single_block = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.2, ptr @.str, ptr @.str.1], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 145, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 147, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 149, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 151, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 689, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 698, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 411, i32 45 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 320, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 343, i32 46 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 348, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 353, i32 46 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 363, i32 7 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 169, i32 47 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 570, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [47 x i8] c"../drivers/misc/habanalabs/common/state_dump.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 658, i32 45 }
@___asan_gen_.60 = private unnamed_addr constant [38 x i8] c"switch.table.hl_sync_engine_to_string\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [52 x i8] c"switch.table.hl_state_dump_print_syncs_single_block\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.hl_sync_engine_to_string, ptr @switch.table.hl_state_dump_print_syncs_single_block], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_sync_engine_to_string to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_state_dump_print_syncs_single_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local ptr @hl_format_as_binary(ptr noundef returned writeonly %buf, i32 noundef %buf_len, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %buf_len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %buf, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 98, ptr %arrayidx2, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %buf_len)
  %tobool.not = icmp eq i32 %buf_len, 3
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %wrptr.041 = phi ptr [ %wrptr.1, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %leading0.0.off040 = phi i1 [ %and1035, %for.inc.for.body_crit_edge ], [ true, %if.end.for.body_crit_edge ]
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %n.addr.037 = phi i32 [ %shl, %for.inc.for.body_crit_edge ], [ %n, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.addr.037)
  %tobool4 = icmp sgt i32 %n.addr.037, -1
  %and1035 = and i1 %tobool4, %leading0.0.off040
  br i1 %and1035, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %n.addr.0.lobit = lshr i32 %n.addr.037, 31
  %4 = trunc i32 %n.addr.0.lobit to i8
  %conv14 = or i8 %4, 48
  %5 = ptrtoint ptr %wrptr.041 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv14, ptr %wrptr.041, align 1
  %incdec.ptr = getelementptr i8, ptr %wrptr.041, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body.for.inc_crit_edge
  %wrptr.1 = phi ptr [ %wrptr.041, %for.body.for.inc_crit_edge ], [ %incdec.ptr, %if.then13 ]
  %inc = add nuw nsw i32 %i.039, 1
  %shl = shl i32 %n.addr.037, 1
  %cmp3 = icmp ugt i32 %i.039, 30
  br i1 %cmp3, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %wrptr.0.lcssa.sink = phi ptr [ %buf, %entry.cleanup_crit_edge ], [ %add.ptr, %if.end.cleanup_crit_edge ], [ %wrptr.1, %for.inc.cleanup_crit_edge ]
  %6 = ptrtoint ptr %wrptr.0.lcssa.sink to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wrptr.0.lcssa.sink, align 1
  ret ptr %buf
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_snprintf_resize(ptr nocapture noundef %buf, ptr nocapture noundef %size, ptr nocapture noundef %offset, ptr nocapture noundef readonly %format, ...) local_unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !39
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %sub = sub i32 %12, %10
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %format, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add = add i32 %15, %call
  %add3 = add i32 %add, 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add3)
  %cmp.not.i = icmp ult i32 %17, %add3
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.i:                                         ; preds = %if.end
  %or.i = or i32 %add, 4095
  %add.i = add i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp1.i = icmp eq i32 %add.i, 0
  %.add.i = select i1 %cmp1.i, i32 4096, i32 %add.i
  %call.i = call noalias ptr @vmalloc(i32 noundef %.add.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %22 = call ptr @memcpy(ptr %call.i, ptr %19, i32 %21)
  call void @vfree(ptr noundef %19) #10
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %buf, align 4
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.add.i, ptr %size, align 4
  call void @llvm.va_start(ptr nonnull %args)
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add.ptr9 = getelementptr i8, ptr %26, i32 %28
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %sub10 = sub i32 %30, %28
  %31 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.0.load22 = load i32, ptr %args, align 4
  %.fca.0.insert23 = insertvalue [1 x i32] poison, i32 %.fca.0.load22, 0
  %call12 = call i32 @vsnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef %format, [1 x i32] %.fca.0.insert23)
  call void @llvm.va_end(ptr nonnull %args)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %length.0 = phi i32 [ %call12, %if.then8 ], [ %call, %if.end.if.end14_crit_edge ]
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add15 = add i32 %33, %length.0
  store i32 %add15, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @hl_sync_engine_to_string(i32 noundef %engine_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %engine_type)
  %0 = icmp ult i32 %engine_type, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.hl_sync_engine_to_string, i32 0, i32 %engine_type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_state_dump_get_sync_name(ptr nocapture noundef readonly %hdev, i32 noundef %sync_id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state_dump_specs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55
  %mul.i.i = mul i32 %sync_id, 1640531527
  %shr.i = lshr i32 %mul.i.i, 25
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr %state_dump_specs, i32 0, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %arrayidx, %entry ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %tobool3.not = icmp eq ptr %entry1.0, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id = getelementptr inbounds %struct.hl_hw_obj_name_entry, ptr %entry1.0, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %cmp = icmp eq i32 %2, %sync_id
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hl_hw_obj_name_entry, ptr %entry1.0, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_state_dump_get_monitor_name(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %mon) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mon, align 4
  %mul.i.i = mul i32 %1, 1640531527
  %shr.i = lshr i32 %mul.i.i, 25
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 1, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %arrayidx, %entry ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %tobool3.not = icmp eq ptr %entry1.0, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id5 = getelementptr inbounds %struct.hl_hw_obj_name_entry, ptr %entry1.0, i32 0, i32 2
  %3 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id5, align 4
  %cmp = icmp eq i32 %1, %4
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hl_hw_obj_name_entry, ptr %entry1.0, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_state_dump_free_sync_to_engine_map(ptr nocapture noundef readonly %map) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr %map, i32 0, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not33 = icmp eq ptr %1, null
  br i1 %tobool5.not33, label %for.body.for.inc22_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22

land.rhs6:                                        ; preds = %hash_del.exit.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %entry1.134 = phi ptr [ %3, %hash_del.exit.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %entry1.134 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.134, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.134, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs6.hash_del.exit_crit_edge, label %if.then.i.i

land.rhs6.hash_del.exit_crit_edge:                ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %land.rhs6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %entry1.134 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %entry1.134, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %land.rhs6.hash_del.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.134) #10
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %hash_del.exit.for.inc22_crit_edge, label %hash_del.exit.land.rhs6_crit_edge

hash_del.exit.land.rhs6_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs6

hash_del.exit.for.inc22_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22

for.inc22:                                        ; preds = %hash_del.exit.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end23, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end23:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_state_dump(ptr noundef %hdev) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #10
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  %call = tail call i64 @ktime_get() #10
  %call2 = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.4, i64 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 512) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.err_crit_edge, label %if.end.i

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i:                                         ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 2
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %call1.i = tail call i32 %5(ptr noundef %hdev, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %hl_state_dump_print_syncs.exit.thread57

hl_state_dump_print_syncs.exit.thread57:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %err

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.out.i_crit_edge

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end8.i:                                        ; preds = %if.end4.i
  %sync_namager_names.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 3
  %6 = ptrtoint ptr %sync_namager_names.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_namager_names.i, align 4
  %tobool9.not.i = icmp eq ptr %7, null
  br i1 %tobool9.not.i, label %for.cond17.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end8.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool12.not60.i = icmp eq ptr %9, null
  br i1 %tobool12.not60.i, label %for.cond.preheader.i.out.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond17.preheader.i:                           ; preds = %if.end8.i
  %props.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 4
  %10 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %props.i, align 4
  %arrayidx1863.i = getelementptr i64, ptr %11, i32 28
  %12 = ptrtoint ptr %arrayidx1863.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1863.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp64.i = icmp sgt i64 %13, 0
  br i1 %cmp64.i, label %for.cond17.preheader.i.for.body20.i_crit_edge, label %for.cond17.preheader.i.out.i_crit_edge

for.cond17.preheader.i.out.i_crit_edge:           ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond17.preheader.i.for.body20.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body20.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %index.061.i, 1
  %14 = ptrtoint ptr %sync_namager_names.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sync_namager_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %inc.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %17, null
  br i1 %tobool12.not.i, label %for.cond.i.out.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.out.i_crit_edge:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %index.061.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call13.i = call fastcc i32 @hl_state_dump_print_syncs_single_block(ptr noundef %hdev, i32 noundef %index.061.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.cond.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond17.i:                                     ; preds = %for.body20.i
  %inc26.i = add i32 %index.165.i, 1
  %conv.i = zext i32 %inc26.i to i64
  %18 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %props.i, align 4
  %arrayidx18.i = getelementptr i64, ptr %19, i32 28
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx18.i, align 8
  %cmp.i = icmp sgt i64 %21, %conv.i
  br i1 %cmp.i, label %for.cond17.i.for.body20.i_crit_edge, label %for.cond17.i.out.i_crit_edge

for.cond17.i.out.i_crit_edge:                     ; preds = %for.cond17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond17.i.for.body20.i_crit_edge:              ; preds = %for.cond17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.cond17.i.for.body20.i_crit_edge, %for.cond17.preheader.i.for.body20.i_crit_edge
  %index.165.i = phi i32 [ %inc26.i, %for.cond17.i.for.body20.i_crit_edge ], [ 0, %for.cond17.preheader.i.for.body20.i_crit_edge ]
  %call21.i = call fastcc i32 @hl_state_dump_print_syncs_single_block(ptr noundef %hdev, i32 noundef %index.165.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %for.cond17.i, label %for.body20.i.out.i_crit_edge

for.body20.i.out.i_crit_edge:                     ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

out.i:                                            ; preds = %for.body20.i.out.i_crit_edge, %for.cond17.i.out.i_crit_edge, %for.body.i.out.i_crit_edge, %for.cond.i.out.i_crit_edge, %for.cond17.preheader.i.out.i_crit_edge, %for.cond.preheader.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge
  %rc.2.i = phi i32 [ %call5.i, %if.end4.i.out.i_crit_edge ], [ 0, %for.cond17.preheader.i.out.i_crit_edge ], [ 0, %for.cond.preheader.i.out.i_crit_edge ], [ 0, %for.cond17.i.out.i_crit_edge ], [ %call21.i, %for.body20.i.out.i_crit_edge ], [ 0, %for.cond.i.out.i_crit_edge ], [ %call13.i, %for.body.i.out.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc22.i.i.for.body.i.i_crit_edge, %out.i
  %i.036.i.i = phi i32 [ 0, %out.i ], [ %inc.i.i, %for.inc22.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [128 x %struct.hlist_head], ptr %call7.i.i.i, i32 0, i32 %i.036.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool5.not33.i.i = icmp eq ptr %23, null
  br i1 %tobool5.not33.i.i, label %for.body.i.i.for.inc22.i.i_crit_edge, label %for.body.i.i.land.rhs6.i.i_crit_edge

for.body.i.i.land.rhs6.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %land.rhs6.i.i

for.body.i.i.for.inc22.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.i.i

land.rhs6.i.i:                                    ; preds = %hash_del.exit.i.i.land.rhs6.i.i_crit_edge, %for.body.i.i.land.rhs6.i.i_crit_edge
  %entry1.134.i.i = phi ptr [ %25, %hash_del.exit.i.i.land.rhs6.i.i_crit_edge ], [ %23, %for.body.i.i.land.rhs6.i.i_crit_edge ]
  %24 = ptrtoint ptr %entry1.134.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entry1.134.i.i, align 4
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.134.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.not.i.i.i.i, label %land.rhs6.i.i.hash_del.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.rhs6.i.i.hash_del.exit.i.i_crit_edge:        ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs6.i.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %25, ptr %27, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %entry1.134.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %entry1.134.i.i, align 4
  %31 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %hash_del.exit.i.i

hash_del.exit.i.i:                                ; preds = %__hlist_del.exit.i.i.i.i, %land.rhs6.i.i.hash_del.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.134.i.i) #10
  %tobool5.not.i.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i.i, label %hash_del.exit.i.i.for.inc22.i.i_crit_edge, label %hash_del.exit.i.i.land.rhs6.i.i_crit_edge

hash_del.exit.i.i.land.rhs6.i.i_crit_edge:        ; preds = %hash_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs6.i.i

hash_del.exit.i.i.for.inc22.i.i_crit_edge:        ; preds = %hash_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22.i.i

for.inc22.i.i:                                    ; preds = %hash_del.exit.i.i.for.inc22.i.i_crit_edge, %for.body.i.i.for.inc22.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %hl_state_dump_print_syncs.exit, label %for.inc22.i.i.for.body.i.i_crit_edge

for.inc22.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

hl_state_dump_print_syncs.exit:                   ; preds = %for.inc22.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool4.not = icmp eq i32 %rc.2.i, 0
  br i1 %tobool4.not, label %if.end6, label %hl_state_dump_print_syncs.exit.err_crit_edge

hl_state_dump_print_syncs.exit.err_crit_edge:     ; preds = %hl_state_dump_print_syncs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end6:                                          ; preds = %hl_state_dump_print_syncs.exit
  %call7 = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.5)
  %call.i = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i28 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i28, label %if.end.i30, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i30:                                       ; preds = %if.end6
  %sync_namager_names.i29 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 3
  %32 = ptrtoint ptr %sync_namager_names.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sync_namager_names.i29, align 4
  %tobool1.not.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i, label %for.cond9.preheader.i, label %for.cond.preheader.i31

for.cond.preheader.i31:                           ; preds = %if.end.i30
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool4.not41.i = icmp eq ptr %35, null
  br i1 %tobool4.not41.i, label %for.cond.preheader.i31.if.end11_crit_edge, label %for.cond.preheader.i31.for.body.i38_crit_edge

for.cond.preheader.i31.for.body.i38_crit_edge:    ; preds = %for.cond.preheader.i31
  br label %for.body.i38

for.cond.preheader.i31.if.end11_crit_edge:        ; preds = %for.cond.preheader.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.cond9.preheader.i:                            ; preds = %if.end.i30
  %props.i32 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 4
  %36 = ptrtoint ptr %props.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %props.i32, align 4
  %arrayidx1044.i = getelementptr i64, ptr %37, i32 28
  %38 = ptrtoint ptr %arrayidx1044.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx1044.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp45.i = icmp sgt i64 %39, 0
  br i1 %cmp45.i, label %for.cond9.preheader.i.for.body12.i_crit_edge, label %for.cond9.preheader.i.if.end11_crit_edge

for.cond9.preheader.i.if.end11_crit_edge:         ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.cond9.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body12.i

for.cond.i35:                                     ; preds = %for.body.i38
  %inc.i33 = add i32 %index.042.i, 1
  %40 = ptrtoint ptr %sync_namager_names.i29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sync_namager_names.i29, align 4
  %arrayidx.i34 = getelementptr ptr, ptr %41, i32 %inc.i33
  %42 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i34, align 4
  %tobool4.not.i = icmp eq ptr %43, null
  br i1 %tobool4.not.i, label %for.cond.i35.if.end11_crit_edge, label %for.cond.i35.for.body.i38_crit_edge

for.cond.i35.for.body.i38_crit_edge:              ; preds = %for.cond.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i38

for.cond.i35.if.end11_crit_edge:                  ; preds = %for.cond.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.i38:                                     ; preds = %for.cond.i35.for.body.i38_crit_edge, %for.cond.preheader.i31.for.body.i38_crit_edge
  %index.042.i = phi i32 [ %inc.i33, %for.cond.i35.for.body.i38_crit_edge ], [ 0, %for.cond.preheader.i31.for.body.i38_crit_edge ]
  %call5.i36 = call fastcc i32 @hl_state_dump_print_monitors_single_block(ptr noundef %hdev, i32 noundef %index.042.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i36)
  %tobool6.not.i37 = icmp eq i32 %call5.i36, 0
  br i1 %tobool6.not.i37, label %for.cond.i35, label %for.body.i38.err_crit_edge

for.body.i38.err_crit_edge:                       ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

for.cond9.i:                                      ; preds = %for.body12.i
  %inc18.i = add i32 %index.146.i, 1
  %conv.i39 = zext i32 %inc18.i to i64
  %44 = ptrtoint ptr %props.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %props.i32, align 4
  %arrayidx10.i = getelementptr i64, ptr %45, i32 28
  %46 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx10.i, align 8
  %cmp.i40 = icmp sgt i64 %47, %conv.i39
  br i1 %cmp.i40, label %for.cond9.i.for.body12.i_crit_edge, label %for.cond9.i.if.end11_crit_edge

for.cond9.i.if.end11_crit_edge:                   ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.cond9.i.for.body12.i_crit_edge:               ; preds = %for.cond9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.cond9.i.for.body12.i_crit_edge, %for.cond9.preheader.i.for.body12.i_crit_edge
  %index.146.i = phi i32 [ %inc18.i, %for.cond9.i.for.body12.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %call13.i41 = call fastcc i32 @hl_state_dump_print_monitors_single_block(ptr noundef %hdev, i32 noundef %index.146.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i41)
  %tobool14.not.i42 = icmp eq i32 %call13.i41, 0
  br i1 %tobool14.not.i42, label %for.cond9.i, label %for.body12.i.err_crit_edge

for.body12.i.err_crit_edge:                       ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end11:                                         ; preds = %for.cond9.i.if.end11_crit_edge, %for.cond.i35.if.end11_crit_edge, %for.cond9.preheader.i.if.end11_crit_edge, %for.cond.preheader.i31.if.end11_crit_edge
  %call12 = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.5)
  %call.i45 = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.end.i48, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i48:                                       ; preds = %if.end11
  %props.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 4
  %48 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %props.i.i, align 4
  %arrayidx.i.i47 = getelementptr i64, ptr %49, i32 21
  %50 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.i.i47, align 8
  %conv.i.i = trunc i64 %51 to i32
  %arrayidx2.i.i = getelementptr i64, ptr %49, i32 9
  %arrayidx4.i.i = getelementptr i64, ptr %49, i32 11
  %52 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %next_fence.0.i.i = load i64, ptr %arrayidx4.i.i, align 8
  %53 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %base_addr.0.i.i = load i64, ptr %arrayidx2.i.i, align 8
  %print_fences_single_engine.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp57.i.i = icmp sgt i32 %conv.i.i, 0
  br i1 %cmp57.i.i, label %if.end.i48.for.body.i.i51_crit_edge, label %if.end.i48.if.end4.i52_crit_edge

if.end.i48.if.end4.i52_crit_edge:                 ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i52

if.end.i48.for.body.i.i51_crit_edge:              ; preds = %if.end.i48
  br label %for.body.i.i51

for.cond.i.i:                                     ; preds = %for.body.i.i51
  %inc.i.i49 = add nuw nsw i32 %i.058.i.i, 1
  %exitcond.not.i.i50 = icmp eq i32 %inc.i.i49, %conv.i.i
  br i1 %exitcond.not.i.i50, label %for.cond.i.i.if.end4.i52_crit_edge, label %for.cond.i.i.for.body.i.i51_crit_edge

for.cond.i.i.for.body.i.i51_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i51

for.cond.i.i.if.end4.i52_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i52

for.body.i.i51:                                   ; preds = %for.cond.i.i.for.body.i.i51_crit_edge, %if.end.i48.for.body.i.i51_crit_edge
  %i.058.i.i = phi i32 [ %inc.i.i49, %for.cond.i.i.for.body.i.i51_crit_edge ], [ 0, %if.end.i48.for.body.i.i51_crit_edge ]
  %54 = ptrtoint ptr %print_fences_single_engine.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %print_fences_single_engine.i.i, align 4
  %conv22.i.i = zext i32 %i.058.i.i to i64
  %mul.i.i = mul i64 %next_fence.0.i.i, %conv22.i.i
  %add.i.i = add i64 %mul.i.i, %base_addr.0.i.i
  %56 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %props.i.i, align 4
  %arrayidx24.i.i = getelementptr i64, ptr %57, i32 25
  %58 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx24.i.i, align 8
  %add25.i.i = add i64 %59, %add.i.i
  %arrayidx30.i.i = getelementptr i64, ptr %57, i32 27
  %60 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx30.i.i, align 8
  %add31.i.i = add i64 %61, %add.i.i
  %call.i.i = call i32 %55(ptr noundef %hdev, i64 noundef %add25.i.i, i64 noundef %add31.i.i, i32 noundef 0, i32 noundef %i.058.i.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i51.err_crit_edge

for.body.i.i51.err_crit_edge:                     ; preds = %for.body.i.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end4.i52:                                      ; preds = %for.cond.i.i.if.end4.i52_crit_edge, %if.end.i48.if.end4.i52_crit_edge
  %62 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %props.i.i, align 4
  %arrayidx7.i.i = getelementptr i64, ptr %63, i32 18
  %64 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx7.i.i, align 8
  %conv8.i.i = trunc i64 %65 to i32
  %arrayidx10.i.i = getelementptr i64, ptr %63, i32 12
  %arrayidx12.i.i = getelementptr i64, ptr %63, i32 14
  %66 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %next_fence.0.i27.i = load i64, ptr %arrayidx12.i.i, align 8
  %67 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %base_addr.0.i28.i = load i64, ptr %arrayidx10.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i)
  %cmp57.i30.i = icmp sgt i32 %conv8.i.i, 0
  br i1 %cmp57.i30.i, label %if.end4.i52.for.body.i46.i_crit_edge, label %if.end4.i52.if.end8.i53_crit_edge

if.end4.i52.if.end8.i53_crit_edge:                ; preds = %if.end4.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i53

if.end4.i52.for.body.i46.i_crit_edge:             ; preds = %if.end4.i52
  br label %for.body.i46.i

for.cond.i35.i:                                   ; preds = %for.body.i46.i
  %inc.i33.i = add nuw nsw i32 %i.058.i36.i, 1
  %exitcond.not.i34.i = icmp eq i32 %inc.i33.i, %conv8.i.i
  br i1 %exitcond.not.i34.i, label %for.cond.i35.i.if.end8.i53_crit_edge, label %for.cond.i35.i.for.body.i46.i_crit_edge

for.cond.i35.i.for.body.i46.i_crit_edge:          ; preds = %for.cond.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i46.i

for.cond.i35.i.if.end8.i53_crit_edge:             ; preds = %for.cond.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i53

for.body.i46.i:                                   ; preds = %for.cond.i35.i.for.body.i46.i_crit_edge, %if.end4.i52.for.body.i46.i_crit_edge
  %i.058.i36.i = phi i32 [ %inc.i33.i, %for.cond.i35.i.for.body.i46.i_crit_edge ], [ 0, %if.end4.i52.for.body.i46.i_crit_edge ]
  %68 = ptrtoint ptr %print_fences_single_engine.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %print_fences_single_engine.i.i, align 4
  %conv22.i37.i = zext i32 %i.058.i36.i to i64
  %mul.i38.i = mul i64 %next_fence.0.i27.i, %conv22.i37.i
  %add.i39.i = add i64 %mul.i38.i, %base_addr.0.i28.i
  %70 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %props.i.i, align 4
  %arrayidx24.i40.i = getelementptr i64, ptr %71, i32 25
  %72 = ptrtoint ptr %arrayidx24.i40.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx24.i40.i, align 8
  %add25.i41.i = add i64 %73, %add.i39.i
  %arrayidx30.i42.i = getelementptr i64, ptr %71, i32 27
  %74 = ptrtoint ptr %arrayidx30.i42.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx30.i42.i, align 8
  %add31.i43.i = add i64 %75, %add.i39.i
  %call.i44.i = call i32 %69(ptr noundef %hdev, i64 noundef %add25.i41.i, i64 noundef %add31.i43.i, i32 noundef 2, i32 noundef %i.058.i36.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %for.cond.i35.i, label %for.body.i46.i.err_crit_edge

for.body.i46.i.err_crit_edge:                     ; preds = %for.body.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end8.i53:                                      ; preds = %for.cond.i35.i.if.end8.i53_crit_edge, %if.end4.i52.if.end8.i53_crit_edge
  %76 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %props.i.i, align 4
  %arrayidx15.i.i = getelementptr i64, ptr %77, i32 20
  %78 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx15.i.i, align 8
  %conv16.i.i = trunc i64 %79 to i32
  %arrayidx18.i.i = getelementptr i64, ptr %77, i32 15
  %arrayidx20.i.i = getelementptr i64, ptr %77, i32 17
  %80 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %next_fence.0.i49.i = load i64, ptr %arrayidx20.i.i, align 8
  %81 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %base_addr.0.i50.i = load i64, ptr %arrayidx18.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i.i)
  %cmp57.i52.i = icmp sgt i32 %conv16.i.i, 0
  br i1 %cmp57.i52.i, label %if.end8.i53.for.body.i68.i_crit_edge, label %if.end8.i53.if.end16_crit_edge

if.end8.i53.if.end16_crit_edge:                   ; preds = %if.end8.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end8.i53.for.body.i68.i_crit_edge:             ; preds = %if.end8.i53
  br label %for.body.i68.i

for.cond.i57.i:                                   ; preds = %for.body.i68.i
  %inc.i55.i = add nuw nsw i32 %i.058.i58.i, 1
  %exitcond.not.i56.i = icmp eq i32 %inc.i55.i, %conv16.i.i
  br i1 %exitcond.not.i56.i, label %for.cond.i57.i.if.end16_crit_edge, label %for.cond.i57.i.for.body.i68.i_crit_edge

for.cond.i57.i.for.body.i68.i_crit_edge:          ; preds = %for.cond.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i68.i

for.cond.i57.i.if.end16_crit_edge:                ; preds = %for.cond.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

for.body.i68.i:                                   ; preds = %for.cond.i57.i.for.body.i68.i_crit_edge, %if.end8.i53.for.body.i68.i_crit_edge
  %i.058.i58.i = phi i32 [ %inc.i55.i, %for.cond.i57.i.for.body.i68.i_crit_edge ], [ 0, %if.end8.i53.for.body.i68.i_crit_edge ]
  %82 = ptrtoint ptr %print_fences_single_engine.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %print_fences_single_engine.i.i, align 4
  %conv22.i59.i = zext i32 %i.058.i58.i to i64
  %mul.i60.i = mul i64 %next_fence.0.i49.i, %conv22.i59.i
  %add.i61.i = add i64 %mul.i60.i, %base_addr.0.i50.i
  %84 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %props.i.i, align 4
  %arrayidx24.i62.i = getelementptr i64, ptr %85, i32 25
  %86 = ptrtoint ptr %arrayidx24.i62.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx24.i62.i, align 8
  %add25.i63.i = add i64 %87, %add.i61.i
  %arrayidx30.i64.i = getelementptr i64, ptr %85, i32 27
  %88 = ptrtoint ptr %arrayidx30.i64.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx30.i64.i, align 8
  %add31.i65.i = add i64 %89, %add.i61.i
  %call.i66.i = call i32 %83(ptr noundef %hdev, i64 noundef %add25.i63.i, i64 noundef %add31.i65.i, i32 noundef 1, i32 noundef %i.058.i58.i, ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call.i66.i, 0
  br i1 %tobool.not.i67.i, label %for.cond.i57.i, label %for.body.i68.i.err_crit_edge

for.body.i68.i.err_crit_edge:                     ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end16:                                         ; preds = %for.cond.i57.i.if.end16_crit_edge, %if.end8.i53.if.end16_crit_edge
  %call17 = call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef nonnull %buf, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull @.str.5)
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buf, align 4
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  call void @hl_debugfs_set_state_dump(ptr noundef %hdev, ptr noundef %91, i32 noundef %93) #10
  br label %cleanup

err:                                              ; preds = %for.body.i68.i.err_crit_edge, %for.body.i46.i.err_crit_edge, %for.body.i.i51.err_crit_edge, %if.end11.err_crit_edge, %for.body12.i.err_crit_edge, %for.body.i38.err_crit_edge, %if.end6.err_crit_edge, %hl_state_dump_print_syncs.exit.err_crit_edge, %hl_state_dump_print_syncs.exit.thread57, %if.end.err_crit_edge, %entry.err_crit_edge
  %rc.0 = phi i32 [ %call2, %entry.err_crit_edge ], [ %rc.2.i, %hl_state_dump_print_syncs.exit.err_crit_edge ], [ %call1.i, %hl_state_dump_print_syncs.exit.thread57 ], [ %call.i, %if.end6.err_crit_edge ], [ -12, %if.end.err_crit_edge ], [ %call.i45, %if.end11.err_crit_edge ], [ %call.i66.i, %for.body.i68.i.err_crit_edge ], [ %call.i44.i, %for.body.i46.i.err_crit_edge ], [ %call.i.i, %for.body.i.i51.err_crit_edge ], [ %call13.i41, %for.body12.i.err_crit_edge ], [ %call5.i36, %for.body.i38.err_crit_edge ]
  %94 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buf, align 4
  call void @vfree(ptr noundef %95) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16
  %retval.0 = phi i32 [ %rc.0, %err ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_set_state_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_state_dump_print_syncs_single_block(ptr noundef %hdev, i32 noundef %index, ptr nocapture noundef %buf, ptr nocapture noundef %size, ptr nocapture noundef %offset, ptr nocapture noundef readonly %map) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_namager_names = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 3
  %0 = ptrtoint ptr %sync_namager_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sync_namager_names, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.7, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup59_crit_edge

if.then.cleanup59_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %props.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 4
  %4 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %arrayidx2.i = getelementptr i64, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx2.i, align 8
  %conv.i = zext i32 %index to i64
  %mul.i = mul i64 %9, %conv.i
  %add.i = add i64 %mul.i, %7
  %arrayidx4.i = getelementptr i64, ptr %5, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx4.i, align 8
  %.tr.i = trunc i64 %11 to i32
  %conv6.i = shl i32 %.tr.i, 2
  %call.i = tail call noalias ptr @vmalloc(i32 noundef %conv6.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.cleanup59_crit_edge, label %for.cond.preheader.i

if.end4.cleanup59_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

for.cond.preheader.i:                             ; preds = %if.end4
  %12 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %props.i, align 4
  %arrayidx930.i = getelementptr i64, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx930.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx930.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp31.i = icmp sgt i64 %15, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.cond.preheader_crit_edge

for.cond.preheader.i.for.cond.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %16 = trunc i64 %add.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs.i, align 8
  %rreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 57
  %19 = ptrtoint ptr %rreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rreg.i, align 4
  %mul11.i = shl i32 %i.032.i, 2
  %conv14.i = add i32 %mul11.i, %16
  %call15.i = tail call i32 %20(ptr noundef %hdev, i32 noundef %conv14.i) #10
  %arrayidx16.i = getelementptr i32, ptr %call.i, i32 %i.032.i
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call15.i, ptr %arrayidx16.i, align 4
  %inc.i = add i32 %i.032.i, 1
  %conv7.i = sext i32 %inc.i to i64
  %22 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %props.i, align 4
  %arrayidx9.i = getelementptr i64, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx9.i, align 8
  %cmp.i = icmp sgt i64 %25, %conv7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond.preheader_crit_edge

for.body.i.for.cond.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i.for.cond.preheader_crit_edge, %for.cond.preheader.i.for.cond.preheader_crit_edge
  %26 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %props.i, align 4
  %arrayidx9126 = getelementptr i64, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx9126 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx9126, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp127 = icmp sgt i64 %29, 0
  br i1 %cmp127, label %for.body.lr.ph, label %for.cond.preheader.free_sync_objects_crit_edge

for.cond.preheader.free_sync_objects_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %state_dump_specs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %30 = phi ptr [ %27, %for.body.lr.ph ], [ %55, %for.inc.for.body_crit_edge ]
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx12 = getelementptr i32, ptr %call.i, i32 %i.0128
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not = icmp eq i32 %32, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %30, align 8
  %arrayidx19 = getelementptr i64, ptr %30, i32 1
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx19, align 8
  %mul = mul i64 %36, %conv.i
  %add = add i64 %mul, %34
  %mul21 = shl i32 %i.0128, 2
  %call24 = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.8, i32 noundef %i.0128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end15.free_sync_objects_crit_edge

if.end15.free_sync_objects_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

if.end27:                                         ; preds = %if.end15
  %mul.i.i.i = mul i32 %i.0128, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 25
  %arrayidx.i = getelementptr [128 x %struct.hlist_head], ptr %state_dump_specs.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i110.for.cond.i_crit_edge, %if.end27
  %entry1.0.in.i = phi ptr [ %arrayidx.i, %if.end27 ], [ %entry1.0.i, %for.body.i110.for.cond.i_crit_edge ]
  %37 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.if.end35_crit_edge, label %for.body.i110

for.cond.i.if.end35_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

for.body.i110:                                    ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.hl_hw_obj_name_entry, ptr %entry1.0.i, i32 0, i32 2
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i, align 4
  %cmp.i109 = icmp eq i32 %39, %i.0128
  br i1 %cmp.i109, label %hl_state_dump_get_sync_name.exit, label %for.body.i110.for.cond.i_crit_edge

for.body.i110.for.cond.i_crit_edge:               ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

hl_state_dump_get_sync_name.exit:                 ; preds = %for.body.i110
  %name.i = getelementptr inbounds %struct.hl_hw_obj_name_entry, ptr %entry1.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i, align 4
  %tobool29.not = icmp eq ptr %41, null
  br i1 %tobool29.not, label %hl_state_dump_get_sync_name.exit.if.end35_crit_edge, label %if.then30

hl_state_dump_get_sync_name.exit.if.end35_crit_edge: ; preds = %hl_state_dump_get_sync_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then30:                                        ; preds = %hl_state_dump_get_sync_name.exit
  %call31 = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.9, ptr noundef nonnull %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end35_crit_edge, label %if.then30.free_sync_objects_crit_edge

if.then30.free_sync_objects_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %hl_state_dump_get_sync_name.exit.if.end35_crit_edge, %for.cond.i.if.end35_crit_edge
  %42 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx12, align 4
  %call37 = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.10, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.free_sync_objects_crit_edge

if.end35.free_sync_objects_crit_edge:             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

if.end40:                                         ; preds = %if.end35
  %44 = trunc i64 %add to i32
  %conv41 = add i32 %mul21, %44
  %mul.i.i.i111 = mul i32 %conv41, 1640531527
  %shr.i.i112 = lshr i32 %mul.i.i.i111, 25
  %arrayidx.i113 = getelementptr [128 x %struct.hlist_head], ptr %map, i32 0, i32 %shr.i.i112
  br label %for.cond.i117

for.cond.i117:                                    ; preds = %for.body.i119.for.cond.i117_crit_edge, %if.end40
  %entry1.0.in.i114 = phi ptr [ %arrayidx.i113, %if.end40 ], [ %entry1.0.i115, %for.body.i119.for.cond.i117_crit_edge ]
  %45 = ptrtoint ptr %entry1.0.in.i114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %entry1.0.i115 = load ptr, ptr %entry1.0.in.i114, align 4
  %tobool3.not.i116 = icmp eq ptr %entry1.0.i115, null
  br i1 %tobool3.not.i116, label %for.cond.i117.if.end53_crit_edge, label %for.body.i119

for.cond.i117.if.end53_crit_edge:                 ; preds = %for.cond.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

for.body.i119:                                    ; preds = %for.cond.i117
  %sync_id4.i = getelementptr inbounds %struct.hl_sync_to_engine_map_entry, ptr %entry1.0.i115, i32 0, i32 3
  %46 = ptrtoint ptr %sync_id4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sync_id4.i, align 4
  %cmp.i118 = icmp eq i32 %47, %conv41
  br i1 %cmp.i118, label %if.then44, label %for.body.i119.for.cond.i117_crit_edge

for.body.i119.for.cond.i117_crit_edge:            ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i117

if.then44:                                        ; preds = %for.body.i119
  %call45 = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.free_sync_objects_crit_edge

if.then44.free_sync_objects_crit_edge:            ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

if.end48:                                         ; preds = %if.then44
  %engine_type = getelementptr inbounds %struct.hl_sync_to_engine_map_entry, ptr %entry1.0.i115, i32 0, i32 1
  %48 = ptrtoint ptr %engine_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %engine_type, align 4
  %engine_id = getelementptr inbounds %struct.hl_sync_to_engine_map_entry, ptr %entry1.0.i115, i32 0, i32 2
  %50 = ptrtoint ptr %engine_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %engine_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %52 = icmp ult i32 %49, 3
  br i1 %52, label %switch.lookup, label %if.end48.hl_print_resize_sync_engine.exit_crit_edge

if.end48.hl_print_resize_sync_engine.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %hl_print_resize_sync_engine.exit

switch.lookup:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.hl_state_dump_print_syncs_single_block, i32 0, i32 %49
  %53 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %hl_print_resize_sync_engine.exit

hl_print_resize_sync_engine.exit:                 ; preds = %switch.lookup, %if.end48.hl_print_resize_sync_engine.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %if.end48.hl_print_resize_sync_engine.exit_crit_edge ]
  %call1.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.12, ptr noundef nonnull %retval.0.i.i, i32 noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool50.not = icmp eq i32 %call1.i, 0
  br i1 %tobool50.not, label %hl_print_resize_sync_engine.exit.if.end53_crit_edge, label %hl_print_resize_sync_engine.exit.free_sync_objects_crit_edge

hl_print_resize_sync_engine.exit.free_sync_objects_crit_edge: ; preds = %hl_print_resize_sync_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

hl_print_resize_sync_engine.exit.if.end53_crit_edge: ; preds = %hl_print_resize_sync_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end53:                                         ; preds = %hl_print_resize_sync_engine.exit.if.end53_crit_edge, %for.cond.i117.if.end53_crit_edge
  %call54 = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.for.inc_crit_edge, label %if.end53.free_sync_objects_crit_edge

if.end53.free_sync_objects_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end53.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0128, 1
  %conv = sext i32 %inc to i64
  %54 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %props.i, align 4
  %arrayidx9 = getelementptr i64, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx9, align 8
  %cmp = icmp sgt i64 %57, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.free_sync_objects_crit_edge

for.inc.free_sync_objects_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sync_objects

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

free_sync_objects:                                ; preds = %for.inc.free_sync_objects_crit_edge, %if.end53.free_sync_objects_crit_edge, %hl_print_resize_sync_engine.exit.free_sync_objects_crit_edge, %if.then44.free_sync_objects_crit_edge, %if.end35.free_sync_objects_crit_edge, %if.then30.free_sync_objects_crit_edge, %if.end15.free_sync_objects_crit_edge, %for.cond.preheader.free_sync_objects_crit_edge
  %rc.3 = phi i32 [ 0, %for.cond.preheader.free_sync_objects_crit_edge ], [ %call54, %if.end53.free_sync_objects_crit_edge ], [ %call1.i, %hl_print_resize_sync_engine.exit.free_sync_objects_crit_edge ], [ %call45, %if.then44.free_sync_objects_crit_edge ], [ %call37, %if.end35.free_sync_objects_crit_edge ], [ %call31, %if.then30.free_sync_objects_crit_edge ], [ %call24, %if.end15.free_sync_objects_crit_edge ], [ 0, %for.inc.free_sync_objects_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  br label %cleanup59

cleanup59:                                        ; preds = %free_sync_objects, %if.end4.cleanup59_crit_edge, %if.then.cleanup59_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup59_crit_edge ], [ %rc.3, %free_sync_objects ], [ -12, %if.end4.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_state_dump_print_monitors_single_block(ptr noundef %hdev, i32 noundef %index, ptr noundef %buf, ptr noundef %size, ptr noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_namager_names = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 3
  %0 = ptrtoint ptr %sync_namager_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sync_namager_names, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.7, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %props.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 4
  %4 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props.i, align 4
  %arrayidx.i = getelementptr i64, ptr %5, i32 8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %8 = trunc i64 %7 to i32
  %conv.i = mul i32 %8, 24
  %call.i = tail call noalias ptr @vmalloc(i32 noundef %conv.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.out_crit_edge, label %if.end.i

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %props.i, align 4
  %arrayidx2.i = getelementptr i64, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx2.i, align 8
  %conv3.i = zext i32 %index to i64
  %mul4.i = mul i64 %12, %conv3.i
  %arrayidx7106.i = getelementptr i64, ptr %10, i32 8
  %13 = ptrtoint ptr %arrayidx7106.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx7106.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp107.i = icmp sgt i64 %14, 0
  br i1 %cmp107.i, label %for.body.lr.ph.i, label %if.end.i.for.cond.preheader_crit_edge

if.end.i.for.cond.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %15 = phi ptr [ %10, %for.body.lr.ph.i ], [ %66, %for.body.i.for.body.i_crit_edge ]
  %i.0108.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.0108.i
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.0108.i, ptr %arrayidx9.i, align 4
  %17 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs.i, align 8
  %rreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 57
  %19 = ptrtoint ptr %rreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rreg.i, align 4
  %arrayidx11.i = getelementptr i64, ptr %15, i32 3
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx11.i, align 8
  %add.i = add i64 %22, %mul4.i
  %mul12.i = shl i32 %i.0108.i, 2
  %23 = trunc i64 %add.i to i32
  %conv15.i = add i32 %mul12.i, %23
  %call16.i = tail call i32 %20(ptr noundef %hdev, i32 noundef %conv15.i) #10
  %wr_addr_low.i = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.0108.i, i32 1
  %24 = ptrtoint ptr %wr_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call16.i, ptr %wr_addr_low.i, align 4
  %25 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic_funcs.i, align 8
  %rreg19.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %26, i32 0, i32 57
  %27 = ptrtoint ptr %rreg19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rreg19.i, align 4
  %29 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %props.i, align 4
  %arrayidx21.i = getelementptr i64, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx21.i, align 8
  %add22.i = add i64 %32, %mul4.i
  %33 = trunc i64 %add22.i to i32
  %conv26.i = add i32 %mul12.i, %33
  %call27.i = tail call i32 %28(ptr noundef %hdev, i32 noundef %conv26.i) #10
  %wr_addr_high.i = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.0108.i, i32 2
  %34 = ptrtoint ptr %wr_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call27.i, ptr %wr_addr_high.i, align 4
  %35 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %asic_funcs.i, align 8
  %rreg30.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %36, i32 0, i32 57
  %37 = ptrtoint ptr %rreg30.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rreg30.i, align 4
  %39 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %props.i, align 4
  %arrayidx32.i = getelementptr i64, ptr %40, i32 5
  %41 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx32.i, align 8
  %add33.i = add i64 %42, %mul4.i
  %43 = trunc i64 %add33.i to i32
  %conv37.i = add i32 %mul12.i, %43
  %call38.i = tail call i32 %38(ptr noundef %hdev, i32 noundef %conv37.i) #10
  %wr_data.i = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.0108.i, i32 3
  %44 = ptrtoint ptr %wr_data.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call38.i, ptr %wr_data.i, align 4
  %45 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %asic_funcs.i, align 8
  %rreg41.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %46, i32 0, i32 57
  %47 = ptrtoint ptr %rreg41.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rreg41.i, align 4
  %49 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %props.i, align 4
  %arrayidx43.i = getelementptr i64, ptr %50, i32 6
  %51 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx43.i, align 8
  %add44.i = add i64 %52, %mul4.i
  %53 = trunc i64 %add44.i to i32
  %conv48.i = add i32 %mul12.i, %53
  %call49.i = tail call i32 %48(ptr noundef %hdev, i32 noundef %conv48.i) #10
  %arm_data.i = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.0108.i, i32 4
  %54 = ptrtoint ptr %arm_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call49.i, ptr %arm_data.i, align 4
  %55 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %asic_funcs.i, align 8
  %rreg52.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %56, i32 0, i32 57
  %57 = ptrtoint ptr %rreg52.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rreg52.i, align 4
  %59 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %props.i, align 4
  %arrayidx54.i = getelementptr i64, ptr %60, i32 7
  %61 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx54.i, align 8
  %add55.i = add i64 %62, %mul4.i
  %63 = trunc i64 %add55.i to i32
  %conv59.i = add i32 %mul12.i, %63
  %call60.i = tail call i32 %58(ptr noundef %hdev, i32 noundef %conv59.i) #10
  %status.i = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.0108.i, i32 5
  %64 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call60.i, ptr %status.i, align 4
  %inc.i = add i32 %i.0108.i, 1
  %conv5.i = sext i32 %inc.i to i64
  %65 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %props.i, align 4
  %arrayidx7.i = getelementptr i64, ptr %66, i32 8
  %67 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx7.i, align 8
  %cmp.i = icmp sgt i64 %68, %conv5.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond.preheader_crit_edge

for.body.i.for.cond.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i.for.cond.preheader_crit_edge, %if.end.i.for.cond.preheader_crit_edge
  %print_single_monitor = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 2, i32 1
  %69 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %props.i, align 4
  %arrayidx944 = getelementptr i64, ptr %70, i32 8
  %71 = ptrtoint ptr %arrayidx944 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx944, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %cmp45 = icmp sgt i64 %72, 0
  br i1 %cmp45, label %for.body.lr.ph, label %for.cond.preheader.free_monitors_crit_edge

for.cond.preheader.free_monitors_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_monitors

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %monitor_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 55, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %73 = ptrtoint ptr %monitor_valid to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %monitor_valid, align 4
  %arrayidx11 = getelementptr %struct.hl_mon_state_dump, ptr %call.i, i32 %i.046
  %call12 = tail call i32 %74(ptr noundef %arrayidx11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %75 = ptrtoint ptr %print_single_monitor to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %print_single_monitor, align 4
  %call18 = tail call i32 %76(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef %hdev, ptr noundef %arrayidx11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.free_monitors_crit_edge

if.end15.free_monitors_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_monitors

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ptr, ptr, ptr, ...) @hl_snprintf_resize(ptr noundef %buf, ptr noundef %size, ptr noundef %offset, ptr noundef nonnull @.str.5)
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %inc = add i32 %i.046, 1
  %conv = sext i32 %inc to i64
  %77 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %props.i, align 4
  %arrayidx9 = getelementptr i64, ptr %78, i32 8
  %79 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx9, align 8
  %cmp = icmp sgt i64 %80, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.free_monitors_crit_edge

for.inc.free_monitors_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_monitors

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

free_monitors:                                    ; preds = %for.inc.free_monitors_crit_edge, %if.end15.free_monitors_crit_edge, %for.cond.preheader.free_monitors_crit_edge
  %rc.3 = phi i32 [ 0, %for.cond.preheader.free_monitors_crit_edge ], [ 0, %for.inc.free_monitors_crit_edge ], [ %call18, %if.end15.free_monitors_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  br label %out

out:                                              ; preds = %free_monitors, %if.end4.out_crit_edge, %if.then.out_crit_edge
  %rc.4 = phi i32 [ %call, %if.then.out_crit_edge ], [ %rc.3, %free_monitors ], [ -12, %if.end4.out_crit_edge ]
  ret i32 %rc.4
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 145, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 147, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 149, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 151, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 689, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 698, i32 43}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 411, i32 45}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 320, i32 23}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 343, i32 46}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 348, i32 47}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 353, i32 46}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 363, i32 7}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 169, i32 47}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 570, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/habanalabs/common/state_dump.c", i32 658, i32 45}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
