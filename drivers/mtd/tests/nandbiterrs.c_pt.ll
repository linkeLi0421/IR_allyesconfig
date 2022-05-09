; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/nandbiterrs.c_pt.bc'
source_filename = "../drivers/mtd/tests/nandbiterrs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.52 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.52 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.33, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.33 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.89, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype214 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev215 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@page_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_page_offset = internal constant %struct.kernel_param { ptr @___asan_gen_.92, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @page_offset } }, section "__param", align 4
@__UNIQUE_ID_page_offsettype216 = internal constant [26 x i8] c"parmtype=page_offset:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_page_offset217 = internal constant [51 x i8] c"parm=page_offset:Page number relative to dev start\00", section ".modinfo", align 1
@seed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_seed = internal constant %struct.kernel_param { ptr @___asan_gen_.95, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @seed } }, section "__param", align 4
@__UNIQUE_ID_seedtype218 = internal constant [19 x i8] c"parmtype=seed:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_seed219 = internal constant [22 x i8] c"parm=seed:Random seed\00", section ".modinfo", align 1
@mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.98, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @mode } }, section "__param", align 4
@__UNIQUE_ID_modetype220 = internal constant [18 x i8] c"parmtype=mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mode221 = internal constant [49 x i8] c"parm=mode:0=incremental errors, 1=overwrite test\00", section ".modinfo", align 1
@__UNIQUE_ID_description222 = internal constant [41 x i8] c"description=NAND bit error recovery test\00", section ".modinfo", align 1
@__UNIQUE_ID_author223 = internal constant [19 x i8] c"author=Iwo Mergler\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_nandbiterrs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtd_nandbiterrs_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/tests/nandbiterrs.c\00", [32 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr = internal global ptr @mtd_nandbiterrs_init._entry, section ".printk_index", align 4
@mtd_nandbiterrs_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016==================================================\0A\00", [42 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.5 = internal global ptr @mtd_nandbiterrs_init._entry.3, section ".printk_index", align 4
@mtd_nandbiterrs_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016mtd_nandbiterrs: MTD device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.8 = internal global ptr @mtd_nandbiterrs_init._entry.6, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_nandbiterrs_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_nandbiterrs: error: cannot get MTD device\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.11 = internal global ptr @mtd_nandbiterrs_init._entry.9, section ".printk_index", align 4
@mtd_nandbiterrs_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mtd_nandbiterrs: this test requires NAND flash\0A\00", [46 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.14 = internal global ptr @mtd_nandbiterrs_init._entry.12, section ".printk_index", align 4
@mtd_nandbiterrs_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016mtd_nandbiterrs: MTD device size %llu, eraseblock=%u, page=%u, oob=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.17 = internal global ptr @mtd_nandbiterrs_init._entry.15, section ".printk_index", align 4
@subsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@subcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_nandbiterrs_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mtd_nandbiterrs: Device uses %d subpages of %d bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.20 = internal global ptr @mtd_nandbiterrs_init._entry.18, section ".printk_index", align 4
@offset = internal global { i64, [24 x i8] } zeroinitializer, align 32
@eraseblock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_nandbiterrs_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016mtd_nandbiterrs: Using page=%u, offset=%llu, eraseblock=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.23 = internal global ptr @mtd_nandbiterrs_init._entry.21, section ".printk_index", align 4
@wbuffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rbuffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_nandbiterrs_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_nandbiterrs: finished successfully.\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.26 = internal global ptr @mtd_nandbiterrs_init._entry.24, section ".printk_index", align 4
@mtd_nandbiterrs_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_nandbiterrs_init._entry_ptr.28 = internal global ptr @mtd_nandbiterrs_init._entry.27, section ".printk_index", align 4
@incremental_errors_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016mtd_nandbiterrs: incremental biterrors test\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"incremental_errors_test\00", [40 x i8] zeroinitializer }, align 32
@incremental_errors_test._entry_ptr = internal global ptr @incremental_errors_test._entry, section ".printk_index", align 4
@incremental_errors_test._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mtd_nandbiterrs: Read reported %d corrected bit errors\0A\00", [38 x i8] zeroinitializer }, align 32
@incremental_errors_test._entry_ptr.33 = internal global ptr @incremental_errors_test._entry.31, section ".printk_index", align 4
@incremental_errors_test._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013mtd_nandbiterrs: After %d biterrors per subpage, read reported error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@incremental_errors_test._entry_ptr.36 = internal global ptr @incremental_errors_test._entry.34, section ".printk_index", align 4
@incremental_errors_test._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013mtd_nandbiterrs: ECC failure, read data is incorrect despite read success\0A\00", [51 x i8] zeroinitializer }, align 32
@incremental_errors_test._entry_ptr.39 = internal global ptr @incremental_errors_test._entry.37, section ".printk_index", align 4
@incremental_errors_test._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016mtd_nandbiterrs: Successfully corrected %d bit errors per subpage\0A\00", [59 x i8] zeroinitializer }, align 32
@incremental_errors_test._entry_ptr.42 = internal global ptr @incremental_errors_test._entry.40, section ".printk_index", align 4
@write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016mtd_nandbiterrs: write_page\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_page\00", [21 x i8] zeroinitializer }, align 32
@write_page._entry_ptr = internal global ptr @write_page._entry, section ".printk_index", align 4
@rewrite_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mtd_nandbiterrs: rewrite page\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rewrite_page\00", [19 x i8] zeroinitializer }, align 32
@rewrite_page._entry_ptr = internal global ptr @rewrite_page._entry, section ".printk_index", align 4
@rewrite_page._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtd_nandbiterrs: error: write_oob failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@rewrite_page._entry_ptr.49 = internal global ptr @rewrite_page._entry.47, section ".printk_index", align 4
@read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016mtd_nandbiterrs: read_page\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_page\00", [22 x i8] zeroinitializer }, align 32
@read_page._entry_ptr = internal global ptr @read_page._entry, section ".printk_index", align 4
@read_page._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtd_nandbiterrs: error: read failed at %#llx\0A\00", [48 x i8] zeroinitializer }, align 32
@read_page._entry_ptr.54 = internal global ptr @read_page._entry.52, section ".printk_index", align 4
@verify_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mtd_nandbiterrs: verify_page\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"verify_page\00", [20 x i8] zeroinitializer }, align 32
@verify_page._entry_ptr = internal global ptr @verify_page._entry, section ".printk_index", align 4
@verify_page._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013mtd_nandbiterrs: Error: page offset %u, expected %02x, got %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@verify_page._entry_ptr.59 = internal global ptr @verify_page._entry.57, section ".printk_index", align 4
@insert_biterror._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_nandbiterrs: Inserted biterror @ %u/%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"insert_biterror\00", [16 x i8] zeroinitializer }, align 32
@insert_biterror._entry_ptr = internal global ptr @insert_biterror._entry, section ".printk_index", align 4
@insert_biterror._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mtd_nandbiterrs: biterror: Failed to find a '1' bit\0A\00", [41 x i8] zeroinitializer }, align 32
@insert_biterror._entry_ptr.64 = internal global ptr @insert_biterror._entry.62, section ".printk_index", align 4
@overwrite_test.bitstats = internal global { [512 x i32], [512 x i8] } zeroinitializer, align 32
@overwrite_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mtd_nandbiterrs: overwrite biterrors test\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"overwrite_test\00", [17 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr = internal global ptr @overwrite_test._entry, section ".printk_index", align 4
@overwrite_test._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016mtd_nandbiterrs: Implausible number of bit errors corrected\0A\00", [33 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr.69 = internal global ptr @overwrite_test._entry.67, section ".printk_index", align 4
@overwrite_test._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.66, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr.71 = internal global ptr @overwrite_test._entry.70, section ".printk_index", align 4
@overwrite_test._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.66, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_nandbiterrs: Read reported error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr.74 = internal global ptr @overwrite_test._entry.72, section ".printk_index", align 4
@overwrite_test._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.66, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016mtd_nandbiterrs: ECC failure, read data is incorrect despite read success\0A\00", [51 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr.77 = internal global ptr @overwrite_test._entry.75, section ".printk_index", align 4
@overwrite_test._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.66, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016mtd_nandbiterrs: Bit error histogram (%d operations total):\0A\00", [33 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr.80 = internal global ptr @overwrite_test._entry.78, section ".printk_index", align 4
@overwrite_test._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.66, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016mtd_nandbiterrs: Page reads with %3d corrected bit errors: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@overwrite_test._entry_ptr.83 = internal global ptr @overwrite_test._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.84, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016mtd_nandbiterrs: aborting test due to pending signal!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.89 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 41, i32 12 }
@___asan_gen_.92 = private constant [12 x i8] c"page_offset\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 45, i32 17 }
@___asan_gen_.95 = private constant [5 x i8] c"seed\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 49, i32 17 }
@___asan_gen_.98 = private constant [5 x i8] c"mode\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 53, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 332, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 333, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 334, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 67, i32 25 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 339, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 344, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 349, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"subsize\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 64, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant [9 x i8] c"subcount\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 65, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 356, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 59, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant [11 x i8] c"eraseblock\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 60, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 361, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [8 x i8] c"wbuffer\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 69, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant [8 x i8] c"rbuffer\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 70, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 394, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 395, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 206, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 223, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 225, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 233, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 237, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 93, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 105, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 118, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 135, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 145, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 159, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 163, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 188, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 194, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [9 x i8] c"bitstats\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 265, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 269, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 287, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 294, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 298, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 306, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 319, i32 2 }
@___asan_gen_.330 = private constant [35 x i8] c"../drivers/mtd/tests/nandbiterrs.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 321, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 7, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 9, i32 3 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description222, ptr @__UNIQUE_ID_dev215, ptr @__UNIQUE_ID_devtype214, ptr @__UNIQUE_ID_license224, ptr @__UNIQUE_ID_mode221, ptr @__UNIQUE_ID_modetype220, ptr @__UNIQUE_ID_page_offset217, ptr @__UNIQUE_ID_page_offsettype216, ptr @__UNIQUE_ID_seed219, ptr @__UNIQUE_ID_seedtype218, ptr @__param_dev, ptr @__param_mode, ptr @__param_page_offset, ptr @__param_seed, ptr @incremental_errors_test._entry, ptr @incremental_errors_test._entry.31, ptr @incremental_errors_test._entry.34, ptr @incremental_errors_test._entry.37, ptr @incremental_errors_test._entry.40, ptr @incremental_errors_test._entry_ptr, ptr @incremental_errors_test._entry_ptr.33, ptr @incremental_errors_test._entry_ptr.36, ptr @incremental_errors_test._entry_ptr.39, ptr @incremental_errors_test._entry_ptr.42, ptr @insert_biterror._entry, ptr @insert_biterror._entry.62, ptr @insert_biterror._entry_ptr, ptr @insert_biterror._entry_ptr.64, ptr @mtd_nandbiterrs_init._entry, ptr @mtd_nandbiterrs_init._entry.12, ptr @mtd_nandbiterrs_init._entry.15, ptr @mtd_nandbiterrs_init._entry.18, ptr @mtd_nandbiterrs_init._entry.21, ptr @mtd_nandbiterrs_init._entry.24, ptr @mtd_nandbiterrs_init._entry.27, ptr @mtd_nandbiterrs_init._entry.3, ptr @mtd_nandbiterrs_init._entry.6, ptr @mtd_nandbiterrs_init._entry.9, ptr @mtd_nandbiterrs_init._entry_ptr, ptr @mtd_nandbiterrs_init._entry_ptr.11, ptr @mtd_nandbiterrs_init._entry_ptr.14, ptr @mtd_nandbiterrs_init._entry_ptr.17, ptr @mtd_nandbiterrs_init._entry_ptr.20, ptr @mtd_nandbiterrs_init._entry_ptr.23, ptr @mtd_nandbiterrs_init._entry_ptr.26, ptr @mtd_nandbiterrs_init._entry_ptr.28, ptr @mtd_nandbiterrs_init._entry_ptr.5, ptr @mtd_nandbiterrs_init._entry_ptr.8, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @overwrite_test._entry, ptr @overwrite_test._entry.67, ptr @overwrite_test._entry.70, ptr @overwrite_test._entry.72, ptr @overwrite_test._entry.75, ptr @overwrite_test._entry.78, ptr @overwrite_test._entry.81, ptr @overwrite_test._entry_ptr, ptr @overwrite_test._entry_ptr.69, ptr @overwrite_test._entry_ptr.71, ptr @overwrite_test._entry_ptr.74, ptr @overwrite_test._entry_ptr.77, ptr @overwrite_test._entry_ptr.80, ptr @overwrite_test._entry_ptr.83, ptr @read_page._entry, ptr @read_page._entry.52, ptr @read_page._entry_ptr, ptr @read_page._entry_ptr.54, ptr @rewrite_page._entry, ptr @rewrite_page._entry.47, ptr @rewrite_page._entry_ptr, ptr @rewrite_page._entry_ptr.49, ptr @verify_page._entry, ptr @verify_page._entry.57, ptr @verify_page._entry_ptr, ptr @verify_page._entry_ptr.59, ptr @write_page._entry, ptr @write_page._entry_ptr, ptr @dev, ptr @page_offset, ptr @seed, ptr @mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @mtd, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @subsize, ptr @subcount, ptr @.str.19, ptr @offset, ptr @eraseblock, ptr @.str.22, ptr @wbuffer, ptr @rbuffer, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @overwrite_test.bitstats, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eraseblock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbuffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbuffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_nandbiterrs_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @incremental_errors_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @incremental_errors_test._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @incremental_errors_test._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @incremental_errors_test._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @incremental_errors_test._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rewrite_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rewrite_page._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_page._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_page._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_biterror._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_biterror._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test.bitstats to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overwrite_test._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %read.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  %0 = load i32, ptr @dev, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %0) #12
  %1 = load i32, ptr @dev, align 4
  %call11 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %1) #9
  store ptr %call11, ptr @mtd, align 4
  %cmp.i115 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call11 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %exit_mtddev

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call11 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call11, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.end23 [
    i8 8, label %if.end.do.end29_crit_edge
    i8 4, label %if.end.do.end29_crit_edge186
  ]

