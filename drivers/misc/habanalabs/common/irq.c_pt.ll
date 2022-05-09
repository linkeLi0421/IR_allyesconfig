; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/irq.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hl_cq = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.atomic_t }
%struct.hl_cq_entry = type { i32 }
%struct.hl_hw_queue = type { ptr, %struct.hl_sync_stream_properties, i32, i32, ptr, i32, i32, %struct.atomic_t, i32, i32, i32, i16, i8, i8 }
%struct.hl_sync_stream_properties = type { [2 x %struct.hl_hw_sob], i16, i16, i16, [2 x i16], i16, i16, i8 }
%struct.hl_hw_sob = type { ptr, %struct.kref, i32, i32, i32, i8 }
%struct.hl_cs_job = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.kref, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hl_user_pending_interrupt = type { %struct.list_head, %struct.hl_fence, i64, ptr }
%struct.hl_fence = type { %struct.completion, %struct.kref, i64, i32, i32, i64, i8 }
%struct.hl_eq_entry = type { %struct.hl_eq_header, %union.anon.75 }
%struct.hl_eq_header = type { i32, i32 }
%union.anon.75 = type { [7 x i64] }
%struct.hl_eqe_work = type { %struct.work_struct, ptr, %struct.hl_eq_entry }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hl_irq_handler_cq.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_irq_handler_cq\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/misc/habanalabs/common/irq.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device disabled but received IRQ %d for CQ %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hl_irq_handler_user_cq.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_irq_handler_user_cq\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"got user completion interrupt id %u\00", [60 x i8] zeroinitializer }, align 32
@hl_irq_handler_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 198, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"got invalid user interrupt %u\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_irq_handler_default\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_irq_handler_default._entry_ptr = internal global ptr @hl_irq_handler_default._entry, section ".printk_index", align 4
@hl_irq_handler_eq.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_irq_handler_eq\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"EQE 0x%x in queue is ready but index does not match %d!=%d\00", [37 x i8] zeroinitializer }, align 32
@hl_irq_handler_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 253, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device disabled but received an EQ event\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_irq_handler_eq._entry_ptr = internal global ptr @hl_irq_handler_eq._entry, section ".printk_index", align 4
@hl_irq_handler_eq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&handle_eqe_work->eq_work)\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 87, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 170, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 196, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 234, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 253, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [40 x i8] c"../drivers/misc/habanalabs/common/irq.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 259, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @hl_irq_handler_default._entry, ptr @hl_irq_handler_default._entry_ptr, ptr @hl_irq_handler_eq._entry, ptr @hl_irq_handler_eq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @hl_irq_handler_eq.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_irq_handler_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_irq_handler_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_irq_handler_eq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hl_cq_inc_ptr(i32 noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %ptr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %inc)
  %cmp = icmp eq i32 %inc, 4096
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !38

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptr.addr.0 = phi i32 [ 0, %if.then ], [ %inc, %entry.if.end_crit_edge ]
  ret i32 %ptr.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_irq_handler_cq(i32 noundef %irq, ptr noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %disabled = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_irq_handler_cq.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_irq_handler_cq, %if.then5)) #8
          to label %cleanup42 [label %if.then5], !srcloc !39

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %hw_queue_id = getelementptr inbounds %struct.hl_cq, ptr %arg, i32 0, i32 4
  %6 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_queue_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_irq_handler_cq.__UNIQUE_ID_ddebug297, ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %irq, i32 noundef %7) #8
  br label %cleanup42

if.end6:                                          ; preds = %entry
  %kernel_address = getelementptr inbounds %struct.hl_cq, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kernel_address, align 4
  %ci = getelementptr inbounds %struct.hl_cq, ptr %arg, i32 0, i32 5
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ci, align 4
  %arrayidx72 = getelementptr %struct.hl_cq_entry, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx72, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not73 = icmp eq i32 %14, 0
  br i1 %tobool7.not73, label %if.end6.cleanup42_crit_edge, label %if.end11.lr.ph

if.end6.cleanup42_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

