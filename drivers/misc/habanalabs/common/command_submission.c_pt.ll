; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/command_submission.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/command_submission.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hl_hw_sob = type { ptr, %struct.kref, i32, i32, i32, i8 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_fence = type { %struct.completion, %struct.kref, i64, i32, i32, i64, i8 }
%struct.hl_cs = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i64, i64, i64, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.hl_cs_compl = type { %struct.hl_fence, %struct.spinlock, ptr, ptr, ptr, i64, i32, i16, i16, i8 }
%struct.hl_user_pending_interrupt = type { %struct.list_head, %struct.hl_fence, i64, ptr }
%struct.hl_cs_job = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.kref, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hl_hw_queue = type { ptr, %struct.hl_sync_stream_properties, i32, i32, ptr, i32, i32, %struct.atomic_t, i32, i32, i32, i16, i8, i8 }
%struct.hl_sync_stream_properties = type { [2 x %struct.hl_hw_sob], i16, i16, i16, [2 x i16], i16, i16, i8 }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.hl_cs_in = type { i64, i64, %union.anon.101, i32, i32, i32, i32, i32 }
%union.anon.101 = type { i64 }
%struct.anon.102 = type { i32, i32 }
%struct.hl_cs_out = type { %union.anon.103, i32, i32, i16, [3 x i16] }
%union.anon.103 = type { i64 }
%struct.anon.104 = type { i32, i32 }
%struct.hl_cs_chunk = type { %union.anon.111, i32, %union.anon.112, i32, i32, [10 x i32] }
%union.anon.111 = type { i64 }
%union.anon.112 = type { i32 }
%struct.hw_queue_properties = type { i32, i32, i32, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hl_cs_encaps_sig_handle = type { %struct.kref, ptr, ptr, ptr, i64, i32, i32, i32, i32 }
%struct.hl_cb = type { %struct.kref, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.hl_cs_parser = type { ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.multi_cs_data = type { ptr, ptr, ptr, i64, i64, i32, i32, i8, i8, i8 }
%struct.hl_wait_cs_in = type { %union.anon.105, i32, i32, %union.anon.109, i64 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { i64, i64 }
%union.anon.109 = type { i64 }
%struct.anon.107 = type { %union.anon.108, i64 }
%union.anon.108 = type { i64 }
%struct.hl_wait_cs_out = type { i32, i32, i64, i32, i32 }

@hl_sob_reset_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SOB release shouldn't be called here, q_idx: %d, sob_id: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_sob_reset_error\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/misc/habanalabs/common/command_submission.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_sob_reset_error._entry_ptr = internal global ptr @hl_sob_reset_error._entry, section ".printk_index", align 4
@hl_cs_rollback_all._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hl_cs_rollback_all = private unnamed_addr constant [19 x i8] c"hl_cs_rollback_all\00", align 1
@hl_cs_rollback_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.hl_cs_rollback_all, ptr @.str.2, i32 940, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Killing CS %d.%llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_cs_rollback_all._entry_ptr = internal global ptr @hl_cs_rollback_all._entry, section ".printk_index", align 4
@hl_cs_allocate_job.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&job->finish_work)\00", [59 x i8] zeroinitializer }, align 32
@hl_cs_signal_sob_wraparound_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1606, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: Cannot switch SOBs q_idx: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hl_cs_signal_sob_wraparound_handler\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hl_cs_signal_sob_wraparound_handler._entry_ptr = internal global ptr @hl_cs_signal_sob_wraparound_handler._entry, section ".printk_index", align 4
@hl_cs_signal_sob_wraparound_handler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 1, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switched to SOB %d, q_idx: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_multi_cs_completion_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mcs_cmpl->lock\00", [16 x i8] zeroinitializer }, align 32
@hl_sob_reset.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hl_sob_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset sob id %u\0A\00", [47 x i8] zeroinitializer }, align 32
@cs_do_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 697, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Command submission %llu completed after %llu (s)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs_do_release\00", [18 x i8] zeroinitializer }, align 32
@cs_do_release._entry_ptr = internal global ptr @cs_do_release._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cs_release_sob_reset_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs_release_sob_reset_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CS 0x%llx type %d finished, sob_id: %d, sob_val: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@force_complete_multi_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 486, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"multi-CS completion context %d still waiting when calling force completion\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"force_complete_multi_cs\00", [40 x i8] zeroinitializer }, align 32
@force_complete_multi_cs._entry_ptr = internal global ptr @force_complete_multi_cs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hl_cs_sanity_checks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1147, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"staged submission not supported\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_cs_sanity_checks\00", [44 x i8] zeroinitializer }, align 32
@hl_cs_sanity_checks._entry_ptr = internal global ptr @hl_cs_sanity_checks._entry, section ".printk_index", align 4
@hl_cs_sanity_checks._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1156, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CS type flags are mutually exclusive, context %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_cs_sanity_checks._entry_ptr.27 = internal global ptr @hl_cs_sanity_checks._entry.25, section ".printk_index", align 4
@hl_cs_sanity_checks._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 1165, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sync stream CS is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_cs_sanity_checks._entry_ptr.30 = internal global ptr @hl_cs_sanity_checks._entry.28, section ".printk_index", align 4
@hl_cs_sanity_checks._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 1173, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Got execute CS with 0 chunks, context %d\0A\00", [54 x i8] zeroinitializer }, align 32
@hl_cs_sanity_checks._entry_ptr.33 = internal global ptr @hl_cs_sanity_checks._entry.31, section ".printk_index", align 4
@hl_cs_sanity_checks._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.2, i32 1179, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sync stream CS mandates one chunk only, context %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hl_cs_sanity_checks._entry_ptr.36 = internal global ptr @hl_cs_sanity_checks._entry.34, section ".printk_index", align 4
@hl_cs_ctx_switch._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_cs_ctx_switch = private unnamed_addr constant [17 x i8] c"hl_cs_ctx_switch\00", align 1
@hl_cs_ctx_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.hl_cs_ctx_switch, ptr @.str.2, i32 1481, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to switch to context %d, rejecting CS! %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_cs_ctx_switch._entry_ptr = internal global ptr @hl_cs_ctx_switch._entry, section ".printk_index", align 4
@hl_cs_ctx_switch.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.hl_cs_ctx_switch, ptr @.str.2, ptr @.str.38, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Need to run restore phase but restore CS is empty\0A\00", [45 x i8] zeroinitializer }, align 32
@hl_cs_ctx_switch._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.hl_cs_ctx_switch, ptr @.str.2, i32 1517, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to submit restore CS for context %d (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_cs_ctx_switch._entry_ptr.41 = internal global ptr @hl_cs_ctx_switch._entry.39, section ".printk_index", align 4
@hl_cs_ctx_switch._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.hl_cs_ctx_switch, ptr @.str.2, i32 1536, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Restore CS for context %d failed to complete %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_cs_ctx_switch._entry_ptr.44 = internal global ptr @hl_cs_ctx_switch._entry.42, section ".printk_index", align 4
@hl_cs_ctx_switch._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.hl_cs_ctx_switch, ptr @.str.2, i32 1551, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"context switch phase timeout (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@hl_cs_ctx_switch._entry_ptr.47 = internal global ptr @hl_cs_ctx_switch._entry.45, section ".printk_index", align 4
@hl_wait_for_fence._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_wait_for_fence = private unnamed_addr constant [18 x i8] c"hl_wait_for_fence\00", align 1
@hl_wait_for_fence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.hl_wait_for_fence, ptr @.str.2, i32 2327, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Can't wait on CS %llu because current CS is at seq %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@hl_wait_for_fence._entry_ptr = internal global ptr @hl_wait_for_fence._entry, section ".printk_index", align 4
@hl_wait_for_fence.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.hl_wait_for_fence, ptr @.str.2, ptr @.str.50, i8 2, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Can't wait on seq %llu because current CS is at seq %llu (Fence is gone)\0A\00", [54 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 2003, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Queue index %d is invalid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs_ioctl_signal_wait\00", [43 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr = internal global ptr @cs_ioctl_signal_wait._entry, section ".printk_index", align 4
@cs_ioctl_signal_wait._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 2017, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Queue index %d does not support sync stream operations\0A\00", [40 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.55 = internal global ptr @cs_ioctl_signal_wait._entry.53, section ".printk_index", align 4
@cs_ioctl_signal_wait._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 2027, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.57 = internal global ptr @cs_ioctl_signal_wait._entry.56, section ".printk_index", align 4
@cs_ioctl_signal_wait._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.2, i32 2036, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Collective operations not supported when NIC ports are disabled\00", [32 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.60 = internal global ptr @cs_ioctl_signal_wait._entry.58, section ".printk_index", align 4
@cs_ioctl_signal_wait.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.52, ptr @.str.2, ptr @.str.61, i8 2, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cannot find encapsulated signals handle for seq 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.2, i32 2091, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"offset(%u) value exceed max reserved signals count(%u)!\0A\00", [39 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.64 = internal global ptr @cs_ioctl_signal_wait._entry.62, section ".printk_index", align 4
@cs_ioctl_signal_wait._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.52, ptr @.str.2, i32 2103, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get signal CS with seq 0x%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.67 = internal global ptr @cs_ioctl_signal_wait._entry.65, section ".printk_index", align 4
@cs_ioctl_signal_wait._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.52, ptr @.str.2, i32 2127, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CS seq 0x%llx is not of a signal/encaps-signal CS\0A\00", [45 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.70 = internal global ptr @cs_ioctl_signal_wait._entry.68, section ".printk_index", align 4
@cs_ioctl_signal_wait._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.52, ptr @.str.2, i32 2196, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to submit CS %d.%llu to H/W queues, error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait._entry_ptr.73 = internal global ptr @cs_ioctl_signal_wait._entry.71, section ".printk_index", align 4
@hl_cs_copy_chunk_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1198, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Number of chunks can NOT be larger than %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_cs_copy_chunk_array\00", [41 x i8] zeroinitializer }, align 32
@hl_cs_copy_chunk_array._entry_ptr = internal global ptr @hl_cs_copy_chunk_array._entry, section ".printk_index", align 4
@hl_cs_copy_chunk_array._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1217, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to copy cs chunk array from user\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_cs_copy_chunk_array._entry_ptr.78 = internal global ptr @hl_cs_copy_chunk_array._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cs_ioctl_extract_signal_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1675, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Wait for signal CS supports only one signal CS seq\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs_ioctl_extract_signal_seq\00", [36 x i8] zeroinitializer }, align 32
@cs_ioctl_extract_signal_seq._entry_ptr = internal global ptr @cs_ioctl_extract_signal_seq._entry, section ".printk_index", align 4
@cs_ioctl_extract_signal_seq._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1699, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to copy signal seq array from user\0A\00", [53 x i8] zeroinitializer }, align 32
@cs_ioctl_extract_signal_seq._entry_ptr.86 = internal global ptr @cs_ioctl_extract_signal_seq._entry.84, section ".printk_index", align 4
@allocate_cs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&cs->work_tdr)->work)\00", [54 x i8] zeroinitializer }, align 32
@allocate_cs.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&cs->work_tdr)->timer\00", [40 x i8] zeroinitializer }, align 32
@allocate_cs.__key.90 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cs->job_lock\00", [18 x i8] zeroinitializer }, align 32
@allocate_cs.__key.92 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cs_cmpl->lock\00", [17 x i8] zeroinitializer }, align 32
@allocate_cs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.allocate_cs = private unnamed_addr constant [12 x i8] c"allocate_cs\00", align 1
@allocate_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @__func__.allocate_cs, ptr @.str.2, i32 871, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Staged CS %llu deadlock due to lack of resources\00", [47 x i8] zeroinitializer }, align 32
@allocate_cs._entry_ptr = internal global ptr @allocate_cs._entry, section ".printk_index", align 4
@allocate_cs._rs.95 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@allocate_cs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.allocate_cs, ptr @.str.2, ptr @.str.96, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Rejecting CS because of too many in-flights CS\0A\00", [48 x i8] zeroinitializer }, align 32
@cs_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 748, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Signal command submission %llu has not finished in time!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs_timedout\00", [20 x i8] zeroinitializer }, align 32
@cs_timedout._entry_ptr = internal global ptr @cs_timedout._entry, section ".printk_index", align 4
@cs_timedout._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 754, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Wait command submission %llu has not finished in time!\0A\00", [40 x i8] zeroinitializer }, align 32
@cs_timedout._entry_ptr.101 = internal global ptr @cs_timedout._entry.99, section ".printk_index", align 4
@cs_timedout._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 760, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Collective Wait command submission %llu has not finished in time!\0A\00", [61 x i8] zeroinitializer }, align 32
@cs_timedout._entry_ptr.104 = internal global ptr @cs_timedout._entry.102, section ".printk_index", align 4
@cs_timedout._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.2, i32 766, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Command submission %llu has not finished in time!\0A\00", [45 x i8] zeroinitializer }, align 32
@cs_timedout._entry_ptr.107 = internal global ptr @cs_timedout._entry.105, section ".printk_index", align 4
@cs_timedout._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.2, i32 772, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error during system state dump %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cs_timedout._entry_ptr.110 = internal global ptr @cs_timedout._entry.108, section ".printk_index", align 4
@cs_ioctl_signal_wait_create_jobs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1728, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate a new job\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cs_ioctl_signal_wait_create_jobs\00", [63 x i8] zeroinitializer }, align 32
@cs_ioctl_signal_wait_create_jobs._entry_ptr = internal global ptr @cs_ioctl_signal_wait_create_jobs._entry, section ".printk_index", align 4
@cs_ioctl_reserve_signals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1794, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"signals count(%u) exceeds the max SOB value\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs_ioctl_reserve_signals\00", [39 x i8] zeroinitializer }, align 32
@cs_ioctl_reserve_signals._entry_ptr = internal global ptr @cs_ioctl_reserve_signals._entry, section ".printk_index", align 4
@cs_ioctl_reserve_signals._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.114, ptr @.str.2, i32 1801, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cs_ioctl_reserve_signals._entry_ptr.116 = internal global ptr @cs_ioctl_reserve_signals._entry.115, section ".printk_index", align 4
@cs_ioctl_reserve_signals._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.114, ptr @.str.2, i32 1811, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cs_ioctl_reserve_signals._entry_ptr.118 = internal global ptr @cs_ioctl_reserve_signals._entry.117, section ".printk_index", align 4
@cs_ioctl_reserve_signals._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.2, i32 1835, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to allocate IDR for a new signal reservation\0A\00", [43 x i8] zeroinitializer }, align 32
@cs_ioctl_reserve_signals._entry_ptr.121 = internal global ptr @cs_ioctl_reserve_signals._entry.119, section ".printk_index", align 4
@cs_ioctl_reserve_signals._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.114, ptr @.str.2, i32 1858, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to switch SOB\0A\00", [42 x i8] zeroinitializer }, align 32
@cs_ioctl_reserve_signals._entry_ptr.124 = internal global ptr @cs_ioctl_reserve_signals._entry.122, section ".printk_index", align 4
@cs_ioctl_reserve_signals.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.114, ptr @.str.2, ptr @.str.125, i8 1, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Signals reserved, sob_id: %d, sob addr: 0x%x, last sob_val: %u, q_idx: %d, hdl_id: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cs_ioctl_unreserve_signals.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.126, ptr @.str.2, ptr @.str.127, i8 1, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cs_ioctl_unreserve_signals\00", [37 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unreserve signals, handle: %u, SOB:0x%x, count: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@cs_ioctl_unreserve_signals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 1934, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Cannot unreserve signals, SOB val ran out of sync, expected: %u, actual val: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@cs_ioctl_unreserve_signals._entry_ptr = internal global ptr @cs_ioctl_unreserve_signals._entry, section ".printk_index", align 4
@cs_ioctl_unreserve_signals._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.126, ptr @.str.2, i32 1957, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to unreserve signals, cannot find handler\0A\00", [46 x i8] zeroinitializer }, align 32
@cs_ioctl_unreserve_signals._entry_ptr.131 = internal global ptr @cs_ioctl_unreserve_signals._entry.129, section ".printk_index", align 4
@cs_ioctl_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.132, ptr @.str.2, i32 1367, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cs_ioctl_default\00", [47 x i8] zeroinitializer }, align 32
@cs_ioctl_default._entry_ptr = internal global ptr @cs_ioctl_default._entry, section ".printk_index", align 4
@cs_ioctl_default._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 1404, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to parse JOB %d.%llu.%d, err %d, rejecting the CS\0A\00", [38 x i8] zeroinitializer }, align 32
@cs_ioctl_default._entry_ptr.135 = internal global ptr @cs_ioctl_default._entry.133, section ".printk_index", align 4
@cs_ioctl_default._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.2, i32 1417, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Reject CS %d.%llu since it contains only internal queues jobs and needs completion\0A\00", [44 x i8] zeroinitializer }, align 32
@cs_ioctl_default._entry_ptr.138 = internal global ptr @cs_ioctl_default._entry.136, section ".printk_index", align 4
@cs_ioctl_default._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.132, ptr @.str.2, i32 1434, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cs_ioctl_default._entry_ptr.140 = internal global ptr @cs_ioctl_default._entry.139, section ".printk_index", align 4
@validate_queue_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.141, ptr @.str.2, i32 1011, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"validate_queue_index\00", [43 x i8] zeroinitializer }, align 32
@validate_queue_index._entry_ptr = internal global ptr @validate_queue_index._entry, section ".printk_index", align 4
@validate_queue_index._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.141, ptr @.str.2, i32 1019, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@validate_queue_index._entry_ptr.143 = internal global ptr @validate_queue_index._entry.142, section ".printk_index", align 4
@validate_queue_index._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.141, ptr @.str.2, i32 1026, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Queue index %d is restricted for the kernel driver\0A\00", [44 x i8] zeroinitializer }, align 32
@validate_queue_index._entry_ptr.146 = internal global ptr @validate_queue_index._entry.144, section ".printk_index", align 4
@validate_queue_index._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.141, ptr @.str.2, i32 1038, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Queue index %d doesn't support user CB\0A\00", [56 x i8] zeroinitializer }, align 32
@validate_queue_index._entry_ptr.149 = internal global ptr @validate_queue_index._entry.147, section ".printk_index", align 4
@validate_queue_index._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.141, ptr @.str.2, i32 1048, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Queue index %d doesn't support kernel CB\0A\00", [54 x i8] zeroinitializer }, align 32
@validate_queue_index._entry_ptr.152 = internal global ptr @validate_queue_index._entry.150, section ".printk_index", align 4
@get_cb_from_cs_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1074, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CB handle 0x%x invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_cb_from_cs_chunk\00", [43 x i8] zeroinitializer }, align 32
@get_cb_from_cs_chunk._entry_ptr = internal global ptr @get_cb_from_cs_chunk._entry, section ".printk_index", align 4
@get_cb_from_cs_chunk._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 1079, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CB size %u invalid\0A\00", [44 x i8] zeroinitializer }, align 32
@get_cb_from_cs_chunk._entry_ptr.157 = internal global ptr @get_cb_from_cs_chunk._entry.155, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hl_interrupt_wait_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 3082, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no user interrupts allowed\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hl_interrupt_wait_ioctl\00", [40 x i8] zeroinitializer }, align 32
@hl_interrupt_wait_ioctl._entry_ptr = internal global ptr @hl_interrupt_wait_ioctl._entry, section ".printk_index", align 4
@hl_interrupt_wait_ioctl._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 3094, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid user interrupt %u\00", [38 x i8] zeroinitializer }, align 32
@hl_interrupt_wait_ioctl._entry_ptr.163 = internal global ptr @hl_interrupt_wait_ioctl._entry.161, section ".printk_index", align 4
@hl_interrupt_wait_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_interrupt_wait_ioctl._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.2, i32 3117, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"interrupt_wait_ioctl failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_interrupt_wait_ioctl._entry_ptr.166 = internal global ptr @hl_interrupt_wait_ioctl._entry.164, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__._hl_interrupt_wait_ioctl = private unnamed_addr constant [25 x i8] c"_hl_interrupt_wait_ioctl\00", align 1
@_hl_interrupt_wait_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @__func__._hl_interrupt_wait_ioctl, ptr @.str.2, i32 2924, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"user process got signal while waiting for interrupt ID %d\0A\00", [37 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl._entry_ptr = internal global ptr @_hl_interrupt_wait_ioctl._entry, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @__func__._hl_interrupt_wait_ioctl, ptr @.str.2, i32 2931, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"interrupt based wait ioctl aborted(error:%d) due to a reset cycle initiated\0A\00", [51 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl._entry_ptr.171 = internal global ptr @_hl_interrupt_wait_ioctl._entry.169, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl._rs.172 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @__func__._hl_interrupt_wait_ioctl, ptr @.str.2, i32 2936, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Waiting for interrupt ID %d timedout\0A\00", [58 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl._entry_ptr.175 = internal global ptr @_hl_interrupt_wait_ioctl._entry.173, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl_user_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 2993, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to copy completion value from user\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_hl_interrupt_wait_ioctl_user_addr\00", [61 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl_user_addr._entry_ptr = internal global ptr @_hl_interrupt_wait_ioctl_user_addr._entry, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl_user_addr._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 3028, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl_user_addr._entry_ptr.179 = internal global ptr @_hl_interrupt_wait_ioctl_user_addr._entry.178, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl_user_addr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl_user_addr._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.177, ptr @.str.2, i32 3039, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl_user_addr._entry_ptr.181 = internal global ptr @_hl_interrupt_wait_ioctl_user_addr._entry.180, section ".printk_index", align 4
@_hl_interrupt_wait_ioctl_user_addr._rs.182 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl_user_addr._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.177, ptr @.str.2, i32 3049, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@_hl_interrupt_wait_ioctl_user_addr._entry_ptr.184 = internal global ptr @_hl_interrupt_wait_ioctl_user_addr._entry.183, section ".printk_index", align 4
@hl_multi_cs_wait_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.2, i32 2668, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Wait for multi CS is not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_multi_cs_wait_ioctl\00", [41 x i8] zeroinitializer }, align 32
@hl_multi_cs_wait_ioctl._entry_ptr = internal global ptr @hl_multi_cs_wait_ioctl._entry, section ".printk_index", align 4
@hl_multi_cs_wait_ioctl._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.186, ptr @.str.2, i32 2676, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Can wait only up to %d CSs, input sequence is of length %u\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_multi_cs_wait_ioctl._entry_ptr.189 = internal global ptr @hl_multi_cs_wait_ioctl._entry.187, section ".printk_index", align 4
@hl_multi_cs_wait_ioctl._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.186, ptr @.str.2, i32 2690, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to copy multi-cs sequence array from user\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_multi_cs_wait_ioctl._entry_ptr.192 = internal global ptr @hl_multi_cs_wait_ioctl._entry.190, section ".printk_index", align 4
@hl_multi_cs_wait_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_multi_cs_wait_ioctl._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.186, ptr @.str.2, i32 2773, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"user process got signal while waiting for Multi-CS\0A\00", [44 x i8] zeroinitializer }, align 32
@hl_multi_cs_wait_ioctl._entry_ptr.195 = internal global ptr @hl_multi_cs_wait_ioctl._entry.193, section ".printk_index", align 4
@hl_wait_multi_cs_completion_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.2, i32 2580, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no available multi-CS completion structure\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hl_wait_multi_cs_completion_init\00", [63 x i8] zeroinitializer }, align 32
@hl_wait_multi_cs_completion_init._entry_ptr = internal global ptr @hl_wait_multi_cs_completion_init._entry, section ".printk_index", align 4
@hl_cs_poll_fences._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 2442, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wait_for_fence error :%d for CS seq %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_cs_poll_fences\00", [46 x i8] zeroinitializer }, align 32
@hl_cs_poll_fences._entry_ptr = internal global ptr @hl_cs_poll_fences._entry, section ".printk_index", align 4
@hl_cs_poll_fences._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.2, i32 2492, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid fence status\0A\00", [42 x i8] zeroinitializer }, align 32
@hl_cs_poll_fences._entry_ptr.202 = internal global ptr @hl_cs_poll_fences._entry.200, section ".printk_index", align 4
@hl_cs_wait_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_cs_wait_ioctl = private unnamed_addr constant [17 x i8] c"hl_cs_wait_ioctl\00", align 1
@hl_cs_wait_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @__func__.hl_cs_wait_ioctl, ptr @.str.2, i32 2815, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"user process got signal while waiting for CS handle %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@hl_cs_wait_ioctl._entry_ptr = internal global ptr @hl_cs_wait_ioctl._entry, section ".printk_index", align 4
@hl_cs_wait_ioctl._rs.204 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_cs_wait_ioctl._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @__func__.hl_cs_wait_ioctl, ptr @.str.2, i32 2825, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"CS %llu has timed-out while user process is waiting for it\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_cs_wait_ioctl._entry_ptr.207 = internal global ptr @hl_cs_wait_ioctl._entry.205, section ".printk_index", align 4
@hl_cs_wait_ioctl._rs.208 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_cs_wait_ioctl._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @__func__.hl_cs_wait_ioctl, ptr @.str.2, i32 2830, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"CS %llu has been aborted while user process is waiting for it\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_cs_wait_ioctl._entry_ptr.211 = internal global ptr @hl_cs_wait_ioctl._entry.209, section ".printk_index", align 4
@switch.table.cs_timedout = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.97, ptr @.str.100, ptr @.str.103], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.213 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967280]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.222 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967186, i64 4294967291]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 2147483647]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 54, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 939, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1112, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1605, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1646, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2641, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 41, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 694, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 578, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 484, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1147, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1154, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1165, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1171, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1177, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1479, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1504, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1515, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1534, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1550, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2325, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2332, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2002, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2015, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2026, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2035, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2080, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2089, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2101, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2125, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2194, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1196, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1217, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.470, i32 230, i32 6 }
@___asan_gen_.470 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.470, i32 214, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 156, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1674, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1698, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 821, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 823, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 851, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 869, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 873, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 746, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 752, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 758, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 764, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 772, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1728, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1793, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1800, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1809, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1835, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1858, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1879, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1913, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1932, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1957, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1367, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1402, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1415, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1432, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1010, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1018, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1024, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1036, i32 5 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1046, i32 5 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1074, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1079, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 87, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3082, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3094, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3116, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2922, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2929, i32 5 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2935, i32 5 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2993, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3028, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3037, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3047, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2668, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2675, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2690, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2772, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2580, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2440, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2492, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2813, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2823, i32 4 }
@___asan_gen_.835 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.838 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.841 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.842 = private constant [55 x i8] c"../drivers/misc/habanalabs/common/command_submission.c\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2828, i32 4 }
@___asan_gen_.844 = private unnamed_addr constant [25 x i8] c"switch.table.cs_timedout\00", align 1
@llvm.compiler.used = appending global [278 x ptr] [ptr @_hl_interrupt_wait_ioctl._entry, ptr @_hl_interrupt_wait_ioctl._entry.169, ptr @_hl_interrupt_wait_ioctl._entry.173, ptr @_hl_interrupt_wait_ioctl._entry_ptr, ptr @_hl_interrupt_wait_ioctl._entry_ptr.171, ptr @_hl_interrupt_wait_ioctl._entry_ptr.175, ptr @_hl_interrupt_wait_ioctl_user_addr._entry, ptr @_hl_interrupt_wait_ioctl_user_addr._entry.178, ptr @_hl_interrupt_wait_ioctl_user_addr._entry.180, ptr @_hl_interrupt_wait_ioctl_user_addr._entry.183, ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr, ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr.179, ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr.181, ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr.184, ptr @allocate_cs._entry, ptr @allocate_cs._entry_ptr, ptr @cs_do_release._entry, ptr @cs_do_release._entry_ptr, ptr @cs_ioctl_default._entry, ptr @cs_ioctl_default._entry.133, ptr @cs_ioctl_default._entry.136, ptr @cs_ioctl_default._entry.139, ptr @cs_ioctl_default._entry_ptr, ptr @cs_ioctl_default._entry_ptr.135, ptr @cs_ioctl_default._entry_ptr.138, ptr @cs_ioctl_default._entry_ptr.140, ptr @cs_ioctl_extract_signal_seq._entry, ptr @cs_ioctl_extract_signal_seq._entry.84, ptr @cs_ioctl_extract_signal_seq._entry_ptr, ptr @cs_ioctl_extract_signal_seq._entry_ptr.86, ptr @cs_ioctl_reserve_signals._entry, ptr @cs_ioctl_reserve_signals._entry.115, ptr @cs_ioctl_reserve_signals._entry.117, ptr @cs_ioctl_reserve_signals._entry.119, ptr @cs_ioctl_reserve_signals._entry.122, ptr @cs_ioctl_reserve_signals._entry_ptr, ptr @cs_ioctl_reserve_signals._entry_ptr.116, ptr @cs_ioctl_reserve_signals._entry_ptr.118, ptr @cs_ioctl_reserve_signals._entry_ptr.121, ptr @cs_ioctl_reserve_signals._entry_ptr.124, ptr @cs_ioctl_signal_wait._entry, ptr @cs_ioctl_signal_wait._entry.53, ptr @cs_ioctl_signal_wait._entry.56, ptr @cs_ioctl_signal_wait._entry.58, ptr @cs_ioctl_signal_wait._entry.62, ptr @cs_ioctl_signal_wait._entry.65, ptr @cs_ioctl_signal_wait._entry.68, ptr @cs_ioctl_signal_wait._entry.71, ptr @cs_ioctl_signal_wait._entry_ptr, ptr @cs_ioctl_signal_wait._entry_ptr.55, ptr @cs_ioctl_signal_wait._entry_ptr.57, ptr @cs_ioctl_signal_wait._entry_ptr.60, ptr @cs_ioctl_signal_wait._entry_ptr.64, ptr @cs_ioctl_signal_wait._entry_ptr.67, ptr @cs_ioctl_signal_wait._entry_ptr.70, ptr @cs_ioctl_signal_wait._entry_ptr.73, ptr @cs_ioctl_signal_wait_create_jobs._entry, ptr @cs_ioctl_signal_wait_create_jobs._entry_ptr, ptr @cs_ioctl_unreserve_signals._entry, ptr @cs_ioctl_unreserve_signals._entry.129, ptr @cs_ioctl_unreserve_signals._entry_ptr, ptr @cs_ioctl_unreserve_signals._entry_ptr.131, ptr @cs_timedout._entry, ptr @cs_timedout._entry.102, ptr @cs_timedout._entry.105, ptr @cs_timedout._entry.108, ptr @cs_timedout._entry.99, ptr @cs_timedout._entry_ptr, ptr @cs_timedout._entry_ptr.101, ptr @cs_timedout._entry_ptr.104, ptr @cs_timedout._entry_ptr.107, ptr @cs_timedout._entry_ptr.110, ptr @force_complete_multi_cs._entry, ptr @force_complete_multi_cs._entry_ptr, ptr @get_cb_from_cs_chunk._entry, ptr @get_cb_from_cs_chunk._entry.155, ptr @get_cb_from_cs_chunk._entry_ptr, ptr @get_cb_from_cs_chunk._entry_ptr.157, ptr @hl_cs_copy_chunk_array._entry, ptr @hl_cs_copy_chunk_array._entry.76, ptr @hl_cs_copy_chunk_array._entry_ptr, ptr @hl_cs_copy_chunk_array._entry_ptr.78, ptr @hl_cs_ctx_switch._entry, ptr @hl_cs_ctx_switch._entry.39, ptr @hl_cs_ctx_switch._entry.42, ptr @hl_cs_ctx_switch._entry.45, ptr @hl_cs_ctx_switch._entry_ptr, ptr @hl_cs_ctx_switch._entry_ptr.41, ptr @hl_cs_ctx_switch._entry_ptr.44, ptr @hl_cs_ctx_switch._entry_ptr.47, ptr @hl_cs_poll_fences._entry, ptr @hl_cs_poll_fences._entry.200, ptr @hl_cs_poll_fences._entry_ptr, ptr @hl_cs_poll_fences._entry_ptr.202, ptr @hl_cs_rollback_all._entry, ptr @hl_cs_rollback_all._entry_ptr, ptr @hl_cs_sanity_checks._entry, ptr @hl_cs_sanity_checks._entry.25, ptr @hl_cs_sanity_checks._entry.28, ptr @hl_cs_sanity_checks._entry.31, ptr @hl_cs_sanity_checks._entry.34, ptr @hl_cs_sanity_checks._entry_ptr, ptr @hl_cs_sanity_checks._entry_ptr.27, ptr @hl_cs_sanity_checks._entry_ptr.30, ptr @hl_cs_sanity_checks._entry_ptr.33, ptr @hl_cs_sanity_checks._entry_ptr.36, ptr @hl_cs_signal_sob_wraparound_handler._entry, ptr @hl_cs_signal_sob_wraparound_handler._entry_ptr, ptr @hl_cs_wait_ioctl._entry, ptr @hl_cs_wait_ioctl._entry.205, ptr @hl_cs_wait_ioctl._entry.209, ptr @hl_cs_wait_ioctl._entry_ptr, ptr @hl_cs_wait_ioctl._entry_ptr.207, ptr @hl_cs_wait_ioctl._entry_ptr.211, ptr @hl_interrupt_wait_ioctl._entry, ptr @hl_interrupt_wait_ioctl._entry.161, ptr @hl_interrupt_wait_ioctl._entry.164, ptr @hl_interrupt_wait_ioctl._entry_ptr, ptr @hl_interrupt_wait_ioctl._entry_ptr.163, ptr @hl_interrupt_wait_ioctl._entry_ptr.166, ptr @hl_multi_cs_wait_ioctl._entry, ptr @hl_multi_cs_wait_ioctl._entry.187, ptr @hl_multi_cs_wait_ioctl._entry.190, ptr @hl_multi_cs_wait_ioctl._entry.193, ptr @hl_multi_cs_wait_ioctl._entry_ptr, ptr @hl_multi_cs_wait_ioctl._entry_ptr.189, ptr @hl_multi_cs_wait_ioctl._entry_ptr.192, ptr @hl_multi_cs_wait_ioctl._entry_ptr.195, ptr @hl_sob_reset_error._entry, ptr @hl_sob_reset_error._entry_ptr, ptr @hl_wait_for_fence._entry, ptr @hl_wait_for_fence._entry_ptr, ptr @hl_wait_multi_cs_completion_init._entry, ptr @hl_wait_multi_cs_completion_init._entry_ptr, ptr @validate_queue_index._entry, ptr @validate_queue_index._entry.142, ptr @validate_queue_index._entry.144, ptr @validate_queue_index._entry.147, ptr @validate_queue_index._entry.150, ptr @validate_queue_index._entry_ptr, ptr @validate_queue_index._entry_ptr.143, ptr @validate_queue_index._entry_ptr.146, ptr @validate_queue_index._entry_ptr.149, ptr @validate_queue_index._entry_ptr.152, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hl_cs_rollback_all._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hl_cs_allocate_job.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @hl_multi_cs_completion_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @hl_cs_ctx_switch._rs, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @hl_wait_for_fence._rs, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @allocate_cs.__key, ptr @.str.87, ptr @allocate_cs.__key.88, ptr @.str.89, ptr @allocate_cs.__key.90, ptr @.str.91, ptr @allocate_cs.__key.92, ptr @.str.93, ptr @allocate_cs._rs, ptr @.str.94, ptr @allocate_cs._rs.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.141, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @init_completion.__key, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @hl_interrupt_wait_ioctl._rs, ptr @.str.165, ptr @_hl_interrupt_wait_ioctl._rs, ptr @.str.167, ptr @_hl_interrupt_wait_ioctl._rs.168, ptr @.str.170, ptr @_hl_interrupt_wait_ioctl._rs.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @_hl_interrupt_wait_ioctl_user_addr._rs, ptr @_hl_interrupt_wait_ioctl_user_addr._rs.182, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @hl_multi_cs_wait_ioctl._rs, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @hl_cs_wait_ioctl._rs, ptr @.str.203, ptr @hl_cs_wait_ioctl._rs.204, ptr @.str.206, ptr @hl_cs_wait_ioctl._rs.208, ptr @.str.210, ptr @switch.table.cs_timedout], section "llvm.metadata"
@0 = internal global [206 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_sob_reset_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_rollback_all._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_rollback_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_allocate_job.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_signal_sob_wraparound_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_multi_cs_completion_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_do_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_complete_multi_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_sanity_checks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_sanity_checks._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_sanity_checks._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_sanity_checks._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_sanity_checks._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_ctx_switch._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_ctx_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_ctx_switch._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_ctx_switch._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_ctx_switch._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_wait_for_fence._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_wait_for_fence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_copy_chunk_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_copy_chunk_array._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_extract_signal_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_extract_signal_seq._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs.__key.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs.__key.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_cs._rs.95 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_timedout._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_timedout._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_timedout._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_timedout._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_signal_wait_create_jobs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_reserve_signals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_reserve_signals._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_reserve_signals._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_reserve_signals._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_reserve_signals._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_unreserve_signals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_unreserve_signals._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_default._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_default._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_ioctl_default._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_queue_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_queue_index._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_queue_index._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_queue_index._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_queue_index._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cb_from_cs_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cb_from_cs_chunk._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_interrupt_wait_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_interrupt_wait_ioctl._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_interrupt_wait_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_interrupt_wait_ioctl._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl._rs.172 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl_user_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl_user_addr._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl_user_addr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl_user_addr._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl_user_addr._rs.182 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_interrupt_wait_ioctl_user_addr._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_multi_cs_wait_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_multi_cs_wait_ioctl._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_multi_cs_wait_ioctl._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_multi_cs_wait_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_multi_cs_wait_ioctl._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_wait_multi_cs_completion_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_poll_fences._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_poll_fences._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_wait_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_wait_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_wait_ioctl._rs.204 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_wait_ioctl._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_wait_ioctl._rs.208 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_cs_wait_ioctl._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs_timedout to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_sob_reset_error(ptr nocapture noundef readonly %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %q_idx = getelementptr i8, ptr %ref, i32 12
  %4 = ptrtoint ptr %q_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_idx, align 4
  %sob_id = getelementptr i8, ptr %ref, i32 4
  %6 = ptrtoint ptr %sob_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sob_id, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %7) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_sob_put(ptr noundef %hw_sob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw_sob, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.hl_hw_sob, ptr %hw_sob, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !395

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  %1 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_sob, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_sob_reset.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_sob_put, %if.then.i2)) #14
          to label %hl_sob_reset.exit [label %if.then.i2], !srcloc !397

if.then.i2:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %sob_id.i = getelementptr %struct.hl_hw_sob, ptr %hw_sob, i32 0, i32 2
  %5 = ptrtoint ptr %sob_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sob_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_sob_reset.__UNIQUE_ID_ddebug297, ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef %6) #14
  br label %hl_sob_reset.exit

hl_sob_reset.exit:                                ; preds = %if.then.i2, %if.then.i
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 34
  %7 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs.i, align 8
  %reset_sob.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 70
  %9 = ptrtoint ptr %reset_sob.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_sob.i, align 4
  tail call void %10(ptr noundef %2, ptr noundef nonnull %hw_sob) #14
  %need_reset.i = getelementptr %struct.hl_hw_sob, ptr %hw_sob, i32 0, i32 5
  %11 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %need_reset.i, align 4
  br label %if.end

if.end:                                           ; preds = %hl_sob_reset.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_sob_get(ptr noundef %hw_sob) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hw_sob, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.hl_hw_sob, ptr %hw_sob, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !399

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !398
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !399

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !395

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @hl_gen_sob_mask(i16 noundef zeroext %sob_base, i8 noundef zeroext %sob_mask, ptr nocapture noundef writeonly %mask) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sob_mask to i32
  %0 = zext i8 %sob_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %sob_mask, label %for.body.preheader [
    i8 0, label %entry.cleanup_crit_edge
    i8 1, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %and12 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %for.inc, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = trunc i16 %sob_base to i8
  %and = and i8 %1, 7
  %shl = shl nuw i8 1, %and
  br label %if.end25

for.inc:                                          ; preds = %for.body.preheader
  %and12.1 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.1)
  %tobool.not.1 = icmp eq i32 %and12.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %and12.2 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.2)
  %tobool.not.2 = icmp eq i32 %and12.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %and12.3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.3)
  %tobool.not.3 = icmp eq i32 %and12.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %and12.4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.4)
  %tobool.not.4 = icmp eq i32 %and12.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %and12.5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.5)
  %tobool.not.5 = icmp eq i32 %and12.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %and12.6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.6)
  %tobool.not.6 = icmp eq i32 %and12.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %and12.7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.7)
  %tobool.not.7 = icmp eq i32 %and12.7, 0
  br i1 %tobool.not.7, label %for.inc.6.if.end25_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.6.if.end25_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 7, %for.body.preheader.for.end_crit_edge ], [ 6, %for.inc.for.end_crit_edge ], [ 5, %for.inc.1.for.end_crit_edge ], [ 4, %for.inc.2.for.end_crit_edge ], [ 3, %for.inc.3.for.end_crit_edge ], [ 2, %for.inc.4.for.end_crit_edge ], [ 1, %for.inc.5.for.end_crit_edge ], [ 0, %for.inc.6.for.end_crit_edge ]
  %2 = and i16 %sob_base, 7
  %narrow = sub nuw nsw i16 8, %2
  %sub = zext i16 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %sub)
  %cmp18.not = icmp ult i32 %i.0.lcssa, %sub
  br i1 %cmp18.not, label %for.end.if.end25_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end25:                                         ; preds = %for.end.if.end25_crit_edge, %for.inc.6.if.end25_crit_edge, %if.then5
  %storemerge.in = phi i8 [ %shl, %if.then5 ], [ %sob_mask, %for.end.if.end25_crit_edge ], [ %sob_mask, %for.inc.6.if.end25_crit_edge ]
  %storemerge = xor i8 %storemerge.in, -1
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %mask, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_fence_put(ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  %cmp.i = icmp ugt ptr %fence, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.hl_fence, ptr %fence, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !395

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %fence) #14
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_fences_put(ptr nocapture noundef readonly %fence, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3 = icmp sgt i32 %len, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %hl_fence_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %hl_fence_put.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %fence.addr.04 = phi ptr [ %incdec.ptr, %hl_fence_put.exit.for.body_crit_edge ], [ %fence, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %fence.addr.04 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence.addr.04, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.hl_fence_put.exit_crit_edge, label %if.end.i

for.body.hl_fence_put.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.end.i:                                         ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.hl_fence, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %hl_fence_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %hl_fence_put.exit

hl_fence_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, %for.body.hl_fence_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %incdec.ptr = getelementptr ptr, ptr %fence.addr.04, i32 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %hl_fence_put.exit.for.end_crit_edge, label %hl_fence_put.exit.for.body_crit_edge

hl_fence_put.exit.for.body_crit_edge:             ; preds = %hl_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

hl_fence_put.exit.for.end_crit_edge:              ; preds = %hl_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %hl_fence_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_fence_get(ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.hl_fence, ptr %fence, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !399

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs_get(ptr noundef %cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !399

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cs_needs_completion(ptr nocapture noundef readonly %cs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %staged_cs = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 29
  %0 = ptrtoint ptr %staged_cs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %staged_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %staged_last = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 27
  %2 = ptrtoint ptr %staged_last to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %staged_last, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cs_needs_timeout(ptr nocapture noundef readonly %cs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %staged_cs = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 29
  %0 = ptrtoint ptr %staged_cs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %staged_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %staged_first = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 28
  %2 = ptrtoint ptr %staged_first to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %staged_first, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_staged_cs_find_first(ptr noundef readonly %hdev, i64 noundef %cs_seq) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_mirror_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 21
  %prev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 21, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %prev, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %cs_mirror_list
  br i1 %cmp.not21, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %staged_cs = getelementptr i8, ptr %.pn22, i32 86
  %1 = ptrtoint ptr %staged_cs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %staged_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %staged_first = getelementptr i8, ptr %.pn22, i32 85
  %3 = ptrtoint ptr %staged_first to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %staged_first, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true4

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sequence = getelementptr i8, ptr %.pn22, i32 32
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %cs_seq)
  %cmp5 = icmp eq i64 %6, %cs_seq
  br i1 %cmp5, label %cleanup.split.loop.exit18, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev9 = getelementptr inbounds %struct.list_head, ptr %.pn22, i32 0, i32 1
  %7 = ptrtoint ptr %prev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %prev9, align 4
  %cmp.not = icmp eq ptr %.pn, %cs_mirror_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.split.loop.exit18:                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  %cs.0.le = getelementptr i8, ptr %.pn22, i32 -216
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit18, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cs.0.le, %cleanup.split.loop.exit18 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_staged_cs_last_exists(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readonly %cs) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %staged_last = getelementptr i8, ptr %1, i32 76
  %2 = ptrtoint ptr %staged_last to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %staged_last, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_cs_rollback_all(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sob_reset_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 18
  %0 = ptrtoint ptr %sob_reset_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sob_reset_wq, align 8
  tail call void @flush_workqueue(ptr noundef %1) #14
  %completion_queues_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 67
  %2 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %completion_queues_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp42.not = icmp eq i8 %3, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cq_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %cq_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cq_wq, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.043
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @flush_workqueue(ptr noundef %7) #14
  %inc = add nuw nsw i32 %i.043, 1
  %8 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %completion_queues_count, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cs_mirror_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 21
  %10 = ptrtoint ptr %cs_mirror_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs_mirror_list, align 4
  %cmp10.not46 = icmp eq ptr %11, %cs_mirror_list
  br i1 %cmp10.not46, label %for.end.for.end22_crit_edge, label %for.body12.lr.ph

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.body12.lr.ph:                                 ; preds = %for.end
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %for.body12

for.body12:                                       ; preds = %cs_rollback.exit.for.body12_crit_edge, %for.body12.lr.ph
  %.pn.in47 = phi ptr [ %11, %for.body12.lr.ph ], [ %.pn50, %cs_rollback.exit.for.body12_crit_edge ]
  %cs.048 = getelementptr i8, ptr %.pn.in47, i32 -216
  %12 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn50 = load ptr, ptr %.pn.in47, align 8
  %refcount.i = getelementptr i8, ptr %.pn.in47, i32 -156
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body12.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !399

for.body12.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body12
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cs_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cs_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body12.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body12.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %cs_get.exit

cs_get.exit:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cs_get.exit_crit_edge
  %aborted = getelementptr i8, ptr %.pn.in47, i32 82
  %15 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %aborted, align 2
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hl_cs_rollback_all._rs, ptr noundef nonnull @__func__.hl_cs_rollback_all) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cs_get.exit.do.end15_crit_edge, label %do.end

cs_get.exit.do.end15_crit_edge:                   ; preds = %cs_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

do.end:                                           ; preds = %cs_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %ctx = getelementptr i8, ptr %.pn.in47, i32 -212
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asid, align 8
  %sequence = getelementptr i8, ptr %.pn.in47, i32 32
  %22 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sequence, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %21, i64 noundef %23) #17
  br label %do.end15

do.end15:                                         ; preds = %do.end, %cs_get.exit.do.end15_crit_edge
  %staged_cs.i.i.i = getelementptr i8, ptr %.pn.in47, i32 86
  %24 = ptrtoint ptr %staged_cs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %staged_cs.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i.i, label %do.end15.staged_cs_put.exit.i_crit_edge, label %land.lhs.true.i.i.i

do.end15.staged_cs_put.exit.i_crit_edge:          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit.i

land.lhs.true.i.i.i:                              ; preds = %do.end15
  %staged_last.i.i.i = getelementptr i8, ptr %.pn.in47, i32 84
  %26 = ptrtoint ptr %staged_last.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %staged_last.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i, label %land.lhs.true.i.i.i.staged_cs_put.exit.i_crit_edge

land.lhs.true.i.i.i.staged_cs_put.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cs_put(ptr noundef %cs.048) #14
  br label %staged_cs_put.exit.i

staged_cs_put.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true.i.i.i.staged_cs_put.exit.i_crit_edge, %do.end15.staged_cs_put.exit.i_crit_edge
  %job_list.i = getelementptr i8, ptr %.pn.in47, i32 -208
  %28 = ptrtoint ptr %job_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %job_list.i, align 8
  %cmp.not19.i = icmp eq ptr %29, %job_list.i
  br i1 %cmp.not19.i, label %staged_cs_put.exit.i.cs_rollback.exit_crit_edge, label %staged_cs_put.exit.i.for.body.i_crit_edge

staged_cs_put.exit.i.for.body.i_crit_edge:        ; preds = %staged_cs_put.exit.i
  br label %for.body.i

staged_cs_put.exit.i.cs_rollback.exit_crit_edge:  ; preds = %staged_cs_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_rollback.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %staged_cs_put.exit.i.for.body.i_crit_edge
  %job.020.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %29, %staged_cs_put.exit.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %job.020.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %tmp.0.i = load ptr, ptr %job.020.i, align 4
  tail call fastcc void @complete_job(ptr noundef %hdev, ptr noundef %job.020.i) #14
  %cmp.not.i = icmp eq ptr %tmp.0.i, %job_list.i
  br i1 %cmp.not.i, label %for.body.i.cs_rollback.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.cs_rollback.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_rollback.exit

cs_rollback.exit:                                 ; preds = %for.body.i.cs_rollback.exit_crit_edge, %staged_cs_put.exit.i.cs_rollback.exit_crit_edge
  tail call fastcc void @cs_put(ptr noundef %cs.048)
  %cmp10.not = icmp eq ptr %.pn50, %cs_mirror_list
  br i1 %cmp10.not, label %cs_rollback.exit.for.end22_crit_edge, label %cs_rollback.exit.for.body12_crit_edge

cs_rollback.exit.for.body12_crit_edge:            ; preds = %cs_rollback.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body12

cs_rollback.exit.for.end22_crit_edge:             ; preds = %cs_rollback.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.end22:                                        ; preds = %cs_rollback.exit.for.end22_crit_edge, %for.end.for.end22_crit_edge
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %lock.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %used.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0, i32 4
  %31 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.end22.cleanup.i_crit_edge, label %do.end.i

for.end22.cleanup.i_crit_edge:                    ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

do.end.i:                                         ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef 0) #17
  tail call void @complete_all(ptr noundef %arrayidx.i) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %for.end22.cleanup.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  %lock.1.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.1.i) #14
  %used.1.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1, i32 4
  %35 = ptrtoint ptr %used.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %used.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.1.i = icmp eq i8 %36, 0
  br i1 %tobool.not.1.i, label %cleanup.i.force_complete_multi_cs.exit_crit_edge, label %do.end.1.i

cleanup.i.force_complete_multi_cs.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %force_complete_multi_cs.exit

do.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.1.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef 1) #17
  tail call void @complete_all(ptr noundef %arrayidx.1.i) #14
  br label %force_complete_multi_cs.exit

force_complete_multi_cs.exit:                     ; preds = %do.end.1.i, %cleanup.i.force_complete_multi_cs.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.1.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs_put(ptr noundef %cs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !395

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  %ctx.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 1
  %1 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx.i, align 4
  %hdev1.i = getelementptr inbounds %struct.hl_ctx, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev1.i, align 4
  %fence.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 5
  %5 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence.i, align 8
  %completed.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 22
  %7 = ptrtoint ptr %completed.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %completed.i, align 1
  %job_list.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 2
  %8 = ptrtoint ptr %job_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job_list.i, align 8
  %cmp.not.i63 = icmp eq ptr %9, %job_list.i
  br i1 %cmp.not.i63, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %job.0.i64 = phi ptr [ %tmp2.0.i, %for.body.i.for.body.i_crit_edge ], [ %9, %if.then.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %job.0.i64 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp2.0.i = load ptr, ptr %job.0.i64, align 4
  tail call fastcc void @complete_job(ptr noundef %4, ptr noundef %job.0.i64) #14
  %cmp.not.i = icmp eq ptr %tmp2.0.i, %job_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %submitted.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 21
  %11 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %submitted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.i1, label %if.end24.i

if.then.i1:                                       ; preds = %for.end.i
  %type.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 17
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 8
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.i = icmp eq i32 %15, 2
  br i1 %switch.i, label %if.then23.i, label %if.then.i1.out.i_crit_edge

if.then.i1.out.i_crit_edge:                       ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then23.i:                                      ; preds = %if.then.i1
  %signal_fence.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 6
  %16 = ptrtoint ptr %signal_fence.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal_fence.i, align 4
  %tobool.not.i.i41 = icmp eq ptr %17, null
  %cmp.i.i42 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i43 = or i1 %tobool.not.i.i41, %cmp.i.i42
  br i1 %spec.select.i.i43, label %if.then23.i.out.i_crit_edge, label %if.end.i48

if.then23.i.out.i_crit_edge:                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end.i48:                                       ; preds = %if.then23.i
  %refcount.i44 = getelementptr inbounds %struct.hl_fence, ptr %17, i32 0, i32 1
  %call.i.i.i.i.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i44, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i44, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i44, ptr %refcount.i44, i32 1, ptr elementtype(i32) %refcount.i44) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i46 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i46)
  %cmp.i.i.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i46, 1
  br i1 %cmp.i.i.i.i.i47, label %if.then.i.i52, label %if.end5.i.i.i.i.i50

if.end5.i.i.i.i.i50:                              ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i46)
  %.not.i.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i49, label %if.end5.i.i.i.i.i50.out.i_crit_edge, label %if.then10.i.i.i.i.i51, !prof !395

if.end5.i.i.i.i.i50.out.i_crit_edge:              ; preds = %if.end5.i.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then10.i.i.i.i.i51:                            ; preds = %if.end5.i.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i44, i32 noundef 3) #14
  br label %out.i

if.then.i.i52:                                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %17) #14
  br label %out.i

if.end24.i:                                       ; preds = %for.end.i
  tail call void @hl_hw_queue_update_ci(ptr noundef %cs) #14
  %cs_mirror_lock.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %cs_mirror_lock.i) #14
  %mirror_node.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 9
  %call.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mirror_node.i) #14
  br i1 %call.i.i37, label %if.end.i.i40, label %if.end24.i.list_del_init.exit_crit_edge

if.end24.i.list_del_init.exit_crit_edge:          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i40:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i38 = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i38, align 4
  %21 = ptrtoint ptr %mirror_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mirror_node.i, align 4
  %prev1.i.i.i39 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i39, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i40, %if.end24.i.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %mirror_node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %mirror_node.i, ptr %mirror_node.i, align 4
  %prev.i3.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mirror_node.i, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_mirror_lock.i) #14
  %staged_cs.i.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 29
  %27 = ptrtoint ptr %staged_cs.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %staged_cs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i21 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i21, label %list_del_init.exit.if.end.i24_crit_edge, label %land.lhs.true.i.i

list_del_init.exit.if.end.i24_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i24

land.lhs.true.i.i:                                ; preds = %list_del_init.exit
  %staged_first.i.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 28
  %29 = ptrtoint ptr %staged_first.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %staged_first.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cs_handle_tdr.exit_crit_edge, label %land.lhs.true.i.i.if.end.i24_crit_edge

land.lhs.true.i.i.if.end.i24_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i24

land.lhs.true.i.i.cs_handle_tdr.exit_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_handle_tdr.exit

if.end.i24:                                       ; preds = %land.lhs.true.i.i.if.end.i24_crit_edge, %list_del_init.exit.if.end.i24_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %cs_mirror_lock.i) #14
  %31 = ptrtoint ptr %staged_cs.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %staged_cs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i23 = icmp eq i8 %32, 0
  br i1 %tobool.not.i23, label %if.end.i24.if.end8.i_crit_edge, label %land.lhs.true.i27

if.end.i24.if.end8.i_crit_edge:                   ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

land.lhs.true.i27:                                ; preds = %if.end.i24
  %staged_last.i25 = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 27
  %33 = ptrtoint ptr %staged_last.i25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %staged_last.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool2.not.i26 = icmp eq i8 %34, 0
  br i1 %tobool2.not.i26, label %land.lhs.true.i27.if.end8.i_crit_edge, label %if.then3.i

land.lhs.true.i27.if.end8.i_crit_edge:            ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then3.i:                                       ; preds = %land.lhs.true.i27
  %staged_sequence.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 14
  %35 = ptrtoint ptr %staged_sequence.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %staged_sequence.i, align 8
  %cs_mirror_list.i.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 21
  %prev.i.i28 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 21, i32 1
  %37 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn20.i.i = load ptr, ptr %prev.i.i28, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %cs_mirror_list.i.i
  br i1 %cmp.not21.i.i, label %if.then3.i.hl_staged_cs_find_first.exit.i_crit_edge, label %if.then3.i.for.body.i.i_crit_edge

if.then3.i.for.body.i.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body.i.i

if.then3.i.hl_staged_cs_find_first.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_staged_cs_find_first.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then3.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.then3.i.for.body.i.i_crit_edge ]
  %staged_cs.i67.i = getelementptr i8, ptr %.pn22.i.i, i32 86
  %38 = ptrtoint ptr %staged_cs.i67.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %staged_cs.i67.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i68.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i68.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i70.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i70.i:                              ; preds = %for.body.i.i
  %staged_first.i69.i = getelementptr i8, ptr %.pn22.i.i, i32 85
  %40 = ptrtoint ptr %staged_first.i69.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %staged_first.i69.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool3.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i70.i.for.inc.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i70.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i70.i
  %sequence.i.i = getelementptr i8, ptr %.pn22.i.i, i32 32
  %42 = ptrtoint ptr %sequence.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %sequence.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %36)
  %cmp5.i.i = icmp eq i64 %43, %36
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true4.i.i.for.inc.i.i_crit_edge

land.lhs.true4.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true4.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i70.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %prev9.i.i = getelementptr inbounds %struct.list_head, ptr %.pn22.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i.i = load ptr, ptr %prev9.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cs_mirror_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.hl_staged_cs_find_first.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.hl_staged_cs_find_first.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_staged_cs_find_first.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cs.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -216
  br label %hl_staged_cs_find_first.exit.i

hl_staged_cs_find_first.exit.i:                   ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.hl_staged_cs_find_first.exit.i_crit_edge, %if.then3.i.hl_staged_cs_find_first.exit.i_crit_edge
  %retval.0.i71.i = phi ptr [ %cs.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.then3.i.hl_staged_cs_find_first.exit.i_crit_edge ], [ null, %for.inc.i.i.hl_staged_cs_find_first.exit.i_crit_edge ]
  %tobool5.not.i = icmp eq ptr %retval.0.i71.i, null
  %spec.select.i = select i1 %tobool5.not.i, ptr %cs, ptr %retval.0.i71.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %hl_staged_cs_find_first.exit.i, %land.lhs.true.i27.if.end8.i_crit_edge, %if.end.i24.if.end8.i_crit_edge
  %cs.addr.0.i = phi ptr [ %cs, %land.lhs.true.i27.if.end8.i_crit_edge ], [ %cs, %if.end.i24.if.end8.i_crit_edge ], [ %spec.select.i, %hl_staged_cs_find_first.exit.i ]
  tail call void @_raw_spin_unlock(ptr noundef %cs_mirror_lock.i) #14
  %timedout.i29 = getelementptr inbounds %struct.hl_cs, ptr %cs.addr.0.i, i32 0, i32 23
  %45 = ptrtoint ptr %timedout.i29 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %timedout.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool11.not.i = icmp eq i8 %46, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i30, label %if.end8.i.cs_handle_tdr.exit_crit_edge

if.end8.i.cs_handle_tdr.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_handle_tdr.exit

lor.lhs.false.i30:                                ; preds = %if.end8.i
  %timeout_jiffies.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 62
  %47 = ptrtoint ptr %timeout_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %timeout_jiffies.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %48)
  %cmp.i = icmp eq i64 %48, 2147483647
  br i1 %cmp.i, label %lor.lhs.false.i30.cs_handle_tdr.exit_crit_edge, label %if.end14.i

lor.lhs.false.i30.cs_handle_tdr.exit_crit_edge:   ; preds = %lor.lhs.false.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_handle_tdr.exit

if.end14.i:                                       ; preds = %lor.lhs.false.i30
  %tdr_active.i = getelementptr inbounds %struct.hl_cs, ptr %cs.addr.0.i, i32 0, i32 24
  %49 = ptrtoint ptr %tdr_active.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tdr_active.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool15.not.i = icmp eq i8 %50, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end18.i31_crit_edge, label %if.then16.i

if.end14.i.if.end18.i31_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i31

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %work_tdr.i = getelementptr inbounds %struct.hl_cs, ptr %cs.addr.0.i, i32 0, i32 8
  %call17.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_tdr.i) #14
  br label %if.end18.i31

if.end18.i31:                                     ; preds = %if.then16.i, %if.end14.i.if.end18.i31_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %cs_mirror_lock.i) #14
  %cs_mirror_list.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 21
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %land.lhs.true.i76.i.for.cond.i34_crit_edge, %if.end18.i31
  %.pn.in.i32 = phi ptr [ %cs_mirror_list.i, %if.end18.i31 ], [ %.pn.i33, %land.lhs.true.i76.i.for.cond.i34_crit_edge ]
  %51 = ptrtoint ptr %.pn.in.i32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i33 = load ptr, ptr %.pn.in.i32, align 4
  %cmp22.not.i = icmp eq ptr %.pn.i33, %cs_mirror_list.i
  br i1 %cmp22.not.i, label %for.cond.i34.if.end43.i_crit_edge, label %for.body.i35

for.cond.i34.if.end43.i_crit_edge:                ; preds = %for.cond.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

for.body.i35:                                     ; preds = %for.cond.i34
  %staged_cs.i72.i = getelementptr i8, ptr %.pn.i33, i32 86
  %52 = ptrtoint ptr %staged_cs.i72.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %staged_cs.i72.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i73.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i73.i, label %for.body.i35.land.lhs.true34.critedge.i_crit_edge, label %land.lhs.true.i76.i

for.body.i35.land.lhs.true34.critedge.i_crit_edge: ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true34.critedge.i

land.lhs.true.i76.i:                              ; preds = %for.body.i35
  %staged_first.i74.i = getelementptr i8, ptr %.pn.i33, i32 85
  %54 = ptrtoint ptr %staged_first.i74.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %staged_first.i74.i, align 1
  %tobool1.not.i75.i = icmp eq i8 %55, 0
  br i1 %tobool1.not.i75.i, label %land.lhs.true.i76.i.for.cond.i34_crit_edge, label %land.lhs.true.i76.i.land.lhs.true34.critedge.i_crit_edge

land.lhs.true.i76.i.land.lhs.true34.critedge.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true34.critedge.i

land.lhs.true.i76.i.for.cond.i34_crit_edge:       ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i34

land.lhs.true34.critedge.i:                       ; preds = %land.lhs.true.i76.i.land.lhs.true34.critedge.i_crit_edge, %for.body.i35.land.lhs.true34.critedge.i_crit_edge
  %tdr_active35.i = getelementptr i8, ptr %.pn.i33, i32 81
  %56 = ptrtoint ptr %tdr_active35.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tdr_active35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool36.not.i = icmp eq i8 %57, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %land.lhs.true34.critedge.i.if.end43.i_crit_edge

land.lhs.true34.critedge.i.if.end43.i_crit_edge:  ; preds = %land.lhs.true34.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then37.i:                                      ; preds = %land.lhs.true34.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %tdr_active35.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %tdr_active35.i, align 1
  %work_tdr39.i = getelementptr i8, ptr %.pn.i33, i32 -100
  %timeout_jiffies40.i = getelementptr i8, ptr %.pn.i33, i32 48
  %59 = ptrtoint ptr %timeout_jiffies40.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %timeout_jiffies40.i, align 8
  %conv41.i = trunc i64 %60 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %61 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %work_tdr39.i, i32 noundef %conv41.i) #14
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then37.i, %land.lhs.true34.critedge.i.if.end43.i_crit_edge, %for.cond.i34.if.end43.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_mirror_lock.i) #14
  br label %cs_handle_tdr.exit

cs_handle_tdr.exit:                               ; preds = %if.end43.i, %lor.lhs.false.i30.cs_handle_tdr.exit_crit_edge, %if.end8.i.cs_handle_tdr.exit_crit_edge, %land.lhs.true.i.i.cs_handle_tdr.exit_crit_edge
  %62 = ptrtoint ptr %staged_cs.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %staged_cs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool26.not.i = icmp eq i8 %63, 0
  br i1 %tobool26.not.i, label %cs_handle_tdr.exit.if.end65.i_crit_edge, label %if.then27.i

cs_handle_tdr.exit.if.end65.i_crit_edge:          ; preds = %cs_handle_tdr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

if.then27.i:                                      ; preds = %cs_handle_tdr.exit
  %staged_last.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 27
  %64 = ptrtoint ptr %staged_last.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %staged_last.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool28.not.i = icmp eq i8 %65, 0
  br i1 %tobool28.not.i, label %if.then27.i.if.end54.i_crit_edge, label %if.then29.i

if.then27.i.if.end54.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then29.i:                                      ; preds = %if.then27.i
  %staged_cs_node.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 10
  %66 = ptrtoint ptr %staged_cs_node.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %staged_cs_node.i, align 8
  %cmp44.not.i65 = icmp eq ptr %67, %staged_cs_node.i
  br i1 %cmp44.not.i65, label %if.then29.i.if.end54.i_crit_edge, label %if.then29.i.for.body46.i_crit_edge

if.then29.i.for.body46.i_crit_edge:               ; preds = %if.then29.i
  br label %for.body46.i

if.then29.i.if.end54.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

for.body46.i:                                     ; preds = %staged_cs_put.exit.for.body46.i_crit_edge, %if.then29.i.for.body46.i_crit_edge
  %.pn.in.i66 = phi ptr [ %.pn.i, %staged_cs_put.exit.for.body46.i_crit_edge ], [ %67, %if.then29.i.for.body46.i_crit_edge ]
  %staged_cs30.0.i = getelementptr i8, ptr %.pn.in.i66, i32 -224
  %68 = ptrtoint ptr %.pn.in.i66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i = load ptr, ptr %.pn.in.i66, align 8
  %staged_cs.i54 = getelementptr i8, ptr %.pn.in.i66, i32 78
  %69 = ptrtoint ptr %staged_cs.i54 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %staged_cs.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i55 = icmp eq i8 %70, 0
  br i1 %tobool.not.i55, label %for.body46.i.staged_cs_put.exit_crit_edge, label %land.lhs.true.i58

for.body46.i.staged_cs_put.exit_crit_edge:        ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit

land.lhs.true.i58:                                ; preds = %for.body46.i
  %staged_last.i56 = getelementptr i8, ptr %.pn.in.i66, i32 76
  %71 = ptrtoint ptr %staged_last.i56 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %staged_last.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not.i57 = icmp eq i8 %72, 0
  br i1 %tobool1.not.i57, label %if.then.i19, label %land.lhs.true.i58.staged_cs_put.exit_crit_edge

land.lhs.true.i58.staged_cs_put.exit_crit_edge:   ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit

if.then.i19:                                      ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cs_put(ptr noundef %staged_cs30.0.i) #14
  br label %staged_cs_put.exit

staged_cs_put.exit:                               ; preds = %if.then.i19, %land.lhs.true.i58.staged_cs_put.exit_crit_edge, %for.body46.i.staged_cs_put.exit_crit_edge
  %cmp44.not.i = icmp eq ptr %.pn.i, %staged_cs_node.i
  br i1 %cmp44.not.i, label %staged_cs_put.exit.if.end54.i_crit_edge, label %staged_cs_put.exit.for.body46.i_crit_edge

staged_cs_put.exit.for.body46.i_crit_edge:        ; preds = %staged_cs_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body46.i

staged_cs_put.exit.if.end54.i_crit_edge:          ; preds = %staged_cs_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.end54.i:                                       ; preds = %staged_cs_put.exit.if.end54.i_crit_edge, %if.then29.i.if.end54.i_crit_edge, %if.then27.i.if.end54.i_crit_edge
  %73 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %submitted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool56.not.i = icmp eq i8 %74, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end61.i_crit_edge, label %if.then57.i

if.end54.i.if.end61.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.end54.i
  tail call void @_raw_spin_lock(ptr noundef %cs_mirror_lock.i) #14
  %staged_cs_node59.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %staged_cs_node59.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then57.i.list_del.exit_crit_edge

if.then57.i.list_del.exit_crit_edge:              ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 10, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i, align 4
  %77 = ptrtoint ptr %staged_cs_node59.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %staged_cs_node59.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then57.i.list_del.exit_crit_edge
  %81 = ptrtoint ptr %staged_cs_node59.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %staged_cs_node59.i, align 4
  %prev.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cs_mirror_lock.i) #14
  br label %if.end61.i

if.end61.i:                                       ; preds = %list_del.exit, %if.end54.i.if.end61.i_crit_edge
  %encaps_signals.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 9
  %83 = ptrtoint ptr %encaps_signals.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %encaps_signals.i, align 8, !range !400
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool62.not.i = icmp eq i8 %84, 0
  br i1 %tobool62.not.i, label %if.end61.i.if.end65.i_crit_edge, label %if.then63.i

if.end61.i.if.end65.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

if.then63.i:                                      ; preds = %if.end61.i
  %encaps_sig_hdl.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 4
  %85 = ptrtoint ptr %encaps_sig_hdl.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %encaps_sig_hdl.i, align 4
  %call.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %86, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %86, i32 1, i32 3, i32 1) #14
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i73)
  %cmp.i.i.i.i74 = icmp eq i32 %asmresult.i.i.i.i.i.i.i73, 1
  br i1 %cmp.i.i.i.i74, label %if.then.i78, label %if.end5.i.i.i.i76

if.end5.i.i.i.i76:                                ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i73)
  %.not.i.i.i.i75 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i73, 0
  br i1 %.not.i.i.i.i75, label %if.end5.i.i.i.i76.if.end65.i_crit_edge, label %if.then10.i.i.i.i77, !prof !395

if.end5.i.i.i.i76.if.end65.i_crit_edge:           ; preds = %if.end5.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

if.then10.i.i.i.i77:                              ; preds = %if.end5.i.i.i.i76
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef 3) #14
  br label %if.end65.i

if.then.i78:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @hl_encaps_handle_do_release(ptr noundef %86) #14
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then.i78, %if.then10.i.i.i.i77, %if.end5.i.i.i.i76.if.end65.i_crit_edge, %if.end61.i.if.end65.i_crit_edge, %cs_handle_tdr.exit.if.end65.i_crit_edge
  %type66.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 17
  %88 = ptrtoint ptr %type66.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type66.i, align 8
  %90 = and i32 %89, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %switch172.i = icmp eq i32 %90, 2
  br i1 %switch172.i, label %land.lhs.true.i, label %if.end65.i.out.i_crit_edge

if.end65.i.out.i_crit_edge:                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  %encaps_signals71.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 31
  %91 = ptrtoint ptr %encaps_signals71.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %encaps_signals71.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool72.not.i = icmp eq i8 %92, 0
  br i1 %tobool72.not.i, label %land.lhs.true.i.out.i_crit_edge, label %if.then73.i

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then73.i:                                      ; preds = %land.lhs.true.i
  %encaps_sig_hdl74.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 12
  %93 = ptrtoint ptr %encaps_sig_hdl74.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %encaps_sig_hdl74.i, align 8
  %call.i.i.i.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %94, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %94, i32 1, i32 3, i32 1) #14
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i82, label %if.then.i86, label %if.end5.i.i.i.i84

if.end5.i.i.i.i84:                                ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i81)
  %.not.i.i.i.i83 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i83, label %if.end5.i.i.i.i84.out.i_crit_edge, label %if.then10.i.i.i.i85, !prof !395

if.end5.i.i.i.i84.out.i_crit_edge:                ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then10.i.i.i.i85:                              ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %94, i32 noundef 3) #14
  br label %out.i

if.then.i86:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @hl_encaps_handle_do_release(ptr noundef %94) #14
  br label %out.i

out.i:                                            ; preds = %if.then.i86, %if.then10.i.i.i.i85, %if.end5.i.i.i.i84.out.i_crit_edge, %land.lhs.true.i.out.i_crit_edge, %if.end65.i.out.i_crit_edge, %if.then.i.i52, %if.then10.i.i.i.i.i51, %if.end5.i.i.i.i.i50.out.i_crit_edge, %if.then23.i.out.i_crit_edge, %if.then.i1.out.i_crit_edge
  tail call void @hl_debugfs_remove_cs(ptr noundef %cs) #14
  %96 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctx.i, align 4
  %call79.i = tail call i32 @hl_ctx_put(ptr noundef %97) #14
  %timedout.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 23
  %98 = ptrtoint ptr %timedout.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %timedout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool80.not.i = icmp eq i8 %99, 0
  br i1 %tobool80.not.i, label %if.else.i, label %out.i.if.end95.i.sink.split_crit_edge

out.i.if.end95.i.sink.split_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i.sink.split

if.else.i:                                        ; preds = %out.i
  %aborted.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 25
  %100 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %aborted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool83.not.i = icmp eq i8 %101, 0
  br i1 %tobool83.not.i, label %if.else87.i, label %if.else.i.if.end95.i.sink.split_crit_edge

if.else.i.if.end95.i.sink.split_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i.sink.split

if.else87.i:                                      ; preds = %if.else.i
  %102 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %submitted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool89.not.i = icmp eq i8 %103, 0
  br i1 %tobool89.not.i, label %if.else87.i.if.end95.i.sink.split_crit_edge, label %if.else87.i.if.end95.i_crit_edge

if.else87.i.if.end95.i_crit_edge:                 ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i

if.else87.i.if.end95.i.sink.split_crit_edge:      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95.i.sink.split

if.end95.i.sink.split:                            ; preds = %if.else87.i.if.end95.i.sink.split_crit_edge, %if.else.i.if.end95.i.sink.split_crit_edge, %out.i.if.end95.i.sink.split_crit_edge
  %.sink = phi i32 [ -110, %out.i.if.end95.i.sink.split_crit_edge ], [ -5, %if.else.i.if.end95.i.sink.split_crit_edge ], [ -16, %if.else87.i.if.end95.i.sink.split_crit_edge ]
  %104 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fence.i, align 8
  %error92.i = getelementptr inbounds %struct.hl_fence, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %error92.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink, ptr %error92.i, align 4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.end95.i.sink.split, %if.else87.i.if.end95.i_crit_edge
  %skip_reset_on_timeout.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 30
  %107 = ptrtoint ptr %skip_reset_on_timeout.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %skip_reset_on_timeout.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool96.not.i = icmp eq i8 %108, 0
  br i1 %tobool96.not.i, label %if.end95.i.if.end103.i_crit_edge, label %do.end.i, !prof !395

if.end95.i.if.end103.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103.i

do.end.i:                                         ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %sequence.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 13
  %111 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %sequence.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %conv101.i = zext i32 %113 to i64
  %submission_time_jiffies.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 16
  %114 = ptrtoint ptr %submission_time_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %submission_time_jiffies.i, align 8
  %sub.i = sub i64 %conv101.i, %115
  %116 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %sub.i, i32 0) #18, !srcloc !401
  %asmresult.i.i.i = extractvalue { i64, i32 } %116, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %116, 1
  %117 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %sub.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !402
  %asmresult10.i.i.i = extractvalue { i64, i32 } %117, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.17, i64 noundef %112, i64 noundef %div1581.i.i) #17
  br label %if.end103.i

if.end103.i:                                      ; preds = %do.end.i, %if.end95.i.if.end103.i_crit_edge
  %timestamp.i = getelementptr %struct.hl_cs, ptr %cs, i32 0, i32 26
  %118 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %timestamp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool104.not.i = icmp eq i8 %119, 0
  br i1 %tobool104.not.i, label %if.end103.i.cs_do_release.exit_crit_edge, label %if.then105.i

if.end103.i.cs_do_release.exit_crit_edge:         ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_do_release.exit

if.then105.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #16
  %call106.i = tail call i64 @ktime_get() #14
  %120 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fence.i, align 8
  %timestamp108.i = getelementptr inbounds %struct.hl_fence, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %timestamp108.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call106.i, ptr %timestamp108.i, align 8
  br label %cs_do_release.exit

cs_do_release.exit:                               ; preds = %if.then105.i, %if.end103.i.cs_do_release.exit_crit_edge
  %123 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fence.i, align 8
  tail call void @complete_all(ptr noundef %124) #14
  %125 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fence.i, align 8
  %staged_cs.i12 = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 29
  %127 = ptrtoint ptr %staged_cs.i12 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %staged_cs.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i13 = icmp eq i8 %128, 0
  br i1 %tobool.not.i13, label %cs_do_release.exit.if.end.i15_crit_edge, label %land.lhs.true.i14

cs_do_release.exit.if.end.i15_crit_edge:          ; preds = %cs_do_release.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i15

land.lhs.true.i14:                                ; preds = %cs_do_release.exit
  %staged_first.i = getelementptr inbounds %struct.hl_cs, ptr %cs, i32 0, i32 28
  %129 = ptrtoint ptr %staged_first.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %staged_first.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool2.not.i = icmp eq i8 %130, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i14.complete_multi_cs.exit_crit_edge, label %land.lhs.true.i14.if.end.i15_crit_edge

land.lhs.true.i14.if.end.i15_crit_edge:           ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i15

land.lhs.true.i14.complete_multi_cs.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %complete_multi_cs.exit

if.end.i15:                                       ; preds = %land.lhs.true.i14.if.end.i15_crit_edge, %cs_do_release.exit.if.end.i15_crit_edge
  %stream_master_qid_map.i = getelementptr inbounds %struct.hl_fence, ptr %126, i32 0, i32 3
  %timestamp16.i = getelementptr inbounds %struct.hl_fence, ptr %126, i32 0, i32 5
  %mcs_handling_done.i = getelementptr inbounds %struct.hl_fence, ptr %126, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 0
  %used.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 0, i32 4
  %131 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool4.not.i = icmp eq i8 %132, 0
  br i1 %tobool4.not.i, label %if.end.i15.cleanup.i_crit_edge, label %if.end6.i

if.end.i15.cleanup.i_crit_edge:                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end6.i:                                        ; preds = %if.end.i15
  %lock.i16 = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i16) #14
  %133 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool9.not.i17 = icmp eq i8 %134, 0
  br i1 %tobool9.not.i17, label %if.end6.i.if.end19.i_crit_edge, label %land.lhs.true10.i

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

land.lhs.true10.i:                                ; preds = %if.end6.i
  %135 = ptrtoint ptr %stream_master_qid_map.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %stream_master_qid_map.i, align 8
  %stream_master_qid_map11.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 0, i32 3
  %137 = ptrtoint ptr %stream_master_qid_map11.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %stream_master_qid_map11.i, align 8
  %and.i = and i32 %138, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end19.i_crit_edge, label %if.then13.i

land.lhs.true10.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then13.i:                                      ; preds = %land.lhs.true10.i
  %timestamp.i18 = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 0, i32 2
  %139 = ptrtoint ptr %timestamp.i18 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %timestamp.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %140)
  %tobool14.not.i = icmp eq i64 %140, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.then13.i.if.end18.i_crit_edge

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  %141 = ptrtoint ptr %timestamp16.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %timestamp16.i, align 8
  %143 = ptrtoint ptr %timestamp.i18 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %142, ptr %timestamp.i18, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.then13.i.if.end18.i_crit_edge
  tail call void @complete_all(ptr noundef %arrayidx.i) #14
  %144 = ptrtoint ptr %mcs_handling_done.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %mcs_handling_done.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %land.lhs.true10.i.if.end19.i_crit_edge, %if.end6.i.if.end19.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i16) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end19.i, %if.end.i15.cleanup.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 1
  %used.1.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 1, i32 4
  %145 = ptrtoint ptr %used.1.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %used.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool4.not.1.i = icmp eq i8 %146, 0
  br i1 %tobool4.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end6.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1.i

if.end6.1.i:                                      ; preds = %cleanup.i
  %lock.1.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.1.i) #14
  %147 = ptrtoint ptr %used.1.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %used.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool9.not.1.i = icmp eq i8 %148, 0
  br i1 %tobool9.not.1.i, label %if.end6.1.i.if.end19.1.i_crit_edge, label %land.lhs.true10.1.i

if.end6.1.i.if.end19.1.i_crit_edge:               ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.1.i

land.lhs.true10.1.i:                              ; preds = %if.end6.1.i
  %149 = ptrtoint ptr %stream_master_qid_map.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %stream_master_qid_map.i, align 8
  %stream_master_qid_map11.1.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 1, i32 3
  %151 = ptrtoint ptr %stream_master_qid_map11.1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %stream_master_qid_map11.1.i, align 8
  %and.1.i = and i32 %152, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool12.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool12.not.1.i, label %land.lhs.true10.1.i.if.end19.1.i_crit_edge, label %if.then13.1.i

land.lhs.true10.1.i.if.end19.1.i_crit_edge:       ; preds = %land.lhs.true10.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.1.i

if.then13.1.i:                                    ; preds = %land.lhs.true10.1.i
  %timestamp.1.i = getelementptr %struct.hl_device, ptr %4, i32 0, i32 56, i32 1, i32 2
  %153 = ptrtoint ptr %timestamp.1.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %timestamp.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %154)
  %tobool14.not.1.i = icmp eq i64 %154, 0
  br i1 %tobool14.not.1.i, label %if.then15.1.i, label %if.then13.1.i.if.end18.1.i_crit_edge

if.then13.1.i.if.end18.1.i_crit_edge:             ; preds = %if.then13.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.1.i

if.then15.1.i:                                    ; preds = %if.then13.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %timestamp16.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %timestamp16.i, align 8
  %157 = ptrtoint ptr %timestamp.1.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %timestamp.1.i, align 8
  br label %if.end18.1.i

if.end18.1.i:                                     ; preds = %if.then15.1.i, %if.then13.1.i.if.end18.1.i_crit_edge
  tail call void @complete_all(ptr noundef %arrayidx.1.i) #14
  %158 = ptrtoint ptr %mcs_handling_done.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %mcs_handling_done.i, align 8
  br label %if.end19.1.i

if.end19.1.i:                                     ; preds = %if.end18.1.i, %land.lhs.true10.1.i.if.end19.1.i_crit_edge, %if.end6.1.i.if.end19.1.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.1.i) #14
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end19.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %159 = ptrtoint ptr %mcs_handling_done.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %mcs_handling_done.i, align 8
  br label %complete_multi_cs.exit

complete_multi_cs.exit:                           ; preds = %cleanup.1.i, %land.lhs.true.i14.complete_multi_cs.exit_crit_edge
  %hw_sob.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 3
  %160 = ptrtoint ptr %hw_sob.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw_sob.i, align 8
  %tobool.not.i2 = icmp eq ptr %161, null
  br i1 %tobool.not.i2, label %complete_multi_cs.exit.cs_release_sob_reset_handler.exit_crit_edge, label %lor.lhs.false.i

complete_multi_cs.exit.cs_release_sob_reset_handler.exit_crit_edge: ; preds = %complete_multi_cs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_release_sob_reset_handler.exit

lor.lhs.false.i:                                  ; preds = %complete_multi_cs.exit
  %162 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %submitted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool1.not.i = icmp eq i8 %163, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cs_release_sob_reset_handler.exit_crit_edge, label %if.end.i7

lor.lhs.false.i.cs_release_sob_reset_handler.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_release_sob_reset_handler.exit

if.end.i7:                                        ; preds = %lor.lhs.false.i
  %lock.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %type.i4 = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 6
  %164 = ptrtoint ptr %type.i4 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %type.i4, align 8
  %.off.i5 = add i32 %165, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i5)
  %switch.i6 = icmp ult i32 %.off.i5, 3
  br i1 %switch.i6, label %if.end.i7.do.body.i_crit_edge, label %lor.lhs.false8.i

if.end.i7.do.body.i_crit_edge:                    ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

lor.lhs.false8.i:                                 ; preds = %if.end.i7
  %encaps_signals.i8 = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 9
  %166 = ptrtoint ptr %encaps_signals.i8 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %encaps_signals.i8, align 8, !range !400
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool9.not.i = icmp eq i8 %167, 0
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.if.end24.i11_crit_edge, label %lor.lhs.false8.i.do.body.i_crit_edge

lor.lhs.false8.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

lor.lhs.false8.i.if.end24.i11_crit_edge:          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i11

do.body.i:                                        ; preds = %lor.lhs.false8.i.do.body.i_crit_edge, %if.end.i7.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_release_sob_reset_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_put, %if.then14.i)) #14
          to label %do.end.i10 [label %if.then14.i], !srcloc !397

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i9 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %168 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i9, align 4
  %cs_seq.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 5
  %170 = ptrtoint ptr %cs_seq.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %cs_seq.i, align 8
  %172 = ptrtoint ptr %type.i4 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %type.i4, align 8
  %174 = ptrtoint ptr %hw_sob.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw_sob.i, align 8
  %sob_id.i = getelementptr inbounds %struct.hl_hw_sob, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %sob_id.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sob_id.i, align 4
  %sob_val.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 7
  %178 = ptrtoint ptr %sob_val.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %sob_val.i, align 4
  %conv.i = zext i16 %179 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_release_sob_reset_handler.__UNIQUE_ID_ddebug298, ptr noundef %169, ptr noundef nonnull @.str.20, i64 noundef %171, i32 noundef %173, i32 noundef %177, i32 noundef %conv.i) #14
  br label %do.end.i10

do.end.i10:                                       ; preds = %if.then14.i, %do.body.i
  %180 = ptrtoint ptr %hw_sob.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw_sob.i, align 8
  tail call void @hw_sob_put(ptr noundef %181) #14
  %182 = ptrtoint ptr %type.i4 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %183)
  %cmp20.i = icmp eq i32 %183, 3
  br i1 %cmp20.i, label %if.then22.i, label %do.end.i10.if.end24.i11_crit_edge

do.end.i10.if.end24.i11_crit_edge:                ; preds = %do.end.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i11

if.then22.i:                                      ; preds = %do.end.i10
  call void @__sanitizer_cov_trace_pc() #16
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 34
  %184 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %asic_funcs.i, align 8
  %reset_sob_group.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %185, i32 0, i32 71
  %186 = ptrtoint ptr %reset_sob_group.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reset_sob_group.i, align 4
  %sob_group.i = getelementptr inbounds %struct.hl_cs_compl, ptr %6, i32 0, i32 8
  %188 = ptrtoint ptr %sob_group.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %sob_group.i, align 2
  tail call void %187(ptr noundef %4, i16 noundef zeroext %189) #14
  br label %if.end24.i11

if.end24.i11:                                     ; preds = %if.then22.i, %do.end.i10.if.end24.i11_crit_edge, %lor.lhs.false8.i.if.end24.i11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  br label %cs_release_sob_reset_handler.exit

cs_release_sob_reset_handler.exit:                ; preds = %if.end24.i11, %lor.lhs.false.i.cs_release_sob_reset_handler.exit_crit_edge, %complete_multi_cs.exit.cs_release_sob_reset_handler.exit_crit_edge
  %190 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %fence.i, align 8
  %tobool.not.i.i = icmp eq ptr %191, null
  %cmp.i.i = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %cs_release_sob_reset_handler.exit.hl_fence_put.exit_crit_edge, label %if.end.i

cs_release_sob_reset_handler.exit.hl_fence_put.exit_crit_edge: ; preds = %cs_release_sob_reset_handler.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.end.i:                                         ; preds = %cs_release_sob_reset_handler.exit
  %refcount.i = getelementptr inbounds %struct.hl_fence, ptr %191, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %192 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %192, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %hl_fence_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %191) #14
  br label %hl_fence_put.exit

hl_fence_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, %cs_release_sob_reset_handler.exit.hl_fence_put.exit_crit_edge
  %193 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cs, align 8
  tail call void @kfree(ptr noundef %194) #14
  tail call void @kfree(ptr noundef %cs) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %hl_fence_put.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_release_pending_user_interrupts(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %user_interrupt_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 64
  %0 = ptrtoint ptr %user_interrupt_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %user_interrupt_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %user_interrupt_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %user_interrupt_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp24.not = icmp eq i16 %3, 0
  br i1 %cmp24.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %user_interrupt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %wake_pending_user_interrupt_threads.exit.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %wake_pending_user_interrupt_threads.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %user_interrupt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_interrupt, align 8
  %wait_list_lock.i = getelementptr %struct.hl_user_interrupt, ptr %5, i32 %i.025, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i) #14
  %wait_list_head.i = getelementptr %struct.hl_user_interrupt, ptr %5, i32 %i.025, i32 1
  %6 = ptrtoint ptr %wait_list_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pend.022.i = load ptr, ptr %wait_list_head.i, align 4
  %cmp7.not23.i = icmp eq ptr %pend.022.i, %wait_list_head.i
  br i1 %cmp7.not23.i, label %for.body.wake_pending_user_interrupt_threads.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.wake_pending_user_interrupt_threads.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %wake_pending_user_interrupt_threads.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %pend.024.i = phi ptr [ %pend.0.i, %for.body.i.for.body.i_crit_edge ], [ %pend.022.i, %for.body.for.body.i_crit_edge ]
  %fence.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.024.i, i32 0, i32 1
  %error.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.024.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -5, ptr %error.i, align 4
  tail call void @complete_all(ptr noundef %fence.i) #14
  %8 = ptrtoint ptr %pend.024.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pend.0.i = load ptr, ptr %pend.024.i, align 4
  %cmp7.not.i = icmp eq ptr %pend.0.i, %wait_list_head.i
  br i1 %cmp7.not.i, label %for.body.i.wake_pending_user_interrupt_threads.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.wake_pending_user_interrupt_threads.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wake_pending_user_interrupt_threads.exit

wake_pending_user_interrupt_threads.exit:         ; preds = %for.body.i.wake_pending_user_interrupt_threads.exit_crit_edge, %for.body.wake_pending_user_interrupt_threads.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i, i32 noundef %call2.i) #14
  %inc = add nuw nsw i32 %i.025, 1
  %9 = ptrtoint ptr %user_interrupt_count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %user_interrupt_count, align 2
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %wake_pending_user_interrupt_threads.exit.for.body_crit_edge, label %wake_pending_user_interrupt_threads.exit.for.end_crit_edge

wake_pending_user_interrupt_threads.exit.for.end_crit_edge: ; preds = %wake_pending_user_interrupt_threads.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

wake_pending_user_interrupt_threads.exit.for.body_crit_edge: ; preds = %wake_pending_user_interrupt_threads.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %wake_pending_user_interrupt_threads.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %wait_list_lock.i11 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 15, i32 2
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i11) #14
  %wait_list_head.i13 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %wait_list_head.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %pend.022.i14 = load ptr, ptr %wait_list_head.i13, align 4
  %cmp7.not23.i15 = icmp eq ptr %pend.022.i14, %wait_list_head.i13
  br i1 %cmp7.not23.i15, label %for.end.wake_pending_user_interrupt_threads.exit22_crit_edge, label %for.end.for.body.i21_crit_edge

for.end.for.body.i21_crit_edge:                   ; preds = %for.end
  br label %for.body.i21

for.end.wake_pending_user_interrupt_threads.exit22_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %wake_pending_user_interrupt_threads.exit22

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %for.end.for.body.i21_crit_edge
  %pend.024.i16 = phi ptr [ %pend.0.i19, %for.body.i21.for.body.i21_crit_edge ], [ %pend.022.i14, %for.end.for.body.i21_crit_edge ]
  %fence.i17 = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.024.i16, i32 0, i32 1
  %error.i18 = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %pend.024.i16, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %error.i18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -5, ptr %error.i18, align 4
  tail call void @complete_all(ptr noundef %fence.i17) #14
  %13 = ptrtoint ptr %pend.024.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %pend.0.i19 = load ptr, ptr %pend.024.i16, align 4
  %cmp7.not.i20 = icmp eq ptr %pend.0.i19, %wait_list_head.i13
  br i1 %cmp7.not.i20, label %for.body.i21.wake_pending_user_interrupt_threads.exit22_crit_edge, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i21

for.body.i21.wake_pending_user_interrupt_threads.exit22_crit_edge: ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %wake_pending_user_interrupt_threads.exit22

wake_pending_user_interrupt_threads.exit22:       ; preds = %for.body.i21.wake_pending_user_interrupt_threads.exit22_crit_edge, %for.end.wake_pending_user_interrupt_threads.exit22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i11, i32 noundef %call2.i12) #14
  br label %cleanup

cleanup:                                          ; preds = %wake_pending_user_interrupt_threads.exit22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_cs_allocate_job(ptr nocapture noundef readonly %hdev, i32 noundef %queue_type, i1 noundef zeroext %is_kernel_allocated_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_kernel_allocated_cb to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 112) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #19
  %tobool2.not = icmp eq ptr %call7.i.i33, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %job.037 = phi ptr [ %call7.i.i33, %if.end.if.end4_crit_edge ], [ %call7.i.i, %entry.if.end4_crit_edge ]
  %refcount = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount, align 8
  %queue_type5 = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 8
  %3 = ptrtoint ptr %queue_type5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %queue_type, ptr %queue_type5, align 4
  %is_kernel_allocated_cb7 = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 14
  %4 = ptrtoint ptr %is_kernel_allocated_cb7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %is_kernel_allocated_cb7, align 4
  %5 = zext i32 %queue_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %queue_type, label %if.end4.if.end10_crit_edge [
    i32 1, label %if.end4.if.then9_crit_edge
    i32 4, label %land.lhs.true.i
  ]

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.end4
  br i1 %is_kernel_allocated_cb, label %is_cb_patched.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_cb_patched.exit:                               ; preds = %land.lhs.true.i
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %6 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %is_cb_patched.exit.if.then9_crit_edge, label %is_cb_patched.exit.if.end10thread-pre-split_crit_edge

is_cb_patched.exit.if.end10thread-pre-split_crit_edge: ; preds = %is_cb_patched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10thread-pre-split

is_cb_patched.exit.if.then9_crit_edge:            ; preds = %is_cb_patched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then9:                                         ; preds = %is_cb_patched.exit.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %userptr_list = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 5
  %8 = ptrtoint ptr %userptr_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %userptr_list, ptr %userptr_list, align 8
  %prev.i = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %userptr_list, ptr %prev.i, align 4
  br label %if.end10thread-pre-split

if.end10thread-pre-split:                         ; preds = %if.then9, %is_cb_patched.exit.if.end10thread-pre-split_crit_edge
  %10 = ptrtoint ptr %queue_type5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %queue_type5, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.end4.if.end10_crit_edge
  %11 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %queue_type, %if.end4.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %do.body, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %finish_work = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 4
  tail call void @__init_work(ptr noundef %finish_work, i32 noundef 0) #14
  %12 = ptrtoint ptr %finish_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %finish_work, align 4
  %lockdep_map = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @hl_cs_allocate_job.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry17 = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i34 = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry17, ptr %prev.i34, align 4
  %func = getelementptr inbounds %struct.hl_cs_job, ptr %job.037, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @job_wq_completion, ptr %func, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end10.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %job.037, %do.body ], [ %job.037, %if.end10.cleanup_crit_edge ], [ %job.037, %land.lhs.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @job_wq_completion(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %cs1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %cs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs1, align 4
  %ctx = getelementptr inbounds %struct.hl_cs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %hdev2 = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev2, align 4
  tail call fastcc void @complete_job(ptr noundef %5, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cs_signal_sob_wraparound_handler(ptr nocapture noundef readonly %hdev, i32 noundef %q_idx, ptr nocapture noundef %hw_sob, i32 noundef %count, i1 noundef zeroext %encaps_sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_sob, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %2 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kernel_queues, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %hw_sob_get.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %entry
  %kref.i = getelementptr inbounds %struct.hl_hw_sob, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !399

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.hw_sob_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.hw_sob_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hw_sob_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %hw_sob_get.exit

hw_sob_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.hw_sob_get.exit_crit_edge
  %next_sob_val = getelementptr %struct.hl_hw_queue, ptr %3, i32 %q_idx, i32 1, i32 1
  %6 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_sob_val, align 4
  %conv = zext i16 %7 to i32
  %add = add i32 %conv, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp = icmp ugt i32 %add, 32767
  br i1 %cmp, label %if.then.i73.critedge, label %hw_sob_get.exit.if.else38_crit_edge

hw_sob_get.exit.if.else38_crit_edge:              ; preds = %hw_sob_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else38

hw_sob_get.exit.thread:                           ; preds = %entry
  %next_sob_val87 = getelementptr %struct.hl_hw_queue, ptr %3, i32 %q_idx, i32 1, i32 1
  %8 = ptrtoint ptr %next_sob_val87 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %next_sob_val87, align 4
  %conv88 = zext i16 %9 to i32
  %add89 = add i32 %conv88, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add89)
  %cmp90 = icmp ugt i32 %add89, 32767
  br i1 %cmp90, label %hw_sob_get.exit.thread.hw_sob_put_err.exit_crit_edge, label %hw_sob_get.exit.thread.if.else38_crit_edge

hw_sob_get.exit.thread.if.else38_crit_edge:       ; preds = %hw_sob_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else38

hw_sob_get.exit.thread.hw_sob_put_err.exit_crit_edge: ; preds = %hw_sob_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %hw_sob_put_err.exit

if.then.i73.critedge:                             ; preds = %hw_sob_get.exit
  %call.i.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i73.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i74 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i74, label %if.end5.i.i.i.i.i.hw_sob_put_err.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.hw_sob_put_err.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hw_sob_put_err.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %hw_sob_put_err.exit

if.then.i.i:                                      ; preds = %if.then.i73.critedge
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.hl_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %q_idx.i.i = getelementptr %struct.hl_hw_sob, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %q_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %q_idx.i.i, align 4
  %sob_id.i.i = getelementptr %struct.hl_hw_sob, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %sob_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sob_id.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %16, i32 noundef %18) #17
  br label %hw_sob_put_err.exit

hw_sob_put_err.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.hw_sob_put_err.exit_crit_edge, %hw_sob_get.exit.thread.hw_sob_put_err.exit_crit_edge
  %next_sob_val9296 = phi ptr [ %next_sob_val, %if.end5.i.i.i.i.i.hw_sob_put_err.exit_crit_edge ], [ %next_sob_val, %if.then10.i.i.i.i.i ], [ %next_sob_val, %if.then.i.i ], [ %next_sob_val87, %hw_sob_get.exit.thread.hw_sob_put_err.exit_crit_edge ]
  %sync_stream_prop97 = getelementptr %struct.hl_hw_queue, ptr %3, i32 %q_idx, i32 1
  %curr_sob_offset = getelementptr %struct.hl_hw_queue, ptr %3, i32 %q_idx, i32 1, i32 7
  %19 = ptrtoint ptr %curr_sob_offset to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %curr_sob_offset, align 2
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %idxprom = zext i8 %22 to i32
  %arrayidx6 = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop97, i32 0, i32 %idxprom
  %kref = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop97, i32 0, i32 %idxprom, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #14
  %23 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp7.not = icmp eq i32 %24, 1
  br i1 %cmp7.not, label %if.end, label %do.end

do.end:                                           ; preds = %hw_sob_put_err.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9, i32 noundef %q_idx) #17
  br label %cleanup

if.end:                                           ; preds = %hw_sob_put_err.exit
  %add11 = zext i1 %encaps_sig to i32
  %storemerge.in = add i32 %add11, %count
  %storemerge = trunc i32 %storemerge.in to i16
  %27 = ptrtoint ptr %next_sob_val9296 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %storemerge, ptr %next_sob_val9296, align 4
  %28 = ptrtoint ptr %curr_sob_offset to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %22, ptr %curr_sob_offset, align 2
  %29 = ptrtoint ptr %hw_sob to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx6, ptr %hw_sob, align 4
  %need_reset = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop97, i32 0, i32 %idxprom, i32 5
  %30 = ptrtoint ptr %need_reset to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %need_reset, align 4, !range !400
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool18.not = icmp eq i8 %31, 0
  br i1 %tobool18.not, label %if.end.if.end20_crit_edge, label %if.then19

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hw_sob_put(ptr noundef %arrayidx6)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end.if.end20_crit_edge
  br i1 %encaps_sig, label %if.then22, label %if.end20.do.body25_crit_edge

if.end20.do.body25_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

if.then22:                                        ; preds = %if.end20
  %need_reset23 = getelementptr inbounds %struct.hl_hw_sob, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %need_reset23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %need_reset23, align 4
  %tobool.not.i75 = icmp eq ptr %arrayidx6, null
  br i1 %tobool.not.i75, label %if.then22.do.body25_crit_edge, label %if.then.i80

if.then22.do.body25_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

if.then.i80:                                      ; preds = %if.then22
  %call.i.i.i.i.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i78 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i78)
  %tobool1.not.i.i.i.i.i79 = icmp eq i32 %asmresult.i.i.i.i.i.i.i78, 0
  br i1 %tobool1.not.i.i.i.i.i79, label %if.then.i80.if.end15.sink.split.i.i.i.i.i85_crit_edge, label %if.else.i.i.i.i.i83, !prof !399

if.then.i80.if.end15.sink.split.i.i.i.i.i85_crit_edge: ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i85

if.else.i.i.i.i.i83:                              ; preds = %if.then.i80
  %add.i.i.i.i.i81 = add i32 %asmresult.i.i.i.i.i.i.i78, 1
  %34 = or i32 %add.i.i.i.i.i81, %asmresult.i.i.i.i.i.i.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i82 = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i82, label %if.else.i.i.i.i.i83.do.body25_crit_edge, label %if.else.i.i.i.i.i83.if.end15.sink.split.i.i.i.i.i85_crit_edge, !prof !395

if.else.i.i.i.i.i83.if.end15.sink.split.i.i.i.i.i85_crit_edge: ; preds = %if.else.i.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i85

if.else.i.i.i.i.i83.do.body25_crit_edge:          ; preds = %if.else.i.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

if.end15.sink.split.i.i.i.i.i85:                  ; preds = %if.else.i.i.i.i.i83.if.end15.sink.split.i.i.i.i.i85_crit_edge, %if.then.i80.if.end15.sink.split.i.i.i.i.i85_crit_edge
  %.sink.i.i.i.i.i84 = phi i32 [ 2, %if.then.i80.if.end15.sink.split.i.i.i.i.i85_crit_edge ], [ 1, %if.else.i.i.i.i.i83.if.end15.sink.split.i.i.i.i.i85_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i.i84) #14
  br label %do.body25

do.body25:                                        ; preds = %if.end15.sink.split.i.i.i.i.i85, %if.else.i.i.i.i.i83.do.body25_crit_edge, %if.then22.do.body25_crit_edge, %if.end20.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_cs_signal_sob_wraparound_handler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_cs_signal_sob_wraparound_handler, %if.then31)) #14
          to label %cleanup [label %if.then31], !srcloc !397

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  %dev32 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev32, align 4
  %37 = ptrtoint ptr %curr_sob_offset to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %curr_sob_offset, align 2
  %conv34 = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_cs_signal_sob_wraparound_handler.__UNIQUE_ID_ddebug302, ptr noundef %36, ptr noundef nonnull @.str.13, i32 noundef %conv34, i32 noundef %q_idx) #14
  br label %cleanup

if.else38:                                        ; preds = %hw_sob_get.exit.thread.if.else38_crit_edge, %hw_sob_get.exit.if.else38_crit_edge
  %add93 = phi i32 [ %add89, %hw_sob_get.exit.thread.if.else38_crit_edge ], [ %add, %hw_sob_get.exit.if.else38_crit_edge ]
  %next_sob_val91 = phi ptr [ %next_sob_val87, %hw_sob_get.exit.thread.if.else38_crit_edge ], [ %next_sob_val, %hw_sob_get.exit.if.else38_crit_edge ]
  %conv42 = trunc i32 %add93 to i16
  %39 = ptrtoint ptr %next_sob_val91 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv42, ptr %next_sob_val91, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then31, %do.body25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then31 ], [ 0, %if.else38 ], [ 0, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_cs_ioctl(ptr noundef %hpriv, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %cs_seq = alloca i64, align 8
  %signals_count = alloca i32, align 4
  %sob_addr = alloca i32, align 4
  %handle_id = alloca i32, align 4
  %sob_initial_count = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cs_seq) #14
  %0 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967295, ptr %cs_seq, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %signals_count) #14
  %1 = ptrtoint ptr %signals_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %signals_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sob_addr) #14
  %2 = ptrtoint ptr %sob_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sob_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle_id) #14
  %3 = ptrtoint ptr %handle_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %handle_id, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sob_initial_count) #14
  %4 = ptrtoint ptr %sob_initial_count to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %sob_initial_count, align 2
  %5 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hpriv, align 4
  %ctx2.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %7 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #14
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status.i, align 4, !annotation !403
  %call.i = call zeroext i1 @hl_device_operational(ptr noundef %6, ptr noundef nonnull %status.i) #14
  br i1 %call.i, label %if.end.i80, label %entry.if.then28.thread_crit_edge

entry.if.then28.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.thread

if.end.i80:                                       ; preds = %entry
  %cs_flags.i = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 6
  %10 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cs_flags.i, align 4
  %and.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i80.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i80.if.end5.i_crit_edge:                   ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i80
  %supports_staged_submission.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 100
  %12 = ptrtoint ptr %supports_staged_submission.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %supports_staged_submission.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.23) #17
  br label %if.then28.thread

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i80.if.end5.i_crit_edge
  %and7.i = and i32 %11, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end5.i
  %16 = call i32 @llvm.ctpop.i32(i32 %and7.i) #14, !range !404
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp1.i.i = icmp ugt i32 %16, 1
  br i1 %cmp1.i.i, label %do.end16.i, label %land.rhs20.i, !prof !399

do.end16.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev17.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 6
  %17 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17.i, align 4
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %8, i32 0, i32 21
  %19 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %asid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.26, i32 noundef %20) #17
  br label %if.then28.thread

land.rhs20.i:                                     ; preds = %land.rhs.i
  %supports_sync_stream.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 93
  %21 = ptrtoint ptr %supports_sync_stream.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %supports_sync_stream.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not.i = icmp eq i8 %22, 0
  br i1 %tobool21.not.i, label %do.end34.i, label %if.else.i81, !prof !399

do.end34.i:                                       ; preds = %land.rhs20.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev35.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 6
  %23 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev35.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.29) #17
  br label %if.then28.thread

if.then38.i:                                      ; preds = %if.end5.i
  %num_chunks_execute.i = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %num_chunks_execute.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_chunks_execute.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not.i = icmp eq i32 %26, 0
  br i1 %tobool39.not.i, label %do.end43.i, label %if.then38.i.if.end_crit_edge

if.then38.i.if.end_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end43.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev44.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 6
  %27 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev44.i, align 4
  %asid45.i = getelementptr inbounds %struct.hl_ctx, ptr %8, i32 0, i32 21
  %29 = ptrtoint ptr %asid45.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %asid45.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32, i32 noundef %30) #17
  br label %if.then28.thread

if.else.i81:                                      ; preds = %land.rhs20.i
  %num_chunks_execute84.i = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 4
  %31 = ptrtoint ptr %num_chunks_execute84.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_chunks_execute84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp47.not.i = icmp eq i32 %32, 1
  br i1 %cmp47.not.i, label %if.else.i81.if.end_crit_edge, label %do.end51.i

if.else.i81.if.end_crit_edge:                     ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end51.i:                                       ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #16
  %dev52.i = getelementptr inbounds %struct.hl_device, ptr %6, i32 0, i32 6
  %33 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev52.i, align 4
  %asid53.i = getelementptr inbounds %struct.hl_ctx, ptr %8, i32 0, i32 21
  %35 = ptrtoint ptr %asid53.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %asid53.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.35, i32 noundef %36) #17
  br label %if.then28.thread

if.then28.thread:                                 ; preds = %do.end51.i, %do.end43.i, %do.end34.i, %do.end16.i, %do.end.i, %entry.if.then28.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ -16, %entry.if.then28.thread_crit_edge ], [ -1, %do.end.i ], [ -22, %do.end51.i ], [ -22, %do.end43.i ], [ -22, %do.end34.i ], [ -22, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #14
  %37 = getelementptr inbounds i8, ptr %data, i32 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 40)
  br label %sw.bb33

if.end:                                           ; preds = %if.else.i81.if.end_crit_edge, %if.then38.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #14
  %call1 = call fastcc i32 @hl_cs_ctx_switch(ptr noundef %hpriv, ptr noundef %data, ptr noundef nonnull %cs_seq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  %39 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cs_flags.i, align 4
  %and.i83 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %if.else.i85, label %if.end4.hl_cs_get_cs_type.exit_crit_edge

if.end4.hl_cs_get_cs_type.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_cs_get_cs_type.exit

if.else.i85:                                      ; preds = %if.end4
  %and1.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i85.hl_cs_get_cs_type.exit_crit_edge

if.else.i85.hl_cs_get_cs_type.exit_crit_edge:     ; preds = %if.else.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_cs_get_cs_type.exit

if.else4.i:                                       ; preds = %if.else.i85
  %and5.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.else4.i.hl_cs_get_cs_type.exit_crit_edge

if.else4.i.hl_cs_get_cs_type.exit_crit_edge:      ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_cs_get_cs_type.exit

if.else8.i:                                       ; preds = %if.else4.i
  %and9.i = and i32 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else12.i, label %if.else8.i.hl_cs_get_cs_type.exit_crit_edge

if.else8.i.hl_cs_get_cs_type.exit_crit_edge:      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_cs_get_cs_type.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #16
  %and13.i = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %..i = select i1 %tobool14.not.i, i32 0, i32 5
  br label %hl_cs_get_cs_type.exit

hl_cs_get_cs_type.exit:                           ; preds = %if.else12.i, %if.else8.i.hl_cs_get_cs_type.exit_crit_edge, %if.else4.i.hl_cs_get_cs_type.exit_crit_edge, %if.else.i85.hl_cs_get_cs_type.exit_crit_edge, %if.end4.hl_cs_get_cs_type.exit_crit_edge
  %retval.0.i86 = phi i32 [ 1, %if.end4.hl_cs_get_cs_type.exit_crit_edge ], [ 2, %if.else.i85.hl_cs_get_cs_type.exit_crit_edge ], [ 3, %if.else4.i.hl_cs_get_cs_type.exit_crit_edge ], [ 4, %if.else8.i.hl_cs_get_cs_type.exit_crit_edge ], [ %..i, %if.else12.i ]
  %chunks_execute = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 1
  %41 = ptrtoint ptr %chunks_execute to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %chunks_execute, align 8
  %conv = trunc i64 %42 to i32
  %43 = inttoptr i32 %conv to ptr
  %num_chunks_execute = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 4
  %44 = ptrtoint ptr %num_chunks_execute to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_chunks_execute, align 4
  %46 = and i32 %40, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %46)
  %47 = icmp eq i32 %46, 64
  br i1 %47, label %if.then11, label %hl_cs_get_cs_type.exit.if.end12_crit_edge

hl_cs_get_cs_type.exit.if.end12_crit_edge:        ; preds = %hl_cs_get_cs_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %hl_cs_get_cs_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  %48 = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %48, align 8
  %51 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %cs_seq, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %hl_cs_get_cs_type.exit.if.end12_crit_edge
  %and13 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cond.false, label %if.else.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %timeout15 = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 5
  %52 = ptrtoint ptr %timeout15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %timeout15, align 8
  %mul = mul i32 %53, 1000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #14
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hpriv, align 4
  %timeout_jiffies = getelementptr inbounds %struct.hl_device, ptr %55, i32 0, i32 62
  %56 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %timeout_jiffies, align 8
  %extract.t79 = trunc i64 %57 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else.i
  %cond.off0 = phi i32 [ %extract.t79, %cond.false ], [ %call2.i, %if.else.i ]
  %58 = zext i32 %retval.0.i86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %retval.0.i86, label %sw.default [
    i32 1, label %cond.end.sw.bb_crit_edge
    i32 2, label %cond.end.sw.bb_crit_edge99
    i32 3, label %cond.end.sw.bb_crit_edge100
    i32 4, label %sw.bb21
    i32 5, label %sw.bb23
  ]

cond.end.sw.bb_crit_edge100:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

cond.end.sw.bb_crit_edge99:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

cond.end.sw.bb_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %cond.end.sw.bb_crit_edge, %cond.end.sw.bb_crit_edge99, %cond.end.sw.bb_crit_edge100
  %59 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cs_flags.i, align 4
  %call20 = call fastcc i32 @cs_ioctl_signal_wait(ptr noundef %hpriv, i32 noundef %retval.0.i86, ptr noundef %43, i32 noundef %45, ptr noundef nonnull %cs_seq, i32 noundef %60, i32 noundef %cond.off0, ptr noundef nonnull %sob_addr, ptr noundef nonnull %sob_initial_count)
  br label %out

sw.bb21:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %61 = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 2
  %encaps_signals_q_idx = getelementptr inbounds %struct.anon.102, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %encaps_signals_q_idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %encaps_signals_q_idx, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 8
  %call22 = call fastcc i32 @cs_ioctl_reserve_signals(ptr noundef %hpriv, i32 noundef %63, i32 noundef %65, ptr noundef nonnull %handle_id, ptr noundef nonnull %sob_addr, ptr noundef nonnull %signals_count)
  br label %out

sw.bb23:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %66 = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %call24 = call fastcc i32 @cs_ioctl_unreserve_signals(ptr noundef %hpriv, i32 noundef %68)
  br label %out

sw.default:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cs_flags.i, align 4
  %71 = getelementptr inbounds %struct.hl_cs_in, ptr %data, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %call26 = call fastcc i32 @cs_ioctl_default(ptr noundef %hpriv, ptr noundef %43, i32 noundef %45, ptr noundef nonnull %cs_seq, i32 noundef %70, i32 noundef %73, i32 noundef %cond.off0, ptr noundef nonnull %sob_initial_count)
  br label %out

out:                                              ; preds = %sw.default, %sw.bb23, %sw.bb21, %sw.bb, %if.end.out_crit_edge
  %cs_type.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %sw.default ], [ 5, %sw.bb23 ], [ 4, %sw.bb21 ], [ %retval.0.i86, %sw.bb ]
  %rc.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %call26, %sw.default ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp.not = icmp eq i32 %rc.0, -11
  br i1 %cmp.not, label %out.if.end37_crit_edge, label %if.then28

out.if.end37_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then28:                                        ; preds = %out
  %74 = call ptr @memset(ptr %data, i32 0, i32 48)
  %75 = zext i32 %cs_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %cs_type.0, label %sw.default35 [
    i32 4, label %sw.bb29
    i32 1, label %sw.bb31
    i32 0, label %if.then28.sw.bb33_crit_edge
  ]

if.then28.sw.bb33_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33

sw.bb29:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %handle_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %handle_id, align 4
  %78 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %data, align 8
  %79 = ptrtoint ptr %sob_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sob_addr, align 4
  %sob_base_addr_offset = getelementptr inbounds %struct.hl_cs_out, ptr %data, i32 0, i32 2
  %81 = ptrtoint ptr %sob_base_addr_offset to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %sob_base_addr_offset, align 4
  %82 = ptrtoint ptr %signals_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %signals_count, align 4
  %count = getelementptr inbounds %struct.anon.104, ptr %data, i32 0, i32 1
  %84 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %count, align 4
  br label %sw.epilog36

sw.bb31:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %sob_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sob_addr, align 4
  %sob_base_addr_offset32 = getelementptr inbounds %struct.hl_cs_out, ptr %data, i32 0, i32 2
  %87 = ptrtoint ptr %sob_base_addr_offset32 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %sob_base_addr_offset32, align 4
  %88 = ptrtoint ptr %sob_initial_count to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sob_initial_count, align 2
  %sob_count_before_submission = getelementptr inbounds %struct.hl_cs_out, ptr %data, i32 0, i32 3
  %90 = ptrtoint ptr %sob_count_before_submission to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %sob_count_before_submission, align 8
  %91 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %cs_seq, align 8
  %93 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %data, align 8
  br label %sw.epilog36

sw.bb33:                                          ; preds = %if.then28.sw.bb33_crit_edge, %if.then28.thread
  %rc.09398 = phi i32 [ %retval.0.i82.ph, %if.then28.thread ], [ %rc.0, %if.then28.sw.bb33_crit_edge ]
  %94 = ptrtoint ptr %sob_initial_count to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sob_initial_count, align 2
  %sob_count_before_submission34 = getelementptr inbounds %struct.hl_cs_out, ptr %data, i32 0, i32 3
  %96 = ptrtoint ptr %sob_count_before_submission34 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %sob_count_before_submission34, align 8
  %97 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %cs_seq, align 8
  %99 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %data, align 8
  br label %sw.epilog36

sw.default35:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %cs_seq, align 8
  %102 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %data, align 8
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.default35, %sw.bb33, %sw.bb31, %sw.bb29
  %rc.09397 = phi i32 [ %rc.0, %sw.default35 ], [ %rc.09398, %sw.bb33 ], [ %rc.0, %sw.bb31 ], [ %rc.0, %sw.bb29 ]
  %status = getelementptr inbounds %struct.hl_cs_out, ptr %data, i32 0, i32 1
  %103 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %rc.09397, ptr %status, align 8
  br label %if.end37

if.end37:                                         ; preds = %sw.epilog36, %out.if.end37_crit_edge
  %rc.094 = phi i32 [ %rc.09397, %sw.epilog36 ], [ -11, %out.if.end37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sob_initial_count) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle_id) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sob_addr) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %signals_count) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cs_seq) #14
  ret i32 %rc.094
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_cs_ctx_switch(ptr noundef %hpriv, ptr nocapture noundef readonly %args, ptr nocapture noundef %cs_seq) unnamed_addr #0 align 64 {
entry:
  %sob_count = alloca i16, align 2
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %ctx2 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sob_count) #14
  %4 = ptrtoint ptr %sob_count to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %sob_count, align 2, !annotation !403
  %thread_ctx_switch_token = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_ctx_switch_token, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !405
  tail call void @llvm.prefetch.p0(ptr %thread_ctx_switch_token, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %thread_ctx_switch_token, ptr %thread_ctx_switch_token, i32 1, i32 0, ptr elementtype(i32) %thread_ctx_switch_token) #14, !srcloc !406
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %atomic_cmpxchg.exit
  %cs_flags = getelementptr inbounds %struct.hl_cs_in, ptr %args, i32 0, i32 6
  %6 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else69, label %if.then.thread

if.then.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %restore_phase_mutex210 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %restore_phase_mutex210, i32 noundef 0) #14
  br label %if.end22

if.then5:                                         ; preds = %atomic_cmpxchg.exit
  %restore_phase_mutex = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %restore_phase_mutex, i32 noundef 0) #14
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 8
  %context_switch = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %context_switch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context_switch, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asid, align 8
  %call6 = tail call i32 %11(ptr noundef %1, i32 noundef %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end22_crit_edge, label %do.body

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.body:                                          ; preds = %if.then5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_cs_ctx_switch._rs, ptr noundef nonnull @__func__.hl_cs_ctx_switch) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.do.end15_crit_edge, label %do.end

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %17, i32 noundef %call6) #17
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call6)
  %switch.selectcmp.case1 = icmp eq i32 %call6, -110
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call6)
  %switch.selectcmp.case2 = icmp eq i32 %call6, -16
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  tail call void @mutex_unlock(ptr noundef %restore_phase_mutex) #14
  br label %out

if.end22:                                         ; preds = %if.then5.if.end22_crit_edge, %if.then.thread
  %restore_phase_mutex211 = phi ptr [ %restore_phase_mutex210, %if.then.thread ], [ %restore_phase_mutex, %if.then5.if.end22_crit_edge ]
  %asic_funcs23 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %18 = ptrtoint ptr %asic_funcs23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs23, align 8
  %restore_phase_topology = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %restore_phase_topology to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %restore_phase_topology, align 4
  tail call void %21(ptr noundef %1) #14
  %num_chunks_restore = getelementptr inbounds %struct.hl_cs_in, ptr %args, i32 0, i32 3
  %22 = ptrtoint ptr %num_chunks_restore to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_chunks_restore, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  br i1 %tobool24.not, label %do.body26, label %if.end39.thread215

do.body26:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_cs_ctx_switch.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_cs_ctx_switch, %if.end48.thread)) #14
          to label %if.end48 [label %if.end48.thread], !srcloc !397

if.end48.thread:                                  ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  %dev33 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_cs_ctx_switch.__UNIQUE_ID_ddebug299, ptr noundef %25, ptr noundef nonnull @.str.38) #14
  tail call void @mutex_unlock(ptr noundef %restore_phase_mutex211) #14
  br label %if.end68

if.end39.thread215:                               ; preds = %if.end22
  %26 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %args, align 8
  %conv = trunc i64 %27 to i32
  %28 = inttoptr i32 %conv to ptr
  %timeout_jiffies = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 62
  %29 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %timeout_jiffies, align 8
  %conv37 = trunc i64 %30 to i32
  %call38 = call fastcc i32 @cs_ioctl_default(ptr noundef %hpriv, ptr noundef %28, i32 noundef %23, ptr noundef %cs_seq, i32 noundef 0, i32 noundef 0, i32 noundef %conv37, ptr noundef nonnull %sob_count)
  tail call void @mutex_unlock(ptr noundef %restore_phase_mutex211) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool41.not217 = icmp eq i32 %call38, 0
  br i1 %tobool41.not217, label %if.then50, label %do.end45

do.end45:                                         ; preds = %if.end39.thread215
  call void @__sanitizer_cov_trace_pc() #16
  %dev46 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev46, align 4
  %asid47 = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 21
  %33 = ptrtoint ptr %asid47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %asid47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.40, i32 noundef %34, i32 noundef %call38) #17
  br label %out

if.end48:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %restore_phase_mutex211) #14
  br label %if.end68

if.then50:                                        ; preds = %if.end39.thread215
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #14
  br label %wait_again

wait_again:                                       ; preds = %if.then60, %if.then50
  %35 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %timeout_jiffies, align 8
  %conv52 = trunc i64 %36 to i32
  %call53 = tail call i32 @jiffies_to_usecs(i32 noundef %conv52) #14
  %conv54 = zext i32 %call53 to i64
  %37 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cs_seq, align 8
  %call55 = call fastcc i32 @_hl_cs_wait_ioctl(ptr noundef %1, ptr noundef %3, i64 noundef %conv54, i64 noundef %38, ptr noundef nonnull %status, ptr noundef null)
  %39 = zext i32 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %call55, label %cleanup [
    i32 0, label %cleanup.thread
    i32 -512, label %if.then60
  ]

cleanup.thread:                                   ; preds = %wait_again
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #14
  br label %if.end68

if.then60:                                        ; preds = %wait_again
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #14
  br label %wait_again

cleanup:                                          ; preds = %wait_again
  call void @__sanitizer_cov_trace_pc() #16
  %dev65 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev65, align 4
  %asid66 = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 21
  %42 = ptrtoint ptr %asid66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asid66, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.43, i32 noundef %43, i32 noundef %call55) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #14
  br label %cleanup145

if.end68:                                         ; preds = %cleanup.thread, %if.end48, %if.end48.thread
  %thread_ctx_switch_wait_token = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 20
  %44 = ptrtoint ptr %thread_ctx_switch_wait_token to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %thread_ctx_switch_wait_token, align 4
  br label %cleanup145

if.else69:                                        ; preds = %lor.lhs.false
  %thread_ctx_switch_wait_token70 = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 20
  %45 = ptrtoint ptr %thread_ctx_switch_wait_token70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %thread_ctx_switch_wait_token70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool71.not = icmp eq i32 %46, 0
  br i1 %tobool71.not, label %if.then72, label %if.else69.cleanup145_crit_edge

if.else69.cleanup145_crit_edge:                   ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.then72:                                        ; preds = %if.else69
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %tobool73.not = icmp eq ptr %48, null
  %call82 = tail call i64 @ktime_get() #14
  %timeout_jiffies83 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 62
  %49 = ptrtoint ptr %timeout_jiffies83 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %timeout_jiffies83, align 8
  %conv84 = trunc i64 %50 to i32
  %call85 = tail call i32 @jiffies_to_usecs(i32 noundef %conv84) #14
  %mul = mul i32 %call85, 10
  %51 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %.sink = select i1 %tobool73.not, i32 %51, i32 %call85
  %cond = zext i32 %.sink to i64
  %mul.i207 = mul nuw nsw i64 %cond, 1000
  %add.i208 = add i64 %mul.i207, %call82
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1547) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !408
  tail call void @arm_heavy_mb() #14
  %52 = ptrtoint ptr %thread_ctx_switch_wait_token70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %thread_ctx_switch_wait_token70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp105236 = icmp eq i32 %53, 1
  br i1 %cmp105236, label %if.then72.cleanup145_crit_edge, label %if.end108.lr.ph

if.then72.cleanup145_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.end108.lr.ph:                                  ; preds = %if.then72
  %timeout_jiffies109 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 62
  br label %if.end108

if.end108:                                        ; preds = %if.end119.if.end108_crit_edge, %if.end108.lr.ph
  %54 = ptrtoint ptr %timeout_jiffies109 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %timeout_jiffies109, align 8
  %conv110 = trunc i64 %55 to i32
  %call111 = tail call i32 @jiffies_to_usecs(i32 noundef %conv110) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end108.if.end119_crit_edge, label %land.lhs.true

if.end108.if.end119_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

land.lhs.true:                                    ; preds = %if.end108
  %call113 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call113, i64 %add.i208)
  %cmp3.i = icmp sgt i64 %call113, %add.i208
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end119_crit_edge

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.end119:                                        ; preds = %land.lhs.true.if.end119_crit_edge, %if.end108.if.end119_crit_edge
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !408
  tail call void @arm_heavy_mb() #14
  %56 = ptrtoint ptr %thread_ctx_switch_wait_token70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %thread_ctx_switch_wait_token70, align 4
  %cmp105 = icmp eq i32 %57, 1
  br i1 %cmp105, label %if.end119.cleanup145_crit_edge, label %if.end119.if.end108_crit_edge

if.end119.if.end108_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.end119.cleanup145_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

for.end:                                          ; preds = %land.lhs.true
  %58 = ptrtoint ptr %thread_ctx_switch_wait_token70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %thread_ctx_switch_wait_token70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp121 = icmp eq i32 %59, 1
  br i1 %cmp121, label %for.end.cleanup145_crit_edge, label %land.lhs.true139.thread

for.end.cleanup145_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

land.lhs.true139.thread:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev130 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev130, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.46, i32 noundef %59) #17
  br label %cleanup145

out:                                              ; preds = %do.end45, %do.end15
  %rc.3 = phi i32 [ %call6, %do.end15 ], [ %call38, %do.end45 ]
  %need_soft_reset.1.off0 = phi i1 [ %switch.selectcmp, %do.end15 ], [ false, %do.end45 ]
  %62 = zext i32 %rc.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %rc.3, label %out.cleanup145_crit_edge [
    i32 -110, label %out.land.lhs.true139_crit_edge
    i32 -16, label %out.land.lhs.true139_crit_edge244
  ]

out.land.lhs.true139_crit_edge244:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true139

out.land.lhs.true139_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true139

out.cleanup145_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

land.lhs.true139:                                 ; preds = %out.land.lhs.true139_crit_edge, %out.land.lhs.true139_crit_edge244
  br i1 %need_soft_reset.1.off0, label %if.then142, label %land.lhs.true139.cleanup145_crit_edge

land.lhs.true139.cleanup145_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.then142:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #16
  %call143 = tail call i32 @hl_device_reset(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup145

cleanup145:                                       ; preds = %if.then142, %land.lhs.true139.cleanup145_crit_edge, %out.cleanup145_crit_edge, %land.lhs.true139.thread, %for.end.cleanup145_crit_edge, %if.end119.cleanup145_crit_edge, %if.then72.cleanup145_crit_edge, %if.else69.cleanup145_crit_edge, %if.end68, %cleanup
  %rc.3227 = phi i32 [ %rc.3, %land.lhs.true139.cleanup145_crit_edge ], [ %rc.3, %if.then142 ], [ %rc.3, %out.cleanup145_crit_edge ], [ -110, %land.lhs.true139.thread ], [ 0, %if.else69.cleanup145_crit_edge ], [ 0, %if.end68 ], [ -8, %cleanup ], [ 0, %if.then72.cleanup145_crit_edge ], [ 0, %for.end.cleanup145_crit_edge ], [ 0, %if.end119.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sob_count) #14
  ret i32 %rc.3227
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_ioctl_signal_wait(ptr nocapture noundef readonly %hpriv, i32 noundef %cs_type, ptr noundef %chunks, i32 noundef %num_chunks, ptr nocapture noundef writeonly %cs_seq, i32 noundef %flags, i32 noundef %timeout, ptr nocapture noundef writeonly %signal_sob_addr_offset, ptr nocapture noundef writeonly %signal_initial_sob_count) unnamed_addr #0 align 64 {
entry:
  %cs_chunk_array = alloca ptr, align 4
  %cs = alloca ptr, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_chunk_array) #14
  %0 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cs_chunk_array, align 4, !annotation !403
  %1 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hpriv, align 4
  %ctx2 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %3 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #14
  %5 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %cs, align 4, !annotation !403
  %6 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %cs_seq, align 8
  %call = call fastcc i32 @hl_cs_copy_chunk_array(ptr noundef %2, ptr noundef nonnull %cs_chunk_array, ptr noundef %chunks, i32 noundef %num_chunks, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup195_crit_edge

entry.cleanup195_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cs_chunk_array, align 4
  %queue_index = getelementptr inbounds %struct.hl_cs_chunk, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_index, align 8
  %max_queues = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 49
  %11 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ult i32 %10, %12
  br i1 %cmp.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt) #14
  %validation_drop_cnt4 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i334 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt4, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt4) #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_index, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51, i32 noundef %16) #17
  br label %if.end194

if.end6:                                          ; preds = %if.end
  %asic_prop = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33
  %17 = ptrtoint ptr %asic_prop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_prop, align 8
  %arrayidx9 = getelementptr %struct.hw_queue_properties, ptr %18, i32 %10
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9, align 4
  %supports_sync_stream = getelementptr %struct.hw_queue_properties, ptr %18, i32 %10, i32 4
  %21 = ptrtoint ptr %supports_sync_stream to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %supports_sync_stream, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %tobool10.not, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt13 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i335 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt13, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt13) #14
  %validation_drop_cnt14 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i336 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt14, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt14) #14
  %dev18 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %23 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.54, i32 noundef %10) #17
  br label %if.end194

if.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cs_type)
  %cmp20 = icmp eq i32 %cs_type, 3
  br i1 %cmp20, label %if.then21, label %if.end43

if.then21:                                        ; preds = %if.end19
  %collective_mode = getelementptr %struct.hw_queue_properties, ptr %18, i32 %10, i32 2
  %25 = ptrtoint ptr %collective_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %collective_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp22 = icmp eq i32 %26, 1
  br i1 %cmp22, label %if.end31, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt25 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i337 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt25, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt25) #14
  %validation_drop_cnt26 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i338 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt26, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt26) #14
  %dev30 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.51, i32 noundef %10) #17
  br label %if.end194

if.end31:                                         ; preds = %if.then21
  %nic_ports_mask = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 105
  %29 = ptrtoint ptr %nic_ports_mask to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %nic_ports_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool32.not = icmp eq i64 %30, 0
  br i1 %tobool32.not, label %if.then33, label %if.end43.thread

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt35 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i339 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt35, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt35) #14
  %validation_drop_cnt36 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i340 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt36, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt36) #14
  %dev40 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %31 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.59) #17
  br label %if.end194

if.end43.thread:                                  ; preds = %if.end31
  %collective_engine_id42 = getelementptr inbounds %struct.hl_cs_chunk, ptr %8, i32 0, i32 4
  %33 = ptrtoint ptr %collective_engine_id42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %collective_engine_id42, align 4
  %and369 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369)
  %tobool47370.not = icmp eq i32 %and369, 0
  br i1 %tobool47370.not, label %if.end43.thread.if.end.i_crit_edge, label %if.end43.thread.if.then59_crit_edge

if.end43.thread.if.then59_crit_edge:              ; preds = %if.end43.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.end43.thread.if.end.i_crit_edge:               ; preds = %if.end43.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end43:                                         ; preds = %if.end19
  %35 = and i32 %cs_type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %36 = icmp eq i32 %35, 2
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47 = icmp ne i32 %and, 0
  br i1 %36, label %if.then52, label %if.end134.thread

if.then52:                                        ; preds = %if.end43
  br i1 %tobool47, label %if.then52.if.then59_crit_edge, label %if.then52.if.end.i_crit_edge

if.then52.if.end.i_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then52.if.then59_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.end.i:                                         ; preds = %if.then52.if.end.i_crit_edge, %if.end43.thread.if.end.i_crit_edge
  %collective_engine_id.0374391 = phi i32 [ %34, %if.end43.thread.if.end.i_crit_edge ], [ 0, %if.then52.if.end.i_crit_edge ]
  %37 = getelementptr inbounds %struct.hl_cs_chunk, ptr %8, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 1
  br i1 %cmp.not.i, label %if.end3.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt.i = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt.i) #14
  %validation_drop_cnt2.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt2.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt2.i) #14
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.82) #17
  br label %if.end194

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 2592, i32 noundef 8) #19
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i, label %if.end3.i.if.end13.i_crit_edge

if.end3.i.if.end13.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.end7.i:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i58.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 8) #19
  %tobool8.not.i = icmp eq ptr %call7.i.i58.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %cs_counters10.i = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters10.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters10.i) #14
  %aggregated_cs_counters11.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50
  %call.i.i50.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters11.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters11.i) #14
  br label %if.end194

if.end13.i:                                       ; preds = %if.end7.i.if.end13.i_crit_edge, %if.end3.i.if.end13.i_crit_edge
  %signal_seq_arr.061.i = phi ptr [ %call7.i.i58.i, %if.end7.i.if.end13.i_crit_edge ], [ %call7.i.i.i, %if.end3.i.if.end13.i_crit_edge ]
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %8, align 8
  %conv16.i = trunc i64 %45 to i32
  %46 = inttoptr i32 %conv16.i to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #14
  %call.i.i51.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i51.i, label %if.end13.i.cs_ioctl_extract_signal_seq.exit_crit_edge, label %land.lhs.true.i.i.i

if.end13.i.cs_ioctl_extract_signal_seq.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_ioctl_extract_signal_seq.exit

land.lhs.true.i.i.i:                              ; preds = %if.end13.i
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 8, i32 -1226833920) #18, !srcloc !409
  %asmresult.i.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge, !prof !395

land.lhs.true.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_ioctl_extract_signal_seq.exit

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %signal_seq_arr.061.i, i32 noundef 8) #14
  %48 = tail call i32 @llvm.read_register.i32(metadata !383) #14
  %and.i.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #13, !srcloc !410
  %and.i.i.i.i.i = and i32 %50, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %signal_seq_arr.061.i, ptr noundef %46, i32 noundef 8) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #14, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end57, label %if.end.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge, !prof !395

if.end.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_ioctl_extract_signal_seq.exit

cs_ioctl_extract_signal_seq.exit:                 ; preds = %if.end.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge, %land.lhs.true.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge, %if.end13.i.cs_ioctl_extract_signal_seq.exit_crit_edge
  %res.0.i.i65.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge ], [ 8, %if.end13.i.cs_ioctl_extract_signal_seq.exit_crit_edge ], [ 8, %land.lhs.true.i.i.i.cs_ioctl_extract_signal_seq.exit_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i65.i
  %add.ptr.i.i.i = getelementptr i8, ptr %signal_seq_arr.061.i, i32 %sub.i.i.i
  %51 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i65.i)
  %validation_drop_cnt21.i = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i52.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt21.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt21.i) #14
  %validation_drop_cnt23.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i53.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt23.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt23.i) #14
  %dev27.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %52 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev27.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.85) #17
  tail call void @kfree(ptr noundef nonnull %signal_seq_arr.061.i) #14
  br label %if.end194

if.end57:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %signal_seq_arr.061.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %signal_seq_arr.061.i, align 8
  tail call void @kfree(ptr noundef nonnull %signal_seq_arr.061.i) #14
  br label %if.end93

if.then59:                                        ; preds = %if.then52.if.then59_crit_edge, %if.end43.thread.if.then59_crit_edge
  %collective_engine_id.0374392 = phi i32 [ %34, %if.end43.thread.if.then59_crit_edge ], [ 0, %if.then52.if.then59_crit_edge ]
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #14
  %sig_mgr = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %sig_mgr) #14
  %handles = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 14, i32 1
  %58 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %id, align 4
  %call61471 = call ptr @idr_get_next(ptr noundef %handles, ptr noundef nonnull %id) #14
  %cmp62472.not = icmp eq ptr %call61471, null
  br i1 %cmp62472.not, label %if.then59.do.body71_crit_edge, label %if.then59.for.body_crit_edge

if.then59.for.body_crit_edge:                     ; preds = %if.then59
  br label %for.body

if.then59.do.body71_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body71

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then59.for.body_crit_edge
  %call61473 = phi ptr [ %call61, %for.inc.for.body_crit_edge ], [ %call61471, %if.then59.for.body_crit_edge ]
  %cs_seq63 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call61473, i32 0, i32 4
  %59 = ptrtoint ptr %cs_seq63 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %cs_seq63, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %57)
  %cmp64 = icmp eq i64 %60, %57
  br i1 %cmp64, label %if.end83, label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id, align 4
  %add = add i32 %62, 1
  store i32 %add, ptr %id, align 4
  %call61 = call ptr @idr_get_next(ptr noundef %handles, ptr noundef nonnull %id) #14
  %cmp62.not = icmp eq ptr %call61, null
  br i1 %cmp62.not, label %for.inc.do.body71_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.body71_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body71

do.body71:                                        ; preds = %for.inc.do.body71_crit_edge, %if.then59.do.body71_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sig_mgr) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_ioctl_signal_wait.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_ioctl_signal_wait, %if.then78)) #14
          to label %cleanup [label %if.then78], !srcloc !397

if.then78:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  %dev79 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %63 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev79, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_ioctl_signal_wait.__UNIQUE_ID_ddebug305, ptr noundef %64, ptr noundef nonnull @.str.61, i64 noundef %57) #14
  br label %cleanup.thread

if.end83:                                         ; preds = %for.body
  call fastcc void @kref_get(ptr noundef nonnull %call61473)
  call void @_raw_spin_unlock(ptr noundef %sig_mgr) #14
  %65 = getelementptr inbounds %struct.hl_cs_chunk, ptr %8, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %count = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call61473, i32 0, i32 8
  %68 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp84 = icmp ugt i32 %67, %69
  br i1 %cmp84, label %do.end88, label %cleanup.thread444

cleanup.thread444:                                ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  br label %if.end93

do.end88:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %dev89 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %70 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev89, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.63, i32 noundef %67, i32 noundef %69) #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end88, %if.then78
  %call61470 = phi ptr [ null, %if.then78 ], [ %call61473, %do.end88 ]
  %cmp62468 = phi i1 [ false, %if.then78 ], [ true, %do.end88 ]
  %rc.0.ph = phi i32 [ 0, %if.then78 ], [ -22, %do.end88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  br label %free_cs_chunk_array

cleanup:                                          ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  br label %if.end194

if.end93:                                         ; preds = %cleanup.thread444, %if.end57
  %collective_engine_id.0374390410431 = phi i32 [ %collective_engine_id.0374391, %if.end57 ], [ %collective_engine_id.0374392, %cleanup.thread444 ]
  %tobool47377384412427 = phi i1 [ false, %if.end57 ], [ true, %cleanup.thread444 ]
  %signal_seq.1400 = phi i64 [ %55, %if.end57 ], [ %57, %cleanup.thread444 ]
  %handle_found.1 = phi i8 [ 0, %if.end57 ], [ 1, %cleanup.thread444 ]
  %encaps_sig_hdl.0 = phi ptr [ null, %if.end57 ], [ %call61473, %cleanup.thread444 ]
  %call94 = call ptr @hl_ctx_get_fence(ptr noundef %4, i64 noundef %signal_seq.1400) #14
  %cmp.i = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then96, label %if.end105

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt98 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i341 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt98, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt98) #14
  %validation_drop_cnt99 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i342 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt99, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt99) #14
  %dev103 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %72 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev103, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.66, i64 noundef %signal_seq.1400) #17
  %74 = ptrtoint ptr %call94 to i32
  br label %free_cs_chunk_array

if.end105:                                        ; preds = %if.end93
  %tobool106.not = icmp eq ptr %call94, null
  br i1 %tobool106.not, label %if.end105.free_cs_chunk_array_crit_edge, label %if.end108

if.end105.free_cs_chunk_array_crit_edge:          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_chunk_array

if.end108:                                        ; preds = %if.end105
  %type110 = getelementptr inbounds %struct.hl_cs_compl, ptr %call94, i32 0, i32 6
  %75 = ptrtoint ptr %type110 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp111 = icmp eq i32 %76, 0
  %spec.select319 = and i1 %tobool47377384412427, %cmp111
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp120.not = icmp eq i32 %76, 1
  %brmerge = or i1 %cmp120.not, %spec.select319
  br i1 %brmerge, label %if.end130, label %if.then122

if.then122:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt124 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i343 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt124, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt124) #14
  %validation_drop_cnt125 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i344 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt125, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt125) #14
  %dev129 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %77 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.69, i64 noundef %signal_seq.1400) #17
  call void @hl_fence_put(ptr noundef nonnull %call94)
  br label %free_cs_chunk_array

if.end130:                                        ; preds = %if.end108
  %call131 = call zeroext i1 @completion_done(ptr noundef nonnull %call94) #14
  br i1 %call131, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  call void @hl_fence_put(ptr noundef nonnull %call94)
  br label %free_cs_chunk_array

if.end134:                                        ; preds = %if.end130
  %call135 = call fastcc i32 @allocate_cs(ptr noundef %2, ptr noundef %4, i32 noundef %cs_type, i64 noundef -1, ptr noundef nonnull %cs, i32 noundef %flags, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then143, label %if.then139

if.end134.thread:                                 ; preds = %if.end43
  %call135486 = call fastcc i32 @allocate_cs(ptr noundef %2, ptr noundef %4, i32 noundef %cs_type, i64 noundef -1, ptr noundef nonnull %cs, i32 noundef %flags, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135486)
  %tobool136.not487 = icmp eq i32 %call135486, 0
  br i1 %tobool136.not487, label %if.end134.thread.if.end148_crit_edge, label %if.end134.thread.if.end194_crit_edge

if.end134.thread.if.end194_crit_edge:             ; preds = %if.end134.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

if.end134.thread.if.end148_crit_edge:             ; preds = %if.end134.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.then139:                                       ; preds = %if.end134
  %cmp.i.i = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then139.free_cs_chunk_array_crit_edge, label %if.end.i348

if.then139.free_cs_chunk_array_crit_edge:         ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_chunk_array

if.end.i348:                                      ; preds = %if.then139
  %refcount.i = getelementptr inbounds %struct.hl_fence, ptr %call94, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_chunk_array

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %free_cs_chunk_array

if.then.i.i:                                      ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  call void @kfree(ptr noundef nonnull %call94) #14
  br label %free_cs_chunk_array

if.then143:                                       ; preds = %if.end134
  %80 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cs, align 4
  %signal_fence = getelementptr inbounds %struct.hl_cs, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %signal_fence to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call94, ptr %signal_fence, align 4
  %encaps_signals = getelementptr inbounds %struct.hl_cs, ptr %81, i32 0, i32 31
  %83 = ptrtoint ptr %encaps_signals to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %encaps_signals, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool144.not = icmp eq i8 %84, 0
  br i1 %tobool144.not, label %if.then143.if.end148_crit_edge, label %if.then145

if.then143.if.end148_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.then145:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #16
  %encaps_sig_hdl146 = getelementptr inbounds %struct.hl_cs, ptr %81, i32 0, i32 12
  %85 = ptrtoint ptr %encaps_sig_hdl146 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %encaps_sig_hdl.0, ptr %encaps_sig_hdl146, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.then143.if.end148_crit_edge, %if.end134.thread.if.end148_crit_edge
  %switch331379488524 = phi i1 [ true, %if.then143.if.end148_crit_edge ], [ true, %if.then145 ], [ false, %if.end134.thread.if.end148_crit_edge ]
  %tobool47378493522 = phi i1 [ %tobool47377384412427, %if.then143.if.end148_crit_edge ], [ %tobool47377384412427, %if.then145 ], [ %tobool47, %if.end134.thread.if.end148_crit_edge ]
  %collective_engine_id.0373494520 = phi i32 [ %collective_engine_id.0374390410431, %if.then143.if.end148_crit_edge ], [ %collective_engine_id.0374390410431, %if.then145 ], [ 0, %if.end134.thread.if.end148_crit_edge ]
  %handle_found.2497517 = phi i8 [ %handle_found.1, %if.then143.if.end148_crit_edge ], [ %handle_found.1, %if.then145 ], [ 0, %if.end134.thread.if.end148_crit_edge ]
  %encaps_sig_hdl.1501 = phi ptr [ %encaps_sig_hdl.0, %if.then143.if.end148_crit_edge ], [ %encaps_sig_hdl.0, %if.then145 ], [ null, %if.end134.thread.if.end148_crit_edge ]
  %86 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cs, align 4
  call void @hl_debugfs_add_cs(ptr noundef %87) #14
  %sequence = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 13
  %88 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sequence, align 8
  %90 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %cs_seq, align 8
  %cs_type.off332 = add i32 %cs_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cs_type.off332)
  %switch333 = icmp ult i32 %cs_type.off332, 2
  br i1 %switch333, label %if.then151, label %if.else

if.then151:                                       ; preds = %if.end148
  %91 = getelementptr inbounds %struct.hl_cs_chunk, ptr %8, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %aggregated_cs_counters.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50
  %call.i = call ptr @hl_cs_allocate_job(ptr noundef %2, i32 noundef %20, i1 noundef zeroext true) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i351, label %if.end.i353

if.then.i351:                                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #16
  %cs_counters.i = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12
  %call.i.i.i349 = call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters.i) #14
  %call.i.i75.i = call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters.i) #14
  %dev.i350 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %94 = ptrtoint ptr %dev.i350 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i350, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.111) #17
  br label %free_cs_object

if.end.i353:                                      ; preds = %if.then151
  %type.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 17
  %96 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp.i352 = icmp eq i32 %97, 2
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 34
  %98 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %asic_funcs.i, align 8
  %get_signal_cb_size.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %99, i32 0, i32 66
  %get_wait_cb_size.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %99, i32 0, i32 67
  %get_signal_cb_size.sink.i = select i1 %cmp.i352, ptr %get_wait_cb_size.i, ptr %get_signal_cb_size.i
  %100 = ptrtoint ptr %get_signal_cb_size.sink.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %get_signal_cb_size.sink.i, align 4
  %call5.i = call i32 %101(ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp7.i = icmp eq i32 %20, 4
  br i1 %cmp7.i, label %land.rhs.i, label %if.end.i353.land.end.i_crit_edge

if.end.i353.land.end.i_crit_edge:                 ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #16
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 107
  %102 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool8.i = icmp ne i8 %103, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i353.land.end.i_crit_edge
  %104 = phi i1 [ false, %if.end.i353.land.end.i_crit_edge ], [ %tobool8.i, %land.rhs.i ]
  %call9.i = call ptr @hl_cb_kernel_create(ptr noundef %2, i32 noundef %call5.i, i1 noundef zeroext %104) #14
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end15.i

if.then11.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %cs_counters12.i = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12
  %call.i.i76.i = call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters12.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters12.i) #14
  %call.i.i77.i = call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters.i) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %free_cs_object

if.end15.i:                                       ; preds = %land.end.i
  %id.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 9
  %105 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %id.i, align 4
  %cs16.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 1
  %106 = ptrtoint ptr %cs16.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %87, ptr %cs16.i, align 4
  %user_cb.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 2
  %107 = ptrtoint ptr %user_cb.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call9.i, ptr %user_cb.i, align 4
  %cs_cnt.i = getelementptr inbounds %struct.hl_cb, ptr %call9.i, i32 0, i32 12
  %call.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cs_cnt.i, i32 1, i32 3, i32 1) #14
  %108 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt.i, ptr %cs_cnt.i, i32 1, ptr elementtype(i32) %cs_cnt.i) #14, !srcloc !413
  %user_cb_size.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 11
  %109 = ptrtoint ptr %user_cb_size.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call5.i, ptr %user_cb_size.i, align 4
  %hw_queue_id.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 10
  %110 = ptrtoint ptr %hw_queue_id.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %10, ptr %hw_queue_id.i, align 4
  %111 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %type.i, align 8
  %113 = and i32 %112, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %switch.i = icmp eq i32 %113, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.end15.i.if.end27.i_crit_edge

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %encaps_signals.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 31
  %114 = ptrtoint ptr %encaps_signals.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %encaps_signals.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool25.not.i = icmp eq i8 %115, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.if.end27.i_crit_edge, label %if.then26.i

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %encaps_sig_wait_offset.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 13
  %116 = ptrtoint ptr %encaps_sig_wait_offset.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %93, ptr %encaps_sig_wait_offset.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %land.lhs.true.i.if.end27.i_crit_edge, %if.end15.i.if.end27.i_crit_edge
  %117 = ptrtoint ptr %user_cb.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %user_cb.i, align 4
  %patched_cb.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 3
  %119 = ptrtoint ptr %patched_cb.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %patched_cb.i, align 4
  %120 = ptrtoint ptr %user_cb_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %user_cb_size.i, align 4
  %job_cb_size.i = getelementptr inbounds %struct.hl_cs_job, ptr %call.i, i32 0, i32 12
  %122 = ptrtoint ptr %job_cb_size.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %job_cb_size.i, align 4
  %kernel_cb_mgr.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 23
  %id30.i = getelementptr inbounds %struct.hl_cb, ptr %call9.i, i32 0, i32 7
  %123 = ptrtoint ptr %id30.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %id30.i, align 8
  %shl.i = shl i64 %124, 12
  %call31.i = call i32 @hl_cb_destroy(ptr noundef %2, ptr noundef %kernel_cb_mgr.i, i64 noundef %shl.i) #14
  %refcount.i.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i.i354 = extractvalue { i32, i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i354)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i354, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !399

if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end27.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i354, 1
  %126 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i354
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %.not.i.i.i.i.i.i = icmp sgt i32 %126, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.cs_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.cs_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end27.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %cs_get.exit.i

cs_get.exit.i:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.cs_get.exit.i_crit_edge
  %127 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %87, align 8
  %129 = ptrtoint ptr %hw_queue_id.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %hw_queue_id.i, align 4
  %arrayidx.i = getelementptr i16, ptr %128, i32 %130
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx.i, align 2
  %inc.i = add i16 %132, 1
  store i16 %inc.i, ptr %arrayidx.i, align 2
  %job_list.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 2, i32 1
  %133 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i.i, align 4
  %call.i.i79.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %134, ptr noundef %job_list.i) #14
  br i1 %call.i.i79.i, label %if.end.i.i.i355, label %cs_get.exit.i.if.end161.thread451_crit_edge

cs_get.exit.i.if.end161.thread451_crit_edge:      ; preds = %cs_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end161.thread451

if.end.i.i.i355:                                  ; preds = %cs_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %135 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i, ptr %prev.i.i, align 4
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %job_list.i, ptr %call.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %137 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev3.i.i.i, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %call.i, ptr %134, align 4
  br label %if.end161.thread451

if.end161.thread451:                              ; preds = %if.end.i.i.i355, %cs_get.exit.i.if.end161.thread451_crit_edge
  call void @hl_debugfs_add_job(ptr noundef %2, ptr noundef nonnull %call.i) #14
  br label %if.end164

if.else:                                          ; preds = %if.end148
  br i1 %cmp20, label %if.end161, label %if.else156

if.else156:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt158 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i345 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt158, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt158) #14
  %validation_drop_cnt159 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i346 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt159, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt159) #14
  br label %free_cs_object

if.end161:                                        ; preds = %if.else
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 34
  %139 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %asic_funcs, align 8
  %collective_wait_create_jobs = getelementptr inbounds %struct.hl_asic_funcs, ptr %140, i32 0, i32 75
  %141 = ptrtoint ptr %collective_wait_create_jobs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %collective_wait_create_jobs, align 4
  %143 = getelementptr inbounds %struct.hl_cs_chunk, ptr %8, i32 0, i32 2
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %call155 = call i32 %142(ptr noundef %2, ptr noundef %4, ptr noundef %87, i32 noundef %10, i32 noundef %collective_engine_id.0373494520, i32 noundef %145) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool162.not = icmp eq i32 %call155, 0
  br i1 %tobool162.not, label %if.end161.if.end164_crit_edge, label %if.end161.free_cs_object_crit_edge

if.end161.free_cs_object_crit_edge:               ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_object

if.end161.if.end164_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

if.end164:                                        ; preds = %if.end161.if.end164_crit_edge, %if.end161.thread451
  %call165 = call i32 @hl_hw_queue_schedule_cs(ptr noundef %87) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end180, label %if.then167

if.then167:                                       ; preds = %if.end164
  br i1 %switch331379488524, label %if.then167.free_cs_object_crit_edge, label %if.else170

if.then167.free_cs_object_crit_edge:              ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_object

if.else170:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call165)
  %cmp171.not = icmp eq i32 %call165, -11
  br i1 %cmp171.not, label %if.else170.free_cs_object_crit_edge, label %do.end175

if.else170.free_cs_object_crit_edge:              ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_object

do.end175:                                        ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #16
  %dev176 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %146 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev176, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 21
  %148 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %asid, align 8
  %150 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %sequence, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.72, i32 noundef %149, i64 noundef %151, i32 noundef %call165) #17
  br label %free_cs_object

if.end180:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  %sob_addr_offset = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 19
  %152 = ptrtoint ptr %sob_addr_offset to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sob_addr_offset, align 8
  %154 = ptrtoint ptr %signal_sob_addr_offset to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %signal_sob_addr_offset, align 4
  %initial_sob_count = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 20
  %155 = ptrtoint ptr %initial_sob_count to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %initial_sob_count, align 4
  %157 = ptrtoint ptr %signal_initial_sob_count to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %signal_initial_sob_count, align 2
  br label %put_cs

free_cs_object:                                   ; preds = %do.end175, %if.else170.free_cs_object_crit_edge, %if.then167.free_cs_object_crit_edge, %if.end161.free_cs_object_crit_edge, %if.else156, %if.then11.i, %if.then.i351
  %switch331379491 = phi i1 [ %switch331379488524, %if.end161.free_cs_object_crit_edge ], [ false, %do.end175 ], [ false, %if.else170.free_cs_object_crit_edge ], [ true, %if.then167.free_cs_object_crit_edge ], [ %switch331379488524, %if.then.i351 ], [ %switch331379488524, %if.then11.i ], [ %switch331379488524, %if.else156 ]
  %rc.2 = phi i32 [ %call155, %if.end161.free_cs_object_crit_edge ], [ %call165, %do.end175 ], [ -11, %if.else170.free_cs_object_crit_edge ], [ 0, %if.then167.free_cs_object_crit_edge ], [ -12, %if.then.i351 ], [ -14, %if.then11.i ], [ -22, %if.else156 ]
  %staged_cs.i.i.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 29
  %158 = ptrtoint ptr %staged_cs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %staged_cs.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i.i.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i.i.i, label %free_cs_object.staged_cs_put.exit.i_crit_edge, label %land.lhs.true.i.i.i357

free_cs_object.staged_cs_put.exit.i_crit_edge:    ; preds = %free_cs_object
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit.i

land.lhs.true.i.i.i357:                           ; preds = %free_cs_object
  %staged_last.i.i.i = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 27
  %160 = ptrtoint ptr %staged_last.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %staged_last.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool1.not.i.i.i = icmp eq i8 %161, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i358, label %land.lhs.true.i.i.i357.staged_cs_put.exit.i_crit_edge

land.lhs.true.i.i.i357.staged_cs_put.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i357
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit.i

if.then.i.i358:                                   ; preds = %land.lhs.true.i.i.i357
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @cs_put(ptr noundef %87) #14
  br label %staged_cs_put.exit.i

staged_cs_put.exit.i:                             ; preds = %if.then.i.i358, %land.lhs.true.i.i.i357.staged_cs_put.exit.i_crit_edge, %free_cs_object.staged_cs_put.exit.i_crit_edge
  %job_list.i359 = getelementptr inbounds %struct.hl_cs, ptr %87, i32 0, i32 2
  %162 = ptrtoint ptr %job_list.i359 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %job_list.i359, align 8
  %cmp.not19.i = icmp eq ptr %163, %job_list.i359
  br i1 %cmp.not19.i, label %staged_cs_put.exit.i.cs_rollback.exit_crit_edge, label %staged_cs_put.exit.i.for.body.i_crit_edge

staged_cs_put.exit.i.for.body.i_crit_edge:        ; preds = %staged_cs_put.exit.i
  br label %for.body.i

staged_cs_put.exit.i.cs_rollback.exit_crit_edge:  ; preds = %staged_cs_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_rollback.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %staged_cs_put.exit.i.for.body.i_crit_edge
  %job.020.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %163, %staged_cs_put.exit.i.for.body.i_crit_edge ]
  %164 = ptrtoint ptr %job.020.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %tmp.0.i = load ptr, ptr %job.020.i, align 4
  call fastcc void @complete_job(ptr noundef %2, ptr noundef %job.020.i) #14
  %cmp.not.i360 = icmp eq ptr %tmp.0.i, %job_list.i359
  br i1 %cmp.not.i360, label %for.body.i.cs_rollback.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.cs_rollback.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_rollback.exit

cs_rollback.exit:                                 ; preds = %for.body.i.cs_rollback.exit_crit_edge, %staged_cs_put.exit.i.cs_rollback.exit_crit_edge
  %165 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 -1, ptr %cs_seq, align 8
  br label %put_cs

put_cs:                                           ; preds = %cs_rollback.exit, %if.end180
  %switch331379490 = phi i1 [ %switch331379491, %cs_rollback.exit ], [ %switch331379488524, %if.end180 ]
  %wait_cs_submitted.0 = phi i1 [ false, %cs_rollback.exit ], [ %switch331379488524, %if.end180 ]
  %rc.3 = phi i32 [ %rc.2, %cs_rollback.exit ], [ 0, %if.end180 ]
  call fastcc void @cs_put(ptr noundef %87)
  %166 = and i8 %handle_found.2497517, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %extract.t316 = icmp ne i8 %166, 0
  br label %free_cs_chunk_array

free_cs_chunk_array:                              ; preds = %put_cs, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge, %if.then139.free_cs_chunk_array_crit_edge, %if.then132, %if.then122, %if.end105.free_cs_chunk_array_crit_edge, %if.then96, %cleanup.thread
  %wait_cs_submitted.1.off0 = phi i1 [ false, %if.then96 ], [ false, %if.then132 ], [ %wait_cs_submitted.0, %put_cs ], [ false, %if.then122 ], [ false, %cleanup.thread ], [ false, %if.then139.free_cs_chunk_array_crit_edge ], [ false, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.then.i.i ], [ false, %if.end105.free_cs_chunk_array_crit_edge ]
  %cs_encaps_signals.0.shrunk = phi i1 [ %tobool47377384412427, %if.then96 ], [ %tobool47377384412427, %if.then132 ], [ %tobool47378493522, %put_cs ], [ %tobool47377384412427, %if.then122 ], [ true, %cleanup.thread ], [ %tobool47377384412427, %if.then139.free_cs_chunk_array_crit_edge ], [ %tobool47377384412427, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge ], [ %tobool47377384412427, %if.then10.i.i.i.i.i ], [ %tobool47377384412427, %if.then.i.i ], [ %tobool47377384412427, %if.end105.free_cs_chunk_array_crit_edge ]
  %rc.4 = phi i32 [ %74, %if.then96 ], [ 0, %if.then132 ], [ %rc.3, %put_cs ], [ -22, %if.then122 ], [ %rc.0.ph, %cleanup.thread ], [ %call135, %if.then139.free_cs_chunk_array_crit_edge ], [ %call135, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge ], [ %call135, %if.then10.i.i.i.i.i ], [ %call135, %if.then.i.i ], [ 0, %if.end105.free_cs_chunk_array_crit_edge ]
  %is_wait_cs.0.shrunk = phi i1 [ true, %if.then96 ], [ true, %if.then132 ], [ %switch331379490, %put_cs ], [ true, %if.then122 ], [ true, %cleanup.thread ], [ true, %if.then139.free_cs_chunk_array_crit_edge ], [ true, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.then.i.i ], [ true, %if.end105.free_cs_chunk_array_crit_edge ]
  %handle_found.3.off0 = phi i1 [ %tobool47377384412427, %if.then96 ], [ %tobool47377384412427, %if.then132 ], [ %extract.t316, %put_cs ], [ %tobool47377384412427, %if.then122 ], [ %cmp62468, %cleanup.thread ], [ %tobool47377384412427, %if.then139.free_cs_chunk_array_crit_edge ], [ %tobool47377384412427, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge ], [ %tobool47377384412427, %if.then10.i.i.i.i.i ], [ %tobool47377384412427, %if.then.i.i ], [ %tobool47377384412427, %if.end105.free_cs_chunk_array_crit_edge ]
  %encaps_sig_hdl.2 = phi ptr [ %encaps_sig_hdl.0, %if.then96 ], [ %encaps_sig_hdl.0, %if.then132 ], [ %encaps_sig_hdl.1501, %put_cs ], [ %encaps_sig_hdl.0, %if.then122 ], [ %call61470, %cleanup.thread ], [ %encaps_sig_hdl.0, %if.then139.free_cs_chunk_array_crit_edge ], [ %encaps_sig_hdl.0, %if.end5.i.i.i.i.i.free_cs_chunk_array_crit_edge ], [ %encaps_sig_hdl.0, %if.then10.i.i.i.i.i ], [ %encaps_sig_hdl.0, %if.then.i.i ], [ %encaps_sig_hdl.0, %if.end105.free_cs_chunk_array_crit_edge ]
  %167 = and i1 %cs_encaps_signals.0.shrunk, %handle_found.3.off0
  %168 = and i1 %167, %is_wait_cs.0.shrunk
  %169 = xor i1 %168, true
  %brmerge322 = or i1 %wait_cs_submitted.1.off0, %169
  br i1 %brmerge322, label %free_cs_chunk_array.if.end194_crit_edge, label %if.then191

free_cs_chunk_array.if.end194_crit_edge:          ; preds = %free_cs_chunk_array
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

if.then191:                                       ; preds = %free_cs_chunk_array
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %encaps_sig_hdl.2, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  call void @llvm.prefetch.p0(ptr %encaps_sig_hdl.2, i32 1, i32 3, i32 1) #14
  %170 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %encaps_sig_hdl.2, ptr %encaps_sig_hdl.2, i32 1, ptr elementtype(i32) %encaps_sig_hdl.2) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %170, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i361, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end194_crit_edge, label %if.then10.i.i.i.i, !prof !395

if.end5.i.i.i.i.if.end194_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %encaps_sig_hdl.2, i32 noundef 3) #14
  br label %if.end194

if.then.i361:                                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  call void @hl_encaps_handle_do_release(ptr noundef %encaps_sig_hdl.2) #14
  br label %if.end194

if.end194:                                        ; preds = %if.then.i361, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end194_crit_edge, %free_cs_chunk_array.if.end194_crit_edge, %if.end134.thread.if.end194_crit_edge, %cleanup, %cs_ioctl_extract_signal_seq.exit, %if.then9.i, %if.then1.i, %if.then33, %if.then23, %if.then11, %if.then3
  %rc.4466 = phi i32 [ %rc.4, %free_cs_chunk_array.if.end194_crit_edge ], [ %rc.4, %if.end5.i.i.i.i.if.end194_crit_edge ], [ %rc.4, %if.then10.i.i.i.i ], [ %rc.4, %if.then.i361 ], [ -22, %if.then11 ], [ -22, %if.then23 ], [ -22, %if.then33 ], [ 0, %cleanup ], [ -14, %cs_ioctl_extract_signal_seq.exit ], [ -22, %if.then3 ], [ -12, %if.then9.i ], [ -22, %if.then1.i ], [ %call135486, %if.end134.thread.if.end194_crit_edge ]
  %171 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cs_chunk_array, align 4
  call void @kfree(ptr noundef %172) #14
  br label %cleanup195

cleanup195:                                       ; preds = %if.end194, %entry.cleanup195_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup195_crit_edge ], [ %rc.4466, %if.end194 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_chunk_array) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_ioctl_reserve_signals(ptr nocapture noundef readonly %hpriv, i32 noundef %q_idx, i32 noundef %count, ptr nocapture noundef writeonly %handle_id, ptr nocapture noundef writeonly %sob_addr, ptr nocapture noundef writeonly %signals_count) unnamed_addr #0 align 64 {
entry:
  %hw_sob = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_sob) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %count)
  %cmp = icmp ugt i32 %count, 32767
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %count) #17
  br label %out

if.end:                                           ; preds = %entry
  %max_queues = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 49
  %4 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %q_idx)
  %cmp2.not = icmp ugt i32 %5, %q_idx
  br i1 %cmp2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev7 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.51, i32 noundef %q_idx) #17
  br label %out

if.end8:                                          ; preds = %if.end
  %asic_prop = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %asic_prop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_prop, align 8
  %supports_sync_stream = getelementptr %struct.hw_queue_properties, ptr %9, i32 %q_idx, i32 4
  %10 = ptrtoint ptr %supports_sync_stream to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supports_sync_stream, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %dev14 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %q_idx) #17
  br label %out

if.end15:                                         ; preds = %if.end8
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kernel_queues, align 8
  %sync_stream_prop = getelementptr %struct.hl_hw_queue, ptr %15, i32 %q_idx, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 40) #19
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.out_crit_edge, label %if.end19

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end19:                                         ; preds = %if.end15
  %count20 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %count20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %count, ptr %count20, align 4
  %ctx = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  tail call void @hl_ctx_get(ptr noundef %1, ptr noundef %19) #14
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %ctx22 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %ctx22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ctx22, align 4
  %sig_mgr = getelementptr inbounds %struct.hl_ctx, ptr %21, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %sig_mgr) #14
  %handles = getelementptr inbounds %struct.hl_ctx, ptr %21, i32 0, i32 14, i32 1
  %call24 = tail call i32 @idr_alloc(ptr noundef %handles, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #14
  tail call void @_raw_spin_unlock(ptr noundef %sig_mgr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp26 = icmp slt i32 %call24, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %dev31 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.120) #17
  br label %put_ctx

if.end32:                                         ; preds = %if.end19
  %id = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call24, ptr %id, align 8
  %q_idx33 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %q_idx33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %q_idx, ptr %q_idx33, align 4
  %hdev34 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %hdev34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %hdev34, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %call7.i.i, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %29 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_lock = getelementptr inbounds %struct.hl_asic_funcs, ptr %30, i32 0, i32 50
  %31 = ptrtoint ptr %hw_queues_lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_queues_lock, align 4
  tail call void %32(ptr noundef %1) #14
  %curr_sob_offset = getelementptr %struct.hl_hw_queue, ptr %15, i32 %q_idx, i32 1, i32 7
  %33 = ptrtoint ptr %curr_sob_offset to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %curr_sob_offset, align 2
  %idxprom = zext i8 %34 to i32
  %arrayidx36 = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop, i32 0, i32 %idxprom
  %35 = ptrtoint ptr %hw_sob to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx36, ptr %hw_sob, align 4
  %call37 = call i32 @hl_cs_signal_sob_wraparound_handler(ptr noundef %1, i32 noundef %q_idx, ptr noundef nonnull %hw_sob, i32 noundef %count, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %dev43 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.123) #17
  %38 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_unlock = getelementptr inbounds %struct.hl_asic_funcs, ptr %39, i32 0, i32 51
  %40 = ptrtoint ptr %hw_queues_unlock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_queues_unlock, align 4
  tail call void %41(ptr noundef %1) #14
  tail call void @_raw_spin_lock(ptr noundef %sig_mgr) #14
  %call71 = tail call ptr @idr_remove(ptr noundef %handles, i32 noundef %call24) #14
  tail call void @_raw_spin_unlock(ptr noundef %sig_mgr) #14
  br label %put_ctx

if.end45:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %hw_sob to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_sob, align 4
  %hw_sob46 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %hw_sob46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %hw_sob46, align 8
  %next_sob_val = getelementptr %struct.hl_hw_queue, ptr %15, i32 %q_idx, i32 1, i32 1
  %45 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %next_sob_val, align 4
  %conv = zext i16 %46 to i32
  %47 = ptrtoint ptr %count20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count20, align 4
  %sub = sub i32 %conv, %48
  %pre_sob_val = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call7.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %pre_sob_val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %pre_sob_val, align 8
  %50 = load i16, ptr %next_sob_val, align 4
  %conv49 = zext i16 %50 to i32
  %51 = ptrtoint ptr %signals_count to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv49, ptr %signals_count, align 4
  %52 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_unlock51 = getelementptr inbounds %struct.hl_asic_funcs, ptr %53, i32 0, i32 51
  %54 = ptrtoint ptr %hw_queues_unlock51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_queues_unlock51, align 4
  tail call void %55(ptr noundef %1) #14
  %56 = ptrtoint ptr %hw_sob46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_sob46, align 8
  %sob_addr53 = getelementptr inbounds %struct.hl_hw_sob, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %sob_addr53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sob_addr53, align 4
  %60 = ptrtoint ptr %sob_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sob_addr, align 4
  %61 = ptrtoint ptr %handle_id to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call24, ptr %handle_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_ioctl_reserve_signals.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_ioctl_reserve_signals, %if.then59)) #14
          to label %out [label %if.then59], !srcloc !397

if.then59:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %dev60 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev60, align 4
  %sob_id = getelementptr inbounds %struct.hl_hw_sob, ptr %43, i32 0, i32 2
  %64 = ptrtoint ptr %sob_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sob_id, align 4
  %66 = ptrtoint ptr %hw_sob46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_sob46, align 8
  %sob_addr62 = getelementptr inbounds %struct.hl_hw_sob, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %sob_addr62 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sob_addr62, align 4
  %70 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %next_sob_val, align 4
  %conv64 = zext i16 %71 to i32
  %sub65 = add nsw i32 %conv64, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_ioctl_reserve_signals.__UNIQUE_ID_ddebug303, ptr noundef %63, ptr noundef nonnull @.str.125, i32 noundef %65, i32 noundef %69, i32 noundef %sub65, i32 noundef %q_idx, i32 noundef %call24) #14
  br label %out

put_ctx:                                          ; preds = %do.end42, %do.end30
  %72 = ptrtoint ptr %ctx22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx22, align 4
  %call74 = tail call i32 @hl_ctx_put(ptr noundef %73) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %out

out:                                              ; preds = %put_ctx, %if.then59, %if.end45, %if.end15.out_crit_edge, %do.end13, %do.end6, %do.end
  %rc.1 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ -22, %put_ctx ], [ 0, %if.then59 ], [ -22, %do.end13 ], [ -12, %if.end15.out_crit_edge ], [ 0, %if.end45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_sob) #14
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_ioctl_unreserve_signals(ptr nocapture noundef readonly %hpriv, i32 noundef %handle_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %ctx = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %sig_mgr = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %sig_mgr) #14
  %handles = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 14, i32 1
  %call = tail call ptr @idr_find(ptr noundef %handles, i32 noundef %handle_id) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs_ioctl_unreserve_signals.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs_ioctl_unreserve_signals, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !397

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %hw_sob7 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %hw_sob7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_sob7, align 8
  %sob_addr8 = getelementptr inbounds %struct.hl_hw_sob, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %sob_addr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sob_addr8, align 4
  %count = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs_ioctl_unreserve_signals.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.127, i32 noundef %handle_id, i32 noundef %9, i32 noundef %11) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_lock = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %hw_queues_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_queues_lock, align 4
  tail call void %15(ptr noundef %1) #14
  %q_idx9 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 6
  %16 = ptrtoint ptr %q_idx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_idx9, align 4
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kernel_queues, align 8
  %sync_stream_prop = getelementptr %struct.hl_hw_queue, ptr %19, i32 %17, i32 1
  %curr_sob_offset = getelementptr %struct.hl_hw_queue, ptr %19, i32 %17, i32 1, i32 7
  %20 = ptrtoint ptr %curr_sob_offset to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %curr_sob_offset, align 2
  %idxprom = zext i8 %21 to i32
  %arrayidx11 = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs, align 8
  %get_sob_addr = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 87
  %24 = ptrtoint ptr %get_sob_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_sob_addr, align 4
  %sob_id = getelementptr [2 x %struct.hl_hw_sob], ptr %sync_stream_prop, i32 0, i32 %idxprom, i32 2
  %26 = ptrtoint ptr %sob_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sob_id, align 4
  %call13 = tail call i32 %25(ptr noundef %1, i32 noundef %27) #14
  %pre_sob_val = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 7
  %28 = ptrtoint ptr %pre_sob_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pre_sob_val, align 8
  %count14 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 8
  %30 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count14, align 4
  %add = add i32 %31, %29
  %next_sob_val = getelementptr %struct.hl_hw_queue, ptr %19, i32 %17, i32 1, i32 1
  %32 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_sob_val, align 4
  %conv = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp.not = icmp eq i32 %add, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.do.end23_crit_edge

do.end.do.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

lor.lhs.false:                                    ; preds = %do.end
  %hw_sob16 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %hw_sob16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_sob16, align 8
  %sob_addr17 = getelementptr inbounds %struct.hl_hw_sob, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %sob_addr17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sob_addr17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %37)
  %cmp18.not = icmp eq i32 %call13, %37
  br i1 %cmp18.not, label %if.end30, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false.do.end23_crit_edge, %do.end.do.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev24, align 4
  %sub = sub i32 %conv, %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.128, i32 noundef %29, i32 noundef %sub) #17
  %40 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_unlock = getelementptr inbounds %struct.hl_asic_funcs, ptr %41, i32 0, i32 51
  %42 = ptrtoint ptr %hw_queues_unlock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_queues_unlock, align 4
  tail call void %43(ptr noundef %1) #14
  br label %out

if.end30:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %44 = trunc i32 %31 to i16
  %conv35 = sub i16 %33, %44
  %45 = ptrtoint ptr %next_sob_val to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv35, ptr %next_sob_val, align 4
  %46 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic_funcs, align 8
  %hw_queues_unlock37 = getelementptr inbounds %struct.hl_asic_funcs, ptr %47, i32 0, i32 51
  %48 = ptrtoint ptr %hw_queues_unlock37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_queues_unlock37, align 4
  tail call void %49(ptr noundef %1) #14
  tail call void @hw_sob_put(ptr noundef %arrayidx11)
  %call39 = tail call ptr @idr_remove(ptr noundef %handles, i32 noundef %handle_id) #14
  %ctx40 = getelementptr inbounds %struct.hl_cs_encaps_sig_handle, ptr %call, i32 0, i32 3
  %50 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx40, align 4
  %call41 = tail call i32 @hl_ctx_put(ptr noundef %51) #14
  tail call void @kfree(ptr noundef nonnull %call) #14
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev45 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.130) #17
  br label %out

out:                                              ; preds = %if.else, %if.end30, %do.end23
  %rc.0 = phi i32 [ -22, %do.end23 ], [ 0, %if.end30 ], [ -22, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %sig_mgr) #14
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs_ioctl_default(ptr noundef %hpriv, ptr noundef %chunks, i32 noundef %num_chunks, ptr nocapture noundef %cs_seq, i32 noundef %flags, i32 noundef %encaps_signals_handle, i32 noundef %timeout, ptr nocapture noundef writeonly %signal_initial_sob_count) unnamed_addr #0 align 64 {
entry:
  %parser.i = alloca %struct.hl_cs_parser, align 8
  %cs_chunk_array = alloca ptr, align 4
  %cs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_chunk_array) #14
  %2 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cs_chunk_array, align 4, !annotation !403
  %ctx2 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %3 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #14
  %5 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %cs, align 4, !annotation !403
  %aggregated_cs_counters = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cs_seq, align 8
  store i64 -1, ptr %cs_seq, align 8
  %8 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx2, align 4
  %call = call fastcc i32 @hl_cs_copy_chunk_array(ptr noundef %1, ptr noundef nonnull %cs_chunk_array, ptr noundef %chunks, i32 noundef %num_chunks, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup130_crit_edge

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup130

if.end:                                           ; preds = %entry
  %10 = and i32 %flags, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %11 = icmp eq i32 %10, 64
  %12 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx2, align 4
  %spec.select = select i1 %11, i64 %7, i64 -1
  %call11 = call fastcc i32 @allocate_cs(ptr noundef %1, ptr noundef %13, i32 noundef 0, i64 noundef %spec.select, ptr noundef nonnull %cs, i32 noundef %flags, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.free_cs_chunk_array_crit_edge

if.end.free_cs_chunk_array_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_chunk_array

if.end14:                                         ; preds = %if.end
  %and = and i32 %flags, 64
  %14 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs, align 4
  %sequence = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sequence, align 8
  %18 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cs_seq, align 8
  tail call void @hl_debugfs_add_cs(ptr noundef %15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %if.end14.cs_staged_submission.exit_crit_edge, label %if.end.i

if.end14.cs_staged_submission.exit_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_staged_submission.exit

if.end.i:                                         ; preds = %if.end14
  %and1.i = lshr i32 %flags, 8
  %19 = trunc i32 %and1.i to i8
  %20 = and i8 %19, 1
  %staged_last.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 27
  %21 = ptrtoint ptr %staged_last.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %staged_last.i, align 4
  %22 = trunc i32 %flags to i8
  %23 = lshr i8 %22, 7
  %staged_first.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 28
  %24 = ptrtoint ptr %staged_first.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %staged_first.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool12.not.i = icmp sgt i8 %22, -1
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  %staged_cs_node.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 10
  %25 = ptrtoint ptr %staged_cs_node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %staged_cs_node.i, ptr %staged_cs_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %staged_cs_node.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sequence, align 8
  %staged_sequence.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 14
  %29 = ptrtoint ptr %staged_sequence.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %staged_sequence.i, align 8
  %encaps_signals.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 31
  %30 = ptrtoint ptr %encaps_signals.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %encaps_signals.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not.i = icmp eq i8 %31, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end19.i_crit_edge, label %if.then16.i

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  %encaps_sig_hdl_id.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 18
  %32 = ptrtoint ptr %encaps_sig_hdl_id.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %encaps_signals_handle, ptr %encaps_sig_hdl_id.i, align 4
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %staged_sequence18.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 14
  %33 = ptrtoint ptr %staged_sequence18.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %7, ptr %staged_sequence18.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then16.i, %if.then13.i.if.end19.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end19.i.staged_cs_get.exit.i_crit_edge

if.end19.i.staged_cs_get.exit.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_get.exit.i

if.then.i.i:                                      ; preds = %if.end19.i
  %refcount.i.i.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !399

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.staged_cs_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.staged_cs_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_get.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #14
  br label %staged_cs_get.exit.i

staged_cs_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.staged_cs_get.exit.i_crit_edge, %if.end19.i.staged_cs_get.exit.i_crit_edge
  %staged_cs.i = getelementptr inbounds %struct.hl_cs, ptr %15, i32 0, i32 29
  %36 = ptrtoint ptr %staged_cs.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %staged_cs.i, align 2
  br label %cs_staged_submission.exit

cs_staged_submission.exit:                        ; preds = %staged_cs_get.exit.i, %if.end14.cs_staged_submission.exit_crit_edge
  %37 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cs, align 4
  %staged_cs = getelementptr inbounds %struct.hl_cs, ptr %38, i32 0, i32 29
  %39 = ptrtoint ptr %staged_cs to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %staged_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool19.not = icmp eq i8 %40, 0
  br i1 %tobool19.not, label %cs_staged_submission.exit.if.end21_crit_edge, label %if.then20

cs_staged_submission.exit.if.end21_crit_edge:     ; preds = %cs_staged_submission.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then20:                                        ; preds = %cs_staged_submission.exit
  call void @__sanitizer_cov_trace_pc() #16
  %staged_sequence = getelementptr inbounds %struct.hl_cs, ptr %38, i32 0, i32 14
  %41 = ptrtoint ptr %staged_sequence to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %staged_sequence, align 8
  %43 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %cs_seq, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %cs_staged_submission.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_chunks)
  %cmp364.not = icmp eq i32 %num_chunks, 0
  br i1 %cmp364.not, label %if.end21.land.lhs.true94_crit_edge, label %for.body.lr.ph

if.end21.land.lhs.true94_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true94

for.body.lr.ph:                                   ; preds = %if.end21
  %44 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cs_chunk_array, align 4
  %max_queues.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 49
  %asic_prop.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33
  %cb_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5
  %supports_wait_for_multi_cs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 102
  %stream_master_qid_arr_size.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 103
  %stream_master_qid_arr.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 60
  %46 = getelementptr inbounds i8, ptr %parser.i, i32 8
  %ctx_id.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 5
  %cs_sequence.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 3
  %job_id.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 9
  %hw_queue_id3.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 6
  %patched_cb.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 1
  %user_cb_size5.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 7
  %queue_type6.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 4
  %is_kernel_allocated_cb7.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 10
  %completion.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 12
  %patched_cb_size.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 8
  %contains_dma_pkt.i = getelementptr inbounds %struct.hl_cs_parser, ptr %parser.i, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0367 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %stream_master_qid_map.0366 = phi i8 [ 0, %for.body.lr.ph ], [ %stream_master_qid_map.1, %for.inc.for.body_crit_edge ]
  %int_queues_only.0.off0365 = phi i1 [ true, %for.body.lr.ph ], [ %int_queues_only.1.off0, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hl_cs_chunk, ptr %45, i32 %i.0367
  %queue_index.i = getelementptr %struct.hl_cs_chunk, ptr %45, i32 %i.0367, i32 1
  %47 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %queue_index.i, align 8
  %49 = ptrtoint ptr %max_queues.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.not.i = icmp ult i32 %48, %50
  br i1 %cmp.not.i, label %if.end.i232, label %for.body.if.then24_crit_edge

for.body.if.then24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end.i232:                                      ; preds = %for.body
  %51 = ptrtoint ptr %asic_prop.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %asic_prop.i, align 8
  %arrayidx.i = getelementptr %struct.hw_queue_properties, ptr %52, i32 %48
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp3.i = icmp eq i32 %54, 0
  br i1 %cmp3.i, label %if.end.i232.if.then24_crit_edge, label %if.end10.i

if.end.i232.if.then24_crit_edge:                  ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end10.i:                                       ; preds = %if.end.i232
  %driver_only.i = getelementptr %struct.hw_queue_properties, ptr %52, i32 %48, i32 3
  %55 = ptrtoint ptr %driver_only.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %driver_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i233 = icmp eq i8 %56, 0
  br i1 %tobool.not.i233, label %if.end17.i, label %if.end10.i.if.then24_crit_edge

if.end10.i.if.then24_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp19.i = icmp eq i32 %54, 4
  br i1 %cmp19.i, label %if.then20.i, label %if.end26

if.then20.i:                                      ; preds = %if.end17.i
  %cs_chunk_flags.i = getelementptr %struct.hl_cs_chunk, ptr %45, i32 %i.0367, i32 3
  %57 = ptrtoint ptr %cs_chunk_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cs_chunk_flags.i, align 8
  %and.i234 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool21.not.i = icmp eq i32 %and.i234, 0
  %cb_alloc_flags32.i = getelementptr %struct.hw_queue_properties, ptr %52, i32 %48, i32 1
  %59 = ptrtoint ptr %cb_alloc_flags32.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cb_alloc_flags32.i, align 4
  br i1 %tobool21.not.i, label %if.else.i235, label %if.then22.i

if.then22.i:                                      ; preds = %if.then20.i
  %and23.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then22.i.if.then24_crit_edge, label %if.then22.i.if.else36_crit_edge

if.then22.i.if.else36_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else36

if.then22.i.if.then24_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.else.i235:                                     ; preds = %if.then20.i
  %and33.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else.i235.if.then24_crit_edge, label %if.else.i235.if.then28_crit_edge

if.else.i235.if.then28_crit_edge:                 ; preds = %if.else.i235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.else.i235.if.then24_crit_edge:                 ; preds = %if.else.i235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.then24:                                        ; preds = %if.else.i235.if.then24_crit_edge, %if.then22.i.if.then24_crit_edge, %if.end10.i.if.then24_crit_edge, %if.end.i232.if.then24_crit_edge, %for.body.if.then24_crit_edge
  %.str.51.sink = phi ptr [ @.str.51, %for.body.if.then24_crit_edge ], [ @.str.51, %if.end.i232.if.then24_crit_edge ], [ @.str.145, %if.end10.i.if.then24_crit_edge ], [ @.str.148, %if.then22.i.if.then24_crit_edge ], [ @.str.151, %if.else.i235.if.then24_crit_edge ]
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull %.str.51.sink, i32 noundef %48) #17
  %validation_drop_cnt = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt) #14
  %validation_drop_cnt25 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 50, i32 5
  %call.i.i222 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt25, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt25) #14
  br label %free_cs_object

if.end26:                                         ; preds = %if.end17.i
  %cb_alloc_flags44.i = getelementptr %struct.hw_queue_properties, ptr %52, i32 %48, i32 1
  %63 = ptrtoint ptr %cb_alloc_flags44.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb_alloc_flags44.i, align 4
  %65 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool27.not = icmp eq i32 %65, 0
  br i1 %tobool27.not, label %if.end26.if.else36_crit_edge, label %if.end26.if.then28_crit_edge

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.end26.if.else36_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else36

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.else.i235.if.then28_crit_edge
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx, align 8
  %shr.i = lshr i64 %67, 12
  %conv.i = trunc i64 %shr.i to i32
  %call.i = call ptr @hl_cb_get(ptr noundef %1, ptr noundef %cb_mgr, i32 noundef %conv.i) #14
  %tobool.not.i236 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i236, label %do.end.i238, label %if.end.i239

do.end.i238:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.le = trunc i64 %shr.i to i32
  %dev.i237 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %dev.i237 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i237, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.153, i32 noundef %conv.i.le) #17
  br label %if.then31

if.end.i239:                                      ; preds = %if.then28
  %70 = getelementptr %struct.hl_cs_chunk, ptr %45, i32 %i.0367, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %72)
  %cmp.i = icmp ult i32 %72, 8
  br i1 %cmp.i, label %if.end.i239.do.end7.i241_crit_edge, label %lor.lhs.false.i

if.end.i239.do.end7.i241_crit_edge:               ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i241

lor.lhs.false.i:                                  ; preds = %if.end.i239
  %size.i = getelementptr inbounds %struct.hl_cb, ptr %call.i, i32 0, i32 11
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp2.i = icmp ugt i32 %72, %74
  br i1 %cmp2.i, label %lor.lhs.false.i.do.end7.i241_crit_edge, label %get_cb_from_cs_chunk.exit

lor.lhs.false.i.do.end7.i241_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i241

do.end7.i241:                                     ; preds = %lor.lhs.false.i.do.end7.i241_crit_edge, %if.end.i239.do.end7.i241_crit_edge
  %dev8.i240 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %dev8.i240 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev8.i240, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.156, i32 noundef %72) #17
  call void @hl_cb_put(ptr noundef nonnull %call.i) #14
  br label %if.then31

get_cb_from_cs_chunk.exit:                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %cs_cnt.i = getelementptr inbounds %struct.hl_cb, ptr %call.i, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cs_cnt.i, i32 1, i32 3, i32 1) #14
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt.i, ptr %cs_cnt.i, i32 1, ptr elementtype(i32) %cs_cnt.i) #14, !srcloc !413
  br label %if.end37

if.then31:                                        ; preds = %do.end7.i241, %do.end.i238
  %validation_drop_cnt33 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i223 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt33, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt33) #14
  %validation_drop_cnt34 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 50, i32 5
  %call.i.i224 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt34, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt34) #14
  br label %free_cs_object

if.else36:                                        ; preds = %if.end26.if.else36_crit_edge, %if.then22.i.if.else36_crit_edge
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %79 to i32
  %80 = inttoptr i32 %conv to ptr
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %get_cb_from_cs_chunk.exit
  %tobool27.not290 = phi i1 [ false, %get_cb_from_cs_chunk.exit ], [ true, %if.else36 ]
  %tobool50 = phi i1 [ true, %get_cb_from_cs_chunk.exit ], [ false, %if.else36 ]
  %cb.1 = phi ptr [ %call.i, %get_cb_from_cs_chunk.exit ], [ %80, %if.else36 ]
  %81 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %54, label %if.end37.if.end49_crit_edge [
    i32 1, label %if.end37.if.then42_crit_edge
    i32 4, label %if.end37.if.then42_crit_edge552
  ]

if.end37.if.then42_crit_edge552:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

if.end37.if.then42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then42:                                        ; preds = %if.end37.if.then42_crit_edge, %if.end37.if.then42_crit_edge552
  %82 = ptrtoint ptr %supports_wait_for_multi_cs to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %supports_wait_for_multi_cs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool43.not = icmp eq i8 %83, 0
  br i1 %tobool43.not, label %if.then42.if.end49_crit_edge, label %if.then44

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then44:                                        ; preds = %if.then42
  %84 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %queue_index.i, align 8
  %86 = ptrtoint ptr %stream_master_qid_arr_size.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %stream_master_qid_arr_size.i, align 1
  %conv.i243 = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp9.not.i = icmp eq i8 %87, 0
  br i1 %cmp9.not.i, label %if.then44.get_stream_master_qid_mask.exit_crit_edge, label %for.body.lr.ph.i

if.then44.get_stream_master_qid_mask.exit_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_stream_master_qid_mask.exit

for.body.lr.ph.i:                                 ; preds = %if.then44
  %88 = ptrtoint ptr %stream_master_qid_arr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %stream_master_qid_arr.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i244 = getelementptr i32, ptr %89, i32 %i.010.i
  %90 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i244, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %85)
  %cmp2.i245 = icmp eq i32 %91, %85
  br i1 %cmp2.i245, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i = shl nuw i32 1, %i.010.i
  br label %get_stream_master_qid_mask.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i243
  br i1 %exitcond.not.i, label %for.inc.i.get_stream_master_qid_mask.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.get_stream_master_qid_mask.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_stream_master_qid_mask.exit

get_stream_master_qid_mask.exit:                  ; preds = %for.inc.i.get_stream_master_qid_mask.exit_crit_edge, %if.then.i, %if.then44.get_stream_master_qid_mask.exit_crit_edge
  %retval.0.i246 = phi i32 [ %shl.i, %if.then.i ], [ 0, %if.then44.get_stream_master_qid_mask.exit_crit_edge ], [ 0, %for.inc.i.get_stream_master_qid_mask.exit_crit_edge ]
  %92 = trunc i32 %retval.0.i246 to i8
  %conv47 = or i8 %stream_master_qid_map.0366, %92
  br label %if.end49

if.end49:                                         ; preds = %get_stream_master_qid_mask.exit, %if.then42.if.end49_crit_edge, %if.end37.if.end49_crit_edge
  %int_queues_only.1.off0 = phi i1 [ false, %get_stream_master_qid_mask.exit ], [ false, %if.then42.if.end49_crit_edge ], [ %int_queues_only.0.off0365, %if.end37.if.end49_crit_edge ]
  %stream_master_qid_map.1 = phi i8 [ %conv47, %get_stream_master_qid_mask.exit ], [ %stream_master_qid_map.0366, %if.then42.if.end49_crit_edge ], [ %stream_master_qid_map.0366, %if.end37.if.end49_crit_edge ]
  %call51 = call ptr @hl_cs_allocate_job(ptr noundef %1, i32 noundef %54, i1 noundef zeroext %tobool50)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end49
  %cs_counters54 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12
  %call.i.i225 = call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters54, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters54) #14
  %call.i.i226 = call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters) #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.111) #17
  br i1 %tobool27.not290, label %if.then53.free_cs_object_crit_edge, label %release_cb

if.then53.free_cs_object_crit_edge:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_object

if.end59:                                         ; preds = %if.end49
  %add = add nuw i32 %i.0367, 1
  %id = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 9
  %95 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add, ptr %id, align 4
  %96 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cs, align 4
  %cs60 = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 1
  %98 = ptrtoint ptr %cs60 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %cs60, align 4
  %user_cb = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 2
  %99 = ptrtoint ptr %user_cb to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %cb.1, ptr %user_cb, align 4
  %100 = getelementptr %struct.hl_cs_chunk, ptr %45, i32 %i.0367, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %user_cb_size = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 11
  %103 = ptrtoint ptr %user_cb_size to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %user_cb_size, align 4
  %104 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %queue_index.i, align 8
  %hw_queue_id = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 10
  %106 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %hw_queue_id, align 4
  %107 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %97, align 8
  %arrayidx63 = getelementptr i16, ptr %108, i32 %105
  %109 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx63, align 2
  %inc = add i16 %110, 1
  store i16 %inc, ptr %arrayidx63, align 2
  %job_list = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i, align 4
  %call.i.i247 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call51, ptr noundef %112, ptr noundef %job_list) #14
  br i1 %call.i.i247, label %if.end.i.i, label %if.end59.list_add_tail.exit_crit_edge

if.end59.list_add_tail.exit_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call51, ptr %prev.i, align 4
  %114 = ptrtoint ptr %call51 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %job_list, ptr %call51, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call51, i32 0, i32 1
  %115 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev3.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %call51, ptr %112, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end59.list_add_tail.exit_crit_edge
  %staged_cs.i248 = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 29
  %117 = ptrtoint ptr %staged_cs.i248 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %staged_cs.i248, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i249 = icmp eq i8 %118, 0
  br i1 %tobool.not.i249, label %list_add_tail.exit.land.lhs.true66_crit_edge, label %land.lhs.true.i

list_add_tail.exit.land.lhs.true66_crit_edge:     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true66

land.lhs.true.i:                                  ; preds = %list_add_tail.exit
  %staged_last.i250 = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 27
  %119 = ptrtoint ptr %staged_last.i250 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %staged_last.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool1.not.i = icmp eq i8 %120, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end75_crit_edge, label %land.lhs.true.i.land.lhs.true66_crit_edge

land.lhs.true.i.land.lhs.true66_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true66

land.lhs.true.i.if.end75_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

land.lhs.true66:                                  ; preds = %land.lhs.true.i.land.lhs.true66_crit_edge, %list_add_tail.exit.land.lhs.true66_crit_edge
  %queue_type67 = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 8
  %121 = ptrtoint ptr %queue_type67 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %queue_type67, align 4
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %122, label %land.lhs.true66.if.end75_crit_edge [
    i32 1, label %land.lhs.true66.if.then74_crit_edge
    i32 4, label %land.lhs.true66.if.then74_crit_edge553
  ]

land.lhs.true66.if.then74_crit_edge553:           ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then74

land.lhs.true66.if.then74_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then74

land.lhs.true66.if.end75_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then74:                                        ; preds = %land.lhs.true66.if.then74_crit_edge, %land.lhs.true66.if.then74_crit_edge553
  %refcount.i = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %124 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then74.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !399

if.then74.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then74
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %125 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %.not.i.i.i.i.i = icmp sgt i32 %125, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end75_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end75_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then74.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then74.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %if.end75

if.end75:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end75_crit_edge, %land.lhs.true66.if.end75_crit_edge, %land.lhs.true.i.if.end75_crit_edge
  call void @hl_debugfs_add_job(ptr noundef %1, ptr noundef nonnull %call51) #14
  %126 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %parser.i) #14
  %128 = call ptr @memset(ptr %46, i32 255, i32 40)
  %129 = ptrtoint ptr %cs60 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cs60, align 4
  %ctx.i = getelementptr inbounds %struct.hl_cs, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ctx.i, align 4
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %132, i32 0, i32 21
  %133 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %asid.i, align 8
  %135 = ptrtoint ptr %ctx_id.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %ctx_id.i, align 4
  %sequence.i = getelementptr inbounds %struct.hl_cs, ptr %130, i32 0, i32 13
  %136 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %sequence.i, align 8
  %138 = ptrtoint ptr %cs_sequence.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %cs_sequence.i, align 8
  %139 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %id, align 4
  %conv.i253 = trunc i32 %140 to i8
  %141 = ptrtoint ptr %job_id.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.i253, ptr %job_id.i, align 4
  %142 = ptrtoint ptr %hw_queue_id to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hw_queue_id, align 4
  %144 = ptrtoint ptr %hw_queue_id3.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %hw_queue_id3.i, align 8
  %userptr_list.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 5
  %145 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %userptr_list.i, ptr %46, align 8
  %146 = ptrtoint ptr %patched_cb.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %patched_cb.i, align 4
  %147 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %user_cb, align 4
  %149 = ptrtoint ptr %parser.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %parser.i, align 8
  %150 = ptrtoint ptr %user_cb_size to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %user_cb_size, align 4
  %152 = ptrtoint ptr %user_cb_size5.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %user_cb_size5.i, align 4
  %queue_type.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 8
  %153 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %queue_type.i, align 4
  %155 = ptrtoint ptr %queue_type6.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %queue_type6.i, align 8
  %is_kernel_allocated_cb.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 14
  %156 = ptrtoint ptr %is_kernel_allocated_cb.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %is_kernel_allocated_cb.i, align 4
  %158 = ptrtoint ptr %is_kernel_allocated_cb7.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %is_kernel_allocated_cb7.i, align 1
  %patched_cb8.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 3
  %159 = ptrtoint ptr %patched_cb8.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %patched_cb8.i, align 4
  %staged_cs.i.i = getelementptr inbounds %struct.hl_cs, ptr %130, i32 0, i32 29
  %160 = ptrtoint ptr %staged_cs.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %staged_cs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i.i254 = icmp eq i8 %161, 0
  br i1 %tobool.not.i.i254, label %if.end75.if.end.i.i255_crit_edge, label %land.lhs.true.i.i

if.end75.if.end.i.i255_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i255

land.lhs.true.i.i:                                ; preds = %if.end75
  %staged_last.i.i = getelementptr inbounds %struct.hl_cs, ptr %130, i32 0, i32 27
  %162 = ptrtoint ptr %staged_last.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %staged_last.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool1.not.i.i = icmp eq i8 %163, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cs_needs_completion.exit.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i255_crit_edge

land.lhs.true.i.i.if.end.i.i255_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i255

land.lhs.true.i.i.cs_needs_completion.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_needs_completion.exit.i

if.end.i.i255:                                    ; preds = %land.lhs.true.i.i.if.end.i.i255_crit_edge, %if.end75.if.end.i.i255_crit_edge
  br label %cs_needs_completion.exit.i

cs_needs_completion.exit.i:                       ; preds = %if.end.i.i255, %land.lhs.true.i.i.cs_needs_completion.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ true, %if.end.i.i255 ], [ false, %land.lhs.true.i.i.cs_needs_completion.exit.i_crit_edge ]
  %conv10.i = zext i1 %retval.0.i.i to i8
  %164 = ptrtoint ptr %completion.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv10.i, ptr %completion.i, align 1
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %127, i32 0, i32 34
  %165 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %asic_funcs.i, align 8
  %cs_parser.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %166, i32 0, i32 24
  %167 = ptrtoint ptr %cs_parser.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cs_parser.i, align 4
  %call11.i = call i32 %168(ptr noundef %127, ptr noundef nonnull %parser.i) #14
  %169 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %queue_type.i, align 4
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %170, label %cs_needs_completion.exit.i.if.else.i262_crit_edge [
    i32 1, label %cs_needs_completion.exit.i.if.then.i257_crit_edge
    i32 4, label %land.lhs.true.i54.i
  ]

cs_needs_completion.exit.i.if.then.i257_crit_edge: ; preds = %cs_needs_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i257

cs_needs_completion.exit.i.if.else.i262_crit_edge: ; preds = %cs_needs_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i262

land.lhs.true.i54.i:                              ; preds = %cs_needs_completion.exit.i
  %172 = ptrtoint ptr %is_kernel_allocated_cb.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %is_kernel_allocated_cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i53.i = icmp eq i8 %173, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.if.else.i262_crit_edge, label %is_cb_patched.exit.i

land.lhs.true.i54.i.if.else.i262_crit_edge:       ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i262

is_cb_patched.exit.i:                             ; preds = %land.lhs.true.i54.i
  %mmu_enable.i.i = getelementptr inbounds %struct.hl_device, ptr %127, i32 0, i32 107
  %174 = ptrtoint ptr %mmu_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %mmu_enable.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool3.not.i.i = icmp eq i8 %175, 0
  br i1 %tobool3.not.i.i, label %is_cb_patched.exit.i.if.then.i257_crit_edge, label %is_cb_patched.exit.i.if.else.i262_crit_edge

is_cb_patched.exit.i.if.else.i262_crit_edge:      ; preds = %is_cb_patched.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i262

is_cb_patched.exit.i.if.then.i257_crit_edge:      ; preds = %is_cb_patched.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i257

if.then.i257:                                     ; preds = %is_cb_patched.exit.i.if.then.i257_crit_edge, %cs_needs_completion.exit.i.if.then.i257_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i256 = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i256, label %if.then13.i260, label %if.then78.loopexit.critedge

if.then13.i260:                                   ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %patched_cb.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %patched_cb.i, align 4
  %178 = ptrtoint ptr %patched_cb8.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %177, ptr %patched_cb8.i, align 4
  %179 = ptrtoint ptr %patched_cb_size.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %patched_cb_size.i, align 8
  %job_cb_size.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 12
  %181 = ptrtoint ptr %job_cb_size.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %job_cb_size.i, align 4
  %182 = ptrtoint ptr %contains_dma_pkt.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %contains_dma_pkt.i, align 2
  %contains_dma_pkt16.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 15
  %184 = ptrtoint ptr %contains_dma_pkt16.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %contains_dma_pkt16.i, align 1
  %cs_cnt.i258 = getelementptr inbounds %struct.hl_cb, ptr %177, i32 0, i32 12
  %call.i.i.i259 = call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt.i258, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cs_cnt.i258, i32 1, i32 3, i32 1) #14
  %185 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt.i258, ptr %cs_cnt.i258, i32 1, ptr elementtype(i32) %cs_cnt.i258) #14, !srcloc !413
  %186 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %user_cb, align 4
  %cs_cnt19.i.c447 = getelementptr inbounds %struct.hl_cb, ptr %187, i32 0, i32 12
  %call.i.i52.i.c448 = call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt19.i.c447, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cs_cnt19.i.c447, i32 1, i32 3, i32 1) #14
  %188 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt19.i.c447, ptr %cs_cnt19.i.c447, i32 1, ptr elementtype(i32) %cs_cnt19.i.c447) #14, !srcloc !414
  %189 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %user_cb, align 4
  call void @hl_cb_put(ptr noundef %190) #14
  %191 = ptrtoint ptr %user_cb to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %user_cb, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %parser.i) #14
  br label %for.inc

if.else.i262:                                     ; preds = %is_cb_patched.exit.i.if.else.i262_crit_edge, %land.lhs.true.i54.i.if.else.i262_crit_edge, %cs_needs_completion.exit.i.if.else.i262_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool22.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool22.not.i, label %cs_parser.exit.thread, label %cs_parser.exit.thread304

cs_parser.exit.thread304:                         ; preds = %if.else.i262
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %parser.i) #14
  br label %if.then78

cs_parser.exit.thread:                            ; preds = %if.else.i262
  call void @__sanitizer_cov_trace_pc() #16
  %192 = ptrtoint ptr %user_cb_size to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %user_cb_size, align 4
  %job_cb_size25.i = getelementptr inbounds %struct.hl_cs_job, ptr %call51, i32 0, i32 12
  %194 = ptrtoint ptr %job_cb_size25.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %job_cb_size25.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %parser.i) #14
  br label %for.inc

if.then78.loopexit.critedge:                      ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #16
  %195 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %user_cb, align 4
  %cs_cnt19.i.c = getelementptr inbounds %struct.hl_cb, ptr %196, i32 0, i32 12
  %call.i.i52.i.c = call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt19.i.c, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cs_cnt19.i.c, i32 1, i32 3, i32 1) #14
  %197 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt19.i.c, ptr %cs_cnt19.i.c, i32 1, ptr elementtype(i32) %cs_cnt19.i.c) #14, !srcloc !414
  %198 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %user_cb, align 4
  call void @hl_cb_put(ptr noundef %199) #14
  %200 = ptrtoint ptr %user_cb to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %user_cb, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %parser.i) #14
  br label %if.then78

if.then78:                                        ; preds = %if.then78.loopexit.critedge, %cs_parser.exit.thread304
  %parsing_drop_cnt = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 1
  %call.i.i227 = call zeroext i1 @__kasan_check_write(ptr noundef %parsing_drop_cnt, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %parsing_drop_cnt) #14
  %parsing_drop_cnt80 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 50, i32 1
  %call.i.i228 = call zeroext i1 @__kasan_check_write(ptr noundef %parsing_drop_cnt80, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %parsing_drop_cnt80) #14
  %dev84 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %201 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev84, align 4
  %ctx85 = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 1
  %203 = ptrtoint ptr %ctx85 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ctx85, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %204, i32 0, i32 21
  %205 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %asid, align 8
  %sequence86 = getelementptr inbounds %struct.hl_cs, ptr %97, i32 0, i32 13
  %207 = ptrtoint ptr %sequence86 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %sequence86, align 8
  %209 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.134, i32 noundef %206, i64 noundef %208, i32 noundef %210, i32 noundef %call11.i) #17
  br label %free_cs_object

for.inc:                                          ; preds = %cs_parser.exit.thread, %if.then13.i260
  %exitcond.not = icmp eq i32 %add, %num_chunks
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %int_queues_only.1.off0, label %for.end.land.lhs.true94_crit_edge, label %for.end.if.end108_crit_edge

for.end.if.end108_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

for.end.land.lhs.true94_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true94

land.lhs.true94:                                  ; preds = %for.end.land.lhs.true94_crit_edge, %if.end21.land.lhs.true94_crit_edge
  %stream_master_qid_map.0.lcssa411 = phi i8 [ %stream_master_qid_map.1, %for.end.land.lhs.true94_crit_edge ], [ 0, %if.end21.land.lhs.true94_crit_edge ]
  %211 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cs, align 4
  %staged_cs.i263 = getelementptr inbounds %struct.hl_cs, ptr %212, i32 0, i32 29
  %213 = ptrtoint ptr %staged_cs.i263 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %staged_cs.i263, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i264 = icmp eq i8 %214, 0
  br i1 %tobool.not.i264, label %land.lhs.true94.if.then97_crit_edge, label %land.lhs.true.i267

land.lhs.true94.if.then97_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

land.lhs.true.i267:                               ; preds = %land.lhs.true94
  %staged_last.i265 = getelementptr inbounds %struct.hl_cs, ptr %212, i32 0, i32 27
  %215 = ptrtoint ptr %staged_last.i265 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %staged_last.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool1.not.i266 = icmp eq i8 %216, 0
  br i1 %tobool1.not.i266, label %land.lhs.true.i267.if.end108_crit_edge, label %land.lhs.true.i267.if.then97_crit_edge

land.lhs.true.i267.if.then97_crit_edge:           ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then97

land.lhs.true.i267.if.end108_crit_edge:           ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.then97:                                        ; preds = %land.lhs.true.i267.if.then97_crit_edge, %land.lhs.true94.if.then97_crit_edge
  %validation_drop_cnt99 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 12, i32 5
  %call.i.i229 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt99, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt99) #14
  %validation_drop_cnt100 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 50, i32 5
  %call.i.i230 = call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt100, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt100) #14
  %dev104 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %217 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev104, align 4
  %ctx105 = getelementptr inbounds %struct.hl_cs, ptr %212, i32 0, i32 1
  %219 = ptrtoint ptr %ctx105 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ctx105, align 4
  %asid106 = getelementptr inbounds %struct.hl_ctx, ptr %220, i32 0, i32 21
  %221 = ptrtoint ptr %asid106 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %asid106, align 8
  %sequence107 = getelementptr inbounds %struct.hl_cs, ptr %212, i32 0, i32 13
  %223 = ptrtoint ptr %sequence107 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %sequence107, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.137, i32 noundef %222, i64 noundef %224) #17
  br label %free_cs_object

if.end108:                                        ; preds = %land.lhs.true.i267.if.end108_crit_edge, %for.end.if.end108_crit_edge
  %stream_master_qid_map.0.lcssa410 = phi i8 [ %stream_master_qid_map.0.lcssa411, %land.lhs.true.i267.if.end108_crit_edge ], [ %stream_master_qid_map.1, %for.end.if.end108_crit_edge ]
  %supports_wait_for_multi_cs109 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 102
  %225 = ptrtoint ptr %supports_wait_for_multi_cs109 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %supports_wait_for_multi_cs109, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool110.not = icmp eq i8 %226, 0
  br i1 %tobool110.not, label %if.end108.if.end114_crit_edge, label %if.then111

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  %conv112 = zext i8 %stream_master_qid_map.0.lcssa410 to i32
  %227 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cs, align 4
  %fence = getelementptr inbounds %struct.hl_cs, ptr %228, i32 0, i32 5
  %229 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fence, align 8
  %stream_master_qid_map113 = getelementptr inbounds %struct.hl_fence, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %stream_master_qid_map113 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %conv112, ptr %stream_master_qid_map113, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %232 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cs, align 4
  %call115 = call i32 @hl_hw_queue_schedule_cs(ptr noundef %233) #14
  %234 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %call115, label %do.end123 [
    i32 0, label %if.end129
    i32 -11, label %if.end114.free_cs_object_crit_edge
  ]

if.end114.free_cs_object_crit_edge:               ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cs_object

do.end123:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  %dev124 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %235 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev124, align 4
  %ctx125 = getelementptr inbounds %struct.hl_cs, ptr %233, i32 0, i32 1
  %237 = ptrtoint ptr %ctx125 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ctx125, align 4
  %asid126 = getelementptr inbounds %struct.hl_ctx, ptr %238, i32 0, i32 21
  %239 = ptrtoint ptr %asid126 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %asid126, align 8
  %sequence127 = getelementptr inbounds %struct.hl_cs, ptr %233, i32 0, i32 13
  %241 = ptrtoint ptr %sequence127 to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %sequence127, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.72, i32 noundef %240, i64 noundef %242, i32 noundef %call115) #17
  br label %free_cs_object

if.end129:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  %initial_sob_count = getelementptr inbounds %struct.hl_cs, ptr %233, i32 0, i32 20
  %243 = ptrtoint ptr %initial_sob_count to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %initial_sob_count, align 4
  %245 = ptrtoint ptr %signal_initial_sob_count to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %signal_initial_sob_count, align 2
  br label %put_cs

release_cb:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %cs_cnt = getelementptr inbounds %struct.hl_cb, ptr %cb.1, i32 0, i32 12
  %call.i.i231 = call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cs_cnt, i32 1, i32 3, i32 1) #14
  %246 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt, ptr %cs_cnt, i32 1, ptr elementtype(i32) %cs_cnt) #14, !srcloc !414
  call void @hl_cb_put(ptr noundef %cb.1) #14
  br label %free_cs_object

free_cs_object:                                   ; preds = %release_cb, %do.end123, %if.end114.free_cs_object_crit_edge, %if.then97, %if.then78, %if.then53.free_cs_object_crit_edge, %if.then31, %if.then24
  %rc.1 = phi i32 [ -12, %release_cb ], [ -22, %if.then97 ], [ %call115, %do.end123 ], [ %call115, %if.end114.free_cs_object_crit_edge ], [ -22, %if.then31 ], [ %call11.i, %if.then78 ], [ -22, %if.then24 ], [ -12, %if.then53.free_cs_object_crit_edge ]
  %247 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cs, align 4
  %staged_cs.i.i.i = getelementptr inbounds %struct.hl_cs, ptr %248, i32 0, i32 29
  %249 = ptrtoint ptr %staged_cs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %staged_cs.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool.not.i.i.i = icmp eq i8 %250, 0
  br i1 %tobool.not.i.i.i, label %free_cs_object.staged_cs_put.exit.i_crit_edge, label %land.lhs.true.i.i.i

free_cs_object.staged_cs_put.exit.i_crit_edge:    ; preds = %free_cs_object
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit.i

land.lhs.true.i.i.i:                              ; preds = %free_cs_object
  %staged_last.i.i.i = getelementptr inbounds %struct.hl_cs, ptr %248, i32 0, i32 27
  %251 = ptrtoint ptr %staged_last.i.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %staged_last.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool1.not.i.i.i = icmp eq i8 %252, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i271, label %land.lhs.true.i.i.i.staged_cs_put.exit.i_crit_edge

land.lhs.true.i.i.i.staged_cs_put.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %staged_cs_put.exit.i

if.then.i.i271:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @cs_put(ptr noundef %248) #14
  br label %staged_cs_put.exit.i

staged_cs_put.exit.i:                             ; preds = %if.then.i.i271, %land.lhs.true.i.i.i.staged_cs_put.exit.i_crit_edge, %free_cs_object.staged_cs_put.exit.i_crit_edge
  %job_list.i = getelementptr inbounds %struct.hl_cs, ptr %248, i32 0, i32 2
  %253 = ptrtoint ptr %job_list.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %job_list.i, align 8
  %cmp.not19.i = icmp eq ptr %254, %job_list.i
  br i1 %cmp.not19.i, label %staged_cs_put.exit.i.cs_rollback.exit_crit_edge, label %staged_cs_put.exit.i.for.body.i273_crit_edge

staged_cs_put.exit.i.for.body.i273_crit_edge:     ; preds = %staged_cs_put.exit.i
  br label %for.body.i273

staged_cs_put.exit.i.cs_rollback.exit_crit_edge:  ; preds = %staged_cs_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_rollback.exit

for.body.i273:                                    ; preds = %for.body.i273.for.body.i273_crit_edge, %staged_cs_put.exit.i.for.body.i273_crit_edge
  %job.020.i = phi ptr [ %tmp.0.i, %for.body.i273.for.body.i273_crit_edge ], [ %254, %staged_cs_put.exit.i.for.body.i273_crit_edge ]
  %255 = ptrtoint ptr %job.020.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %tmp.0.i = load ptr, ptr %job.020.i, align 4
  call fastcc void @complete_job(ptr noundef %1, ptr noundef %job.020.i) #14
  %cmp.not.i272 = icmp eq ptr %tmp.0.i, %job_list.i
  br i1 %cmp.not.i272, label %for.body.i273.cs_rollback.exit_crit_edge, label %for.body.i273.for.body.i273_crit_edge

for.body.i273.for.body.i273_crit_edge:            ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i273

for.body.i273.cs_rollback.exit_crit_edge:         ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_rollback.exit

cs_rollback.exit:                                 ; preds = %for.body.i273.cs_rollback.exit_crit_edge, %staged_cs_put.exit.i.cs_rollback.exit_crit_edge
  %256 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 -1, ptr %cs_seq, align 8
  br label %put_cs

put_cs:                                           ; preds = %cs_rollback.exit, %if.end129
  %rc.2 = phi i32 [ %rc.1, %cs_rollback.exit ], [ 0, %if.end129 ]
  %257 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cs, align 4
  call fastcc void @cs_put(ptr noundef %258)
  br label %free_cs_chunk_array

free_cs_chunk_array:                              ; preds = %put_cs, %if.end.free_cs_chunk_array_crit_edge
  %rc.3 = phi i32 [ %call11, %if.end.free_cs_chunk_array_crit_edge ], [ %rc.2, %put_cs ]
  %259 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cs_chunk_array, align 4
  call void @kfree(ptr noundef %260) #14
  br label %cleanup130

cleanup130:                                       ; preds = %free_cs_chunk_array, %entry.cleanup130_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup130_crit_edge ], [ %rc.3, %free_cs_chunk_array ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_chunk_array) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_multi_cs_completion_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0
  %used = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0, i32 4
  %0 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %used, align 4
  %lock = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @hl_multi_cs_completion_init.__key, i16 noundef signext 3) #14
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx, align 4
  %wait.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 0, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #14
  %arrayidx.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1
  %used.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1, i32 4
  %2 = ptrtoint ptr %used.1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %used.1, align 4
  %lock.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1, ptr noundef nonnull @.str.14, ptr noundef nonnull @hl_multi_cs_completion_init.__key, i16 noundef signext 3) #14
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx.1, align 4
  %wait.i.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 56, i32 1, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.1, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_wait_ioctl(ptr noundef %hpriv, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %timestamp.i = alloca i64, align 8
  %mcs_data.i = alloca %struct.multi_cs_data, align 8
  %completion_value.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.hl_wait_cs_in, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %2 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpriv, align 4
  %call = tail call zeroext i1 @hl_device_operational(ptr noundef %3, ptr noundef null) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hpriv, align 4
  %user_interrupt_count.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 64
  %6 = ptrtoint ptr %user_interrupt_count.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %user_interrupt_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.end16.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.159) #17
  br label %cleanup

do.end16.i:                                       ; preds = %if.then2
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 4
  %shr.i = lshr i32 %11, 20
  %first_available_user_msix_interrupt.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 33, i32 62
  %12 = ptrtoint ptr %first_available_user_msix_interrupt.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %first_available_user_msix_interrupt.i, align 8
  %conv18.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv18.i)
  %cmp.i = icmp ult i32 %shr.i, %conv18.i
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.end16.i
  %add.i = add i16 %7, -1
  %sub.i = add i16 %add.i, %13
  %conv26.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv26.i)
  %cmp27.i = icmp ule i32 %shr.i, %conv26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %shr.i)
  %cmp30.not.i = icmp eq i32 %shr.i, 4095
  %or.cond.i = or i1 %cmp30.not.i, %cmp27.i
  br i1 %or.cond.i, label %if.end38.i, label %lor.lhs.false.i.do.end35.i_crit_edge

lor.lhs.false.i.do.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35.i

land.lhs.true.i:                                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %shr.i)
  %cond.i = icmp eq i32 %shr.i, 4095
  br i1 %cond.i, label %land.lhs.true.i.if.then42.i_crit_edge, label %land.lhs.true.i.do.end35.i_crit_edge

land.lhs.true.i.do.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35.i

land.lhs.true.i.if.then42.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

do.end35.i:                                       ; preds = %land.lhs.true.i.do.end35.i_crit_edge, %lor.lhs.false.i.do.end35.i_crit_edge
  %dev36.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev36.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.162, i32 noundef %shr.i) #17
  br label %cleanup

if.end38.i:                                       ; preds = %lor.lhs.false.i
  br i1 %cmp30.not.i, label %if.end38.i.if.then42.i_crit_edge, label %if.else.i

if.end38.i.if.then42.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.end38.i.if.then42.i_crit_edge, %land.lhs.true.i.if.then42.i_crit_edge
  %common_user_interrupt.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 15
  br label %if.end46.i

if.else.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  %user_interrupt.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 14
  %16 = ptrtoint ptr %user_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_interrupt.i, align 8
  %sub45.i = sub nsw i32 %shr.i, %conv18.i
  %arrayidx.i = getelementptr %struct.hl_user_interrupt, ptr %17, i32 %sub45.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i, %if.then42.i
  %interrupt.0.i = phi ptr [ %common_user_interrupt.i, %if.then42.i ], [ %arrayidx.i, %if.else.i ]
  %and48.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %ctx52.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %18 = ptrtoint ptr %ctx52.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx52.i, align 4
  br i1 %tobool49.not.i, label %if.else51.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end46.i
  %cb_mgr.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 5
  %20 = getelementptr inbounds %struct.hl_wait_cs_in, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data, align 8
  %cq_counters_offset.i = getelementptr inbounds %struct.hl_wait_cs_in, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %cq_counters_offset.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cq_counters_offset.i, align 8
  %target.i = getelementptr inbounds %struct.anon.107, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %target.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %target.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %22)
  %cmp.i.i.i = icmp ult i64 %22, 4294967296
  br i1 %cmp.i.i.i, label %if.else.i.i.i.i, label %if.end.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i = trunc i64 %22 to i32
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %conv.i.i.i) #14
  br label %hl_usecs64_to_jiffies.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 18446744073709550, i64 %22)
  %cmp1.i.i.i = icmp ugt i64 %22, 18446744073709550
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.end5.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i.i = tail call i32 @nsecs_to_jiffies(i64 noundef -1) #14
  br label %hl_usecs64_to_jiffies.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i.i = mul nuw i64 %22, 1000
  %call6.i.i.i = tail call i32 @nsecs_to_jiffies(i64 noundef %mul.i.i.i) #14
  br label %hl_usecs64_to_jiffies.exit.i.i

hl_usecs64_to_jiffies.exit.i.i:                   ; preds = %if.end5.i.i.i, %if.then3.i.i.i, %if.else.i.i.i.i
  %retval.0.i.i.i = phi i32 [ %call4.i.i.i, %if.then3.i.i.i ], [ %call6.i.i.i, %if.end5.i.i.i ], [ %call3.i.i.i.i, %if.else.i.i.i.i ]
  tail call void @hl_ctx_get(ptr noundef %5, ptr noundef %19) #14
  %shr.i.i = lshr i64 %24, 12
  %conv.i.i = trunc i64 %shr.i.i to i32
  %call1.i.i = tail call ptr @hl_cb_get(ptr noundef %5, ptr noundef %cb_mgr.i, i32 noundef %conv.i.i) #14
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %hl_usecs64_to_jiffies.exit.i.i._hl_interrupt_wait_ioctl.exit.i_crit_edge, label %if.end.i.i

hl_usecs64_to_jiffies.exit.i.i._hl_interrupt_wait_ioctl.exit.i_crit_edge: ; preds = %hl_usecs64_to_jiffies.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_hl_interrupt_wait_ioctl.exit.i

if.end.i.i:                                       ; preds = %hl_usecs64_to_jiffies.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 120) #19
  %tobool4.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %fence.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1
  %refcount.i.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #14
  %30 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %refcount.i.i.i, align 8
  %cs_sequence.i.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %cs_sequence.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 4294967295, ptr %cs_sequence.i.i.i, align 8
  %error.i.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %error.i.i.i, align 4
  %timestamp.i.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %timestamp.i.i.i, align 8
  %mcs_handling_done.i.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %mcs_handling_done.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %mcs_handling_done.i.i.i, align 8
  %35 = ptrtoint ptr %fence.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %fence.i.i, align 8
  %wait.i.i.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #14
  %kernel_address.i.i = getelementptr inbounds %struct.hl_cb, ptr %call1.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %kernel_address.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kernel_address.i.i, align 8
  %idx.ext.i.i = trunc i64 %26 to i32
  %add.ptr.i.i = getelementptr i64, ptr %37, i32 %idx.ext.i.i
  %cq_kernel_addr.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %cq_kernel_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i.i, ptr %cq_kernel_addr.i.i, align 8
  %cq_target_value.i.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %cq_target_value.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %28, ptr %cq_target_value.i.i, align 8
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %28)
  %cmp.not.i.i = icmp ult i64 %41, %28
  br i1 %cmp.not.i.i, label %if.end14.i.thread.i, label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i.i = tail call i64 @ktime_get() #14
  %42 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call11.i.i, ptr %timestamp.i.i.i, align 8
  br label %set_timestamp.i.i

if.end14.i.thread.i:                              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool15.not.i169.i = icmp eq i64 %22, 0
  br i1 %tobool15.not.i169.i, label %if.end14.i.thread.i.set_timestamp.i.i_crit_edge, label %do.body20.i.i

if.end14.i.thread.i.set_timestamp.i.i_crit_edge:  ; preds = %if.end14.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_timestamp.i.i

do.body20.i.i:                                    ; preds = %if.end14.i.thread.i
  %wait_list_lock.i.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 2
  %call24.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i.i) #14
  %wait_list_head.i.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 1
  %prev.i.i.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i146.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %44, ptr noundef %wait_list_head.i.i) #14
  br i1 %call.i.i146.i.i, label %if.end.i.i147.i.i, label %do.body20.i.i.list_add_tail.exit.i.i_crit_edge

do.body20.i.i.list_add_tail.exit.i.i_crit_edge:   ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i

if.end.i.i147.i.i:                                ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wait_list_head.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i.i.i, ptr %44, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i147.i.i, %do.body20.i.i.list_add_tail.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i.i, i32 noundef %call24.i.i) #14
  %call29.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %fence.i.i, i32 noundef %retval.0.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp30.i.i = icmp sgt i32 %call29.i.i, 0
  br i1 %cmp30.i.i, label %list_add_tail.exit.i.i.do.body81.i.i_crit_edge, label %if.else.i.i

list_add_tail.exit.i.i.do.body81.i.i_crit_edge:   ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81.i.i

if.else.i.i:                                      ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call29.i.i)
  %cmp33.i.i = icmp eq i32 %call29.i.i, -512
  br i1 %cmp33.i.i, label %do.body36.i.i, label %if.else46.i.i

do.body36.i.i:                                    ; preds = %if.else.i.i
  %call37.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @_hl_interrupt_wait_ioctl._rs, ptr noundef nonnull @__func__._hl_interrupt_wait_ioctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool38.not.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool38.not.i.i, label %do.body36.i.i.do.body81.i.i_crit_edge, label %do.end42.i.i

do.body36.i.i.do.body81.i.i_crit_edge:            ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81.i.i

do.end42.i.i:                                     ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %interrupt_id.i.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 3
  %51 = ptrtoint ptr %interrupt_id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %interrupt_id.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.167, i32 noundef %52) #17
  br label %do.body81.i.i

if.else46.i.i:                                    ; preds = %if.else.i.i
  %53 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %54)
  %cmp48.i.i = icmp eq i32 %54, -5
  br i1 %cmp48.i.i, label %do.body51.i.i, label %do.body65.i.i

do.body51.i.i:                                    ; preds = %if.else46.i.i
  %call52.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @_hl_interrupt_wait_ioctl._rs.168, ptr noundef nonnull @__func__._hl_interrupt_wait_ioctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %do.body51.i.i.do.body81.i.i_crit_edge, label %do.end57.i.i

do.body51.i.i.do.body81.i.i_crit_edge:            ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81.i.i

do.end57.i.i:                                     ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev58.i.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %55 = ptrtoint ptr %dev58.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev58.i.i, align 4
  %57 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %error.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.170, i32 noundef %58) #17
  br label %do.body81.i.i

do.body65.i.i:                                    ; preds = %if.else46.i.i
  %call66.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @_hl_interrupt_wait_ioctl._rs.172, ptr noundef nonnull @__func__._hl_interrupt_wait_ioctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %do.body65.i.i.do.body81.i.i_crit_edge, label %do.end71.i.i

do.body65.i.i.do.body81.i.i_crit_edge:            ; preds = %do.body65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81.i.i

do.end71.i.i:                                     ; preds = %do.body65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev72.i.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %59 = ptrtoint ptr %dev72.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev72.i.i, align 4
  %interrupt_id73.i.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 3
  %61 = ptrtoint ptr %interrupt_id73.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %interrupt_id73.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.174, i32 noundef %62) #17
  br label %do.body81.i.i

do.body81.i.i:                                    ; preds = %do.end71.i.i, %do.body65.i.i.do.body81.i.i_crit_edge, %do.end57.i.i, %do.body51.i.i.do.body81.i.i_crit_edge, %do.end42.i.i, %do.body36.i.i.do.body81.i.i_crit_edge, %list_add_tail.exit.i.i.do.body81.i.i_crit_edge
  %.sink.i.i = phi i32 [ 0, %list_add_tail.exit.i.i.do.body81.i.i_crit_edge ], [ 3, %do.end42.i.i ], [ 3, %do.body36.i.i.do.body81.i.i_crit_edge ], [ 1, %do.body51.i.i.do.body81.i.i_crit_edge ], [ 1, %do.end57.i.i ], [ 1, %do.body65.i.i.do.body81.i.i_crit_edge ], [ 1, %do.end71.i.i ]
  %rc.1.i.i = phi i32 [ 0, %list_add_tail.exit.i.i.do.body81.i.i_crit_edge ], [ -4, %do.end42.i.i ], [ -4, %do.body36.i.i.do.body81.i.i_crit_edge ], [ -5, %do.body51.i.i.do.body81.i.i_crit_edge ], [ -5, %do.end57.i.i ], [ -110, %do.body65.i.i.do.body81.i.i_crit_edge ], [ -110, %do.end71.i.i ]
  %call89.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i.i) #14
  %call.i.i148.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i.i) #14
  br i1 %call.i.i148.i.i, label %if.end.i.i149.i.i, label %do.body81.i.i.list_del.exit.i.i_crit_edge

do.body81.i.i.list_del.exit.i.i_crit_edge:        ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i149.i.i:                                ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i.i, align 4
  %65 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i.i.i, align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i149.i.i, %do.body81.i.i.list_del.exit.i.i_crit_edge
  %69 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i.i, align 8
  %prev.i150.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i150.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i150.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i.i, i32 noundef %call89.i.i) #14
  br label %set_timestamp.i.i

set_timestamp.i.i:                                ; preds = %list_del.exit.i.i, %if.end14.i.thread.i.set_timestamp.i.i_crit_edge, %if.end14.i.i
  %status.1.i = phi i32 [ %.sink.i.i, %list_del.exit.i.i ], [ 1, %if.end14.i.thread.i.set_timestamp.i.i_crit_edge ], [ 0, %if.end14.i.i ]
  %rc.2.i.i = phi i32 [ %rc.1.i.i, %list_del.exit.i.i ], [ 0, %if.end14.i.thread.i.set_timestamp.i.i_crit_edge ], [ 0, %if.end14.i.i ]
  %71 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %timestamp.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %set_timestamp.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %status.2.i = phi i32 [ 1, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ %status.1.i, %set_timestamp.i.i ]
  %timestamp.0.i = phi i64 [ -1, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ %72, %set_timestamp.i.i ]
  %retval.0.ph.i.i = phi i32 [ -12, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rc.2.i.i, %set_timestamp.i.i ]
  tail call void @hl_cb_put(ptr noundef nonnull %call1.i.i) #14
  br label %_hl_interrupt_wait_ioctl.exit.i

_hl_interrupt_wait_ioctl.exit.i:                  ; preds = %cleanup.sink.split.i.i, %hl_usecs64_to_jiffies.exit.i.i._hl_interrupt_wait_ioctl.exit.i_crit_edge
  %status.3.i = phi i32 [ 1, %hl_usecs64_to_jiffies.exit.i.i._hl_interrupt_wait_ioctl.exit.i_crit_edge ], [ %status.2.i, %cleanup.sink.split.i.i ]
  %timestamp.1.i = phi i64 [ -1, %hl_usecs64_to_jiffies.exit.i.i._hl_interrupt_wait_ioctl.exit.i_crit_edge ], [ %timestamp.0.i, %cleanup.sink.split.i.i ]
  %retval.0.i.i = phi i32 [ -22, %hl_usecs64_to_jiffies.exit.i.i._hl_interrupt_wait_ioctl.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  %call99.i.i = tail call i32 @hl_ctx_put(ptr noundef %19) #14
  br label %if.end55.i

if.else51.i:                                      ; preds = %if.end46.i
  %73 = getelementptr inbounds %struct.hl_wait_cs_in, ptr %data, i32 0, i32 3
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %73, align 8
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %data, align 8
  %target53.i = getelementptr inbounds %struct.anon.107, ptr %data, i32 0, i32 1
  %78 = ptrtoint ptr %target53.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %target53.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %completion_value.i.i) #14
  %80 = ptrtoint ptr %completion_value.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 -1, ptr %completion_value.i.i, align 8, !annotation !403
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %75)
  %cmp.i.i124.i = icmp ult i64 %75, 4294967296
  br i1 %cmp.i.i124.i, label %if.else.i.i.i130.i, label %if.end.i.i132.i

if.else.i.i.i130.i:                               ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i125.i = trunc i64 %75 to i32
  %call3.i.i.i129.i = tail call i32 @__usecs_to_jiffies(i32 noundef %conv.i.i125.i) #14
  br label %hl_usecs64_to_jiffies.exit.i141.i

if.end.i.i132.i:                                  ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 18446744073709550, i64 %75)
  %cmp1.i.i131.i = icmp ugt i64 %75, 18446744073709550
  br i1 %cmp1.i.i131.i, label %if.then3.i.i134.i, label %if.end5.i.i137.i

if.then3.i.i134.i:                                ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i133.i = tail call i32 @nsecs_to_jiffies(i64 noundef -1) #14
  br label %hl_usecs64_to_jiffies.exit.i141.i

if.end5.i.i137.i:                                 ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i135.i = mul nuw i64 %75, 1000
  %call6.i.i136.i = tail call i32 @nsecs_to_jiffies(i64 noundef %mul.i.i135.i) #14
  br label %hl_usecs64_to_jiffies.exit.i141.i

hl_usecs64_to_jiffies.exit.i141.i:                ; preds = %if.end5.i.i137.i, %if.then3.i.i134.i, %if.else.i.i.i130.i
  %retval.0.i.i138.i = phi i32 [ %call4.i.i133.i, %if.then3.i.i134.i ], [ %call6.i.i136.i, %if.end5.i.i137.i ], [ %call3.i.i.i129.i, %if.else.i.i.i130.i ]
  tail call void @hl_ctx_get(ptr noundef %5, ptr noundef %19) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i139.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 120) #19
  %tobool.not.i140.i = icmp eq ptr %call7.i.i.i139.i, null
  br i1 %tobool.not.i140.i, label %if.then.i.i, label %if.end.i153.i

if.then.i.i:                                      ; preds = %hl_usecs64_to_jiffies.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = tail call i32 @hl_ctx_put(ptr noundef %19) #14
  br label %_hl_interrupt_wait_ioctl_user_addr.exit.i

if.end.i153.i:                                    ; preds = %hl_usecs64_to_jiffies.exit.i141.i
  %fence.i142.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1
  %refcount.i.i143.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1, i32 1
  %call.i.i.i.i.i.i144.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i143.i, i32 noundef 4) #14
  %82 = ptrtoint ptr %refcount.i.i143.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 1, ptr %refcount.i.i143.i, align 8
  %cs_sequence.i.i145.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %cs_sequence.i.i145.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 4294967295, ptr %cs_sequence.i.i145.i, align 8
  %error.i.i146.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1, i32 4
  %84 = ptrtoint ptr %error.i.i146.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %error.i.i146.i, align 4
  %timestamp.i.i147.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1, i32 5
  %85 = ptrtoint ptr %timestamp.i.i147.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %timestamp.i.i147.i, align 8
  %mcs_handling_done.i.i148.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1, i32 6
  %86 = ptrtoint ptr %mcs_handling_done.i.i148.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %mcs_handling_done.i.i148.i, align 8
  %87 = ptrtoint ptr %fence.i142.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %fence.i142.i, align 8
  %wait.i.i.i149.i = getelementptr inbounds %struct.hl_user_pending_interrupt, ptr %call7.i.i.i139.i, i32 0, i32 1, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i149.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #14
  %wait_list_lock.i150.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 2
  %call5.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i150.i) #14
  %wait_list_head.i151.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 1
  %prev.i.i152.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %prev.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i152.i, align 4
  %call.i.i202.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i139.i, ptr noundef %89, ptr noundef %wait_list_head.i151.i) #14
  br i1 %call.i.i202.i.i, label %if.end.i.i203.i.i, label %if.end.i153.i.list_add_tail.exit.i156.i_crit_edge

if.end.i153.i.list_add_tail.exit.i156.i_crit_edge: ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i156.i

if.end.i.i203.i.i:                                ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %prev.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i.i139.i, ptr %prev.i.i152.i, align 4
  %91 = ptrtoint ptr %call7.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %wait_list_head.i151.i, ptr %call7.i.i.i139.i, align 8
  %prev3.i.i.i154.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i139.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i.i154.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call7.i.i.i139.i, ptr %89, align 4
  br label %list_add_tail.exit.i156.i

list_add_tail.exit.i156.i:                        ; preds = %if.end.i.i203.i.i, %if.end.i153.i.list_add_tail.exit.i156.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i150.i, i32 noundef %call5.i.i) #14
  %conv15.i.i = trunc i64 %77 to i32
  %94 = inttoptr i32 %conv15.i.i to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #14
  %call.i.i.i155.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i155.i, label %list_add_tail.exit.i156.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

list_add_tail.exit.i156.i.if.then11.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i156.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %list_add_tail.exit.i156.i
  %95 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %94, i32 8, i32 -1226833920) #18
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i157.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !395

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.end.i.i.i157.i:                                ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %completion_value.i.i, i32 noundef 8) #14
  %96 = call i32 @llvm.read_register.i32(metadata !383) #14
  %and.i.i.i.i.i.i.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 4
  %98 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #13, !srcloc !410
  %and.i.i.i.i.i.i = and i32 %98, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #14, !srcloc !411
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %completion_value.i.i, ptr noundef %94, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #14, !srcloc !411
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end22.i.i, label %if.end.i.i.i157.i.if.then11.i.i.i.i_crit_edge, !prof !395

if.end.i.i.i157.i.if.then11.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i157.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %list_add_tail.exit.i156.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i209.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i157.i.if.then11.i.i.i.i_crit_edge ], [ 8, %list_add_tail.exit.i156.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.0.i.i209.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %completion_value.i.i, i32 %sub.i.i.i.i
  %99 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i209.i.i)
  %dev.i158.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %100 = ptrtoint ptr %dev.i158.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i158.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.176) #17
  br label %do.body114.i.i

if.end22.i.i:                                     ; preds = %if.end.i.i.i157.i
  %102 = ptrtoint ptr %completion_value.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %completion_value.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %79)
  %cmp23.not.i.i = icmp ult i64 %103, %79
  br i1 %cmp23.not.i.i, label %if.end29.i.i, label %if.end29.i.thread.i

if.end29.i.thread.i:                              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call26.i.i = call i64 @ktime_get() #14
  %104 = ptrtoint ptr %timestamp.i.i147.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %call26.i.i, ptr %timestamp.i.i147.i, align 8
  br label %do.body114.i.i

if.end29.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool30.not.i.i = icmp eq i64 %75, 0
  br i1 %tobool30.not.i.i, label %if.end29.i.i.do.body114.i.i_crit_edge, label %if.end29.i.i.wait_again.i.i_crit_edge

if.end29.i.i.wait_again.i.i_crit_edge:            ; preds = %if.end29.i.i
  br label %wait_again.i.i

if.end29.i.i.do.body114.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114.i.i

wait_again.i.i:                                   ; preds = %if.else75.i.i.wait_again.i.i_crit_edge, %if.end29.i.i.wait_again.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %call36.i.i, %if.else75.i.i.wait_again.i.i_crit_edge ], [ %retval.0.i.i138.i, %if.end29.i.i.wait_again.i.i_crit_edge ]
  %call36.i.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %fence.i142.i, i32 noundef %timeout.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp sgt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %if.end59.i.i176.i.i, label %if.else95.i.i

if.end59.i.i176.i.i:                              ; preds = %wait_again.i.i
  %call49.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i150.i) #14
  %105 = ptrtoint ptr %fence.i142.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %fence.i142.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i150.i, i32 noundef %call49.i.i) #14
  call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #14
  %call.i.i177.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i177.i.i, label %if.end59.i.i176.i.i.do.end69.i.i_crit_edge, label %if.end.i.i190.i.i

if.end59.i.i176.i.i.do.end69.i.i_crit_edge:       ; preds = %if.end59.i.i176.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69.i.i

if.end.i.i190.i.i:                                ; preds = %if.end59.i.i176.i.i
  %call.i.i.i181.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %completion_value.i.i, i32 noundef 8) #14
  %106 = call i32 @llvm.read_register.i32(metadata !383) #14
  %and.i.i.i.i.i.i182.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i182.i.i to ptr
  %cpu_domain.i.i.i.i.i183.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i183.i.i) #13, !srcloc !410
  %and.i.i.i.i184.i.i = and i32 %108, -13
  %or.i.i.i.i185.i.i = or i32 %and.i.i.i.i184.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i185.i.i) #14, !srcloc !411
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  %call1.i.i.i186.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %completion_value.i.i, ptr noundef %94, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #14, !srcloc !411
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i186.i.i)
  %tobool4.not.i.i189.i.i = icmp eq i32 %call1.i.i.i186.i.i, 0
  br i1 %tobool4.not.i.i189.i.i, label %if.end71.i.i, label %if.end.i.i190.i.i.do.end69.i.i_crit_edge, !prof !395

if.end.i.i190.i.i.do.end69.i.i_crit_edge:         ; preds = %if.end.i.i190.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69.i.i

do.end69.i.i:                                     ; preds = %if.end.i.i190.i.i.do.end69.i.i_crit_edge, %if.end59.i.i176.i.i.do.end69.i.i_crit_edge
  %res.0.i.i188214.ph.i.i = phi i32 [ 8, %if.end59.i.i176.i.i.do.end69.i.i_crit_edge ], [ %call1.i.i.i186.i.i, %if.end.i.i190.i.i.do.end69.i.i_crit_edge ]
  %sub.i.i191.i.i = sub i32 8, %res.0.i.i188214.ph.i.i
  %add.ptr.i.i192.i.i = getelementptr i8, ptr %completion_value.i.i, i32 %sub.i.i191.i.i
  %109 = call ptr @memset(ptr %add.ptr.i.i192.i.i, i32 0, i32 %res.0.i.i188214.ph.i.i)
  %dev70.i.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %110 = ptrtoint ptr %dev70.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev70.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.176) #17
  br label %do.body114.i.i

if.end71.i.i:                                     ; preds = %if.end.i.i190.i.i
  %112 = ptrtoint ptr %completion_value.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %completion_value.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %113, i64 %79)
  %cmp72.not.i.i = icmp ult i64 %113, %79
  br i1 %cmp72.not.i.i, label %if.else75.i.i, label %if.end71.i.i.do.body114.i.i_crit_edge

if.end71.i.i.do.body114.i.i_crit_edge:            ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114.i.i

if.else75.i.i:                                    ; preds = %if.end71.i.i
  %114 = ptrtoint ptr %error.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %error.i.i146.i, align 4
  %tobool77.not.i.i = icmp eq i32 %115, 0
  br i1 %tobool77.not.i.i, label %if.else75.i.i.wait_again.i.i_crit_edge, label %do.body79.i.i

if.else75.i.i.wait_again.i.i_crit_edge:           ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait_again.i.i

do.body79.i.i:                                    ; preds = %if.else75.i.i
  %call80.i.i = call i32 @___ratelimit(ptr noundef nonnull @_hl_interrupt_wait_ioctl_user_addr._rs, ptr noundef nonnull @.str.177) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i.i)
  %tobool81.not.i.i = icmp eq i32 %call80.i.i, 0
  br i1 %tobool81.not.i.i, label %do.body79.i.i.do.body114.i.i_crit_edge, label %do.end85.i.i

do.body79.i.i.do.body114.i.i_crit_edge:           ; preds = %do.body79.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114.i.i

do.end85.i.i:                                     ; preds = %do.body79.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev86.i.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %116 = ptrtoint ptr %dev86.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev86.i.i, align 4
  %118 = ptrtoint ptr %error.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %error.i.i146.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.170, i32 noundef %119) #17
  br label %do.body114.i.i

if.else95.i.i:                                    ; preds = %wait_again.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call36.i.i)
  %cmp96.i.i = icmp eq i32 %call36.i.i, -512
  br i1 %cmp96.i.i, label %do.body99.i.i, label %if.else95.i.i.do.body114.i.i_crit_edge

if.else95.i.i.do.body114.i.i_crit_edge:           ; preds = %if.else95.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114.i.i

do.body99.i.i:                                    ; preds = %if.else95.i.i
  %call100.i.i = call i32 @___ratelimit(ptr noundef nonnull @_hl_interrupt_wait_ioctl_user_addr._rs.182, ptr noundef nonnull @.str.177) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i)
  %tobool101.not.i.i = icmp eq i32 %call100.i.i, 0
  br i1 %tobool101.not.i.i, label %do.body99.i.i.do.body114.i.i_crit_edge, label %do.end105.i.i

do.body99.i.i.do.body114.i.i_crit_edge:           ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114.i.i

do.end105.i.i:                                    ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev106.i.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %120 = ptrtoint ptr %dev106.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev106.i.i, align 4
  %interrupt_id.i161.i = getelementptr inbounds %struct.hl_user_interrupt, ptr %interrupt.0.i, i32 0, i32 3
  %122 = ptrtoint ptr %interrupt_id.i161.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %interrupt_id.i161.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.167, i32 noundef %123) #17
  br label %do.body114.i.i

do.body114.i.i:                                   ; preds = %do.end105.i.i, %do.body99.i.i.do.body114.i.i_crit_edge, %if.else95.i.i.do.body114.i.i_crit_edge, %do.end85.i.i, %do.body79.i.i.do.body114.i.i_crit_edge, %if.end71.i.i.do.body114.i.i_crit_edge, %do.end69.i.i, %if.end29.i.i.do.body114.i.i_crit_edge, %if.end29.i.thread.i, %if.then11.i.i.i.i
  %status.5.i = phi i32 [ 1, %if.then11.i.i.i.i ], [ 1, %if.end29.i.i.do.body114.i.i_crit_edge ], [ 1, %do.end69.i.i ], [ 1, %do.body99.i.i.do.body114.i.i_crit_edge ], [ 1, %do.end105.i.i ], [ 3, %do.end85.i.i ], [ 3, %do.body79.i.i.do.body114.i.i_crit_edge ], [ 1, %if.else95.i.i.do.body114.i.i_crit_edge ], [ 0, %if.end29.i.thread.i ], [ 0, %if.end71.i.i.do.body114.i.i_crit_edge ]
  %rc.0.i.i = phi i32 [ -14, %if.then11.i.i.i.i ], [ 0, %if.end29.i.i.do.body114.i.i_crit_edge ], [ -14, %do.end69.i.i ], [ -4, %do.body99.i.i.do.body114.i.i_crit_edge ], [ -4, %do.end105.i.i ], [ 0, %do.end85.i.i ], [ 0, %do.body79.i.i.do.body114.i.i_crit_edge ], [ 0, %if.else95.i.i.do.body114.i.i_crit_edge ], [ 0, %if.end29.i.thread.i ], [ 0, %if.end71.i.i.do.body114.i.i_crit_edge ]
  %call122.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_list_lock.i150.i) #14
  %call.i.i204.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i139.i) #14
  br i1 %call.i.i204.i.i, label %if.end.i.i205.i.i, label %do.body114.i.i.list_del.exit.i164.i_crit_edge

do.body114.i.i.list_del.exit.i164.i_crit_edge:    ; preds = %do.body114.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i164.i

if.end.i.i205.i.i:                                ; preds = %do.body114.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i162.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i139.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i162.i, align 4
  %126 = ptrtoint ptr %call7.i.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call7.i.i.i139.i, align 8
  %prev1.i.i.i.i163.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i.i163.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i.i163.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del.exit.i164.i

list_del.exit.i164.i:                             ; preds = %if.end.i.i205.i.i, %do.body114.i.i.list_del.exit.i164.i_crit_edge
  %130 = ptrtoint ptr %call7.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i139.i, align 8
  %prev.i206.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i139.i, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i206.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i206.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_list_lock.i150.i, i32 noundef %call122.i.i) #14
  %132 = ptrtoint ptr %timestamp.i.i147.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %timestamp.i.i147.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i139.i) #14
  %call132.i.i = call i32 @hl_ctx_put(ptr noundef %19) #14
  br label %_hl_interrupt_wait_ioctl_user_addr.exit.i

_hl_interrupt_wait_ioctl_user_addr.exit.i:        ; preds = %list_del.exit.i164.i, %if.then.i.i
  %status.6.i = phi i32 [ 1, %if.then.i.i ], [ %status.5.i, %list_del.exit.i164.i ]
  %timestamp.2.i = phi i64 [ -1, %if.then.i.i ], [ %133, %list_del.exit.i164.i ]
  %retval.0.i165.i = phi i32 [ -12, %if.then.i.i ], [ %rc.0.i.i, %list_del.exit.i164.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %completion_value.i.i) #14
  br label %if.end55.i

if.end55.i:                                       ; preds = %_hl_interrupt_wait_ioctl_user_addr.exit.i, %_hl_interrupt_wait_ioctl.exit.i
  %status.7.i = phi i32 [ %status.6.i, %_hl_interrupt_wait_ioctl_user_addr.exit.i ], [ %status.3.i, %_hl_interrupt_wait_ioctl.exit.i ]
  %timestamp.3.i = phi i64 [ %timestamp.2.i, %_hl_interrupt_wait_ioctl_user_addr.exit.i ], [ %timestamp.1.i, %_hl_interrupt_wait_ioctl.exit.i ]
  %rc.0.i = phi i32 [ %retval.0.i165.i, %_hl_interrupt_wait_ioctl_user_addr.exit.i ], [ %retval.0.i.i, %_hl_interrupt_wait_ioctl.exit.i ]
  %134 = zext i32 %rc.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %rc.0.i, label %do.body61.i [
    i32 0, label %if.end73.i
    i32 -4, label %if.end55.i.cleanup_crit_edge
  ]

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body61.i:                                      ; preds = %if.end55.i
  %call62.i = call i32 @___ratelimit(ptr noundef nonnull @hl_interrupt_wait_ioctl._rs, ptr noundef nonnull @.str.160) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %do.body61.i.cleanup_crit_edge, label %do.end67.i

do.body61.i.cleanup_crit_edge:                    ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end67.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev68.i = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %135 = ptrtoint ptr %dev68.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev68.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.165, i32 noundef %rc.0.i) #17
  br label %cleanup

if.end73.i:                                       ; preds = %if.end55.i
  %137 = call ptr @memset(ptr %data, i32 0, i32 40)
  %138 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %status.7.i, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %timestamp.3.i)
  %tobool75.not.i = icmp eq i64 %timestamp.3.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.cleanup_crit_edge, label %if.then76.i

if.end73.i.cleanup_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp_nsec.i = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 2
  %139 = ptrtoint ptr %timestamp_nsec.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %timestamp.3.i, ptr %timestamp_nsec.i, align 8
  %flags77.i = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 1
  %140 = ptrtoint ptr %flags77.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags77.i, align 4
  %or.i = or i32 %141, 2
  store i32 %or.i, ptr %flags77.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and4 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %142 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hpriv, align 4
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mcs_data.i) #14
  %144 = call ptr @memset(ptr %mcs_data.i, i32 0, i32 48)
  %ctx2.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %145 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx2.i, align 4
  %supports_wait_for_multi_cs.i = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 102
  %147 = ptrtoint ptr %supports_wait_for_multi_cs.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %supports_wait_for_multi_cs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i21 = icmp eq i8 %148, 0
  br i1 %tobool.not.i21, label %do.end.i23, label %if.end.i

do.end.i23:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i22 = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %149 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.185) #17
  br label %hl_multi_cs_wait_ioctl.exit

if.end.i:                                         ; preds = %if.then6
  %151 = getelementptr inbounds %struct.hl_wait_cs_in, ptr %data, i32 0, i32 3
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 8
  %conv.i = zext i8 %153 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %153)
  %cmp.i24 = icmp ugt i8 %153, 32
  br i1 %cmp.i24, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev9.i = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %154 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.188, i32 noundef 32, i32 noundef %conv.i) #17
  br label %hl_multi_cs_wait_ioctl.exit

if.end11.i:                                       ; preds = %if.end.i
  %156 = shl nuw nsw i32 %conv.i, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %156, i32 noundef 3264) #20
  %tobool13.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not.i, label %if.end11.i.hl_multi_cs_wait_ioctl.exit_crit_edge, label %if.end15.i

if.end11.i.hl_multi_cs_wait_ioctl.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_multi_cs_wait_ioctl.exit

if.end15.i:                                       ; preds = %if.end11.i
  %157 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %data, align 8
  %conv16.i = trunc i64 %158 to i32
  %159 = inttoptr i32 %conv16.i to ptr
  tail call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %156, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.end15.i.if.end.i.i.i36_crit_edge, label %land.lhs.true.i.i.i

if.end15.i.if.end.i.i.i36_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i36

land.lhs.true.i.i.i:                              ; preds = %if.end15.i
  %160 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %159, i32 %156, i32 -1226833920) #18, !srcloc !409
  %asmresult.i.i.i = extractvalue { i32, i32 } %160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i36_crit_edge, !prof !395

land.lhs.true.i.i.i.if.end.i.i.i36_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i36

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i.i, i32 noundef %156) #14
  %161 = tail call i32 @llvm.read_register.i32(metadata !383) #14
  %and.i.i.i.i.i.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 4
  %163 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #13, !srcloc !410
  %and.i.i.i.i.i = and i32 %163, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i.i, ptr noundef %159, i32 noundef %156) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #14, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  br label %if.end.i.i.i36

if.end.i.i.i36:                                   ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i36_crit_edge, %if.end15.i.if.end.i.i.i36_crit_edge
  %res.0.i.i.i = phi i32 [ %156, %if.end15.i.if.end.i.i.i36_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %156, %land.lhs.true.i.i.i.if.end.i.i.i36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i184.i, label %if.then11.i.i.i, !prof !395

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i36
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = sub i32 %156, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call8.i.i, i32 %sub.i.i.i
  %164 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  %dev24.i = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %165 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev24.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.191) #17
  br label %free_seq_arr.thread.i

if.end7.i184.i:                                   ; preds = %if.end.i.i.i36
  %167 = shl nuw nsw i32 %conv.i, 2
  %call8.i183.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %167, i32 noundef 3264) #20
  %tobool28.not.i = icmp eq ptr %call8.i183.i, null
  br i1 %tobool28.not.i, label %if.end7.i184.i.free_seq_arr.thread.i_crit_edge, label %if.end30.i

if.end7.i184.i.free_seq_arr.thread.i_crit_edge:   ; preds = %if.end7.i184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_seq_arr.thread.i

if.end30.i:                                       ; preds = %if.end7.i184.i
  %168 = ptrtoint ptr %mcs_data.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %146, ptr %mcs_data.i, align 8
  %seq_arr32.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 2
  %169 = ptrtoint ptr %seq_arr32.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call8.i.i, ptr %seq_arr32.i, align 8
  %fence_arr33.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 1
  %170 = ptrtoint ptr %fence_arr33.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call8.i183.i, ptr %fence_arr33.i, align 4
  %arr_len.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 7
  %171 = ptrtoint ptr %arr_len.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %153, ptr %arr_len.i, align 8
  tail call void @hl_ctx_get(ptr noundef %143, ptr noundef %146) #14
  %timeout_us.i = getelementptr inbounds %struct.anon.106, ptr %data, i32 0, i32 1
  %172 = ptrtoint ptr %timeout_us.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %timeout_us.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %173)
  %cmp.i.i = icmp ult i64 %173, 4294967296
  br i1 %cmp.i.i, label %if.else.i.i.i, label %if.end.i192.i

if.else.i.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i37 = trunc i64 %173 to i32
  %call3.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %conv.i.i37) #14
  br label %hl_usecs64_to_jiffies.exit.i

if.end.i192.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 18446744073709550, i64 %173)
  %cmp1.i.i = icmp ugt i64 %173, 18446744073709550
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i192.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i = tail call i32 @nsecs_to_jiffies(i64 noundef -1) #14
  br label %hl_usecs64_to_jiffies.exit.i

if.end5.i.i:                                      ; preds = %if.end.i192.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i = mul nuw i64 %173, 1000
  %call6.i.i = tail call i32 @nsecs_to_jiffies(i64 noundef %mul.i.i) #14
  br label %hl_usecs64_to_jiffies.exit.i

hl_usecs64_to_jiffies.exit.i:                     ; preds = %if.end5.i.i, %if.then3.i.i, %if.else.i.i.i
  %retval.0.i193.i = phi i32 [ %call4.i.i, %if.then3.i.i ], [ %call6.i.i, %if.end5.i.i ], [ %call3.i.i.i, %if.else.i.i.i ]
  %conv35.i = zext i32 %retval.0.i193.i to i64
  %timeout_jiffies.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 3
  %174 = ptrtoint ptr %timeout_jiffies.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv35.i, ptr %timeout_jiffies.i, align 8
  %lock.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #14
  %used.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 0, i32 4
  %175 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool.not.i.i39 = icmp eq i8 %176, 0
  br i1 %tobool.not.i.i39, label %hl_usecs64_to_jiffies.exit.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge, label %if.end.i194.i

hl_usecs64_to_jiffies.exit.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge: ; preds = %hl_usecs64_to_jiffies.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_wait_multi_cs_completion_init.exit.i

if.end.i194.i:                                    ; preds = %hl_usecs64_to_jiffies.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #14
  %lock.1.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.1.i.i) #14
  %used.1.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 1, i32 4
  %177 = ptrtoint ptr %used.1.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %used.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.1.i.i = icmp eq i8 %178, 0
  br i1 %tobool.not.1.i.i, label %if.end.i194.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge, label %hl_wait_multi_cs_completion_init.exit.thread.i

if.end.i194.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge: ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_wait_multi_cs_completion_init.exit.i

hl_wait_multi_cs_completion_init.exit.thread.i:   ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock.1.i.i) #14
  %dev.i.i40 = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %179 = ptrtoint ptr %dev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.196) #17
  br label %if.then38.i

hl_wait_multi_cs_completion_init.exit.i:          ; preds = %if.end.i194.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge, %hl_usecs64_to_jiffies.exit.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge
  %i.023.lcssa.i.i = phi i32 [ 0, %hl_usecs64_to_jiffies.exit.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge ], [ 1, %if.end.i194.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge ]
  %lock.lcssa.i.i = phi ptr [ %lock.i.i, %hl_usecs64_to_jiffies.exit.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge ], [ %lock.1.i.i, %if.end.i194.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge ]
  %used.lcssa.i.i = phi ptr [ %used.i.i, %hl_usecs64_to_jiffies.exit.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge ], [ %used.1.i.i, %if.end.i194.i.hl_wait_multi_cs_completion_init.exit.i_crit_edge ]
  %arrayidx.le24.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 %i.023.lcssa.i.i
  %181 = ptrtoint ptr %used.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %used.lcssa.i.i, align 4
  %timestamp.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 %i.023.lcssa.i.i, i32 2
  %182 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 0, ptr %timestamp.i.i, align 8
  %stream_master_qid_map.i.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 %i.023.lcssa.i.i, i32 3
  %183 = ptrtoint ptr %stream_master_qid_map.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %stream_master_qid_map.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.lcssa.i.i) #14
  %cmp.i196.i = icmp ugt ptr %arrayidx.le24.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196.i, label %hl_wait_multi_cs_completion_init.exit.i.if.then38.i_crit_edge, label %if.end40.i

hl_wait_multi_cs_completion_init.exit.i.if.then38.i_crit_edge: ; preds = %hl_wait_multi_cs_completion_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then38.i:                                      ; preds = %hl_wait_multi_cs_completion_init.exit.i.if.then38.i_crit_edge, %hl_wait_multi_cs_completion_init.exit.thread.i
  %retval.0.i195225.i = phi ptr [ inttoptr (i32 -12 to ptr), %hl_wait_multi_cs_completion_init.exit.thread.i ], [ %arrayidx.le24.i.i, %hl_wait_multi_cs_completion_init.exit.i.if.then38.i_crit_edge ]
  %184 = ptrtoint ptr %retval.0.i195225.i to i32
  br label %free_seq_arr.i

if.end40.i:                                       ; preds = %hl_wait_multi_cs_completion_init.exit.i
  %update_ts.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 9
  %185 = ptrtoint ptr %update_ts.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %update_ts.i, align 2
  %call41.i = call fastcc i32 @hl_cs_poll_fences(ptr noundef nonnull %mcs_data.i, ptr noundef %arrayidx.le24.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i41, label %if.end40.i.completion_fini.i_crit_edge

if.end40.i.completion_fini.i_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %completion_fini.i

lor.lhs.false.i41:                                ; preds = %if.end40.i
  %completion_bitmap.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 6
  %186 = ptrtoint ptr %completion_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %completion_bitmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool43.not.i = icmp eq i32 %187, 0
  br i1 %tobool43.not.i, label %lor.lhs.false44.i, label %lor.lhs.false.i41.completion_fini.i_crit_edge

lor.lhs.false.i41.completion_fini.i_crit_edge:    ; preds = %lor.lhs.false.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %completion_fini.i

lor.lhs.false44.i:                                ; preds = %lor.lhs.false.i41
  %188 = ptrtoint ptr %timeout_us.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %timeout_us.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %189)
  %tobool46.not.i = icmp eq i64 %189, 0
  br i1 %tobool46.not.i, label %lor.lhs.false44.i.completion_fini.i_crit_edge, label %while.cond.preheader.i

lor.lhs.false44.i.completion_fini.i_crit_edge:    ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %completion_fini.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false44.i
  %wait_status.i.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 5
  %timestamp2.i.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end61.i, %while.cond.preheader.i
  %190 = ptrtoint ptr %timeout_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %timeout_jiffies.i, align 8
  %conv.i197.i = trunc i64 %191 to i32
  %call.i.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %arrayidx.le24.i.i, i32 noundef %conv.i197.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i198.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i198.i, label %hl_wait_multi_cs_completion.exit.thread.i, label %hl_wait_multi_cs_completion.exit.i

hl_wait_multi_cs_completion.exit.thread.i:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %192 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %timestamp.i.i, align 8
  %194 = ptrtoint ptr %timestamp2.i.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %timestamp2.i.i, align 8
  %195 = ptrtoint ptr %wait_status.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call.i.i, ptr %wait_status.i.i, align 8
  br label %if.end55.i42

hl_wait_multi_cs_completion.exit.i:               ; preds = %while.cond.i
  %196 = ptrtoint ptr %wait_status.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %call.i.i, ptr %wait_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp52.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp52.i, label %hl_wait_multi_cs_completion.exit.i.completion_fini.i_crit_edge, label %hl_wait_multi_cs_completion.exit.i.if.end55.i42_crit_edge

hl_wait_multi_cs_completion.exit.i.if.end55.i42_crit_edge: ; preds = %hl_wait_multi_cs_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i42

hl_wait_multi_cs_completion.exit.i.completion_fini.i_crit_edge: ; preds = %hl_wait_multi_cs_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %completion_fini.i

if.end55.i42:                                     ; preds = %hl_wait_multi_cs_completion.exit.i.if.end55.i42_crit_edge, %hl_wait_multi_cs_completion.exit.thread.i
  %197 = ptrtoint ptr %update_ts.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %update_ts.i, align 2
  %call57.i = call fastcc i32 @hl_cs_poll_fences(ptr noundef nonnull %mcs_data.i, ptr noundef %arrayidx.le24.i.i) #14
  %198 = ptrtoint ptr %completion_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %completion_bitmap.i, align 4
  %tobool59.not.i = icmp eq i32 %199, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end55.i42.completion_fini.i_crit_edge

if.end55.i42.completion_fini.i_crit_edge:         ; preds = %if.end55.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %completion_fini.i

if.end61.i:                                       ; preds = %if.end55.i42
  call void @__sanitizer_cov_trace_pc() #16
  %200 = ptrtoint ptr %wait_status.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %wait_status.i.i, align 8
  %conv63.i = sext i32 %201 to i64
  %202 = ptrtoint ptr %timeout_jiffies.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %conv63.i, ptr %timeout_jiffies.i, align 8
  %203 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 0, ptr %timestamp.i.i, align 8
  br label %while.cond.i

completion_fini.i:                                ; preds = %if.end55.i42.completion_fini.i_crit_edge, %hl_wait_multi_cs_completion.exit.i.completion_fini.i_crit_edge, %lor.lhs.false44.i.completion_fini.i_crit_edge, %lor.lhs.false.i41.completion_fini.i_crit_edge, %if.end40.i.completion_fini.i_crit_edge
  %rc.0.i43 = phi i32 [ %call41.i, %if.end40.i.completion_fini.i_crit_edge ], [ 0, %lor.lhs.false.i41.completion_fini.i_crit_edge ], [ 0, %lor.lhs.false44.i.completion_fini.i_crit_edge ], [ 0, %hl_wait_multi_cs_completion.exit.i.completion_fini.i_crit_edge ], [ %call57.i, %if.end55.i42.completion_fini.i_crit_edge ]
  %lock.i202.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 %i.023.lcssa.i.i, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i202.i) #14
  %used.i203.i = getelementptr %struct.hl_device, ptr %143, i32 0, i32 56, i32 %i.023.lcssa.i.i, i32 4
  %204 = ptrtoint ptr %used.i203.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %used.i203.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i202.i) #14
  br label %free_seq_arr.i

free_seq_arr.thread.i:                            ; preds = %if.end7.i184.i.free_seq_arr.thread.i_crit_edge, %if.then11.i.i.i
  %rc.2.ph.i = phi i32 [ -12, %if.end7.i184.i.free_seq_arr.thread.i_crit_edge ], [ -14, %if.then11.i.i.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %hl_multi_cs_wait_ioctl.exit

free_seq_arr.i:                                   ; preds = %completion_fini.i, %if.then38.i
  %rc.1.i = phi i32 [ %184, %if.then38.i ], [ %rc.0.i43, %completion_fini.i ]
  %call65.i = tail call i32 @hl_ctx_put(ptr noundef %146) #14
  tail call void @kfree(ptr noundef nonnull %call8.i183.i) #14
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %tobool66.not.i = icmp eq i32 %rc.1.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %free_seq_arr.i.hl_multi_cs_wait_ioctl.exit_crit_edge

free_seq_arr.i.hl_multi_cs_wait_ioctl.exit_crit_edge: ; preds = %free_seq_arr.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_multi_cs_wait_ioctl.exit

if.end68.i:                                       ; preds = %free_seq_arr.i
  %wait_status69.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 5
  %205 = ptrtoint ptr %wait_status69.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %wait_status69.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %206)
  %cmp70.i = icmp eq i32 %206, -512
  br i1 %cmp70.i, label %do.body73.i, label %if.end84.i

do.body73.i:                                      ; preds = %if.end68.i
  %call74.i = tail call i32 @___ratelimit(ptr noundef nonnull @hl_multi_cs_wait_ioctl._rs, ptr noundef nonnull @.str.186) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i44 = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i44, label %do.body73.i.hl_multi_cs_wait_ioctl.exit_crit_edge, label %do.end79.i

do.body73.i.hl_multi_cs_wait_ioctl.exit_crit_edge: ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_multi_cs_wait_ioctl.exit

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev80.i = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %207 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev80.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.194) #17
  br label %hl_multi_cs_wait_ioctl.exit

if.end84.i:                                       ; preds = %if.end68.i
  %209 = call ptr @memset(ptr %data, i32 0, i32 40)
  %completion_bitmap85.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 6
  %210 = ptrtoint ptr %completion_bitmap85.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %completion_bitmap85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool86.not.i = icmp eq i32 %211, 0
  br i1 %tobool86.not.i, label %if.else.i47, label %if.then87.i

if.then87.i:                                      ; preds = %if.end84.i
  %cs_completion_map.i = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 3
  %212 = ptrtoint ptr %cs_completion_map.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %cs_completion_map.i, align 8
  %timestamp89.i = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data.i, i32 0, i32 4
  %213 = ptrtoint ptr %timestamp89.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %timestamp89.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %214)
  %tobool90.not.i = icmp eq i64 %214, 0
  br i1 %tobool90.not.i, label %if.then96.i, label %if.end93.i

if.end93.i:                                       ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #16
  %215 = ptrtoint ptr %timeout_us.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %214, ptr %timeout_us.i, align 8
  %flags.i45 = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 1
  %216 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %flags.i45, align 4
  %or.i46 = or i32 %217, 2
  store i32 %or.i46, ptr %flags.i45, align 4
  br label %hl_multi_cs_wait_ioctl.exit

if.then96.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags97.i = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 1
  %218 = ptrtoint ptr %flags97.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %flags97.i, align 4
  %or98.i = or i32 %219, 1
  store i32 %or98.i, ptr %flags97.i, align 4
  br label %hl_multi_cs_wait_ioctl.exit

if.else.i47:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #16
  %220 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1, ptr %data, align 8
  br label %hl_multi_cs_wait_ioctl.exit

hl_multi_cs_wait_ioctl.exit:                      ; preds = %if.else.i47, %if.then96.i, %if.end93.i, %do.end79.i, %do.body73.i.hl_multi_cs_wait_ioctl.exit_crit_edge, %free_seq_arr.i.hl_multi_cs_wait_ioctl.exit_crit_edge, %free_seq_arr.thread.i, %if.end11.i.hl_multi_cs_wait_ioctl.exit_crit_edge, %do.end8.i, %do.end.i23
  %retval.0.i48 = phi i32 [ -22, %do.end8.i ], [ -1, %do.end.i23 ], [ -12, %if.end11.i.hl_multi_cs_wait_ioctl.exit_crit_edge ], [ %rc.1.i, %free_seq_arr.i.hl_multi_cs_wait_ioctl.exit_crit_edge ], [ -4, %do.end79.i ], [ -4, %do.body73.i.hl_multi_cs_wait_ioctl.exit_crit_edge ], [ 0, %if.end93.i ], [ 0, %if.then96.i ], [ 0, %if.else.i47 ], [ %rc.2.ph.i, %free_seq_arr.thread.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mcs_data.i) #14
  br label %cleanup

if.else8:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #14
  %221 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %status.i, align 4, !annotation !403
  %222 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp.i) #14
  %224 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 -1, ptr %timestamp.i, align 8, !annotation !403
  %ctx.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %225 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ctx.i, align 4
  %timeout_us.i49 = getelementptr inbounds %struct.anon.106, ptr %data, i32 0, i32 1
  %227 = ptrtoint ptr %timeout_us.i49 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %timeout_us.i49, align 8
  %call.i = call fastcc i32 @_hl_cs_wait_ioctl(ptr noundef %143, ptr noundef %226, i64 noundef %228, i64 noundef %223, ptr noundef nonnull %status.i, ptr noundef nonnull %timestamp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call.i)
  %cmp.i50 = icmp eq i32 %call.i, -512
  br i1 %cmp.i50, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.else8
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @hl_cs_wait_ioctl._rs, ptr noundef nonnull @__func__.hl_cs_wait_ioctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i51 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i51, label %do.body.i.hl_cs_wait_ioctl.exit_crit_edge, label %do.end.i53

do.body.i.hl_cs_wait_ioctl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_cs_wait_ioctl.exit

do.end.i53:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i52 = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %229 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i52, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.203, i64 noundef %223) #17
  br label %hl_cs_wait_ioctl.exit

if.end8.i:                                        ; preds = %if.else8
  %231 = call ptr @memset(ptr %data, i32 0, i32 40)
  %232 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %call.i, label %if.end8.i.hl_cs_wait_ioctl.exit_crit_edge [
    i32 0, label %if.end41.i
    i32 -110, label %do.body13.i
    i32 -5, label %do.body27.i
  ]

if.end8.i.hl_cs_wait_ioctl.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_cs_wait_ioctl.exit

do.body13.i:                                      ; preds = %if.end8.i
  %call14.i = call i32 @___ratelimit(ptr noundef nonnull @hl_cs_wait_ioctl._rs.204, ptr noundef nonnull @__func__.hl_cs_wait_ioctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %do.body13.i.do.end23.i54_crit_edge, label %do.end19.i

do.body13.i.do.end23.i54_crit_edge:               ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23.i54

do.end19.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev20.i = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %233 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.206, i64 noundef %223) #17
  br label %do.end23.i54

do.end23.i54:                                     ; preds = %do.end19.i, %do.body13.i.do.end23.i54_crit_edge
  %235 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 2, ptr %data, align 8
  br label %hl_cs_wait_ioctl.exit

do.body27.i:                                      ; preds = %if.end8.i
  %call28.i = call i32 @___ratelimit(ptr noundef nonnull @hl_cs_wait_ioctl._rs.208, ptr noundef nonnull @__func__.hl_cs_wait_ioctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.do.end37.i_crit_edge, label %do.end33.i

do.body27.i.do.end37.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.i

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev34.i = getelementptr inbounds %struct.hl_device, ptr %143, i32 0, i32 6
  %236 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev34.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.210, i64 noundef %223) #17
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end33.i, %do.body27.i.do.end37.i_crit_edge
  %238 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 3, ptr %data, align 8
  br label %hl_cs_wait_ioctl.exit

if.end41.i:                                       ; preds = %if.end8.i
  %239 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %timestamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %240)
  %tobool42.not.i55 = icmp eq i64 %240, 0
  br i1 %tobool42.not.i55, label %if.end41.i.if.end44.i_crit_edge, label %if.then43.i

if.end41.i.if.end44.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i56 = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %flags.i56, align 4
  %or.i57 = or i32 %242, 2
  store i32 %or.i57, ptr %flags.i56, align 4
  %243 = ptrtoint ptr %timeout_us.i49 to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %240, ptr %timeout_us.i49, align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %if.end41.i.if.end44.i_crit_edge
  %244 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %status.i, align 4
  %246 = zext i32 %245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %245, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %if.end44.i.sw.epilog.i_crit_edge
  ]

if.end44.i.sw.epilog.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags45.i = getelementptr inbounds %struct.hl_wait_cs_out, ptr %data, i32 0, i32 1
  %247 = ptrtoint ptr %flags45.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %flags45.i, align 4
  %or46.i = or i32 %248, 1
  store i32 %or46.i, ptr %flags45.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i, %if.end44.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 1, %sw.default.i ], [ 0, %if.end44.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb.i ]
  %249 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %storemerge.i, ptr %data, align 8
  br label %hl_cs_wait_ioctl.exit

hl_cs_wait_ioctl.exit:                            ; preds = %sw.epilog.i, %do.end37.i, %do.end23.i54, %if.end8.i.hl_cs_wait_ioctl.exit_crit_edge, %do.end.i53, %do.body.i.hl_cs_wait_ioctl.exit_crit_edge
  %retval.0.i58 = phi i32 [ 0, %sw.epilog.i ], [ -4, %do.end.i53 ], [ -4, %do.body.i.hl_cs_wait_ioctl.exit_crit_edge ], [ %call.i, %if.end8.i.hl_cs_wait_ioctl.exit_crit_edge ], [ -5, %do.end37.i ], [ -110, %do.end23.i54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #14
  br label %cleanup

cleanup:                                          ; preds = %hl_cs_wait_ioctl.exit, %hl_multi_cs_wait_ioctl.exit, %if.then76.i, %if.end73.i.cleanup_crit_edge, %do.end67.i, %do.body61.i.cleanup_crit_edge, %if.end55.i.cleanup_crit_edge, %do.end35.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.i48, %hl_multi_cs_wait_ioctl.exit ], [ %retval.0.i58, %hl_cs_wait_ioctl.exit ], [ -22, %do.end35.i ], [ -1, %do.end.i ], [ %rc.0.i, %if.end55.i.cleanup_crit_edge ], [ %rc.0.i, %do.body61.i.cleanup_crit_edge ], [ %rc.0.i, %do.end67.i ], [ 0, %if.then76.i ], [ 0, %if.end73.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @complete_job(ptr noundef %hdev, ptr noundef %job) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cs1 = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 1
  %0 = ptrtoint ptr %cs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs1, align 4
  %queue_type.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 8
  %2 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 4, label %land.lhs.true.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true.i:                                  ; preds = %entry
  %is_kernel_allocated_cb.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 14
  %5 = ptrtoint ptr %is_kernel_allocated_cb.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_kernel_allocated_cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end5_crit_edge, label %is_cb_patched.exit

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

is_cb_patched.exit:                               ; preds = %land.lhs.true.i
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %7 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i, label %is_cb_patched.exit.if.then_crit_edge, label %is_cb_patched.exit.if.end5_crit_edge

is_cb_patched.exit.if.end5_crit_edge:             ; preds = %is_cb_patched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

is_cb_patched.exit.if.then_crit_edge:             ; preds = %is_cb_patched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %is_cb_patched.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %userptr_list = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 5
  tail call void @hl_userptr_delete_list(ptr noundef %hdev, ptr noundef %userptr_list) #14
  %patched_cb = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 3
  %9 = ptrtoint ptr %patched_cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %patched_cb, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %cs_cnt = getelementptr inbounds %struct.hl_cb, ptr %10, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %cs_cnt, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt, ptr %cs_cnt, i32 1, ptr elementtype(i32) %cs_cnt) #14, !srcloc !414
  %12 = ptrtoint ptr %patched_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %patched_cb, align 4
  tail call void @hl_cb_put(ptr noundef %13) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %is_cb_patched.exit.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %is_kernel_allocated_cb = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 14
  %14 = ptrtoint ptr %is_kernel_allocated_cb to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_kernel_allocated_cb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.end5.if.end17_crit_edge, label %land.lhs.true

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  %16 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue_type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %17, label %land.lhs.true.if.end17_crit_edge [
    i32 4, label %land.lhs.true8
    i32 2, label %land.lhs.true.if.then14_crit_edge
  ]

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true8:                                   ; preds = %land.lhs.true
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 107
  %19 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %land.lhs.true8.if.end17_crit_edge, label %land.lhs.true8.if.then14_crit_edge

land.lhs.true8.if.then14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

land.lhs.true8.if.end17_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true8.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  %user_cb = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 2
  %21 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_cb, align 4
  %cs_cnt15 = getelementptr inbounds %struct.hl_cb, ptr %22, i32 0, i32 12
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_cnt15, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %cs_cnt15, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cs_cnt15, ptr %cs_cnt15, i32 1, ptr elementtype(i32) %cs_cnt15) #14, !srcloc !414
  %24 = ptrtoint ptr %user_cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_cb, align 4
  tail call void @hl_cb_put(ptr noundef %25) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true8.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %job_lock = getelementptr inbounds %struct.hl_cs, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %job_lock) #14
  %call.i.i55 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %job) #14
  br i1 %call.i.i55, label %if.end.i.i, label %if.end17.list_del.exit_crit_edge

if.end17.list_del.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %job, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %job, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end17.list_del.exit_crit_edge
  %32 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %job, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %job, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %job_lock) #14
  tail call void @hl_debugfs_remove_job(ptr noundef %hdev, ptr noundef %job) #14
  %staged_cs.i = getelementptr inbounds %struct.hl_cs, ptr %1, i32 0, i32 29
  %34 = ptrtoint ptr %staged_cs.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %staged_cs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i56 = icmp eq i8 %35, 0
  br i1 %tobool.not.i56, label %list_del.exit.land.lhs.true21_crit_edge, label %land.lhs.true.i57

list_del.exit.land.lhs.true21_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true21

land.lhs.true.i57:                                ; preds = %list_del.exit
  %staged_last.i = getelementptr inbounds %struct.hl_cs, ptr %1, i32 0, i32 27
  %36 = ptrtoint ptr %staged_last.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %staged_last.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.not.i = icmp eq i8 %37, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i57.if.end30_crit_edge, label %land.lhs.true.i57.land.lhs.true21_crit_edge

land.lhs.true.i57.land.lhs.true21_crit_edge:      ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true21

land.lhs.true.i57.if.end30_crit_edge:             ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true21:                                  ; preds = %land.lhs.true.i57.land.lhs.true21_crit_edge, %list_del.exit.land.lhs.true21_crit_edge
  %38 = ptrtoint ptr %queue_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queue_type.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %39, label %land.lhs.true21.if.end30_crit_edge [
    i32 1, label %land.lhs.true21.if.then29_crit_edge
    i32 4, label %land.lhs.true21.if.then29_crit_edge60
  ]

land.lhs.true21.if.then29_crit_edge60:            ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

land.lhs.true21.if.then29_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true21.if.then29_crit_edge, %land.lhs.true21.if.then29_crit_edge60
  tail call fastcc void @cs_put(ptr noundef %1)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true21.if.end30_crit_edge, %land.lhs.true.i57.if.end30_crit_edge
  %refcount.i = getelementptr inbounds %struct.hl_cs_job, ptr %job, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cs_job_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.cs_job_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_job_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %cs_job_put.exit

if.then.i.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef %job) #14
  br label %cs_job_put.exit

cs_job_put.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cs_job_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_userptr_delete_list(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cb_put(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_job(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_queue_update_ci(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_encaps_handle_do_release(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_cs(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_put(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_hl_cs_wait_ioctl(ptr noundef %hdev, ptr noundef %ctx, i64 noundef %timeout_us, i64 noundef %seq, ptr nocapture noundef writeonly %status, ptr noundef %timestamp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timestamp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %timestamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hl_ctx_get(ptr noundef %hdev, ptr noundef %ctx) #14
  %call = tail call ptr @hl_ctx_get_fence(ptr noundef %ctx, i64 noundef %seq) #14
  %call1 = tail call fastcc i32 @hl_wait_for_fence(ptr noundef %ctx, i64 noundef %seq, ptr noundef %call, ptr noundef %status, i64 noundef %timeout_us, ptr noundef %timestamp)
  %tobool.not.i.i = icmp eq ptr %call, null
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.hl_fence_put.exit_crit_edge, label %if.end.i

if.end.hl_fence_put.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.end.i:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.hl_fence, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %hl_fence_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %call) #14
  br label %hl_fence_put.exit

hl_fence_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, %if.end.hl_fence_put.exit_crit_edge
  %call2 = tail call i32 @hl_ctx_put(ptr noundef %ctx) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_ctx_get(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hl_ctx_get_fence(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_wait_for_fence(ptr nocapture noundef readonly %ctx, i64 noundef %seq, ptr noundef %fence, ptr nocapture noundef writeonly %status, i64 noundef %timeout_us, ptr noundef writeonly %timestamp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %cmp.i81 = icmp ugt ptr %fence, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fence to i32
  %cmp = icmp eq ptr %fence, inttoptr (i32 -22 to ptr)
  br i1 %cmp, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.then
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_wait_for_fence._rs, ptr noundef nonnull @__func__.hl_wait_for_fence) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %cs_sequence = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 15
  %5 = ptrtoint ptr %cs_sequence to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cs_sequence, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %4, ptr noundef nonnull @.str.48, i64 noundef %seq, i64 noundef %6) #17
  br label %cleanup

if.end10:                                         ; preds = %entry
  %tobool11.not = icmp eq ptr %fence, null
  br i1 %tobool11.not, label %do.body13, label %if.end24

do.body13:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_wait_for_fence.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_wait_for_fence, %if.then18)) #14
          to label %do.end23 [label %if.then18], !srcloc !397

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %dev19 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev19, align 4
  %cs_sequence20 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 15
  %9 = ptrtoint ptr %cs_sequence20 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cs_sequence20, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_wait_for_fence.__UNIQUE_ID_ddebug306, ptr noundef %8, ptr noundef nonnull @.str.50, i64 noundef %seq, i64 noundef %10) #14
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body13
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %status, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_switch(i64 %timeout_us, ptr @__sancov_gen_cov_switch_values.227)
  switch i64 %timeout_us, label %if.else.i [
    i64 0, label %if.then26
    i64 2147483647, label %if.end24.cond.end_crit_edge
  ]

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %call27 = tail call zeroext i1 @completion_done(ptr noundef nonnull %fence) #14
  %conv = zext i1 %call27 to i32
  br label %if.end36

if.else.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %conv30 = trunc i64 %timeout_us to i32
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %conv30) #14
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.end24.cond.end_crit_edge
  %cond.off0 = phi i32 [ 2147483647, %if.end24.cond.end_crit_edge ], [ %call3.i, %if.else.i ]
  %call35 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %fence, i32 noundef %cond.off0) #14
  br label %if.end36

if.end36:                                         ; preds = %cond.end, %if.then26
  %completion_rc.0 = phi i32 [ %call35, %cond.end ], [ %conv, %if.then26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %completion_rc.0)
  %cmp37 = icmp sgt i32 %completion_rc.0, 0
  br i1 %cmp37, label %if.then39, label %if.else45

if.then39:                                        ; preds = %if.end36
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %status, align 4
  %tobool40.not = icmp eq ptr %timestamp, null
  br i1 %tobool40.not, label %if.then39.if.end46_crit_edge, label %if.then41

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp42 = getelementptr inbounds %struct.hl_fence, ptr %fence, i32 0, i32 5
  %13 = ptrtoint ptr %timestamp42 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timestamp42, align 8
  %15 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %timestamp, align 8
  br label %if.end46

if.else45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %status, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then41, %if.then39.if.end46_crit_edge
  %error = getelementptr inbounds %struct.hl_fence, ptr %fence, i32 0, i32 4
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %18)
  %switch.selectcmp = icmp eq i32 %18, -5
  %switch.select = select i1 %switch.selectcmp, i32 -5, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %18)
  %switch.selectcmp78 = icmp eq i32 %18, -110
  %switch.select79 = select i1 %switch.selectcmp78, i32 -110, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end23, %do.end, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end ], [ %2, %if.then.cleanup_crit_edge ], [ %switch.select79, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_cs_copy_chunk_array(ptr noundef %hdev, ptr nocapture noundef %cs_chunk_array, ptr noundef %chunks, i32 noundef %num_chunks, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %num_chunks)
  %cmp = icmp ugt i32 %num_chunks, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %validation_drop_cnt = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt) #14
  %validation_drop_cnt1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 50, i32 5
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt1, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt1) #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 512) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = shl nuw nsw i32 %num_chunks, 6
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 2592) #20
  %3 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i, ptr %cs_chunk_array, align 4
  %tobool.not95 = icmp eq ptr %call8.i, null
  br i1 %tobool.not95, label %if.end7.i77, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end7.i77:                                      ; preds = %if.end
  %call8.i76 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #20
  %4 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i76, ptr %cs_chunk_array, align 4
  %tobool5.not = icmp eq ptr %call8.i76, null
  br i1 %tobool5.not, label %if.then6, label %if.end7.i77.if.then.i.i.i_crit_edge

if.end7.i77.if.then.i.i.i_crit_edge:              ; preds = %if.end7.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.then6:                                         ; preds = %if.end7.i77
  call void @__sanitizer_cov_trace_pc() #16
  %cs_counters7 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters7, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters7) #14
  %aggregated_cs_counters8 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 50
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters8, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters8) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end7.i77.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %5 = phi ptr [ %call8.i76, %if.end7.i77.if.then.i.i.i_crit_edge ], [ %call8.i, %if.end.if.then.i.i.i_crit_edge ]
  tail call void @__check_object_size(ptr noundef %5, i32 noundef %2, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #14
  %call.i.i40 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i40, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %chunks, i32 %2, i32 -1226833920) #18, !srcloc !409
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !395

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef %2) #14
  %7 = tail call i32 @llvm.read_register.i32(metadata !383) #14
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !410
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %5, ptr noundef %chunks, i32 noundef %2) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !395

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  %validation_drop_cnt15 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12, i32 5
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt15, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt15) #14
  %validation_drop_cnt17 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 50, i32 5
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %validation_drop_cnt17, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %validation_drop_cnt17) #14
  %dev21 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.77) #17
  %13 = ptrtoint ptr %cs_chunk_array to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cs_chunk_array, align 4
  tail call void @kfree(ptr noundef %14) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -14, %if.then11.i.i ], [ -12, %if.then6 ], [ 0, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_cs(ptr noundef %hdev, ptr noundef %ctx, i32 noundef %cs_type, i64 noundef %user_sequence, ptr nocapture noundef writeonly %cs_new, i32 noundef %flags, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %aggregated_cs_counters = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 312) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i226 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 312) #19
  %tobool2.not = icmp eq ptr %call7.i.i226, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cs_counters = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters) #14
  %call.i.i219 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %cs.0269 = phi ptr [ %call7.i.i226, %if.end.if.end5_crit_edge ], [ %call7.i.i, %entry.if.end5_crit_edge ]
  tail call void @hl_ctx_get(ptr noundef %hdev, ptr noundef %ctx) #14
  %ctx6 = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 1
  %2 = ptrtoint ptr %ctx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx, ptr %ctx6, align 4
  %submitted = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 21
  %3 = ptrtoint ptr %submitted to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %submitted, align 2
  %completed = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 22
  %4 = ptrtoint ptr %completed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %completed, align 1
  %type = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 17
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cs_type, ptr %type, align 8
  %6 = trunc i32 %flags to i8
  %7 = lshr i8 %6, 5
  %8 = and i8 %7, 1
  %timestamp = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 26
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %timestamp, align 1
  %and9 = lshr i32 %flags, 11
  %10 = trunc i32 %and9 to i8
  %11 = and i8 %10, 1
  %encaps_signals = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 31
  %12 = ptrtoint ptr %encaps_signals to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %encaps_signals, align 8
  %conv16 = zext i32 %timeout to i64
  %timeout_jiffies = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 15
  %13 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv16, ptr %timeout_jiffies, align 8
  %skip_reset_on_timeout = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 11
  %14 = ptrtoint ptr %skip_reset_on_timeout to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %skip_reset_on_timeout, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp ne i8 %15, 0
  %and19 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20 = icmp ne i32 %and19, 0
  %16 = or i1 %tobool20, %tobool18.not
  %conv25 = zext i1 %16 to i8
  %skip_reset_on_timeout26 = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 30
  %17 = ptrtoint ptr %skip_reset_on_timeout26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %skip_reset_on_timeout26, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %conv27 = zext i32 %18 to i64
  %submission_time_jiffies = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 16
  %19 = ptrtoint ptr %submission_time_jiffies to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv27, ptr %submission_time_jiffies, align 8
  %job_list = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 2
  %20 = ptrtoint ptr %job_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %job_list, ptr %job_list, align 8
  %prev.i = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %job_list, ptr %prev.i, align 4
  %work_tdr = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work_tdr, i32 noundef 0) #14
  %22 = ptrtoint ptr %work_tdr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work_tdr, align 4
  %lockdep_map = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.87, ptr noundef nonnull @allocate_cs.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry35 = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 8, i32 0, i32 1
  %23 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry35, ptr %entry35, align 8
  %prev.i227 = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 8, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i227 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry35, ptr %prev.i227, align 4
  %func = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 8, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cs_timedout, ptr %func, align 8
  %timer = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.89, ptr noundef nonnull @allocate_cs.__key.88) #14
  %refcount = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %26 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %refcount, align 4
  %job_lock = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %job_lock, ptr noundef nonnull @.str.91, ptr noundef nonnull @allocate_cs.__key.90, i16 noundef signext 3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i228 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 2848, i32 noundef 176) #19
  %tobool49.not = icmp eq ptr %call7.i.i228, null
  br i1 %tobool49.not, label %if.end52, label %if.end5.if.end58_crit_edge

if.end5.if.end58_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.end52:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i229 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 176) #19
  %tobool53.not = icmp eq ptr %call7.i.i229, null
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %cs_counters55 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12
  %call.i.i220 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters55, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters55) #14
  %call.i.i221 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters) #14
  br label %free_cs

if.end58:                                         ; preds = %if.end52.if.end58_crit_edge, %if.end5.if.end58_crit_edge
  %cs_cmpl.0273 = phi ptr [ %call7.i.i229, %if.end52.if.end58_crit_edge ], [ %call7.i.i228, %if.end5.if.end58_crit_edge ]
  %max_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 49
  %29 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_queues, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 2) #14
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !399

kcalloc.exit.thread:                              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %cs.0269 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %cs.0269, align 8
  br label %if.then62

if.end7.i.i:                                      ; preds = %if.end58
  %34 = extractvalue { i32, i1 } %31, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 2848) #20
  %35 = ptrtoint ptr %cs.0269 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i, ptr %cs.0269, align 8
  %tobool61.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool61.not, label %if.end7.i.i.if.then62_crit_edge, label %if.end7.i.i.if.end74_crit_edge

if.end7.i.i.if.end74_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.end7.i.i.if.then62_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

if.then62:                                        ; preds = %if.end7.i.i.if.then62_crit_edge, %kcalloc.exit.thread
  %36 = ptrtoint ptr %max_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_queues, align 4
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 2) #14
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %if.end67.thread281, label %if.end7.i.i260, !prof !399

if.end67.thread281:                               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %cs.0269 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %cs.0269, align 8
  br label %if.then70

if.end7.i.i260:                                   ; preds = %if.then62
  %41 = extractvalue { i32, i1 } %38, 0
  %call8.i.i259 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #20
  %42 = ptrtoint ptr %cs.0269 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i259, ptr %cs.0269, align 8
  %tobool69.not = icmp eq ptr %call8.i.i259, null
  br i1 %tobool69.not, label %if.end7.i.i260.if.then70_crit_edge, label %if.end7.i.i260.if.end74_crit_edge

if.end7.i.i260.if.end74_crit_edge:                ; preds = %if.end7.i.i260
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.end7.i.i260.if.then70_crit_edge:               ; preds = %if.end7.i.i260
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then70

if.then70:                                        ; preds = %if.end7.i.i260.if.then70_crit_edge, %if.end67.thread281
  %cs_counters71 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12
  %call.i.i222 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cs_counters71, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cs_counters71) #14
  %call.i.i223 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_cs_counters, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %aggregated_cs_counters) #14
  br label %free_cs_cmpl

if.end74:                                         ; preds = %if.end7.i.i260.if.end74_crit_edge, %if.end7.i.i.if.end74_crit_edge
  %hdev75 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl.0273, i32 0, i32 2
  %43 = ptrtoint ptr %hdev75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %hdev, ptr %hdev75, align 4
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 8
  %type77 = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl.0273, i32 0, i32 6
  %46 = ptrtoint ptr %type77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %type77, align 8
  %lock = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl.0273, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.93, ptr noundef nonnull @allocate_cs.__key.92, i16 noundef signext 3) #14
  %fence = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 5
  %47 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cs_cmpl.0273, ptr %fence, align 8
  %cs_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %cs_lock) #14
  %cs_sequence = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 15
  %48 = ptrtoint ptr %cs_sequence to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cs_sequence, align 8
  %cs_seq = getelementptr inbounds %struct.hl_cs_compl, ptr %cs_cmpl.0273, i32 0, i32 5
  %50 = ptrtoint ptr %cs_seq to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %cs_seq, align 8
  %cs_pending = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 5
  %51 = ptrtoint ptr %cs_pending to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cs_pending, align 4
  %max_pending_cs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 48
  %53 = ptrtoint ptr %max_pending_cs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_pending_cs, align 8
  %sub = add i32 %54, -1
  %55 = trunc i64 %49 to i32
  %idxprom = and i32 %sub, %55
  %arrayidx = getelementptr ptr, ptr %52, i32 %idxprom
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %tobool86.not = icmp eq ptr %57, null
  br i1 %tobool86.not, label %if.end74.if.then.i_crit_edge, label %land.lhs.true

if.end74.if.then.i_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true:                                    ; preds = %if.end74
  %call87 = tail call zeroext i1 @completion_done(ptr noundef nonnull %57) #14
  br i1 %call87, label %land.lhs.true.if.then.i_crit_edge, label %if.then88

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then88:                                        ; preds = %land.lhs.true
  %cs_sequence89 = getelementptr inbounds %struct.hl_fence, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %cs_sequence89 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cs_sequence89, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %user_sequence)
  %cmp = icmp eq i64 %59, %user_sequence
  br i1 %cmp, label %do.body92, label %if.then88.do.body103_crit_edge

if.then88.do.body103_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body103

do.body92:                                        ; preds = %if.then88
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @allocate_cs._rs, ptr noundef nonnull @__func__.allocate_cs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.do.body103_crit_edge, label %do.end98

do.body92.do.body103_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body103

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %61, ptr noundef nonnull @.str.94, i64 noundef %user_sequence) #17
  br label %do.body103

do.body103:                                       ; preds = %do.end98, %do.body92.do.body103_crit_edge, %if.then88.do.body103_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @allocate_cs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@allocate_cs, %land.lhs.true111)) #14
          to label %do.end118 [label %land.lhs.true111], !srcloc !397

land.lhs.true111:                                 ; preds = %do.body103
  %call112 = tail call i32 @___ratelimit(ptr noundef nonnull @allocate_cs._rs.95, ptr noundef nonnull @__func__.allocate_cs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %land.lhs.true111.do.end118_crit_edge, label %if.then114

land.lhs.true111.do.end118_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end118

if.then114:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #16
  %dev115 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %62 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev115, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @allocate_cs.descriptor, ptr noundef %63, ptr noundef nonnull @.str.96) #14
  br label %do.end118

do.end118:                                        ; preds = %if.then114, %land.lhs.true111.do.end118_crit_edge, %do.body103
  %max_cs_in_flight_drop_cnt = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 12, i32 4
  %call.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_cs_in_flight_drop_cnt, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %max_cs_in_flight_drop_cnt) #14
  %max_cs_in_flight_drop_cnt120 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 50, i32 4
  %call.i.i225 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_cs_in_flight_drop_cnt120, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %max_cs_in_flight_drop_cnt120) #14
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #14
  %64 = ptrtoint ptr %cs.0269 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cs.0269, align 8
  tail call void @kfree(ptr noundef %65) #14
  br label %free_cs_cmpl

if.then.i:                                        ; preds = %land.lhs.true.if.then.i_crit_edge, %if.end74.if.then.i_crit_edge
  %66 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cs_seq, align 8
  %refcount.i = getelementptr inbounds %struct.hl_fence, ptr %cs_cmpl.0273, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %68 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 1, ptr %refcount.i, align 8
  %cs_sequence.i = getelementptr inbounds %struct.hl_fence, ptr %cs_cmpl.0273, i32 0, i32 2
  %69 = ptrtoint ptr %cs_sequence.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %67, ptr %cs_sequence.i, align 8
  %error.i = getelementptr inbounds %struct.hl_fence, ptr %cs_cmpl.0273, i32 0, i32 4
  %70 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %error.i, align 4
  %timestamp.i = getelementptr inbounds %struct.hl_fence, ptr %cs_cmpl.0273, i32 0, i32 5
  %71 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %timestamp.i, align 8
  %mcs_handling_done.i = getelementptr inbounds %struct.hl_fence, ptr %cs_cmpl.0273, i32 0, i32 6
  %72 = ptrtoint ptr %mcs_handling_done.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %mcs_handling_done.i, align 8
  %73 = ptrtoint ptr %cs_cmpl.0273 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %cs_cmpl.0273, align 8
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %cs_cmpl.0273, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @init_completion.__key) #14
  %74 = ptrtoint ptr %cs_seq to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %cs_seq, align 8
  %sequence = getelementptr inbounds %struct.hl_cs, ptr %cs.0269, i32 0, i32 13
  %76 = ptrtoint ptr %sequence to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %sequence, align 8
  %77 = ptrtoint ptr %cs_pending to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cs_pending, align 4
  %79 = ptrtoint ptr %max_pending_cs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_pending_cs, align 8
  %sub130 = add i32 %80, -1
  %81 = trunc i64 %75 to i32
  %idxprom133 = and i32 %sub130, %81
  %arrayidx134 = getelementptr ptr, ptr %78, i32 %idxprom133
  %82 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cs_cmpl.0273, ptr %arrayidx134, align 4
  %83 = ptrtoint ptr %cs_sequence to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %cs_sequence, align 8
  %inc = add i64 %84, 1
  store i64 %inc, ptr %cs_sequence, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !398
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !399

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %86 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %.not.i.i.i.i.i = icmp sgt i32 %86, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.hl_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !395

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.hl_fence_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %hl_fence_get.exit

hl_fence_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.hl_fence_get.exit_crit_edge
  %cmp.i.i = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool86.not, %cmp.i.i
  br i1 %spec.select.i.i, label %hl_fence_get.exit.hl_fence_put.exit_crit_edge, label %if.end.i

hl_fence_get.exit.hl_fence_put.exit_crit_edge:    ; preds = %hl_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.end.i:                                         ; preds = %hl_fence_get.exit
  %refcount.i264 = getelementptr inbounds %struct.hl_fence, ptr %57, i32 0, i32 1
  %call.i.i.i.i.i.i.i265 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i264, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i264, i32 1, i32 3, i32 1) #14
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i264, ptr %refcount.i264, i32 1, ptr elementtype(i32) %refcount.i264) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i266 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i266, label %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i264, i32 noundef 3) #14
  br label %hl_fence_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %57) #14
  br label %hl_fence_put.exit

hl_fence_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.hl_fence_put.exit_crit_edge, %hl_fence_get.exit.hl_fence_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cs_lock) #14
  %88 = ptrtoint ptr %cs_new to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %cs.0269, ptr %cs_new, align 4
  br label %cleanup

free_cs_cmpl:                                     ; preds = %do.end118, %if.then70
  %rc.0 = phi i32 [ -11, %do.end118 ], [ -12, %if.then70 ]
  tail call void @kfree(ptr noundef nonnull %cs_cmpl.0273) #14
  br label %free_cs

free_cs:                                          ; preds = %free_cs_cmpl, %if.then54
  %rc.1 = phi i32 [ %rc.0, %free_cs_cmpl ], [ -12, %if.then54 ]
  tail call void @kfree(ptr noundef nonnull %cs.0269) #14
  %call140 = tail call i32 @hl_ctx_put(ptr noundef %ctx) #14
  br label %cleanup

cleanup:                                          ; preds = %free_cs, %hl_fence_put.exit, %if.then3
  %retval.0 = phi i32 [ 0, %hl_fence_put.exit ], [ %rc.1, %free_cs ], [ -12, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_cs(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_hw_queue_schedule_cs(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs_timedout(ptr noundef %work) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  %skip_reset_on_timeout1 = getelementptr i8, ptr %work, i32 187
  %0 = ptrtoint ptr %skip_reset_on_timeout1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %skip_reset_on_timeout1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %refcount.i = getelementptr i8, ptr %work, i32 -56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %7, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #14, !srcloc !406
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !395

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.cs_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !395

if.end4.i.i.i.i.i.cs_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cs_get_unless_zero.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #14
  %12 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i.i.i, align 4
  br label %cs_get_unless_zero.exit

cs_get_unless_zero.exit:                          ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.cs_get_unless_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.i.cs_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.i.not, label %cs_get_unless_zero.exit.cleanup_crit_edge, label %if.end

cs_get_unless_zero.exit.cleanup_crit_edge:        ; preds = %cs_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %cs_get_unless_zero.exit
  %submitted = getelementptr i8, ptr %work, i32 178
  %14 = ptrtoint ptr %submitted to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %submitted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %completed = getelementptr i8, ptr %work, i32 179
  %16 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  call fastcc void @cs_put(ptr noundef %add.ptr)
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  br i1 %tobool.not, label %if.then11, label %if.end6.if.end12_crit_edge, !prof !395

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %timedout = getelementptr i8, ptr %work, i32 180
  %18 = ptrtoint ptr %timedout to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %timedout, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6.if.end12_crit_edge
  %ctx = getelementptr i8, ptr %work, i32 -112
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %hdev13 = getelementptr inbounds %struct.hl_ctx, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %hdev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev13, align 4
  %cs_write_disable = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 58, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cs_write_disable, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !405
  call void @llvm.prefetch.p0(ptr %cs_write_disable, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end12
  %23 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cs_write_disable, ptr %cs_write_disable, i32 0, i32 1, ptr elementtype(i32) %cs_write_disable) #14, !srcloc !406
  %asmresult.i.i.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %23, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool15.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool15.not, label %if.then16, label %atomic_cmpxchg.exit.if.end21_crit_edge

atomic_cmpxchg.exit.if.end21_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then16:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %last_error = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 58
  %last_successful_open_ktime = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 71
  %24 = ptrtoint ptr %last_successful_open_ktime to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %last_successful_open_ktime, align 8
  %26 = ptrtoint ptr %last_error to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %last_error, align 8
  %call18 = call i64 @ktime_get() #14
  %cs_timeout_timestamp = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 58, i32 1
  %27 = ptrtoint ptr %cs_timeout_timestamp to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call18, ptr %cs_timeout_timestamp, align 8
  %sequence = getelementptr i8, ptr %work, i32 132
  %28 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sequence, align 8
  %cs_timeout_seq = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 58, i32 5
  %30 = ptrtoint ptr %cs_timeout_seq to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %cs_timeout_seq, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %atomic_cmpxchg.exit.if.end21_crit_edge
  %type = getelementptr i8, ptr %work, i32 164
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 8
  %switch.tableidx = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 3
  br i1 %33, label %switch.lookup, label %if.end21.sw.epilog_crit_edge

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cs_timedout, i32 0, i32 %switch.tableidx
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end21.sw.epilog_crit_edge
  %.str.106.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.106, %if.end21.sw.epilog_crit_edge ]
  %dev38 = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 6
  %35 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev38, align 4
  %sequence39 = getelementptr i8, ptr %work, i32 132
  %37 = ptrtoint ptr %sequence39 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sequence39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull %.str.106.sink, i64 noundef %38) #17
  %call40 = call i32 @hl_state_dump(ptr noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %sw.epilog.if.end47_crit_edge, label %do.end45

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

do.end45:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %dev46 = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 6
  %39 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.109, i32 noundef %call40) #17
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %sw.epilog.if.end47_crit_edge
  call fastcc void @cs_put(ptr noundef %add.ptr)
  br i1 %tobool.not, label %if.then57, label %if.end47.cleanup_crit_edge, !prof !395

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then57:                                        ; preds = %if.end47
  %reset_on_lockup = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 82
  %41 = ptrtoint ptr %reset_on_lockup to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reset_on_lockup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool58.not = icmp eq i8 %42, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %call60 = call i32 @hl_device_reset(ptr noundef %22, i32 noundef 8) #14
  br label %cleanup

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %needs_reset = getelementptr inbounds %struct.hl_device, ptr %22, i32 0, i32 59, i32 6
  %43 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %needs_reset, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then59, %if.end47.cleanup_crit_edge, %if.then5, %cs_get_unless_zero.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_state_dump(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hl_cb_kernel_create(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cb_destroy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_job(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hl_cb_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_cs_poll_fences(ptr nocapture noundef %mcs_data, ptr noundef %mcs_compl) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_arr = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 1
  %0 = ptrtoint ptr %fence_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence_arr, align 4
  %2 = ptrtoint ptr %mcs_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcs_data, align 8
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev1, align 4
  %arr_len2 = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 7
  %6 = ptrtoint ptr %arr_len2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arr_len2, align 8
  %conv = zext i8 %7 to i32
  %seq_arr3 = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 2
  %8 = ptrtoint ptr %seq_arr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq_arr3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #14
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %status, align 4, !annotation !403
  %mul = shl nuw nsw i32 %conv, 2
  %11 = call ptr @memset(ptr %1, i32 0, i32 %mul)
  %12 = ptrtoint ptr %mcs_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcs_data, align 8
  %call = tail call i32 @hl_ctx_get_fences(ptr noundef %13, ptr noundef %9, ptr noundef %1, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup53_crit_edge

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup53

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %mcs_compl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mcs_compl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp118.not = icmp eq i8 %7, 0
  br i1 %cmp118.not, label %if.end.cleanup53_crit_edge, label %for.body.lr.ph

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %if.end
  %stream_master_qid_map9 = getelementptr inbounds %struct.multi_cs_completion, ptr %mcs_compl, i32 0, i32 3
  %update_ts33 = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 9
  %gone_cs = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 8
  %completion_bitmap35 = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first_cs_time.0121 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %first_cs_time.2.ph, %for.inc.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fence_ptr.0119 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %fence_ptr.0119 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fence_ptr.0119, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %for.body.if.end10_crit_edge, label %if.then8

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %stream_master_qid_map = getelementptr inbounds %struct.hl_fence, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %stream_master_qid_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream_master_qid_map, align 8
  %19 = ptrtoint ptr %stream_master_qid_map9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream_master_qid_map9, align 8
  %or = or i32 %20, %18
  store i32 %or, ptr %stream_master_qid_map9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.body.if.end10_crit_edge
  %21 = ptrtoint ptr %mcs_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mcs_data, align 8
  %arrayidx = getelementptr i64, ptr %9, i32 %i.0120
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx, align 8
  %call12 = call fastcc i32 @hl_wait_for_fence(ptr noundef %22, i64 noundef %24, ptr noundef %16, ptr noundef nonnull %status, i64 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %26, label %cleanup.thread110 [
    i32 0, label %if.end16.for.inc_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb32
  ]

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb:                                            ; preds = %if.end16
  br i1 %tobool7.not, label %sw.bb.if.end21_crit_edge, label %land.lhs.true

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true:                                    ; preds = %sw.bb
  %mcs_handling_done = getelementptr inbounds %struct.hl_fence, ptr %16, i32 0, i32 6
  %28 = ptrtoint ptr %mcs_handling_done to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mcs_handling_done, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool18.not = icmp eq i8 %29, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @complete_all(ptr noundef %mcs_compl) #14
  br label %for.inc

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %sw.bb.if.end21_crit_edge
  %shl = shl nuw i32 1, %i.0120
  %30 = ptrtoint ptr %completion_bitmap35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %completion_bitmap35, align 4
  %or22 = or i32 %31, %shl
  store i32 %or22, ptr %completion_bitmap35, align 4
  %32 = ptrtoint ptr %update_ts33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %update_ts33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool24.not = icmp eq i8 %33, 0
  br i1 %tobool24.not, label %if.end21.for.inc_crit_edge, label %land.lhs.true25

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true25:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp = getelementptr inbounds %struct.hl_fence, ptr %16, i32 0, i32 5
  %34 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %timestamp, align 8
  %36 = tail call i64 @llvm.smin.i64(i64 %35, i64 %first_cs_time.0121)
  br label %for.inc

sw.bb32:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %update_ts33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %update_ts33, align 2
  %38 = ptrtoint ptr %gone_cs to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %gone_cs, align 1
  %shl34 = shl nuw i32 1, %i.0120
  %39 = ptrtoint ptr %completion_bitmap35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %completion_bitmap35, align 4
  %or36 = or i32 %40, %shl34
  store i32 %or36, ptr %completion_bitmap35, align 4
  br label %for.inc

cleanup.thread110:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %dev40 = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %41 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.201) #17
  br label %cleanup53

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hl_device, ptr %5, i32 0, i32 6
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.198, i32 noundef %call12, i64 noundef %46) #17
  br label %for.end

for.inc:                                          ; preds = %sw.bb32, %land.lhs.true25, %if.end21.for.inc_crit_edge, %if.then19, %if.end16.for.inc_crit_edge
  %first_cs_time.2.ph = phi i64 [ %first_cs_time.0121, %if.end16.for.inc_crit_edge ], [ %first_cs_time.0121, %if.then19 ], [ %first_cs_time.0121, %if.end21.for.inc_crit_edge ], [ %first_cs_time.0121, %sw.bb32 ], [ %36, %land.lhs.true25 ]
  %inc = add nuw nsw i32 %i.0120, 1
  %incdec.ptr = getelementptr ptr, ptr %fence_ptr.0119, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %first_cs_time.0115 = phi i64 [ %first_cs_time.0121, %cleanup ], [ %first_cs_time.2.ph, %for.inc.for.end_crit_edge ]
  br i1 %cmp118.not, label %for.end.hl_fences_put.exit_crit_edge, label %for.body.i.preheader

for.end.hl_fences_put.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fences_put.exit

for.body.i.preheader:                             ; preds = %for.end
  %47 = ptrtoint ptr %fence_arr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fence_arr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %hl_fence_put.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.05.i = phi i32 [ %inc.i, %hl_fence_put.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %fence.addr.04.i = phi ptr [ %incdec.ptr.i, %hl_fence_put.exit.i.for.body.i_crit_edge ], [ %48, %for.body.i.preheader ]
  %49 = ptrtoint ptr %fence.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fence.addr.04.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %50, null
  %cmp.i.i.i = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body.i.hl_fence_put.exit.i_crit_edge, label %if.end.i.i

for.body.i.hl_fence_put.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %refcount.i.i = getelementptr inbounds %struct.hl_fence, ptr %50, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !394
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.hl_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !395

if.end5.i.i.i.i.i.i.hl_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #14
  br label %hl_fence_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !396
  tail call void @kfree(ptr noundef nonnull %50) #14
  br label %hl_fence_put.exit.i

hl_fence_put.exit.i:                              ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.hl_fence_put.exit.i_crit_edge, %for.body.i.hl_fence_put.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %incdec.ptr.i = getelementptr ptr, ptr %fence.addr.04.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %hl_fence_put.exit.i.hl_fences_put.exit_crit_edge, label %hl_fence_put.exit.i.for.body.i_crit_edge

hl_fence_put.exit.i.for.body.i_crit_edge:         ; preds = %hl_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

hl_fence_put.exit.i.hl_fences_put.exit_crit_edge: ; preds = %hl_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hl_fences_put.exit

hl_fences_put.exit:                               ; preds = %hl_fence_put.exit.i.hl_fences_put.exit_crit_edge, %for.end.hl_fences_put.exit_crit_edge
  %update_ts42 = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 9
  %52 = ptrtoint ptr %update_ts42 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %update_ts42, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool44.not = icmp eq i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %first_cs_time.0115)
  %cmp.i105.not.not = icmp eq i64 %first_cs_time.0115, 9223372036854775807
  %or.cond = select i1 %tobool44.not, i1 true, i1 %cmp.i105.not.not
  br i1 %or.cond, label %hl_fences_put.exit.cleanup53_crit_edge, label %if.then49

hl_fences_put.exit.cleanup53_crit_edge:           ; preds = %hl_fences_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup53

if.then49:                                        ; preds = %hl_fences_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp51 = getelementptr inbounds %struct.multi_cs_data, ptr %mcs_data, i32 0, i32 4
  %54 = ptrtoint ptr %timestamp51 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %first_cs_time.0115, ptr %timestamp51, align 8
  br label %cleanup53

cleanup53:                                        ; preds = %if.then49, %hl_fences_put.exit.cleanup53_crit_edge, %cleanup.thread110, %if.end.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.2 = phi i32 [ %call, %entry.cleanup53_crit_edge ], [ %call12, %if.then49 ], [ %call12, %hl_fences_put.exit.cleanup53_crit_edge ], [ -22, %cleanup.thread110 ], [ 0, %if.end.cleanup53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #14
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_get_fences(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 206)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 206)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !175, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !260, !261, !262, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !358, !360, !361, !362, !363, !365, !366, !367, !369, !370, !371, !372, !373, !375, !376, !377, !378, !380, !381, !382}
!llvm.named.register.sp = !{!383}
!llvm.module.flags = !{!384, !385, !386, !387, !388, !389, !390, !391}
!llvm.ident = !{!392}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 54, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_sob_reset_error._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_sob_reset_error._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 939, i32 3}
!10 = !{ptr @hl_cs_rollback_all._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @__func__.hl_cs_rollback_all, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hl_cs_rollback_all._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @hl_cs_rollback_all._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @hl_cs_allocate_job.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1112, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1605, i32 4}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hl_cs_signal_sob_wraparound_handler._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @hl_cs_signal_sob_wraparound_handler._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1646, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hl_cs_signal_sob_wraparound_handler.__UNIQUE_ID_ddebug302, !26, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!29 = !{ptr @hl_multi_cs_completion_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2641, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 41, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hl_sob_reset.__UNIQUE_ID_ddebug297, !33, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 694, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cs_do_release._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cs_do_release._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 578, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cs_release_sob_reset_handler.__UNIQUE_ID_ddebug298, !42, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 484, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @force_complete_multi_cs._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @force_complete_multi_cs._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1147, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hl_cs_sanity_checks._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hl_cs_sanity_checks._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1154, i32 3}
!57 = !{ptr @hl_cs_sanity_checks._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hl_cs_sanity_checks._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1165, i32 3}
!61 = !{ptr @hl_cs_sanity_checks._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hl_cs_sanity_checks._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1171, i32 4}
!65 = !{ptr @hl_cs_sanity_checks._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hl_cs_sanity_checks._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1177, i32 3}
!69 = !{ptr @hl_cs_sanity_checks._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hl_cs_sanity_checks._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @hl_cs_ctx_switch._rs, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1479, i32 5}
!73 = !{ptr @__func__.hl_cs_ctx_switch, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hl_cs_ctx_switch._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @hl_cs_ctx_switch._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1504, i32 4}
!79 = !{ptr @hl_cs_ctx_switch.__UNIQUE_ID_ddebug299, !78, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1515, i32 4}
!82 = !{ptr @hl_cs_ctx_switch._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @hl_cs_ctx_switch._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1534, i32 5}
!86 = !{ptr @hl_cs_ctx_switch._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @hl_cs_ctx_switch._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1550, i32 4}
!90 = !{ptr @hl_cs_ctx_switch._entry.45, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @hl_cs_ctx_switch._entry_ptr.47, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @hl_wait_for_fence._rs, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2325, i32 4}
!94 = !{ptr @__func__.hl_wait_for_fence, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @hl_wait_for_fence._entry, !93, !"_entry", i1 false, i1 false}
!98 = !{ptr @hl_wait_for_fence._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2332, i32 3}
!101 = !{ptr @hl_wait_for_fence.__UNIQUE_ID_ddebug306, !100, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2002, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cs_ioctl_signal_wait._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cs_ioctl_signal_wait._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2015, i32 3}
!109 = !{ptr @cs_ioctl_signal_wait._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cs_ioctl_signal_wait._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @cs_ioctl_signal_wait._entry.56, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2026, i32 4}
!113 = !{ptr @cs_ioctl_signal_wait._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2035, i32 4}
!116 = !{ptr @cs_ioctl_signal_wait._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @cs_ioctl_signal_wait._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2080, i32 5}
!120 = !{ptr @cs_ioctl_signal_wait.__UNIQUE_ID_ddebug305, !119, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2089, i32 5}
!123 = !{ptr @cs_ioctl_signal_wait._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cs_ioctl_signal_wait._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2101, i32 4}
!127 = !{ptr @cs_ioctl_signal_wait._entry.65, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cs_ioctl_signal_wait._entry_ptr.67, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2125, i32 4}
!131 = !{ptr @cs_ioctl_signal_wait._entry.68, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cs_ioctl_signal_wait._entry_ptr.70, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2194, i32 4}
!135 = !{ptr @cs_ioctl_signal_wait._entry.71, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cs_ioctl_signal_wait._entry_ptr.73, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1196, i32 3}
!139 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @hl_cs_copy_chunk_array._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @hl_cs_copy_chunk_array._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1217, i32 3}
!144 = !{ptr @hl_cs_copy_chunk_array._entry.76, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @hl_cs_copy_chunk_array._entry_ptr.78, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!148 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1674, i32 3}
!155 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @cs_ioctl_extract_signal_seq._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @cs_ioctl_extract_signal_seq._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1698, i32 3}
!160 = !{ptr @cs_ioctl_extract_signal_seq._entry.84, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @cs_ioctl_extract_signal_seq._entry_ptr.86, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @allocate_cs.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 821, i32 2}
!164 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @allocate_cs.__key.88, !163, !"__key", i1 false, i1 false}
!166 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @allocate_cs.__key.90, !168, !"__key", i1 false, i1 false}
!168 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 823, i32 2}
!169 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @allocate_cs.__key.92, !171, !"__key", i1 false, i1 false}
!171 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 851, i32 2}
!172 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @allocate_cs._rs, !174, !"_rs", i1 false, i1 false}
!174 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 869, i32 4}
!175 = !{ptr @__func__.allocate_cs, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @allocate_cs._entry, !174, !"_entry", i1 false, i1 false}
!178 = !{ptr @allocate_cs._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @allocate_cs._rs.95, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 873, i32 3}
!181 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @allocate_cs.descriptor, !180, !"descriptor", i1 false, i1 false}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 746, i32 3}
!185 = !{ptr @.str.98, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @cs_timedout._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @cs_timedout._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 752, i32 3}
!190 = !{ptr @cs_timedout._entry.99, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @cs_timedout._entry_ptr.101, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 758, i32 3}
!194 = !{ptr @cs_timedout._entry.102, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @cs_timedout._entry_ptr.104, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 764, i32 3}
!198 = !{ptr @cs_timedout._entry.105, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cs_timedout._entry_ptr.107, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.109, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 772, i32 3}
!202 = !{ptr @cs_timedout._entry.108, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @cs_timedout._entry_ptr.110, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1728, i32 3}
!206 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @cs_ioctl_signal_wait_create_jobs._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @cs_ioctl_signal_wait_create_jobs._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1793, i32 3}
!211 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @cs_ioctl_reserve_signals._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @cs_ioctl_reserve_signals._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @cs_ioctl_reserve_signals._entry.115, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1800, i32 3}
!216 = !{ptr @cs_ioctl_reserve_signals._entry_ptr.116, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @cs_ioctl_reserve_signals._entry.117, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1809, i32 3}
!219 = !{ptr @cs_ioctl_reserve_signals._entry_ptr.118, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1835, i32 3}
!222 = !{ptr @cs_ioctl_reserve_signals._entry.119, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @cs_ioctl_reserve_signals._entry_ptr.121, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1858, i32 3}
!226 = !{ptr @cs_ioctl_reserve_signals._entry.122, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @cs_ioctl_reserve_signals._entry_ptr.124, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.125, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1879, i32 2}
!230 = !{ptr @cs_ioctl_reserve_signals.__UNIQUE_ID_ddebug303, !229, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!231 = !{ptr @.str.126, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1913, i32 3}
!233 = !{ptr @.str.127, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @cs_ioctl_unreserve_signals.__UNIQUE_ID_ddebug304, !232, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!235 = !{ptr @.str.128, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1932, i32 4}
!237 = !{ptr @cs_ioctl_unreserve_signals._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @cs_ioctl_unreserve_signals._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1957, i32 3}
!241 = !{ptr @cs_ioctl_unreserve_signals._entry.129, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @cs_ioctl_unreserve_signals._entry_ptr.131, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.132, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1367, i32 4}
!245 = !{ptr @cs_ioctl_default._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @cs_ioctl_default._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.134, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1402, i32 4}
!249 = !{ptr @cs_ioctl_default._entry.133, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @cs_ioctl_default._entry_ptr.135, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.137, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1415, i32 3}
!253 = !{ptr @cs_ioctl_default._entry.136, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @cs_ioctl_default._entry_ptr.138, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @cs_ioctl_default._entry.139, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1432, i32 4}
!257 = !{ptr @cs_ioctl_default._entry_ptr.140, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.141, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1010, i32 3}
!260 = !{ptr @validate_queue_index._entry, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @validate_queue_index._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @validate_queue_index._entry.142, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1018, i32 3}
!264 = !{ptr @validate_queue_index._entry_ptr.143, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.145, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1024, i32 3}
!267 = !{ptr @validate_queue_index._entry.144, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @validate_queue_index._entry_ptr.146, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.148, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1036, i32 5}
!271 = !{ptr @validate_queue_index._entry.147, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @validate_queue_index._entry_ptr.149, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.151, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1046, i32 5}
!275 = !{ptr @validate_queue_index._entry.150, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @validate_queue_index._entry_ptr.152, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.153, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1074, i32 3}
!279 = !{ptr @.str.154, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @get_cb_from_cs_chunk._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @get_cb_from_cs_chunk._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.156, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 1079, i32 3}
!284 = !{ptr @get_cb_from_cs_chunk._entry.155, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @get_cb_from_cs_chunk._entry_ptr.157, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @init_completion.__key, !287, !"__key", i1 false, i1 false}
!287 = !{!"../include/linux/completion.h", i32 87, i32 2}
!288 = !{ptr @.str.158, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.159, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 3082, i32 3}
!291 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @hl_interrupt_wait_ioctl._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @hl_interrupt_wait_ioctl._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 3094, i32 3}
!296 = !{ptr @hl_interrupt_wait_ioctl._entry.161, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @hl_interrupt_wait_ioctl._entry_ptr.163, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @hl_interrupt_wait_ioctl._rs, !299, !"_rs", i1 false, i1 false}
!299 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 3116, i32 4}
!300 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @hl_interrupt_wait_ioctl._entry.164, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @hl_interrupt_wait_ioctl._entry_ptr.166, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @_hl_interrupt_wait_ioctl._rs, !304, !"_rs", i1 false, i1 false}
!304 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2922, i32 4}
!305 = !{ptr @__func__._hl_interrupt_wait_ioctl, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.167, !304, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @_hl_interrupt_wait_ioctl._entry, !304, !"_entry", i1 false, i1 false}
!308 = !{ptr @_hl_interrupt_wait_ioctl._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @_hl_interrupt_wait_ioctl._rs.168, !310, !"_rs", i1 false, i1 false}
!310 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2929, i32 5}
!311 = !{ptr @.str.170, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @_hl_interrupt_wait_ioctl._entry.169, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @_hl_interrupt_wait_ioctl._entry_ptr.171, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @_hl_interrupt_wait_ioctl._rs.172, !315, !"_rs", i1 false, i1 false}
!315 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2935, i32 5}
!316 = !{ptr @.str.174, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @_hl_interrupt_wait_ioctl._entry.173, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @_hl_interrupt_wait_ioctl._entry_ptr.175, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.176, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2993, i32 3}
!321 = !{ptr @.str.177, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry.178, !325, !"_entry", i1 false, i1 false}
!325 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 3028, i32 4}
!326 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr.179, !325, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._rs, !328, !"_rs", i1 false, i1 false}
!328 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 3037, i32 4}
!329 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry.180, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr.181, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._rs.182, !332, !"_rs", i1 false, i1 false}
!332 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 3047, i32 3}
!333 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry.183, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @_hl_interrupt_wait_ioctl_user_addr._entry_ptr.184, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.185, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2668, i32 3}
!337 = !{ptr @.str.186, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @hl_multi_cs_wait_ioctl._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @hl_multi_cs_wait_ioctl._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.188, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2675, i32 3}
!342 = !{ptr @hl_multi_cs_wait_ioctl._entry.187, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @hl_multi_cs_wait_ioctl._entry_ptr.189, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.191, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2690, i32 3}
!346 = !{ptr @hl_multi_cs_wait_ioctl._entry.190, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @hl_multi_cs_wait_ioctl._entry_ptr.192, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @hl_multi_cs_wait_ioctl._rs, !349, !"_rs", i1 false, i1 false}
!349 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2772, i32 3}
!350 = !{ptr @.str.194, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @hl_multi_cs_wait_ioctl._entry.193, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @hl_multi_cs_wait_ioctl._entry_ptr.195, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.196, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2580, i32 3}
!355 = !{ptr @.str.197, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @hl_wait_multi_cs_completion_init._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @hl_wait_multi_cs_completion_init._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.198, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2440, i32 4}
!360 = !{ptr @.str.199, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @hl_cs_poll_fences._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @hl_cs_poll_fences._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.201, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2492, i32 4}
!365 = !{ptr @hl_cs_poll_fences._entry.200, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @hl_cs_poll_fences._entry_ptr.202, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @hl_cs_wait_ioctl._rs, !368, !"_rs", i1 false, i1 false}
!368 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2813, i32 3}
!369 = !{ptr @__func__.hl_cs_wait_ioctl, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.203, !368, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @hl_cs_wait_ioctl._entry, !368, !"_entry", i1 false, i1 false}
!372 = !{ptr @hl_cs_wait_ioctl._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @hl_cs_wait_ioctl._rs.204, !374, !"_rs", i1 false, i1 false}
!374 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2823, i32 4}
!375 = !{ptr @.str.206, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @hl_cs_wait_ioctl._entry.205, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @hl_cs_wait_ioctl._entry_ptr.207, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @hl_cs_wait_ioctl._rs.208, !379, !"_rs", i1 false, i1 false}
!379 = !{!"../drivers/misc/habanalabs/common/command_submission.c", i32 2828, i32 4}
!380 = !{ptr @.str.210, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @hl_cs_wait_ioctl._entry.209, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @hl_cs_wait_ioctl._entry_ptr.211, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{!"sp"}
!384 = !{i32 1, !"wchar_size", i32 2}
!385 = !{i32 1, !"min_enum_size", i32 4}
!386 = !{i32 8, !"branch-target-enforcement", i32 0}
!387 = !{i32 8, !"sign-return-address", i32 0}
!388 = !{i32 8, !"sign-return-address-all", i32 0}
!389 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!390 = !{i32 7, !"uwtable", i32 1}
!391 = !{i32 7, !"frame-pointer", i32 2}
!392 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!393 = !{i64 2148722222}
!394 = !{i64 2148636686, i64 2148636718, i64 2148636747, i64 2148636781, i64 2148636812, i64 2148636835}
!395 = !{!"branch_weights", i32 2000, i32 1}
!396 = !{i64 2150803875}
!397 = !{i64 2149114506, i64 2149114511, i64 2149114524, i64 2149114568, i64 2149114602, i64 2149114623}
!398 = !{i64 2148634221, i64 2148634253, i64 2148634282, i64 2148634316, i64 2148634347, i64 2148634370}
!399 = !{!"branch_weights", i32 1, i32 2000}
!400 = !{i8 0, i8 2}
!401 = !{i64 1537681, i64 1537708, i64 1537730, i64 1537758}
!402 = !{i64 1538089, i64 1538116, i64 1538149, i64 1538170, i64 1538197, i64 1538223}
!403 = !{!"auto-init"}
!404 = !{i32 0, i32 33}
!405 = !{i64 2148734514}
!406 = !{i64 1116427, i64 1116451, i64 1116472, i64 1116489, i64 1116506}
!407 = !{i64 2148734740}
!408 = !{i64 2156015439}
!409 = !{i64 2152605710, i64 2152605735}
!410 = !{i64 5101265}
!411 = !{i64 5101462}
!412 = !{i64 2152586695}
!413 = !{i64 2148632691, i64 2148632717, i64 2148632746, i64 2148632780, i64 2148632811, i64 2148632834}
!414 = !{i64 2148635156, i64 2148635182, i64 2148635211, i64 2148635245, i64 2148635276, i64 2148635299}