if.end.do.end29_crit_edge186:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %exit_nand

do.end29:                                         ; preds = %if.end.do.end29_crit_edge, %if.end.do.end29_crit_edge186
  %size = getelementptr inbounds %struct.mtd_info, ptr %call11, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call11, i32 0, i32 3
  %8 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call11, i32 0, i32 4
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %call11, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i64 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #12
  %14 = load ptr, ptr @mtd, align 4
  %writesize32 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %writesize32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize32, align 4
  %subpage_sft = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 53
  %17 = ptrtoint ptr %subpage_sft to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subpage_sft, align 4
  %shr = lshr i32 %16, %18
  store i32 %shr, ptr @subsize, align 4
  %div = udiv i32 %16, %shr
  store i32 %div, ptr @subcount, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %div, i32 noundef %shr) #12
  %19 = load i32, ptr @page_offset, align 4
  %conv = zext i32 %19 to i64
  %20 = load ptr, ptr @mtd, align 4
  %writesize39 = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %writesize39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize39, align 4
  %conv40 = zext i32 %22 to i64
  %mul = mul nuw i64 %conv40, %conv
  store i64 %mul, ptr @offset, align 8
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.i118, label %if.then.i117

if.then.i117:                                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i = zext i32 %24 to i64
  %shr.i = lshr i64 %mul, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %mtd_div_by_eb.exit