if.end11.lr.ph:                                   ; preds = %if.end6
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 20
  %hw_queue_id22 = getelementptr inbounds %struct.hl_cq, ptr %arg, i32 0, i32 4
  %cq_wq = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 16
  %cq_idx = getelementptr inbounds %struct.hl_cq, ptr %arg, i32 0, i32 3
  %free_slots_cnt = getelementptr inbounds %struct.hl_cq, ptr %arg, i32 0, i32 7
  br label %if.end11

if.end11:                                         ; preds = %cleanup.if.end11_crit_edge, %if.end11.lr.ph
  %arrayidx74 = phi ptr [ %arrayidx72, %if.end11.lr.ph ], [ %arrayidx, %cleanup.if.end11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %15 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx74, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  %conv = and i32 %17, 4095
  %19 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kernel_queues, align 8
  %21 = ptrtoint ptr %hw_queue_id22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_queue_id22, align 4
  %arrayidx23 = getelementptr %struct.hl_hw_queue, ptr %20, i32 %22
  br i1 %tobool17.not, label %if.end11.if.end34_crit_edge, label %land.lhs.true

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end11
  %23 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx23, align 4
  %arrayidx31 = getelementptr ptr, ptr %26, i32 %conv
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx31, align 4
  %29 = ptrtoint ptr %cq_wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cq_wq, align 8
  %31 = ptrtoint ptr %cq_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cq_idx, align 4
  %arrayidx32 = getelementptr ptr, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx32, align 4
  %finish_work = getelementptr inbounds %struct.hl_cs_job, ptr %28, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %finish_work) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %land.lhs.true.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  %ci35 = getelementptr %struct.hl_hw_queue, ptr %20, i32 %22, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ci35, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ci35, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ci35, ptr %ci35, i32 1, ptr elementtype(i32) %ci35) #8, !srcloc !41
  %36 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx74, align 4
  %38 = and i32 %37, -129
  store i32 %38, ptr %arrayidx74, align 4
  %39 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ci, align 4
  %inc.i = add i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 4096
  br i1 %cmp.i, label %if.then.i, label %if.end34.cleanup_crit_edge, !prof !38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end34.cleanup_crit_edge
  %ptr.addr.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end34.cleanup_crit_edge ]
  %41 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %ptr.addr.0.i, ptr %ci, align 4
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_slots_cnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %free_slots_cnt, i32 1, i32 3, i32 1) #8
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_slots_cnt, ptr %free_slots_cnt, i32 1, ptr elementtype(i32) %free_slots_cnt) #8, !srcloc !41
  %43 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ci, align 4
  %arrayidx = getelementptr %struct.hl_cq_entry, ptr %9, i32 %44
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %47 = and i32 %46, 128
  %tobool7.not = icmp eq i32 %47, 0
  br i1 %tobool7.not, label %cleanup.cleanup42_crit_edge, label %cleanup.if.end11_crit_edge

