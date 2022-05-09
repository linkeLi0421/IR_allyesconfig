; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/context.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/context.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hl_cs_encaps_sig_handle = type { %struct.kref, ptr, ptr, ptr, i64, i32, i32, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
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
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }

@hl_ctx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate IDR for a new CTX\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_ctx_create\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/misc/habanalabs/common/context.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_ctx_create._entry_ptr = internal global ptr @hl_ctx_create._entry, section ".printk_index", align 4
@hl_ctx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ctx->cs_lock\00", [18 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to init mem ctx module\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hl_ctx_init\00", [20 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry_ptr = internal global ptr @hl_ctx_init._entry, section ".printk_index", align 4
@hl_ctx_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 213, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctx_init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry_ptr.10 = internal global ptr @hl_ctx_init._entry.8, section ".printk_index", align 4
@hl_ctx_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No free ASID, failed to create context\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry_ptr.13 = internal global ptr @hl_ctx_init._entry.11, section ".printk_index", align 4
@hl_ctx_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry_ptr.15 = internal global ptr @hl_ctx_init._entry.14, section ".printk_index", align 4
@hl_ctx_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to init VA pool for mapped CB\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry_ptr.18 = internal global ptr @hl_ctx_init._entry.16, section ".printk_index", align 4
@hl_ctx_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_ctx_init._entry_ptr.20 = internal global ptr @hl_ctx_init._entry.19, section ".printk_index", align 4
@hl_ctx_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.7, ptr @.str.2, ptr @.str.22, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create user context %d\0A\00", [40 x i8] zeroinitializer }, align 32
@hl_ctx_get_fences._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get fence for CS with seq 0x%llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_ctx_get_fences\00", [46 x i8] zeroinitializer }, align 32
@hl_ctx_get_fences._entry_ptr = internal global ptr @hl_ctx_get_fences._entry, section ".printk_index", align 4
@hl_ctx_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mgr->ctx_lock\00", [17 x i8] zeroinitializer }, align 32
@hl_ctx_fini.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hl_ctx_fini\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"closing user context %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hl_ctx_fini.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"closing kernel context\0A\00", [40 x i8] zeroinitializer }, align 32
@hl_encaps_sig_mgr_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 62, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"device released while some encaps signals handles are still allocated\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_encaps_sig_mgr_fini\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_encaps_sig_mgr_fini._entry_ptr = internal global ptr @hl_encaps_sig_mgr_fini._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hl_encaps_sig_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mgr->lock\00", [21 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 151, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 191, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 206, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 213, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 219, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 226, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 233, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 240, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 246, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 360, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 386, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 95, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 113, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 62, i32 3 }
@___asan_gen_.137 = private constant [44 x i8] c"../drivers/misc/habanalabs/common/context.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 48, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 378, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @hl_ctx_create._entry, ptr @hl_ctx_create._entry_ptr, ptr @hl_ctx_get_fences._entry, ptr @hl_ctx_get_fences._entry_ptr, ptr @hl_ctx_init._entry, ptr @hl_ctx_init._entry.11, ptr @hl_ctx_init._entry.14, ptr @hl_ctx_init._entry.16, ptr @hl_ctx_init._entry.19, ptr @hl_ctx_init._entry.8, ptr @hl_ctx_init._entry_ptr, ptr @hl_ctx_init._entry_ptr.10, ptr @hl_ctx_init._entry_ptr.13, ptr @hl_ctx_init._entry_ptr.15, ptr @hl_ctx_init._entry_ptr.18, ptr @hl_ctx_init._entry_ptr.20, ptr @hl_encaps_sig_mgr_fini._entry, ptr @hl_encaps_sig_mgr_fini._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hl_ctx_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @hl_ctx_mgr_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @hl_encaps_sig_mgr_init.__key, ptr @.str.32, ptr @xa_init_flags.__key, ptr @.str.33], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_get_fences._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctx_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_encaps_sig_mgr_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_encaps_sig_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_encaps_handle_do_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %ref, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %sig_mgr = getelementptr inbounds %struct.hl_ctx, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %sig_mgr) #8
  %handles = getelementptr inbounds %struct.hl_ctx, ptr %1, i32 0, i32 14, i32 1
  %id = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %ref, i32 0, i32 5
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %call = tail call ptr @idr_remove(ptr noundef %handles, i32 noundef %3) #8
  tail call void @_raw_spin_unlock(ptr noundef %sig_mgr) #8
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call3 = tail call i32 @hl_ctx_put(ptr noundef %5)
  tail call void @kfree(ptr noundef %ref) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_ctx_put(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call fastcc void @hl_ctx_fini(ptr noundef %ctx) #8
  %hpriv.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %hpriv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hpriv.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i.hl_ctx_do_release.exit_crit_edge, label %if.then.i1

if.then.i.hl_ctx_do_release.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_ctx_do_release.exit

if.then.i1:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @hl_hpriv_put(ptr noundef nonnull %2) #8
  br label %hl_ctx_do_release.exit

hl_ctx_do_release.exit:                           ; preds = %if.then.i1, %if.then.i.hl_ctx_do_release.exit_crit_edge
  tail call void @kfree(ptr noundef %ctx) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %hl_ctx_do_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %hl_ctx_do_release.exit ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_ctx_do_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -1032
  tail call fastcc void @hl_ctx_fini(ptr noundef %add.ptr)
  %hpriv = getelementptr i8, ptr %ref, i32 -8
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @hl_hpriv_put(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hl_ctx_fini(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  tail call void @hl_hw_block_mem_fini(ptr noundef %ctx) #8
  %max_pending_cs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 48
  %2 = ptrtoint ptr %max_pending_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pending_cs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp61.not = icmp eq i32 %3, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cs_pending = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %cs_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs_pending, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.062
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @hl_fence_put(ptr noundef %7) #8
  %inc = add nuw i32 %i.062, 1
  %8 = ptrtoint ptr %max_pending_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_pending_cs, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cs_pending2 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  %10 = ptrtoint ptr %cs_pending2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs_pending2, align 4
  tail call void @kfree(ptr noundef %11) #8
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %12 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.not = icmp eq i32 %13, 0
  br i1 %cmp3.not, label %do.body15, label %do.body

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_ctx_fini.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_ctx_fini, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !78

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_ctx_fini.__UNIQUE_ID_ddebug297, ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %in_debug = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 89
  %18 = ptrtoint ptr %in_debug to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %in_debug, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %do.end.if.end11_crit_edge, label %if.then9

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @hl_device_set_debug_mode(ptr noundef %1, ptr noundef %ctx, i1 noundef zeroext false) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end.if.end11_crit_edge
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs, align 8
  %ctx_fini = getelementptr inbounds %struct.hl_asic_funcs, ptr %21, i32 0, i32 61
  %22 = ptrtoint ptr %ctx_fini to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx_fini, align 4
  tail call void %23(ptr noundef %ctx) #8
  tail call void @hl_cb_va_pool_fini(ptr noundef %ctx) #8
  tail call void @hl_vm_ctx_fini(ptr noundef %ctx) #8
  %24 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %asid, align 8
  tail call void @hl_asid_free(ptr noundef %1, i32 noundef %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #8
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %id.i, align 4, !annotation !79
  %handles.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1
  %xa_head.i.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xa_head.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %28, null
  br i1 %cmp.i.i.i, label %idr_is_empty.exit.i, label %if.end11.do.end.i_crit_edge

if.end11.do.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

idr_is_empty.exit.i:                              ; preds = %if.end11
  %call2.i.i = tail call i32 @radix_tree_tagged(ptr noundef %handles.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.i.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.i.not.i, label %idr_is_empty.exit.i.do.end.i_crit_edge, label %idr_is_empty.exit.i.hl_encaps_sig_mgr_fini.exit_crit_edge

idr_is_empty.exit.i.hl_encaps_sig_mgr_fini.exit_crit_edge: ; preds = %idr_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_encaps_sig_mgr_fini.exit

idr_is_empty.exit.i.do.end.i_crit_edge:           ; preds = %idr_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %idr_is_empty.exit.i.do.end.i_crit_edge, %if.end11.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.29) #11
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %id.i, align 4
  %call16.i = call ptr @idr_get_next(ptr noundef %handles.i, ptr noundef nonnull %id.i) #8
  %cmp.not7.i = icmp eq ptr %call16.i, null
  br i1 %cmp.not7.i, label %do.end.i.hl_encaps_sig_mgr_fini.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.hl_encaps_sig_mgr_fini.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_encaps_sig_mgr_fini.exit

for.body.i:                                       ; preds = %kref_put.exit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %call18.i = phi ptr [ %call1.i, %kref_put.exit.i.for.body.i_crit_edge ], [ %call16.i, %do.end.i.for.body.i_crit_edge ]
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call18.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @llvm.prefetch.p0(ptr nonnull %call18.i, i32 1, i32 3, i32 1) #8
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call18.i, ptr nonnull %call18.i, i32 1, ptr nonnull elementtype(i32) %call18.i) #8, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call18.i, i32 noundef 3) #8
  br label %kref_put.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  %ctx.i.i = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call18.i, i32 0, i32 3
  %33 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i.i, align 4
  %sig_mgr.i.i = getelementptr inbounds %struct.hl_ctx, ptr %34, i32 0, i32 14
  %hw_sob.i.i = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call18.i, i32 0, i32 2
  %35 = ptrtoint ptr %hw_sob.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_sob.i.i, align 8
  call void @hw_sob_put(ptr noundef %36) #8
  call void @_raw_spin_lock(ptr noundef %sig_mgr.i.i) #8
  %handles.i.i = getelementptr inbounds %struct.hl_ctx, ptr %34, i32 0, i32 14, i32 1
  %id.i.i = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call18.i, i32 0, i32 5
  %37 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i.i, align 8
  %call.i.i = call ptr @idr_remove(ptr noundef %handles.i.i, i32 noundef %38) #8
  call void @_raw_spin_unlock(ptr noundef %sig_mgr.i.i) #8
  %39 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx.i.i, align 4
  %call3.i.i = call i32 @hl_ctx_put(ptr noundef %40) #8
  call void @kfree(ptr noundef nonnull %call18.i) #8
  br label %kref_put.exit.i

kref_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i, align 4
  %add.i = add i32 %42, 1
  store i32 %add.i, ptr %id.i, align 4
  %call1.i = call ptr @idr_get_next(ptr noundef %handles.i, ptr noundef nonnull %id.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %kref_put.exit.i.hl_encaps_sig_mgr_fini.exit_crit_edge, label %kref_put.exit.i.for.body.i_crit_edge

kref_put.exit.i.for.body.i_crit_edge:             ; preds = %kref_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

kref_put.exit.i.hl_encaps_sig_mgr_fini.exit_crit_edge: ; preds = %kref_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_encaps_sig_mgr_fini.exit

hl_encaps_sig_mgr_fini.exit:                      ; preds = %kref_put.exit.i.hl_encaps_sig_mgr_fini.exit_crit_edge, %do.end.i.hl_encaps_sig_mgr_fini.exit_crit_edge, %idr_is_empty.exit.i.hl_encaps_sig_mgr_fini.exit_crit_edge
  call void @idr_destroy(ptr noundef %handles.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  %43 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic_funcs, align 8
  %scrub_device_mem = getelementptr inbounds %struct.hl_asic_funcs, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %scrub_device_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scrub_device_mem, align 4
  %call14 = tail call i32 %46(ptr noundef %1, i64 noundef 0, i64 noundef 0) #8
  br label %if.end34

do.body15:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_ctx_fini.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_ctx_fini, %if.then27)) #8
          to label %do.end31 [label %if.then27], !srcloc !78

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_ctx_fini.__UNIQUE_ID_ddebug298, ptr noundef %48, ptr noundef nonnull @.str.28) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %asic_funcs32 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %49 = ptrtoint ptr %asic_funcs32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic_funcs32, align 8
  %ctx_fini33 = getelementptr inbounds %struct.hl_asic_funcs, ptr %50, i32 0, i32 61
  %51 = ptrtoint ptr %ctx_fini33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx_fini33, align 4
  tail call void %52(ptr noundef %ctx) #8
  tail call void @hl_vm_ctx_fini(ptr noundef %ctx) #8
  tail call void @hl_mmu_ctx_fini(ptr noundef %ctx) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %hl_encaps_sig_mgr_fini.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_hpriv_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_ctx_create(ptr noundef %hdev, ptr noundef %hpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1584) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %ctx_mgr, i32 noundef 0) #8
  %ctx_handles = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 4, i32 1
  %call1 = tail call i32 @idr_alloc(ptr noundef %ctx_handles, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #8
  tail call void @mutex_unlock(ptr noundef %ctx_mgr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #11
  br label %free_ctx

if.end4:                                          ; preds = %if.end
  %handle = getelementptr inbounds %struct.hl_ctx, ptr %call7.i.i, i32 0, i32 22
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %handle, align 4
  %call5 = tail call i32 @hl_ctx_init(ptr noundef %hdev, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %remove_from_idr

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hl_hpriv_get(ptr noundef %hpriv) #8
  %hpriv9 = getelementptr inbounds %struct.hl_ctx, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %hpriv9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hpriv, ptr %hpriv9, align 8
  %ctx10 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %5 = ptrtoint ptr %ctx10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %ctx10, align 4
  %is_compute_ctx_active = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 104
  %6 = ptrtoint ptr %is_compute_ctx_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_compute_ctx_active, align 4
  br label %cleanup

remove_from_idr:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %ctx_mgr, i32 noundef 0) #8
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 4
  %call14 = tail call ptr @idr_remove(ptr noundef %ctx_handles, i32 noundef %8) #8
  tail call void @mutex_unlock(ptr noundef %ctx_mgr) #8
  br label %free_ctx

free_ctx:                                         ; preds = %remove_from_idr, %do.end
  %rc.0 = phi i32 [ %call1, %do.end ], [ %call5, %remove_from_idr ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_ctx, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %rc.0, %free_ctx ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_ctx_init(ptr noundef %hdev, ptr noundef %ctx, i1 noundef zeroext %is_kernel_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %hdev1, align 4
  %refcount = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 4
  %cs_sequence = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 15
  %2 = ptrtoint ptr %cs_sequence to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %cs_sequence, align 8
  %cs_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %cs_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @hl_ctx_init.__key, i16 noundef signext 3) #8
  %thread_ctx_switch_token = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_ctx_switch_token, i32 noundef 4) #8
  %3 = ptrtoint ptr %thread_ctx_switch_token to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %thread_ctx_switch_token, align 4
  %thread_ctx_switch_wait_token = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 20
  %4 = ptrtoint ptr %thread_ctx_switch_wait_token to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %thread_ctx_switch_wait_token, align 4
  %max_pending_cs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 48
  %5 = ptrtoint ptr %max_pending_cs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_pending_cs, align 8
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !80

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cs_pending117 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  %9 = ptrtoint ptr %cs_pending117 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cs_pending117, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #13
  %cs_pending = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  %11 = ptrtoint ptr %cs_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %cs_pending, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  tail call void @hl_hw_block_mem_init(ptr noundef %ctx) #8
  br i1 %is_kernel_ctx, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %12 = ptrtoint ptr %asid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %asid, align 8
  %call6 = tail call i32 @hl_vm_ctx_init(ptr noundef %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #11
  br label %err_hw_block_mem_fini

if.end12:                                         ; preds = %if.then5
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %15 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs, align 8
  %ctx_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %16, i32 0, i32 60
  %17 = ptrtoint ptr %ctx_init to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx_init, align 4
  %call13 = tail call i32 %18(ptr noundef %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %do.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9) #11
  br label %err_vm_ctx_fini

if.else:                                          ; preds = %if.end
  %call21 = tail call i32 @hl_asid_alloc(ptr noundef %hdev) #8
  %asid22 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %21 = ptrtoint ptr %asid22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call21, ptr %asid22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool24.not = icmp eq i32 %call21, 0
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %22 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12) #11
  br label %err_hw_block_mem_fini

if.end30:                                         ; preds = %if.else
  %call31 = tail call i32 @hl_vm_ctx_init(ptr noundef %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6) #11
  br label %err_asid_free

if.end38:                                         ; preds = %if.end30
  %call39 = tail call i32 @hl_cb_va_pool_init(ptr noundef %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %26 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.17) #11
  br label %err_vm_ctx_fini

if.end46:                                         ; preds = %if.end38
  %asic_funcs47 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %28 = ptrtoint ptr %asic_funcs47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic_funcs47, align 8
  %ctx_init48 = getelementptr inbounds %struct.hl_asic_funcs, ptr %29, i32 0, i32 60
  %30 = ptrtoint ptr %ctx_init48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx_init48, align 4
  %call49 = tail call i32 %31(ptr noundef %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %32 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.9) #11
  tail call void @hl_cb_va_pool_fini(ptr noundef %ctx) #8
  br label %err_vm_ctx_fini

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %sig_mgr = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %sig_mgr, ptr noundef nonnull @.str.32, ptr noundef nonnull @hl_encaps_sig_mgr_init.__key, i16 noundef signext 3) #8
  %handles.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %handles.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1, i32 1
  %36 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 14, i32 1, i32 2
  %37 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %idr_next.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_ctx_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_ctx_init, %if.then63)) #8
          to label %cleanup [label %if.then63], !srcloc !78

if.then63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %38 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev64, align 4
  %40 = ptrtoint ptr %asid22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asid22, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_ctx_init.__UNIQUE_ID_ddebug299, ptr noundef %39, ptr noundef nonnull @.str.22, i32 noundef %41) #8
  br label %cleanup