if.end.i118:                                      ; preds = %do.end29
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp172.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !204

if.then176.i:                                     ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #11
  %conv177.i = trunc i64 %mul to i32
  %div180.i = udiv i32 %conv177.i, %26
  br label %mtd_div_by_eb.exit

if.else182.i:                                     ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %mul) #13, !srcloc !205
  %asmresult1.i.i = extractvalue { i64, i64 } %27, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %mtd_div_by_eb.exit

mtd_div_by_eb.exit:                               ; preds = %if.else182.i, %if.then176.i, %if.then.i117
  %retval.0.i = phi i32 [ %conv.i, %if.then.i117 ], [ %div180.i, %if.then176.i ], [ %extract.t296.i, %if.else182.i ]
  store i32 %retval.0.i, ptr @eraseblock, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %19, i64 noundef %mul, i32 noundef %retval.0.i) #12
  %28 = load ptr, ptr @mtd, align 4
  %writesize47 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %writesize47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize47, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #14
  store ptr %call9.i, ptr @wbuffer, align 4
  %tobool49.not = icmp eq ptr %call9.i, null
  br i1 %tobool49.not, label %mtd_div_by_eb.exit.exit_nand_crit_edge, label %if.end8.i112

mtd_div_by_eb.exit.exit_nand_crit_edge:           ; preds = %mtd_div_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_nand

if.end8.i112:                                     ; preds = %mtd_div_by_eb.exit
  %31 = load ptr, ptr @mtd, align 4
  %writesize52 = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %writesize52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %writesize52, align 4
  %call9.i111 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #14
  store ptr %call9.i111, ptr @rbuffer, align 4
  %tobool54.not = icmp eq ptr %call9.i111, null
  br i1 %tobool54.not, label %if.end8.i112.exit_rbuffer_crit_edge, label %if.end56

if.end8.i112.exit_rbuffer_crit_edge:              ; preds = %if.end8.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_rbuffer

if.end56:                                         ; preds = %if.end8.i112
  %34 = load ptr, ptr @mtd, align 4
  %35 = load i32, ptr @eraseblock, align 4
  %call57 = tail call i32 @mtdtest_erase_eraseblock(ptr noundef %34, i32 noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.exit_error_crit_edge

if.end56.exit_error_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_error

if.end60:                                         ; preds = %if.end56
  %36 = load i32, ptr @mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp eq i32 %36, 0
  br i1 %cmp, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call fastcc i32 @incremental_errors_test()
  br label %if.end65

if.else:                                          ; preds = %if.end60
  %37 = call ptr @memset(ptr @overwrite_test.bitstats, i32 0, i32 2048)
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #12
  %38 = load ptr, ptr @mtd, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp121.not.i = icmp eq i32 %40, 0
  br i1 %cmp121.not.i, label %if.else.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else
  %41 = load ptr, ptr @wbuffer, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0122.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %42 = load i32, ptr @seed, align 4
  %add.i120 = add i32 %42, %i.0122.i
  %xor.i.i = xor i32 %add.i120, 2139021267
  %shr.i.i = lshr i32 %xor.i.i, 3
  %xor1.i.i = xor i32 %shr.i.i, %xor.i.i
  %shr2.i.i = lshr i32 %xor1.i.i, 5
  %xor3.i.i = xor i32 %shr2.i.i, %xor1.i.i
  %shr4.i.i = lshr i32 %xor3.i.i, 13
  %xor5.i.i = xor i32 %shr4.i.i, %xor3.i.i
  %trunc.i.i = trunc i32 %xor5.i.i to i8
  %rev.i.i = tail call i8 @llvm.bitreverse.i8(i8 %trunc.i.i) #9
  %arrayidx.i = getelementptr i8, ptr %41, i32 %i.0122.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %rev.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.0122.i, 1
  %44 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %writesize.i, align 4
  %cmp.i121 = icmp ult i32 %inc.i, %45
  br i1 %cmp.i121, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  %46 = load ptr, ptr @mtd, align 4
  %47 = load i64, ptr @offset, align 8
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %46, i32 0, i32 4
  %48 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %writesize.i.i, align 4
  %50 = load ptr, ptr @wbuffer, align 4
  %call1.i.i122 = tail call i32 @mtdtest_write(ptr noundef %46, i64 noundef %47, i32 noundef %49, ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i.i122, 0
  br i1 %tobool.not.i123, label %for.end.i.while.body.i_crit_edge, label %for.end.i.exit_error_crit_edge

for.end.i.exit_error_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_error

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end48.i.while.body.i_crit_edge, %for.end.i.while.body.i_crit_edge
  %max_corrected.0124.i = phi i32 [ %max_corrected.1.i, %if.end48.i.while.body.i_crit_edge ], [ 0, %for.end.i.while.body.i_crit_edge ]
  %opno.0123.i = phi i32 [ %inc49.i, %if.end48.i.while.body.i_crit_edge ], [ 0, %for.end.i.while.body.i_crit_edge ]
  %51 = load ptr, ptr @mtd, align 4
  %52 = load i64, ptr @offset, align 8
  %writesize.i90.i = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 4
  %53 = ptrtoint ptr %writesize.i90.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writesize.i90.i, align 4
  %55 = load ptr, ptr @wbuffer, align 4
  %call1.i91.i = call i32 @mtdtest_write(ptr noundef %51, i64 noundef %52, i32 noundef %54, ptr noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91.i)
  %tobool5.not.i = icmp eq i32 %call1.i91.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %while.body.i.do.end52.i_crit_edge

while.body.i.do.end52.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

if.end7.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i.i) #9
  %56 = ptrtoint ptr %read.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %read.i.i, align 4, !annotation !206
  %57 = load ptr, ptr @mtd, align 4
  %ecc_stats.i.i = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 52
  %58 = ptrtoint ptr %ecc_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %oldstats.sroa.0.0.copyload.i.i = load i32, ptr %ecc_stats.i.i, align 4
  %59 = load i64, ptr @offset, align 8
  %writesize.i92.i = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 4
  %60 = ptrtoint ptr %writesize.i92.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %writesize.i92.i, align 4
  %62 = load ptr, ptr @rbuffer, align 4
  %call1.i93.i = call i32 @mtd_read(ptr noundef %57, i64 noundef %59, i32 noundef %61, ptr noundef nonnull %read.i.i, ptr noundef %62) #9
  %63 = zext i32 %call1.i93.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call1.i93.i, label %if.end7.i.if.end6.i.i_crit_edge [
    i32 0, label %if.end7.i.if.then3.i.i_crit_edge
    i32 -117, label %if.end7.i.if.then3.i.i_crit_edge187
  ]

if.end7.i.if.then3.i.i_crit_edge187:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end7.i.if.then3.i.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end7.i.if.end6.i.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end7.i.if.then3.i.i_crit_edge, %if.end7.i.if.then3.i.i_crit_edge187
  %64 = load ptr, ptr @mtd, align 4
  %ecc_stats4.i.i = getelementptr inbounds %struct.mtd_info, ptr %64, i32 0, i32 52
  %65 = ptrtoint ptr %ecc_stats4.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ecc_stats4.i.i, align 4
  %sub.i.i = sub i32 %66, %oldstats.sroa.0.0.copyload.i.i
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %if.end7.i.if.end6.i.i_crit_edge
  %err.0.i.i = phi i32 [ %sub.i.i, %if.then3.i.i ], [ %call1.i93.i, %if.end7.i.if.end6.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp7.i.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp7.i.i, label %if.end6.i.i.do.end31.i_crit_edge, label %lor.lhs.false8.i.i

if.end6.i.i.do.end31.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i

lor.lhs.false8.i.i:                               ; preds = %if.end6.i.i
  %67 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %read.i.i, align 4
  %69 = load ptr, ptr @mtd, align 4
  %writesize9.i.i = getelementptr inbounds %struct.mtd_info, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %writesize9.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %writesize9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %71)
  %cmp10.not.i.i = icmp eq i32 %68, %71
  br i1 %cmp10.not.i.i, label %if.then10.i, label %lor.lhs.false8.i.i.do.end31.i_crit_edge

lor.lhs.false8.i.i.do.end31.i_crit_edge:          ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i

if.then10.i:                                      ; preds = %lor.lhs.false8.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %err.0.i.i)
  %cmp11.i = icmp ugt i32 %err.0.i.i, 511
  br i1 %cmp11.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  br label %do.end52.i