cleanup.if.end11_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup.cleanup42_crit_edge, %if.end6.cleanup42_crit_edge, %if.then5, %do.body
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_irq_handler_user_cq(i32 noundef %irq, ptr noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_irq_handler_user_cq.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_irq_handler_user_cq, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %interrupt_id = getelementptr inbounds %struct.hl_user_interrupt, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %interrupt_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interrupt_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_irq_handler_user_cq.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i64 @ktime_get() #8
  %wait_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 15, i32 2
  tail call void @_raw_spin_lock(ptr noundef %wait_list_lock.i) #8
  %wait_list_head.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %wait_list_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pend.01.i = load ptr, ptr %wait_list_head.i, align 4
  %cmp.not2.i = icmp eq ptr %pend.01.i, %wait_list_head.i
  br i1 %cmp.not2.i, label %do.end.handle_user_cq.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.handle_user_cq.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_user_cq.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %pend.03.i = phi ptr [ %pend.0.i, %for.inc.i.for.body.i_crit_edge ], [ %pend.01.i, %do.end.for.body.i_crit_edge ]
  %cq_kernel_addr.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i, i32 0, i32 3
  %7 = ptrtoint ptr %cq_kernel_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cq_kernel_addr.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.if.then.i_crit_edge, label %land.lhs.true.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %cq_target_value.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i, i32 0, i32 2
  %11 = ptrtoint ptr %cq_target_value.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cq_target_value.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp3.not.i = icmp ult i64 %10, %12
  br i1 %cmp3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %fence.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i, i32 0, i32 1
  %timestamp.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i, ptr %timestamp.i, align 8
  tail call void @complete_all(ptr noundef %fence.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %pend.03.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pend.0.i = load ptr, ptr %pend.03.i, align 4
  %cmp.not.i = icmp eq ptr %pend.0.i, %wait_list_head.i
  br i1 %cmp.not.i, label %for.inc.i.handle_user_cq.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.handle_user_cq.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_user_cq.exit

handle_user_cq.exit:                              ; preds = %for.inc.i.handle_user_cq.exit_crit_edge, %do.end.handle_user_cq.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wait_list_lock.i) #8
  %call.i9 = tail call i64 @ktime_get() #8
  %wait_list_lock.i10 = getelementptr inbounds %struct.hl_user_interrupt, ptr %arg, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %wait_list_lock.i10) #8
  %wait_list_head.i11 = getelementptr inbounds %struct.hl_user_interrupt, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %wait_list_head.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %pend.01.i12 = load ptr, ptr %wait_list_head.i11, align 4
  %cmp.not2.i13 = icmp eq ptr %pend.01.i12, %wait_list_head.i11
  br i1 %cmp.not2.i13, label %handle_user_cq.exit.handle_user_cq.exit27_crit_edge, label %handle_user_cq.exit.for.body.i17_crit_edge

handle_user_cq.exit.for.body.i17_crit_edge:       ; preds = %handle_user_cq.exit
  br label %for.body.i17

handle_user_cq.exit.handle_user_cq.exit27_crit_edge: ; preds = %handle_user_cq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_user_cq.exit27

for.body.i17:                                     ; preds = %for.inc.i26.for.body.i17_crit_edge, %handle_user_cq.exit.for.body.i17_crit_edge
  %pend.03.i14 = phi ptr [ %pend.0.i24, %for.inc.i26.for.body.i17_crit_edge ], [ %pend.01.i12, %handle_user_cq.exit.for.body.i17_crit_edge ]
  %cq_kernel_addr.i15 = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i14, i32 0, i32 3
  %16 = ptrtoint ptr %cq_kernel_addr.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cq_kernel_addr.i15, align 8
  %tobool.not.i16 = icmp eq ptr %17, null
  br i1 %tobool.not.i16, label %for.body.i17.if.then.i23_crit_edge, label %land.lhs.true.i20

for.body.i17.if.then.i23_crit_edge:               ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23

land.lhs.true.i20:                                ; preds = %for.body.i17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %cq_target_value.i18 = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i14, i32 0, i32 2
  %20 = ptrtoint ptr %cq_target_value.i18 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cq_target_value.i18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp3.not.i19 = icmp ult i64 %19, %21
  br i1 %cmp3.not.i19, label %land.lhs.true.i20.for.inc.i26_crit_edge, label %land.lhs.true.i20.if.then.i23_crit_edge

land.lhs.true.i20.if.then.i23_crit_edge:          ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23

land.lhs.true.i20.for.inc.i26_crit_edge:          ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i26

if.then.i23:                                      ; preds = %land.lhs.true.i20.if.then.i23_crit_edge, %for.body.i17.if.then.i23_crit_edge
  %fence.i21 = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i14, i32 0, i32 1
  %timestamp.i22 = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.03.i14, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %timestamp.i22 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i9, ptr %timestamp.i22, align 8
  tail call void @complete_all(ptr noundef %fence.i21) #8
  br label %for.inc.i26

for.inc.i26:                                      ; preds = %if.then.i23, %land.lhs.true.i20.for.inc.i26_crit_edge
  %23 = ptrtoint ptr %pend.03.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %pend.0.i24 = load ptr, ptr %pend.03.i14, align 4
  %cmp.not.i25 = icmp eq ptr %pend.0.i24, %wait_list_head.i11
  br i1 %cmp.not.i25, label %for.inc.i26.handle_user_cq.exit27_crit_edge, label %for.inc.i26.for.body.i17_crit_edge