err_vm_ctx_fini:                                  ; preds = %do.end54, %do.end44, %do.end18
  %rc.0 = phi i32 [ %call13, %do.end18 ], [ %call39, %do.end44 ], [ %call49, %do.end54 ]
  tail call void @hl_vm_ctx_fini(ptr noundef %ctx) #8
  br label %err_asid_free

err_asid_free:                                    ; preds = %err_vm_ctx_fini, %do.end36
  %rc.1 = phi i32 [ %rc.0, %err_vm_ctx_fini ], [ -12, %do.end36 ]
  %asid70 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %42 = ptrtoint ptr %asid70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asid70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.not = icmp eq i32 %43, 0
  br i1 %cmp.not, label %err_asid_free.err_hw_block_mem_fini_crit_edge, label %if.then71

err_asid_free.err_hw_block_mem_fini_crit_edge:    ; preds = %err_asid_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hw_block_mem_fini

if.then71:                                        ; preds = %err_asid_free
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hl_asid_free(ptr noundef %hdev, i32 noundef %43) #8
  br label %err_hw_block_mem_fini

err_hw_block_mem_fini:                            ; preds = %if.then71, %err_asid_free.err_hw_block_mem_fini_crit_edge, %do.end28, %do.end11
  %rc.2 = phi i32 [ -12, %do.end11 ], [ %rc.1, %if.then71 ], [ %rc.1, %err_asid_free.err_hw_block_mem_fini_crit_edge ], [ -12, %do.end28 ]
  tail call void @hl_hw_block_mem_fini(ptr noundef %ctx) #8
  %44 = ptrtoint ptr %cs_pending to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cs_pending, align 4
  tail call void @kfree(ptr noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %err_hw_block_mem_fini, %if.then63, %if.end56, %if.end12.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %rc.2, %err_hw_block_mem_fini ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.end12.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hpriv_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_block_mem_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_vm_ctx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_asid_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cb_va_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cb_va_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_vm_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_asid_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_block_mem_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_ctx_get(ptr nocapture readnone %hdev, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !80

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_get_compute_ctx(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fpriv_list_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %fpriv_list_lock, i32 noundef 0) #8
  %fpriv_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 46
  %0 = ptrtoint ptr %fpriv_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpriv_list, align 8
  %cmp.not = icmp eq ptr %1, %fpriv_list
  br i1 %cmp.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %entry
  %ctx2 = getelementptr i8, ptr %1, i32 -268
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx2, align 4
  %refcount.i = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !80

for.body.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  %ctx.0 = phi ptr [ null, %entry.for.end_crit_edge ], [ %3, %if.else.i.i.i.i.i.for.end_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %fpriv_list_lock) #8
  ret ptr %ctx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_ctx_get_fence(ptr noundef %ctx, i64 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #8
  %cs_sequence.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 15
  %0 = ptrtoint ptr %cs_sequence.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cs_sequence.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %seq)
  %cmp.not.i = icmp ugt i64 %1, %seq
  br i1 %cmp.not.i, label %if.end.i, label %entry.hl_ctx_get_fence_locked.exit_crit_edge

entry.hl_ctx_get_fence_locked.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_ctx_get_fence_locked.exit

if.end.i:                                         ; preds = %entry
  %hdev.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev.i, align 4
  %max_pending_cs.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 33, i32 48
  %4 = ptrtoint ptr %max_pending_cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pending_cs.i, align 8
  %conv.i = zext i32 %5 to i64
  %add.i = add i64 %conv.i, %seq
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %1)
  %cmp3.i = icmp ult i64 %add.i, %1
  br i1 %cmp3.i, label %if.end.i.hl_ctx_get_fence_locked.exit_crit_edge, label %if.end6.i

if.end.i.hl_ctx_get_fence_locked.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_ctx_get_fence_locked.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cs_pending.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %cs_pending.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_pending.i, align 4
  %sub.i = add i32 %5, -1
  %8 = trunc i64 %seq to i32
  %idxprom.i = and i32 %sub.i, %8
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  tail call void @hl_fence_get(ptr noundef %10) #8
  br label %hl_ctx_get_fence_locked.exit

hl_ctx_get_fence_locked.exit:                     ; preds = %if.end6.i, %if.end.i.hl_ctx_get_fence_locked.exit_crit_edge, %entry.hl_ctx_get_fence_locked.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end6.i ], [ null, %if.end.i.hl_ctx_get_fence_locked.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.hl_ctx_get_fence_locked.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #8
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_ctx_get_fences(ptr noundef %ctx, ptr nocapture noundef readonly %seq_arr, ptr noundef %fence, i32 noundef %arr_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arr_len)
  %cmp40.not = icmp eq i32 %arr_len, 0
  br i1 %cmp40.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %cs_sequence.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 15
  %hdev.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %cs_pending.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #8
  br label %if.end5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fence.addr.041 = phi ptr [ %fence, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %seq_arr, i32 %i.043
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %cs_sequence.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cs_sequence.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp.not.i = icmp ugt i64 %3, %1
  br i1 %cmp.not.i, label %if.end.i, label %hl_ctx_get_fence_locked.exit.thread

hl_ctx_get_fence_locked.exit.thread:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %fence.addr.041 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -22 to ptr), ptr %fence.addr.041, align 4
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %5 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev.i, align 4
  %max_pending_cs.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 33, i32 48
  %7 = ptrtoint ptr %max_pending_cs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_pending_cs.i, align 8
  %conv.i = zext i32 %8 to i64
  %add.i = add i64 %1, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %3)
  %cmp3.i = icmp ult i64 %add.i, %3
  br i1 %cmp3.i, label %hl_ctx_get_fence_locked.exit.thread23, label %hl_ctx_get_fence_locked.exit