if.end18.i:                                       ; preds = %if.then10.i
  %arrayidx19.i = getelementptr [512 x i32], ptr @overwrite_test.bitstats, i32 0, i32 %err.0.i.i
  %72 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx19.i, align 4
  %inc20.i = add i32 %73, 1
  store i32 %inc20.i, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %err.0.i.i, i32 %max_corrected.0124.i)
  %cmp21.i = icmp ugt i32 %err.0.i.i, %max_corrected.0124.i
  br i1 %cmp21.i, label %if.then22.i, label %if.end18.i.if.end34.i_crit_edge

if.end18.i.if.end34.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %err.0.i.i) #12
  br label %if.end34.i

do.end31.i:                                       ; preds = %lor.lhs.false8.i.i.do.end31.i_crit_edge, %if.end6.i.i.do.end31.i_crit_edge
  %err.1.i.ph.i = phi i32 [ %err.0.i.i, %if.end6.i.i.do.end31.i_crit_edge ], [ -5, %lor.lhs.false8.i.i.do.end31.i_crit_edge ]
  %74 = load i64, ptr @offset, align 8
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i64 noundef %74) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i) #9
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %err.1.i.ph.i) #12
  br label %do.end52.i

if.end34.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end34.i_crit_edge
  %max_corrected.1.i = phi i32 [ %err.0.i.i, %if.then22.i ], [ %max_corrected.0124.i, %if.end18.i.if.end34.i_crit_edge ]
  %75 = load ptr, ptr @mtd, align 4
  %writesize37.i.i = getelementptr inbounds %struct.mtd_info, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %writesize37.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %writesize37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp38.not.i.i = icmp eq i32 %77, 0
  br i1 %cmp38.not.i.i, label %if.end34.i.if.end44.i_crit_edge, label %if.end34.i.for.body.i.i_crit_edge

if.end34.i.for.body.i.i_crit_edge:                ; preds = %if.end34.i
  br label %for.body.i.i

if.end34.i.if.end44.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end34.i.for.body.i.i_crit_edge
  %i.040.i.i = phi i32 [ %inc17.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.for.body.i.i_crit_edge ]
  %errs.039.i.i = phi i32 [ %errs.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.for.body.i.i_crit_edge ]
  %78 = load ptr, ptr @rbuffer, align 4
  %arrayidx.i.i = getelementptr i8, ptr %78, i32 %i.040.i.i
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i, align 1
  %81 = load i32, ptr @seed, align 4
  %add.i.i = add i32 %81, %i.040.i.i
  %xor.i.i.i = xor i32 %add.i.i, 2139021267
  %shr.i.i.i = lshr i32 %xor.i.i.i, 3
  %xor1.i.i.i = xor i32 %shr.i.i.i, %xor.i.i.i
  %shr2.i.i.i = lshr i32 %xor1.i.i.i, 5
  %xor3.i.i.i = xor i32 %shr2.i.i.i, %xor1.i.i.i
  %shr4.i.i.i = lshr i32 %xor3.i.i.i, 13
  %xor5.i.i.i = xor i32 %shr4.i.i.i, %xor3.i.i.i
  %trunc.i.i.i = trunc i32 %xor5.i.i.i to i8
  %rev.i.i.i = call i8 @llvm.bitreverse.i8(i8 %trunc.i.i.i) #9
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %rev.i.i.i)
  %cmp3.not.i.i = icmp eq i8 %80, %rev.i.i.i
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end8.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end8.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i.i = zext i8 %rev.i.i.i to i32
  %conv14.i.i = zext i8 %80 to i32
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %i.040.i.i, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #12
  %inc.i.i = add i32 %errs.039.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end8.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %errs.1.i.i = phi i32 [ %inc.i.i, %do.end8.i.i ], [ %errs.039.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc17.i.i = add nuw i32 %i.040.i.i, 1
  %82 = load ptr, ptr @mtd, align 4
  %writesize.i94.i = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %writesize.i94.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %writesize.i94.i, align 4
  %cmp.i.i124 = icmp ult i32 %inc17.i.i, %84
  br i1 %cmp.i.i124, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errs.1.i.i)
  %tobool18.not.i.i = icmp eq i32 %errs.1.i.i, 0
  br i1 %tobool18.not.i.i, label %for.end.i.i.if.end44.i_crit_edge, label %if.then37.i

for.end.i.i.if.end44.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.then37.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx38.i = getelementptr [512 x i32], ptr @overwrite_test.bitstats, i32 0, i32 %max_corrected.1.i
  %85 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %opno.0123.i, ptr %arrayidx38.i, align 4
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #12
  br label %do.end52.i

if.end44.i:                                       ; preds = %for.end.i.i.if.end44.i_crit_edge, %if.end34.i.if.end44.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.84, i32 noundef 7, i32 noundef 0) #9
  %call.i.i.i = call i32 @__cond_resched() #9
  %86 = call i32 @llvm.read_register.i32(metadata !194) #9
  %and.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stack.i.i.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %94 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.end44.i.mtdtest_relax.exit.i_crit_edge, !prof !204

if.end44.i.mtdtest_relax.exit.i_crit_edge:        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtdtest_relax.exit.i

signal_pending.exit.i.i:                          ; preds = %if.end44.i
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %91, align 4
  %and1.i.i.i.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool.not.i.i125 = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i125, label %if.end48.i, label %signal_pending.exit.i.i.mtdtest_relax.exit.i_crit_edge