for.inc.i26.for.body.i17_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i17

for.inc.i26.handle_user_cq.exit27_crit_edge:      ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_user_cq.exit27

handle_user_cq.exit27:                            ; preds = %for.inc.i26.handle_user_cq.exit27_crit_edge, %handle_user_cq.exit.handle_user_cq.exit27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wait_list_lock.i10) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_irq_handler_default(i32 noundef %irq, ptr nocapture noundef readonly %arg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %interrupt_id2 = getelementptr inbounds %struct.hl_user_interrupt, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %interrupt_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interrupt_id2, align 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %3) #11
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_irq_handler_eq(i32 noundef %irq, ptr nocapture noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %kernel_address = getelementptr inbounds %struct.hl_eq, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kernel_address, align 4
  %ci = getelementptr inbounds %struct.hl_eq, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 4
  %ctl132 = getelementptr %struct.hl_eq_entry, ptr %3, i32 %5, i32 0, i32 1
  %6 = ptrtoint ptr %ctl132 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctl132, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not133 = icmp sgt i32 %8, -1
  br i1 %tobool.not133, label %entry.while.end_crit_edge, label %do.end30.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end30.lr.ph:                                   ; preds = %entry
  %check_eqe_index = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 24, i32 5
  %prev_eqe_index = getelementptr inbounds %struct.hl_eq, ptr %arg, i32 0, i32 4
  %disabled = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 78
  %is_in_soft_reset = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 59, i32 5
  %dev71 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %eq_wq = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 17
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  br label %do.end30

do.end30:                                         ; preds = %hl_eq_inc_ptr.exit.do.end30_crit_edge, %do.end30.lr.ph
  %9 = phi i32 [ %8, %do.end30.lr.ph ], [ %54, %hl_eq_inc_ptr.exit.do.end30_crit_edge ]
  %10 = phi i32 [ %5, %do.end30.lr.ph ], [ %51, %hl_eq_inc_ptr.exit.do.end30_crit_edge ]
  %11 = ptrtoint ptr %check_eqe_index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %check_eqe_index, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not = icmp eq i8 %12, 0
  br i1 %tobool34.not, label %do.end30.if.end59_crit_edge, label %land.lhs.true

do.end30.if.end59_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %do.end30
  %13 = ptrtoint ptr %prev_eqe_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prev_eqe_index, align 4
  %add = add i32 %14, 1
  %and36 = and i32 %add, 65535
  %conv37 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and36, i32 %conv37)
  %cmp.not = icmp eq i32 %and36, %conv37
  br i1 %cmp.not, label %land.lhs.true.if.end59_crit_edge, label %do.body40

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.body40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_irq_handler_eq.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_irq_handler_eq, %if.then47)) #8
          to label %while.end [label %if.then47], !srcloc !39

if.then47:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev71, align 4
  %17 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ci, align 4
  %ctl51 = getelementptr %struct.hl_eq_entry, ptr %3, i32 %18, i32 0, i32 1
  %19 = ptrtoint ptr %ctl51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctl51, align 4
  %21 = ptrtoint ptr %prev_eqe_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prev_eqe_index, align 4
  %add53 = add i32 %22, 1
  %and54 = and i32 %add53, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_irq_handler_eq.__UNIQUE_ID_ddebug309, ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %20, i32 noundef %and54, i32 noundef %conv37) #8
  br label %while.end

if.end59:                                         ; preds = %land.lhs.true.if.end59_crit_edge, %do.end30.if.end59_crit_edge
  %23 = ptrtoint ptr %prev_eqe_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prev_eqe_index, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %prev_eqe_index, align 4
  %arrayidx62 = getelementptr %struct.hl_eq_entry, ptr %3, i32 %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %25 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool64.not = icmp eq i8 %26, 0
  br i1 %tobool64.not, label %if.end59.if.end72_crit_edge, label %land.lhs.true65

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