hl_ctx_get_fence_locked.exit.thread23:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %fence.addr.041 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fence.addr.041, align 4
  br label %for.inc

hl_ctx_get_fence_locked.exit:                     ; preds = %if.end.i
  %10 = ptrtoint ptr %cs_pending.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs_pending.i, align 4
  %sub.i = add i32 %8, -1
  %12 = trunc i64 %1 to i32
  %idxprom.i = and i32 %sub.i, %12
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void @hl_fence_get(ptr noundef %14) #8
  %15 = ptrtoint ptr %fence.addr.041 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fence.addr.041, align 4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %hl_ctx_get_fence_locked.exit.for.end_crit_edge, label %hl_ctx_get_fence_locked.exit.for.inc_crit_edge

hl_ctx_get_fence_locked.exit.for.inc_crit_edge:   ; preds = %hl_ctx_get_fence_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

hl_ctx_get_fence_locked.exit.for.end_crit_edge:   ; preds = %hl_ctx_get_fence_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %hl_ctx_get_fence_locked.exit.for.inc_crit_edge, %hl_ctx_get_fence_locked.exit.thread23
  %inc = add nuw i32 %i.043, 1
  %incdec.ptr = getelementptr ptr, ptr %fence.addr.041, i32 1
  %exitcond.not = icmp eq i32 %inc, %arr_len
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end:                                          ; preds = %hl_ctx_get_fence_locked.exit.for.end_crit_edge, %hl_ctx_get_fence_locked.exit.thread
  %16 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev.i, align 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, i64 noundef %1) #11
  %20 = ptrtoint ptr %fence.addr.041 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fence.addr.041, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %for.end.if.end5_crit_edge, label %if.then4

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %21 to i32
  tail call void @hl_fences_put(ptr noundef %fence, i32 noundef %i.043) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.if.end5_crit_edge, %for.end.thread
  %rc.232 = phi i32 [ 0, %for.end.thread ], [ %22, %if.then4 ], [ 0, %for.end.if.end5_crit_edge ]
  ret i32 %rc.232
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_fences_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_ctx_mgr_init(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %mgr, ptr noundef nonnull @.str.25, ptr noundef nonnull @hl_ctx_mgr_init.__key) #8
  %ctx_handles = getelementptr inbounds %struct.hl_ctx_mgr, ptr %mgr, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_handles, ptr noundef nonnull @.str.33, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i = getelementptr inbounds %struct.hl_ctx_mgr, ptr %mgr, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.hl_ctx_mgr, ptr %mgr, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.hl_ctx_mgr, ptr %mgr, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.hl_ctx_mgr, ptr %mgr, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_ctx_mgr_fini(ptr nocapture noundef readnone %hdev, ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %ctx_handles = getelementptr inbounds %struct.hl_ctx_mgr, ptr %mgr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call6 = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not7 = icmp eq ptr %call6, null
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %kref_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %call8 = phi ptr [ %call, %kref_put.exit.for.body_crit_edge ], [ %call6, %entry.for.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.hl_ctx, ptr %call8, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %for.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  call fastcc void @hl_ctx_fini(ptr noundef nonnull %call8) #8
  %hpriv.i = getelementptr %struct.hl_ctx, ptr %call8, i32 0, i32 2
  %2 = ptrtoint ptr %hpriv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpriv.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i.hl_ctx_do_release.exit_crit_edge, label %if.then.i5

if.then.i.hl_ctx_do_release.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_ctx_do_release.exit

if.then.i5:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @hl_hpriv_put(ptr noundef nonnull %3) #8
  br label %hl_ctx_do_release.exit

hl_ctx_do_release.exit:                           ; preds = %if.then.i5, %if.then.i.hl_ctx_do_release.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %hl_ctx_do_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %kref_put.exit.for.end_crit_edge, label %kref_put.exit.for.body_crit_edge

kref_put.exit.for.body_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

kref_put.exit.for.end_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %kref_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @idr_destroy(ptr noundef %ctx_handles) #8
  call void @mutex_destroy(ptr noundef %mgr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_fence_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_set_debug_mode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_mmu_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_sob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_fence_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/context.c", i32 151, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_ctx_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_ctx_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @hl_ctx_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/context.c", i32 191, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/habanalabs/common/context.c", i32 206, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hl_ctx_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @hl_ctx_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/context.c", i32 213, i32 4}
!18 = !{ptr @hl_ctx_init._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hl_ctx_init._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/common/context.c", i32 219, i32 4}
!22 = !{ptr @hl_ctx_init._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hl_ctx_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @hl_ctx_init._entry.14, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/misc/habanalabs/common/context.c", i32 226, i32 4}
!26 = !{ptr @hl_ctx_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/habanalabs/common/context.c", i32 233, i32 4}
!29 = !{ptr @hl_ctx_init._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hl_ctx_init._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @hl_ctx_init._entry.19, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/misc/habanalabs/common/context.c", i32 240, i32 4}
!33 = !{ptr @hl_ctx_init._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/habanalabs/common/context.c", i32 246, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hl_ctx_init.__UNIQUE_ID_ddebug299, !35, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/habanalabs/common/context.c", i32 360, i32 4}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hl_ctx_get_fences._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @hl_ctx_get_fences._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @hl_ctx_mgr_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/misc/habanalabs/common/context.c", i32 386, i32 2}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/habanalabs/common/context.c", i32 95, i32 3}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hl_ctx_fini.__UNIQUE_ID_ddebug297, !47, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/context.c", i32 113, i32 3}
!52 = !{ptr @hl_ctx_fini.__UNIQUE_ID_ddebug298, !51, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/habanalabs/common/context.c", i32 62, i32 3}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hl_encaps_sig_mgr_fini._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @hl_encaps_sig_mgr_fini._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @hl_encaps_sig_mgr_init.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/misc/habanalabs/common/context.c", i32 48, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @xa_init_flags.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148593943}
!75 = !{i64 2148508407, i64 2148508439, i64 2148508468, i64 2148508502, i64 2148508533, i64 2148508556}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2150675596}
!78 = !{i64 2148986227, i64 2148986232, i64 2148986245, i64 2148986289, i64 2148986323, i64 2148986344}
!79 = !{!"auto-init"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2148505942, i64 2148505974, i64 2148506003, i64 2148506037, i64 2148506068, i64 2148506091}