signal_pending.exit.i.i.mtdtest_relax.exit.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtdtest_relax.exit.i

mtdtest_relax.exit.i:                             ; preds = %signal_pending.exit.i.i.mtdtest_relax.exit.i_crit_edge, %if.end44.i.mtdtest_relax.exit.i_crit_edge
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %do.end52.i

if.end48.i:                                       ; preds = %signal_pending.exit.i.i
  %inc49.i = add nuw nsw i32 %opno.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, 10000
  br i1 %exitcond.not.i, label %if.end48.i.do.end52.i_crit_edge, label %if.end48.i.while.body.i_crit_edge

if.end48.i.while.body.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end48.i.do.end52.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.end48.i.do.end52.i_crit_edge, %mtdtest_relax.exit.i, %if.then37.i, %do.end31.i, %do.end15.i, %while.body.i.do.end52.i_crit_edge
  %opno.0114.i = phi i32 [ %opno.0123.i, %do.end15.i ], [ %opno.0123.i, %if.then37.i ], [ %opno.0123.i, %mtdtest_relax.exit.i ], [ %opno.0123.i, %do.end31.i ], [ 10000, %if.end48.i.do.end52.i_crit_edge ], [ %opno.0123.i, %while.body.i.do.end52.i_crit_edge ]
  %max_corrected.2.i = phi i32 [ %max_corrected.0124.i, %do.end15.i ], [ %max_corrected.1.i, %if.then37.i ], [ %max_corrected.1.i, %mtdtest_relax.exit.i ], [ %max_corrected.0124.i, %do.end31.i ], [ %max_corrected.1.i, %if.end48.i.do.end52.i_crit_edge ], [ %max_corrected.0124.i, %while.body.i.do.end52.i_crit_edge ]
  %err.1.i = phi i32 [ -5, %do.end15.i ], [ -5, %if.then37.i ], [ -4, %mtdtest_relax.exit.i ], [ 0, %do.end31.i ], [ 0, %if.end48.i.do.end52.i_crit_edge ], [ %call1.i91.i, %while.body.i.do.end52.i_crit_edge ]
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %opno.0114.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_corrected.2.i)
  %cmp56125.not.i = icmp eq i32 %max_corrected.2.i, 0
  br i1 %cmp56125.not.i, label %do.end52.i.if.end65_crit_edge, label %do.end52.i.do.end60.i_crit_edge

do.end52.i.do.end60.i_crit_edge:                  ; preds = %do.end52.i
  br label %do.end60.i

do.end52.i.if.end65_crit_edge:                    ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end60.i:                                       ; preds = %do.end60.i.do.end60.i_crit_edge, %do.end52.i.do.end60.i_crit_edge
  %i.1126.i = phi i32 [ %inc65.i, %do.end60.i.do.end60.i_crit_edge ], [ 0, %do.end52.i.do.end60.i_crit_edge ]
  %arrayidx62.i = getelementptr [512 x i32], ptr @overwrite_test.bitstats, i32 0, i32 %i.1126.i
  %97 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx62.i, align 4
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %i.1126.i, i32 noundef %98) #12
  %inc65.i = add nuw i32 %i.1126.i, 1
  %exitcond144.not.i = icmp eq i32 %inc65.i, %max_corrected.2.i
  br i1 %exitcond144.not.i, label %do.end60.i.if.end65_crit_edge, label %do.end60.i.do.end60.i_crit_edge

do.end60.i.do.end60.i_crit_edge:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i