land.lhs.true65:                                  ; preds = %if.end59
  %27 = ptrtoint ptr %is_in_soft_reset to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_in_soft_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool66.not = icmp eq i8 %28, 0
  br i1 %tobool66.not, label %do.end70, label %land.lhs.true65.if.end72_crit_edge

land.lhs.true65.if.end72_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.end70:                                         ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev71, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.12) #11
  br label %skip_irq

if.end72:                                         ; preds = %land.lhs.true65.if.end72_crit_edge, %if.end59.if.end72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 2592, i32 noundef 112) #12
  %tobool74.not = icmp eq ptr %call7.i, null
  br i1 %tobool74.not, label %if.end72.skip_irq_crit_edge, label %do.body76

if.end72.skip_irq_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_irq

do.body76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #8
  %32 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @hl_irq_handler_eq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry80 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %entry80 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry80, ptr %entry80, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry80, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @irq_handle_eqe, ptr %func, align 4
  %hdev84 = getelementptr inbounds %struct.hl_eqe_work, ptr %call7.i, i32 0, i32 1
  %36 = ptrtoint ptr %hdev84 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %hdev84, align 4
  %eq_entry85 = getelementptr inbounds %struct.hl_eqe_work, ptr %call7.i, i32 0, i32 2
  %37 = call ptr @memcpy(ptr %eq_entry85, ptr %arrayidx62, i32 64)
  %38 = ptrtoint ptr %eq_wq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eq_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef nonnull %call7.i) #8
  br label %skip_irq

skip_irq:                                         ; preds = %do.body76, %if.end72.skip_irq_crit_edge, %do.end70
  %ctl90 = getelementptr inbounds %struct.hl_eq_header, ptr %arrayidx62, i32 0, i32 1
  %40 = ptrtoint ptr %ctl90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctl90, align 4
  %42 = and i32 %41, -129
  store i32 %42, ptr %ctl90, align 4
  %43 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ci, align 4
  %inc.i = add i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 64
  br i1 %cmp.i, label %if.then.i, label %skip_irq.hl_eq_inc_ptr.exit_crit_edge, !prof !38

skip_irq.hl_eq_inc_ptr.exit_crit_edge:            ; preds = %skip_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_eq_inc_ptr.exit

if.then.i:                                        ; preds = %skip_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_eq_inc_ptr.exit

hl_eq_inc_ptr.exit:                               ; preds = %if.then.i, %skip_irq.hl_eq_inc_ptr.exit_crit_edge
  %ptr.addr.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %skip_irq.hl_eq_inc_ptr.exit_crit_edge ]
  %45 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %ptr.addr.0.i, ptr %ci, align 4
  %46 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic_funcs, align 8
  %update_eq_ci = getelementptr inbounds %struct.hl_asic_funcs, ptr %47, i32 0, i32 28
  %48 = ptrtoint ptr %update_eq_ci to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %update_eq_ci, align 4
  tail call void %49(ptr noundef %1, i32 noundef %ptr.addr.0.i) #8
  %50 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ci, align 4
  %ctl = getelementptr %struct.hl_eq_entry, ptr %3, i32 %51, i32 0, i32 1
  %52 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctl, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %tobool.not = icmp sgt i32 %54, -1
  br i1 %tobool.not, label %hl_eq_inc_ptr.exit.while.end_crit_edge, label %hl_eq_inc_ptr.exit.do.end30_crit_edge

hl_eq_inc_ptr.exit.do.end30_crit_edge:            ; preds = %hl_eq_inc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