do.end60.i.if.end65_crit_edge:                    ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end65:                                         ; preds = %do.end60.i.if.end65_crit_edge, %do.end52.i.if.end65_crit_edge, %if.then62
  %err.0 = phi i32 [ %call63, %if.then62 ], [ %err.1.i, %do.end52.i.if.end65_crit_edge ], [ %err.1.i, %do.end60.i.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool66.not = icmp eq i32 %err.0, 0
  br i1 %tobool66.not, label %if.end68, label %if.end65.exit_error_crit_edge

if.end65.exit_error_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_error

if.end68:                                         ; preds = %if.end65
  %99 = load ptr, ptr @mtd, align 4
  %100 = load i32, ptr @eraseblock, align 4
  %call69 = call i32 @mtdtest_erase_eraseblock(ptr noundef %99, i32 noundef %100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.exit_error_crit_edge

if.end68.exit_error_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_error

if.end72:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %exit_error

exit_error:                                       ; preds = %if.end72, %if.end68.exit_error_crit_edge, %if.end65.exit_error_crit_edge, %for.end.i.exit_error_crit_edge, %if.end56.exit_error_crit_edge
  %err.1 = phi i32 [ %call57, %if.end56.exit_error_crit_edge ], [ %err.0, %if.end65.exit_error_crit_edge ], [ %call69, %if.end68.exit_error_crit_edge ], [ -5, %if.end72 ], [ %call1.i.i122, %for.end.i.exit_error_crit_edge ]
  %101 = load ptr, ptr @rbuffer, align 4
  call void @kfree(ptr noundef %101) #9
  br label %exit_rbuffer

exit_rbuffer:                                     ; preds = %exit_error, %if.end8.i112.exit_rbuffer_crit_edge
  %err.2 = phi i32 [ %err.1, %exit_error ], [ -12, %if.end8.i112.exit_rbuffer_crit_edge ]
  %102 = load ptr, ptr @wbuffer, align 4
  call void @kfree(ptr noundef %102) #9
  br label %exit_nand

exit_nand:                                        ; preds = %exit_rbuffer, %mtd_div_by_eb.exit.exit_nand_crit_edge, %do.end23
  %err.3 = phi i32 [ %err.2, %exit_rbuffer ], [ -19, %do.end23 ], [ -12, %mtd_div_by_eb.exit.exit_nand_crit_edge ]
  %103 = load ptr, ptr @mtd, align 4
  call void @put_mtd_device(ptr noundef %103) #9
  br label %exit_mtddev

exit_mtddev:                                      ; preds = %exit_nand, %if.then
  %err.4 = phi i32 [ %2, %if.then ], [ %err.3, %exit_nand ]
  ret i32 %err.4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_eraseblock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @incremental_errors_test() unnamed_addr #5 align 64 {
entry:
  %read.i = alloca i32, align 4
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  %0 = load ptr, ptr @mtd, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp112.not = icmp eq i32 %2, 0
  br i1 %cmp112.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %3 = load ptr, ptr @wbuffer, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = load i32, ptr @seed, align 4
  %add = add i32 %4, %i.0113
  %xor.i = xor i32 %add, 2139021267
  %shr.i = lshr i32 %xor.i, 3
  %xor1.i = xor i32 %shr.i, %xor.i
  %shr2.i = lshr i32 %xor1.i, 5
  %xor3.i = xor i32 %shr2.i, %xor1.i
  %shr4.i = lshr i32 %xor3.i, 13
  %xor5.i = xor i32 %shr4.i, %xor3.i
  %trunc.i = trunc i32 %xor5.i to i8
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %trunc.i) #9
  %arrayidx = getelementptr i8, ptr %3, i32 %i.0113
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %rev.i, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.0113, 1
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  %8 = load ptr, ptr @mtd, align 4
  %9 = load i64, ptr @offset, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize.i, align 4
  %12 = load ptr, ptr @wbuffer, align 4
  %call1.i = tail call i32 @mtdtest_write(ptr noundef %8, i64 noundef %9, i32 noundef %11, ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %while.cond.preheader, label %for.end.exit_crit_edge

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

while.cond.preheader:                             ; preds = %for.end
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %for.end47, %while.cond.preheader
  %errs_per_subpage.0 = phi i32 [ %inc48, %for.end47 ], [ 0, %while.cond.preheader ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #9
  %call.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #12
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ops.i, align 4
  %18 = load ptr, ptr @mtd, align 4
  %writesize.i66 = getelementptr inbounds %struct.mtd_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %writesize.i66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %writesize.i66, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %13, align 4
  %22 = call ptr @memset(ptr %14, i32 0, i32 16)
  %23 = load ptr, ptr @wbuffer, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %15, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %16, align 4
  %26 = load i64, ptr @offset, align 8
  %call1.i67 = call i32 @mtd_write_oob(ptr noundef %18, i64 noundef %26, ptr noundef nonnull %ops.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool2.not.i = icmp eq i32 %call1.i67, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %while.cond.rewrite_page.exit_crit_edge

while.cond.rewrite_page.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %rewrite_page.exit

lor.lhs.false.i:                                  ; preds = %while.cond
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %14, align 4
  %29 = load ptr, ptr @mtd, align 4
  %writesize4.i = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %writesize4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writesize4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %31)
  %cmp.not.i = icmp eq i32 %28, %31
  br i1 %cmp.not.i, label %if.end6, label %lor.lhs.false.i.rewrite_page.exit_crit_edge

lor.lhs.false.i.rewrite_page.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rewrite_page.exit

rewrite_page.exit:                                ; preds = %lor.lhs.false.i.rewrite_page.exit_crit_edge, %while.cond.rewrite_page.exit_crit_edge
  %spec.store.select.i = phi i32 [ %call1.i67, %while.cond.rewrite_page.exit_crit_edge ], [ -5, %lor.lhs.false.i.rewrite_page.exit_crit_edge ]
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call1.i67) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #9
  br label %exit

if.end6:                                          ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i) #9
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %read.i, align 4, !annotation !206
  %call.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  %33 = load ptr, ptr @mtd, align 4
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 52
  %34 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %oldstats.sroa.0.0.copyload.i = load i32, ptr %ecc_stats.i, align 4
  %35 = load i64, ptr @offset, align 8
  %writesize.i69 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %writesize.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize.i69, align 4
  %38 = load ptr, ptr @rbuffer, align 4
  %call1.i70 = call i32 @mtd_read(ptr noundef %33, i64 noundef %35, i32 noundef %37, ptr noundef nonnull %read.i, ptr noundef %38) #9
  %39 = zext i32 %call1.i70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call1.i70, label %if.end6.if.end6.i_crit_edge [
    i32 0, label %if.end6.if.then3.i_crit_edge
    i32 -117, label %if.end6.if.then3.i_crit_edge187
  ]

if.end6.if.then3.i_crit_edge187:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end6.if.then3.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end6.if.end6.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end6.if.then3.i_crit_edge, %if.end6.if.then3.i_crit_edge187
  %40 = load ptr, ptr @mtd, align 4
  %ecc_stats4.i = getelementptr inbounds %struct.mtd_info, ptr %40, i32 0, i32 52
  %41 = ptrtoint ptr %ecc_stats4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ecc_stats4.i, align 4
  %sub.i = sub i32 %42, %oldstats.sroa.0.0.copyload.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end6.if.end6.i_crit_edge
  %err.0.i71 = phi i32 [ %sub.i, %if.then3.i ], [ %call1.i70, %if.end6.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i71)
  %cmp7.i = icmp slt i32 %err.0.i71, 0
  br i1 %cmp7.i, label %if.end6.i.do.end20_crit_edge, label %lor.lhs.false8.i

if.end6.i.do.end20_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

lor.lhs.false8.i:                                 ; preds = %if.end6.i
  %43 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %read.i, align 4
  %45 = load ptr, ptr @mtd, align 4
  %writesize9.i = getelementptr inbounds %struct.mtd_info, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %writesize9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %writesize9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %47)
  %cmp10.not.i = icmp eq i32 %44, %47
  br i1 %cmp10.not.i, label %read_page.exit, label %lor.lhs.false8.i.do.end20_crit_edge

lor.lhs.false8.i.do.end20_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

read_page.exit:                                   ; preds = %lor.lhs.false8.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i71)
  %cmp8.not = icmp eq i32 %err.0.i71, 0
  br i1 %cmp8.not, label %read_page.exit.if.end23_crit_edge, label %do.end12

read_page.exit.if.end23_crit_edge:                ; preds = %read_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end12:                                         ; preds = %read_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %err.0.i71) #12
  br label %if.end23

do.end20:                                         ; preds = %lor.lhs.false8.i.do.end20_crit_edge, %if.end6.i.do.end20_crit_edge
  %err.1.i.ph = phi i32 [ %err.0.i71, %if.end6.i.do.end20_crit_edge ], [ -5, %lor.lhs.false8.i.do.end20_crit_edge ]
  %48 = load i64, ptr @offset, align 8
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i64 noundef %48) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i) #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %errs_per_subpage.0, i32 noundef %err.1.i.ph) #12
  br label %exit

if.end23:                                         ; preds = %do.end12, %read_page.exit.if.end23_crit_edge
  %call.i73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #12
  %49 = load ptr, ptr @mtd, align 4
  %writesize37.i = getelementptr inbounds %struct.mtd_info, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %writesize37.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %writesize37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp38.not.i = icmp eq i32 %51, 0
  br i1 %cmp38.not.i, label %if.end23.do.end35_crit_edge, label %if.end23.for.body.i_crit_edge

if.end23.for.body.i_crit_edge:                    ; preds = %if.end23
  br label %for.body.i

if.end23.do.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc17.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end23.for.body.i_crit_edge ]
  %errs.039.i = phi i32 [ %errs.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end23.for.body.i_crit_edge ]
  %52 = load ptr, ptr @rbuffer, align 4
  %arrayidx.i = getelementptr i8, ptr %52, i32 %i.040.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  %55 = load i32, ptr @seed, align 4
  %add.i = add i32 %55, %i.040.i
  %xor.i.i = xor i32 %add.i, 2139021267
  %shr.i.i = lshr i32 %xor.i.i, 3
  %xor1.i.i = xor i32 %shr.i.i, %xor.i.i
  %shr2.i.i = lshr i32 %xor1.i.i, 5
  %xor3.i.i = xor i32 %shr2.i.i, %xor1.i.i
  %shr4.i.i = lshr i32 %xor3.i.i, 13
  %xor5.i.i = xor i32 %shr4.i.i, %xor3.i.i
  %trunc.i.i = trunc i32 %xor5.i.i to i8
  %rev.i.i = call i8 @llvm.bitreverse.i8(i8 %trunc.i.i) #9
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %rev.i.i)
  %cmp3.not.i = icmp eq i8 %54, %rev.i.i
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end8.i74

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end8.i74:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i = zext i8 %rev.i.i to i32
  %conv14.i = zext i8 %54 to i32
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %i.040.i, i32 noundef %conv12.i, i32 noundef %conv14.i) #12
  %inc.i = add i32 %errs.039.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end8.i74, %for.body.i.for.inc.i_crit_edge
  %errs.1.i = phi i32 [ %inc.i, %do.end8.i74 ], [ %errs.039.i, %for.body.i.for.inc.i_crit_edge ]
  %inc17.i = add nuw i32 %i.040.i, 1
  %56 = load ptr, ptr @mtd, align 4
  %writesize.i75 = getelementptr inbounds %struct.mtd_info, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %writesize.i75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %writesize.i75, align 4
  %cmp.i = icmp ult i32 %inc17.i, %58
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errs.1.i)
  %tobool18.not.i = icmp eq i32 %errs.1.i, 0
  br i1 %tobool18.not.i, label %for.end.i.do.end35_crit_edge, label %do.end29

for.end.i.do.end35_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end29:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %exit

do.end35:                                         ; preds = %for.end.i.do.end35_crit_edge, %if.end23.do.end35_crit_edge
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %errs_per_subpage.0) #12
  %59 = load i32, ptr @subcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp39115.not = icmp eq i32 %59, 0
  br i1 %cmp39115.not, label %do.end35.for.end47_crit_edge, label %do.end35.for.body40_crit_edge

do.end35.for.body40_crit_edge:                    ; preds = %do.end35
  br label %for.body40

do.end35.for.end47_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.body40:                                       ; preds = %for.inc45.for.body40_crit_edge, %do.end35.for.body40_crit_edge
  %i.1116 = phi i32 [ %inc46, %for.inc45.for.body40_crit_edge ], [ 0, %do.end35.for.body40_crit_edge ]
  %60 = load i32, ptr @subsize, align 4
  %mul = mul i32 %60, %i.1116
  %61 = load ptr, ptr @mtd, align 4
  %writesize.i76 = getelementptr inbounds %struct.mtd_info, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %writesize.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %writesize.i76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul)
  %cmp26.i = icmp ugt i32 %63, %mul
  br i1 %cmp26.i, label %for.cond.preheader.lr.ph.i, label %for.body40.insert_biterror.exit.thread_crit_edge

for.body40.insert_biterror.exit.thread_crit_edge: ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %insert_biterror.exit.thread

for.cond.preheader.lr.ph.i:                       ; preds = %for.body40
  %64 = load ptr, ptr @wbuffer, align 4
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.inc.7.i.for.cond.preheader.i_crit_edge, %for.cond.preheader.lr.ph.i
  %byte.addr.027.i = phi i32 [ %mul, %for.cond.preheader.lr.ph.i ], [ %inc.i80, %for.inc.7.i.for.cond.preheader.i_crit_edge ]
  %arrayidx.i77 = getelementptr i8, ptr %64, i32 %byte.addr.027.i
  %65 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i77, align 1
  %conv.i = zext i8 %66 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i79, label %for.cond.preheader.i.for.inc45_crit_edge

for.cond.preheader.i.for.inc45_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.i79:                                      ; preds = %for.cond.preheader.i
  %and.1.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i79.for.inc45_crit_edge

for.inc.i79.for.inc45_crit_edge:                  ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.1.i:                                      ; preds = %for.inc.i79
  %and.2.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.inc45_crit_edge

for.inc.1.i.for.inc45_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.inc45_crit_edge

for.inc.2.i.for.inc45_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.inc45_crit_edge

for.inc.3.i.for.inc45_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.inc45_crit_edge

for.inc.4.i.for.inc45_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and.6.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.6.i, label %for.inc.5.i.for.inc45_crit_edge

for.inc.5.i.for.inc45_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %and.7.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.7.i, label %for.inc.6.i.for.inc45_crit_edge

for.inc.6.i.for.inc45_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %inc.i80 = add nuw i32 %byte.addr.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i80, %63
  br i1 %exitcond.not.i, label %for.inc.7.i.insert_biterror.exit.thread_crit_edge, label %for.inc.7.i.for.cond.preheader.i_crit_edge

for.inc.7.i.for.cond.preheader.i_crit_edge:       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

for.inc.7.i.insert_biterror.exit.thread_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %insert_biterror.exit.thread

insert_biterror.exit.thread:                      ; preds = %for.inc.7.i.insert_biterror.exit.thread_crit_edge, %for.body40.insert_biterror.exit.thread_crit_edge
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %exit

for.inc45:                                        ; preds = %for.inc.6.i.for.inc45_crit_edge, %for.inc.5.i.for.inc45_crit_edge, %for.inc.4.i.for.inc45_crit_edge, %for.inc.3.i.for.inc45_crit_edge, %for.inc.2.i.for.inc45_crit_edge, %for.inc.1.i.for.inc45_crit_edge, %for.inc.i79.for.inc45_crit_edge, %for.cond.preheader.i.for.inc45_crit_edge
  %bit.025.lcssa.i = phi i32 [ 7, %for.cond.preheader.i.for.inc45_crit_edge ], [ 6, %for.inc.i79.for.inc45_crit_edge ], [ 5, %for.inc.1.i.for.inc45_crit_edge ], [ 4, %for.inc.2.i.for.inc45_crit_edge ], [ 3, %for.inc.3.i.for.inc45_crit_edge ], [ 2, %for.inc.4.i.for.inc45_crit_edge ], [ 1, %for.inc.5.i.for.inc45_crit_edge ], [ 0, %for.inc.6.i.for.inc45_crit_edge ]
  %shl.lcssa.i = phi i8 [ 127, %for.cond.preheader.i.for.inc45_crit_edge ], [ -65, %for.inc.i79.for.inc45_crit_edge ], [ -33, %for.inc.1.i.for.inc45_crit_edge ], [ -17, %for.inc.2.i.for.inc45_crit_edge ], [ -9, %for.inc.3.i.for.inc45_crit_edge ], [ -5, %for.inc.4.i.for.inc45_crit_edge ], [ -3, %for.inc.5.i.for.inc45_crit_edge ], [ -2, %for.inc.6.i.for.inc45_crit_edge ]
  %arrayidx.i77.le = getelementptr i8, ptr %64, i32 %byte.addr.027.i
  %conv6.i = and i8 %shl.lcssa.i, %66
  %67 = ptrtoint ptr %arrayidx.i77.le to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv6.i, ptr %arrayidx.i77.le, align 1
  %call.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %byte.addr.027.i, i32 noundef %bit.025.lcssa.i) #12
  %inc46 = add nuw i32 %i.1116, 1
  %68 = load i32, ptr @subcount, align 4
  %cmp39 = icmp ult i32 %inc46, %68
  br i1 %cmp39, label %for.inc45.for.body40_crit_edge, label %for.inc45.for.end47_crit_edge

for.inc45.for.end47_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end47

for.inc45.for.body40_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

for.end47:                                        ; preds = %for.inc45.for.end47_crit_edge, %do.end35.for.end47_crit_edge
  %inc48 = add i32 %errs_per_subpage.0, 1
  br label %while.cond

exit:                                             ; preds = %insert_biterror.exit.thread, %do.end29, %do.end20, %rewrite_page.exit, %for.end.exit_crit_edge
  %err.0 = phi i32 [ %call1.i, %for.end.exit_crit_edge ], [ %spec.store.select.i, %rewrite_page.exit ], [ 0, %do.end20 ], [ -5, %do.end29 ], [ -5, %insert_biterror.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !189, !191, !192, !193}