hl_eq_inc_ptr.exit.while.end_crit_edge:           ; preds = %hl_eq_inc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %hl_eq_inc_ptr.exit.while.end_crit_edge, %if.then47, %do.body40, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_handle_eqe(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_eqe_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %handle_eqe = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %handle_eqe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle_eqe, align 4
  %eq_entry = getelementptr inbounds %struct.hl_eqe_work, ptr %work, i32 0, i32 2
  tail call void %5(ptr noundef %1, ptr noundef %eq_entry) #8
  tail call void @kfree(ptr noundef %work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cq_init(ptr noundef %hdev, ptr noundef %q, i32 noundef %hw_queue_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %asic_dma_alloc_coherent = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %asic_dma_alloc_coherent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_dma_alloc_coherent, align 4
  %bus_address = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 2
  %call = tail call ptr %3(ptr noundef %hdev, i32 noundef 16384, ptr noundef %bus_address, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %q, align 4
  %kernel_address = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 1
  %5 = ptrtoint ptr %kernel_address to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %kernel_address, align 4
  %hw_queue_id2 = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 4
  %6 = ptrtoint ptr %hw_queue_id2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %hw_queue_id, ptr %hw_queue_id2, align 4
  %ci = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 5
  %7 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ci, align 4
  %pi = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 6
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pi, align 4
  %free_slots_cnt = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_slots_cnt, i32 noundef 4) #8
  %9 = ptrtoint ptr %free_slots_cnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 4096, ptr %free_slots_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cq_fini(ptr noundef %hdev, ptr nocapture noundef readonly %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %asic_dma_free_coherent = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %asic_dma_free_coherent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_dma_free_coherent, align 4
  %kernel_address = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kernel_address, align 4
  %bus_address = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 2
  %6 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_address, align 4
  tail call void %3(ptr noundef %hdev, i32 noundef 16384, ptr noundef %5, i32 noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cq_reset(ptr nocapture noundef readnone %hdev, ptr noundef %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  %pi = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 6
  %1 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pi, align 4
  %free_slots_cnt = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_slots_cnt, i32 noundef 4) #8
  %2 = ptrtoint ptr %free_slots_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 4096, ptr %free_slots_cnt, align 4
  %kernel_address = getelementptr inbounds %struct.hl_cq, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kernel_address, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 16384)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_eq_init(ptr noundef %hdev, ptr noundef %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_alloc = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %cpu_accessible_dma_pool_alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_accessible_dma_pool_alloc, align 4
  %bus_address = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 2
  %call = tail call ptr %3(ptr noundef %hdev, i32 noundef 4096, ptr noundef %bus_address) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %q, align 4
  %kernel_address = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 1
  %5 = ptrtoint ptr %kernel_address to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %kernel_address, align 4
  %ci = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 3
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ci, align 4
  %prev_eqe_index = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 4
  %7 = ptrtoint ptr %prev_eqe_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %prev_eqe_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_eq_fini(ptr noundef %hdev, ptr nocapture noundef readonly %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eq_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 17
  %0 = ptrtoint ptr %eq_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq_wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_free = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %cpu_accessible_dma_pool_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_accessible_dma_pool_free, align 4
  %kernel_address = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 1
  %6 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kernel_address, align 4
  tail call void %5(ptr noundef %hdev, i32 noundef 4096, ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hl_eq_reset(ptr nocapture noundef readnone %hdev, ptr nocapture noundef %q) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  %prev_eqe_index = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 4
  %1 = ptrtoint ptr %prev_eqe_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %prev_eqe_index, align 4
  %kernel_address = getelementptr inbounds %struct.hl_eq, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kernel_address, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 4096)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/irq.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hl_irq_handler_cq.__UNIQUE_ID_ddebug297, !1, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/habanalabs/common/irq.c", i32 170, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hl_irq_handler_user_cq.__UNIQUE_ID_ddebug298, !7, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/common/irq.c", i32 196, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hl_irq_handler_default._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @hl_irq_handler_default._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/habanalabs/common/irq.c", i32 234, i32 4}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hl_irq_handler_eq.__UNIQUE_ID_ddebug309, !18, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/irq.c", i32 253, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hl_irq_handler_eq._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @hl_irq_handler_eq._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @hl_irq_handler_eq.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/common/irq.c", i32 259, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2148986189, i64 2148986194, i64 2148986207, i64 2148986251, i64 2148986285, i64 2148986306}
!40 = !{i64 2155815322}
!41 = !{i64 2148504374, i64 2148504400, i64 2148504429, i64 2148504463, i64 2148504494, i64 2148504517}
!42 = !{i8 0, i8 2}
!43 = !{i64 2155855409}