!llvm.named.register.sp = !{!194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype214, !1, !"__UNIQUE_ID_devtype214", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev215, !4, !"__UNIQUE_ID_dev215", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 43, i32 1}
!5 = !{ptr @__param_page_offset, !6, !"__param_page_offset", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_page_offsettype216, !6, !"__UNIQUE_ID_page_offsettype216", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_page_offset217, !9, !"__UNIQUE_ID_page_offset217", i1 false, i1 false}
!9 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 47, i32 1}
!10 = !{ptr @__param_seed, !11, !"__param_seed", i1 false, i1 false}
!11 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_seedtype218, !11, !"__UNIQUE_ID_seedtype218", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_seed219, !14, !"__UNIQUE_ID_seed219", i1 false, i1 false}
!14 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 51, i32 1}
!15 = !{ptr @__param_mode, !16, !"__param_mode", i1 false, i1 false}
!16 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 54, i32 1}
!17 = !{ptr @__UNIQUE_ID_modetype220, !16, !"__UNIQUE_ID_modetype220", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_mode221, !19, !"__UNIQUE_ID_mode221", i1 false, i1 false}
!19 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 55, i32 1}
!20 = !{ptr @__UNIQUE_ID_description222, !21, !"__UNIQUE_ID_description222", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 417, i32 1}
!22 = !{ptr @__UNIQUE_ID_author223, !23, !"__UNIQUE_ID_author223", i1 false, i1 false}
!23 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 418, i32 1}
!24 = !{ptr @__UNIQUE_ID_license224, !25, !"__UNIQUE_ID_license224", i1 false, i1 false}
!25 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 419, i32 1}
!26 = !{ptr @dev, !27, !"dev", i1 false, i1 false}
!27 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 41, i32 12}
!28 = !{ptr @page_offset, !29, !"page_offset", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 45, i32 17}
!30 = !{ptr @seed, !31, !"seed", i1 false, i1 false}
!31 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 49, i32 17}
!32 = !{ptr @mode, !33, !"mode", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 53, i32 12}
!34 = !{ptr @___asan_gen_.89, !1, !"__param_str_dev", i1 false, i1 false}
!35 = !{ptr @___asan_gen_.92, !6, !"__param_str_page_offset", i1 false, i1 false}
!36 = !{ptr @___asan_gen_.95, !11, !"__param_str_seed", i1 false, i1 false}
!37 = !{ptr @___asan_gen_.98, !16, !"__param_str_mode", i1 false, i1 false}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 332, i32 2}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mtd_nandbiterrs_init._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_nandbiterrs_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 333, i32 2}
!46 = !{ptr @mtd_nandbiterrs_init._entry.3, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_nandbiterrs_init._entry_ptr.5, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 334, i32 2}
!50 = !{ptr @mtd_nandbiterrs_init._entry.6, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_nandbiterrs_init._entry_ptr.8, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 339, i32 3}
!54 = !{ptr @mtd_nandbiterrs_init._entry.9, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_nandbiterrs_init._entry_ptr.11, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 344, i32 3}
!58 = !{ptr @mtd_nandbiterrs_init._entry.12, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_nandbiterrs_init._entry_ptr.14, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 349, i32 2}
!62 = !{ptr @mtd_nandbiterrs_init._entry.15, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtd_nandbiterrs_init._entry_ptr.17, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 356, i32 2}
!66 = !{ptr @mtd_nandbiterrs_init._entry.18, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtd_nandbiterrs_init._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 361, i32 2}
!70 = !{ptr @mtd_nandbiterrs_init._entry.21, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtd_nandbiterrs_init._entry_ptr.23, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 394, i32 2}
!74 = !{ptr @mtd_nandbiterrs_init._entry.24, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtd_nandbiterrs_init._entry_ptr.26, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mtd_nandbiterrs_init._entry.27, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 395, i32 2}
!78 = !{ptr @mtd_nandbiterrs_init._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @mtd, !80, !"mtd", i1 false, i1 false}
!80 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 67, i32 25}
!81 = !{ptr @subsize, !82, !"subsize", i1 false, i1 false}
!82 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 64, i32 17}
!83 = !{ptr @subcount, !84, !"subcount", i1 false, i1 false}
!84 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 65, i32 17}
!85 = !{ptr @offset, !86, !"offset", i1 false, i1 false}
!86 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 59, i32 17}
!87 = !{ptr @eraseblock, !88, !"eraseblock", i1 false, i1 false}
!88 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 60, i32 17}
!89 = !{ptr @wbuffer, !90, !"wbuffer", i1 false, i1 false}
!90 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 69, i32 17}
!91 = !{ptr @rbuffer, !92, !"rbuffer", i1 false, i1 false}
!92 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 70, i32 17}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 206, i32 2}
!95 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @incremental_errors_test._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @incremental_errors_test._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 223, i32 4}
!100 = !{ptr @incremental_errors_test._entry.31, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @incremental_errors_test._entry_ptr.33, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 225, i32 4}
!104 = !{ptr @incremental_errors_test._entry.34, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @incremental_errors_test._entry_ptr.36, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 233, i32 4}
!108 = !{ptr @incremental_errors_test._entry.37, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @incremental_errors_test._entry_ptr.39, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 237, i32 3}
!112 = !{ptr @incremental_errors_test._entry.40, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @incremental_errors_test._entry_ptr.42, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 93, i32 3}
!116 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @write_page._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @write_page._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 105, i32 3}
!121 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @rewrite_page._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @rewrite_page._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 118, i32 3}
!126 = !{ptr @rewrite_page._entry.47, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @rewrite_page._entry_ptr.49, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 135, i32 3}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @read_page._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @read_page._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 145, i32 3}
!135 = !{ptr @read_page._entry.52, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @read_page._entry_ptr.54, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 159, i32 3}
!139 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @verify_page._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @verify_page._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 163, i32 4}
!144 = !{ptr @verify_page._entry.57, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @verify_page._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 188, i32 5}
!148 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @insert_biterror._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @insert_biterror._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 194, i32 2}
!153 = !{ptr @insert_biterror._entry.62, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @insert_biterror._entry_ptr.64, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @overwrite_test.bitstats, !156, !"bitstats", i1 false, i1 false}
!156 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 265, i32 18}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 269, i32 2}
!159 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @overwrite_test._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @overwrite_test._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 287, i32 5}
!164 = !{ptr @overwrite_test._entry.67, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @overwrite_test._entry_ptr.69, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @overwrite_test._entry.70, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 294, i32 5}
!168 = !{ptr @overwrite_test._entry_ptr.71, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 298, i32 4}
!171 = !{ptr @overwrite_test._entry.72, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @overwrite_test._entry_ptr.74, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 306, i32 4}
!175 = !{ptr @overwrite_test._entry.75, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @overwrite_test._entry_ptr.77, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 319, i32 2}
!179 = !{ptr @overwrite_test._entry.78, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @overwrite_test._entry_ptr.80, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 321, i32 3}
!183 = !{ptr @overwrite_test._entry.81, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @overwrite_test._entry_ptr.83, !182, !"_entry_ptr", i1 false, i1 false}
!185 = distinct !{null, !186, !"max_overwrite", i1 false, i1 false}
!186 = !{!"../drivers/mtd/tests/nandbiterrs.c", i32 57, i32 17}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!191 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mtdtest_relax._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mtdtest_relax._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{!"sp"}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2148206428, i64 2148206708, i64 2148207042, i64 2148207376}
!206 = !{!"auto-init"}
