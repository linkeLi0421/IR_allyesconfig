; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/speedtest.c_pt.bc'
source_filename = "../drivers/mtd/tests/speedtest.c"
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
%struct.erase_info = type { i64, i64, i64 }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dev = internal global { i32, [28 x i8] } { i32 -22, [28 x i8] zeroinitializer }, align 32
@__param_dev = internal constant %struct.kernel_param { ptr @___asan_gen_.88, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @dev } }, section "__param", align 4
@__UNIQUE_ID_devtype201 = internal constant [17 x i8] c"parmtype=dev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dev202 = internal constant [34 x i8] c"parm=dev:MTD device number to use\00", section ".modinfo", align 1
@count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_count = internal constant %struct.kernel_param { ptr @___asan_gen_.91, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.50 { ptr @count } }, section "__param", align 4
@__UNIQUE_ID_counttype203 = internal constant [19 x i8] c"parmtype=count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_count204 = internal constant [66 x i8] c"parm=count:Maximum number of eraseblocks to use (0 means use all)\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [30 x i8] c"description=Speed test module\00", section ".modinfo", align 1
@__UNIQUE_ID_author206 = internal constant [21 x i8] c"author=Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mtd_speedtest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtd_speedtest_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/tests/speedtest.c\00", [34 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr = internal global ptr @mtd_speedtest_init._entry, section ".printk_index", align 4
@mtd_speedtest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016=================================================\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.5 = internal global ptr @mtd_speedtest_init._entry.3, section ".printk_index", align 4
@mtd_speedtest_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016mtd_speedtest: Please specify a valid mtd-device via module parameter\0A\00", [55 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.8 = internal global ptr @mtd_speedtest_init._entry.6, section ".printk_index", align 4
@mtd_speedtest_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\012mtd_speedtest: CAREFUL: This test wipes all data on the specified MTD device!\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.11 = internal global ptr @mtd_speedtest_init._entry.9, section ".printk_index", align 4
@mtd_speedtest_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mtd_speedtest: MTD device: %d    count: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.14 = internal global ptr @mtd_speedtest_init._entry.12, section ".printk_index", align 4
@mtd_speedtest_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mtd_speedtest: MTD device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.17 = internal global ptr @mtd_speedtest_init._entry.15, section ".printk_index", align 4
@mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mtd_speedtest_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mtd_speedtest: error: cannot get MTD device\0A\00", [49 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.20 = internal global ptr @mtd_speedtest_init._entry.18, section ".printk_index", align 4
@mtd_speedtest_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016mtd_speedtest: not NAND flash, assume page size is 512 bytes.\0A\00", [63 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.23 = internal global ptr @mtd_speedtest_init._entry.21, section ".printk_index", align 4
@pgsize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pgcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_speedtest_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"\016mtd_speedtest: MTD device size %llu, eraseblock size %u, page size %u, count of eraseblocks %u, pages per eraseblock %u, OOB size %u\0A\00", [56 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.26 = internal global ptr @mtd_speedtest_init._entry.24, section ".printk_index", align 4
@iobuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bbt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@goodebcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mtd_speedtest_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016mtd_speedtest: testing eraseblock write speed\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.29 = internal global ptr @mtd_speedtest_init._entry.27, section ".printk_index", align 4
@mtd_speedtest_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mtd_speedtest: eraseblock write speed is %ld KiB/s\0A\00", [42 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.32 = internal global ptr @mtd_speedtest_init._entry.30, section ".printk_index", align 4
@mtd_speedtest_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_speedtest: testing eraseblock read speed\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.35 = internal global ptr @mtd_speedtest_init._entry.33, section ".printk_index", align 4
@mtd_speedtest_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016mtd_speedtest: eraseblock read speed is %ld KiB/s\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.38 = internal global ptr @mtd_speedtest_init._entry.36, section ".printk_index", align 4
@mtd_speedtest_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_speedtest: testing page write speed\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.41 = internal global ptr @mtd_speedtest_init._entry.39, section ".printk_index", align 4
@mtd_speedtest_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_speedtest: page write speed is %ld KiB/s\0A\00", [48 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.44 = internal global ptr @mtd_speedtest_init._entry.42, section ".printk_index", align 4
@mtd_speedtest_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mtd_speedtest: testing page read speed\0A\00", [54 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.47 = internal global ptr @mtd_speedtest_init._entry.45, section ".printk_index", align 4
@mtd_speedtest_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016mtd_speedtest: page read speed is %ld KiB/s\0A\00", [49 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.50 = internal global ptr @mtd_speedtest_init._entry.48, section ".printk_index", align 4
@mtd_speedtest_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mtd_speedtest: testing 2 page write speed\0A\00", [51 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.53 = internal global ptr @mtd_speedtest_init._entry.51, section ".printk_index", align 4
@mtd_speedtest_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mtd_speedtest: 2 page write speed is %ld KiB/s\0A\00", [46 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.56 = internal global ptr @mtd_speedtest_init._entry.54, section ".printk_index", align 4
@mtd_speedtest_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.1, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016mtd_speedtest: testing 2 page read speed\0A\00", [52 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.59 = internal global ptr @mtd_speedtest_init._entry.57, section ".printk_index", align 4
@mtd_speedtest_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016mtd_speedtest: 2 page read speed is %ld KiB/s\0A\00", [47 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.62 = internal global ptr @mtd_speedtest_init._entry.60, section ".printk_index", align 4
@mtd_speedtest_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtd_speedtest: Testing erase speed\0A\00", [58 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.65 = internal global ptr @mtd_speedtest_init._entry.63, section ".printk_index", align 4
@mtd_speedtest_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.1, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_speedtest: erase speed is %ld KiB/s\0A\00", [53 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.68 = internal global ptr @mtd_speedtest_init._entry.66, section ".printk_index", align 4
@mtd_speedtest_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.1, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mtd_speedtest: Testing %dx multi-block erase speed\0A\00", [42 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.71 = internal global ptr @mtd_speedtest_init._entry.69, section ".printk_index", align 4
@mtd_speedtest_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.1, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016mtd_speedtest: %dx multi-block erase speed is %ld KiB/s\0A\00", [37 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.74 = internal global ptr @mtd_speedtest_init._entry.72, section ".printk_index", align 4
@mtd_speedtest_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016mtd_speedtest: finished\0A\00", [37 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.77 = internal global ptr @mtd_speedtest_init._entry.75, section ".printk_index", align 4
@mtd_speedtest_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.1, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016mtd_speedtest: error %d occurred\0A\00", [60 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.80 = internal global ptr @mtd_speedtest_init._entry.78, section ".printk_index", align 4
@mtd_speedtest_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtd_speedtest_init._entry_ptr.82 = internal global ptr @mtd_speedtest_init._entry.81, section ".printk_index", align 4
@start = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.83, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016mtd_speedtest: aborting test due to pending signal!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@finish = internal global { i64, [24 x i8] } zeroinitializer, align 32
@multiblock_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013mtd_speedtest: error %d while erasing EB %d, blocks %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"multiblock_erase\00", [47 x i8] zeroinitializer }, align 32
@multiblock_erase._entry_ptr = internal global ptr @multiblock_erase._entry, section ".printk_index", align 4
@___asan_gen_.88 = private constant [4 x i8] c"dev\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 24, i32 12 }
@___asan_gen_.91 = private constant [6 x i8] c"count\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 28, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 180, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 181, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 184, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 185, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 190, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 192, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 33, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 197, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 202, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"pgsize\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 37, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"ebcnt\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 38, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"pgcnt\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 39, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 213, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"iobuf\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 34, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant [4 x i8] c"bbt\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 35, i32 23 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"goodebcnt\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 40, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 245, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 260, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 263, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 278, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 285, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 300, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 303, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 318, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 325, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 340, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 343, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 358, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 361, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 368, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 373, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 396, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 399, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 405, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 406, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 41, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 7, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 9, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 41, i32 23 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private constant [33 x i8] c"../drivers/mtd/tests/speedtest.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 55, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_count204, ptr @__UNIQUE_ID_counttype203, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_dev202, ptr @__UNIQUE_ID_devtype201, ptr @__UNIQUE_ID_license207, ptr @__param_count, ptr @__param_dev, ptr @mtd_speedtest_init._entry, ptr @mtd_speedtest_init._entry.12, ptr @mtd_speedtest_init._entry.15, ptr @mtd_speedtest_init._entry.18, ptr @mtd_speedtest_init._entry.21, ptr @mtd_speedtest_init._entry.24, ptr @mtd_speedtest_init._entry.27, ptr @mtd_speedtest_init._entry.3, ptr @mtd_speedtest_init._entry.30, ptr @mtd_speedtest_init._entry.33, ptr @mtd_speedtest_init._entry.36, ptr @mtd_speedtest_init._entry.39, ptr @mtd_speedtest_init._entry.42, ptr @mtd_speedtest_init._entry.45, ptr @mtd_speedtest_init._entry.48, ptr @mtd_speedtest_init._entry.51, ptr @mtd_speedtest_init._entry.54, ptr @mtd_speedtest_init._entry.57, ptr @mtd_speedtest_init._entry.6, ptr @mtd_speedtest_init._entry.60, ptr @mtd_speedtest_init._entry.63, ptr @mtd_speedtest_init._entry.66, ptr @mtd_speedtest_init._entry.69, ptr @mtd_speedtest_init._entry.72, ptr @mtd_speedtest_init._entry.75, ptr @mtd_speedtest_init._entry.78, ptr @mtd_speedtest_init._entry.81, ptr @mtd_speedtest_init._entry.9, ptr @mtd_speedtest_init._entry_ptr, ptr @mtd_speedtest_init._entry_ptr.11, ptr @mtd_speedtest_init._entry_ptr.14, ptr @mtd_speedtest_init._entry_ptr.17, ptr @mtd_speedtest_init._entry_ptr.20, ptr @mtd_speedtest_init._entry_ptr.23, ptr @mtd_speedtest_init._entry_ptr.26, ptr @mtd_speedtest_init._entry_ptr.29, ptr @mtd_speedtest_init._entry_ptr.32, ptr @mtd_speedtest_init._entry_ptr.35, ptr @mtd_speedtest_init._entry_ptr.38, ptr @mtd_speedtest_init._entry_ptr.41, ptr @mtd_speedtest_init._entry_ptr.44, ptr @mtd_speedtest_init._entry_ptr.47, ptr @mtd_speedtest_init._entry_ptr.5, ptr @mtd_speedtest_init._entry_ptr.50, ptr @mtd_speedtest_init._entry_ptr.53, ptr @mtd_speedtest_init._entry_ptr.56, ptr @mtd_speedtest_init._entry_ptr.59, ptr @mtd_speedtest_init._entry_ptr.62, ptr @mtd_speedtest_init._entry_ptr.65, ptr @mtd_speedtest_init._entry_ptr.68, ptr @mtd_speedtest_init._entry_ptr.71, ptr @mtd_speedtest_init._entry_ptr.74, ptr @mtd_speedtest_init._entry_ptr.77, ptr @mtd_speedtest_init._entry_ptr.8, ptr @mtd_speedtest_init._entry_ptr.80, ptr @mtd_speedtest_init._entry_ptr.82, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @multiblock_erase._entry, ptr @multiblock_erase._entry_ptr, ptr @dev, ptr @count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @mtd, ptr @.str.19, ptr @.str.22, ptr @pgsize, ptr @ebcnt, ptr @pgcnt, ptr @.str.25, ptr @iobuf, ptr @bbt, ptr @goodebcnt, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @start, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @finish, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pgcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iobuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodebcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_speedtest_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @finish to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiblock_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %0 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end25, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0, i32 noundef %1) #14
  br label %if.end28

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %0) #14
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %do.end20
  %2 = load i32, ptr @dev, align 4
  %call29 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %2) #11
  store ptr %call29, ptr @mtd, align 4
  %cmp.i712 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i712, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call29, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp39 = icmp eq i32 %5, 1
  br i1 %cmp39, label %do.end43, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %if.end38.if.end48_crit_edge
  %storemerge = phi i32 [ 512, %do.end43 ], [ %5, %if.end38.if.end48_crit_edge ]
  store i32 %storemerge, ptr @pgsize, align 4
  %6 = load ptr, ptr @mtd, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %8)
  %cmp219 = icmp ult i64 %8, 4294967296
  br i1 %cmp219, label %if.then223, label %if.else229, !prof !175

if.then223:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %conv224 = trunc i64 %8 to i32
  %div227 = udiv i32 %conv224, %10
  br label %if.end233

if.else229:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %8) #15, !srcloc !176
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract.t921 = trunc i64 %asmresult1.i to i32
  br label %if.end233

if.end233:                                        ; preds = %if.else229, %if.then223
  %tmp.0.off0 = phi i32 [ %div227, %if.then223 ], [ %extract.t921, %if.else229 ]
  store i32 %tmp.0.off0, ptr @ebcnt, align 4
  %div237 = udiv i32 %10, %storemerge
  store i32 %div237, ptr @pgcnt, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i64 noundef %8, i32 noundef %10, i32 noundef %storemerge, i32 noundef %tmp.0.off0, i32 noundef %div237, i32 noundef %13) #14
  %14 = load i32, ptr @count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp245 = icmp sgt i32 %14, 0
  br i1 %cmp245, label %land.lhs.true247, label %if.end233.if.end8.i_crit_edge

if.end233.if.end8.i_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true247:                                 ; preds = %if.end233
  %15 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp248 = icmp slt i32 %14, %15
  br i1 %cmp248, label %if.then250, label %land.lhs.true247.if.end8.i_crit_edge

land.lhs.true247.if.end8.i_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then250:                                       ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %14, ptr @ebcnt, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then250, %land.lhs.true247.if.end8.i_crit_edge, %if.end233.if.end8.i_crit_edge
  %16 = load ptr, ptr @mtd, align 4
  %erasesize252 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %erasesize252 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %erasesize252, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #16
  store ptr %call9.i, ptr @iobuf, align 4
  %tobool254.not = icmp eq ptr %call9.i, null
  br i1 %tobool254.not, label %if.end8.i.out_crit_edge, label %if.end256

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end256:                                        ; preds = %if.end8.i
  %19 = load ptr, ptr @mtd, align 4
  %erasesize257 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %erasesize257 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erasesize257, align 8
  tail call void @prandom_bytes(ptr noundef nonnull %call9.i, i32 noundef %21) #11
  %22 = load i32, ptr @ebcnt, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #16
  store ptr %call9.i.i, ptr @bbt, align 4
  %tobool259.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool259.not, label %if.end256.out_crit_edge, label %if.end261

if.end256.out_crit_edge:                          ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end261:                                        ; preds = %if.end256
  %23 = load ptr, ptr @mtd, align 4
  %24 = load i32, ptr @ebcnt, align 4
  %call262 = tail call i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %23, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %for.cond.preheader, label %if.end261.out_crit_edge

if.end261.out_crit_edge:                          ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader:                               ; preds = %if.end261
  %25 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp266939 = icmp sgt i32 %25, 0
  br i1 %cmp266939, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %goodebcnt.promoted = load i32, ptr @goodebcnt, align 4
  %26 = load ptr, ptr @bbt, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0941 = phi i32 [ 0, %for.body.lr.ph ], [ %inc271, %for.inc.for.body_crit_edge ]
  %inc938940 = phi i32 [ %goodebcnt.promoted, %for.body.lr.ph ], [ %inc937, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %26, i32 %i.0941
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool268.not = icmp eq i8 %28, 0
  br i1 %tobool268.not, label %if.then269, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then269:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %inc938940, 1
  store i32 %inc, ptr @goodebcnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then269, %for.body.for.inc_crit_edge
  %inc937 = phi i32 [ %inc938940, %for.body.for.inc_crit_edge ], [ %inc, %if.then269 ]
  %inc271 = add nuw nsw i32 %i.0941, 1
  %exitcond.not = icmp eq i32 %inc271, %25
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %29 = load ptr, ptr @mtd, align 4
  %30 = load ptr, ptr @bbt, align 4
  %call272 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %29, ptr noundef %30, i32 noundef 0, i32 noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %do.end278, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end278:                                        ; preds = %for.end
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  %call.i = tail call i64 @ktime_get() #11
  store i64 %call.i, ptr @start, align 8
  %31 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp282942 = icmp sgt i32 %31, 0
  br i1 %cmp282942, label %do.end278.for.body284_crit_edge, label %do.end278.for.end299_crit_edge

do.end278.for.end299_crit_edge:                   ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end299

do.end278.for.body284_crit_edge:                  ; preds = %do.end278
  br label %for.body284

for.body284:                                      ; preds = %for.inc297.for.body284_crit_edge, %do.end278.for.body284_crit_edge
  %i.1943 = phi i32 [ %inc298, %for.inc297.for.body284_crit_edge ], [ 0, %do.end278.for.body284_crit_edge ]
  %32 = load ptr, ptr @bbt, align 4
  %arrayidx285 = getelementptr i8, ptr %32, i32 %i.1943
  %33 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx285, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool286.not = icmp eq i8 %34, 0
  br i1 %tobool286.not, label %if.end288, label %for.body284.for.inc297_crit_edge

for.body284.for.inc297_crit_edge:                 ; preds = %for.body284
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc297

if.end288:                                        ; preds = %for.body284
  %conv.i = zext i32 %i.1943 to i64
  %35 = load ptr, ptr @mtd, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %37 to i64
  %mul.i = mul nuw nsw i64 %conv1.i, %conv.i
  %38 = load ptr, ptr @iobuf, align 4
  %call.i717 = tail call i32 @mtdtest_write(ptr noundef %35, i64 noundef %mul.i, i32 noundef %37, ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i717)
  %tobool290.not = icmp eq i32 %call.i717, 0
  br i1 %tobool290.not, label %if.end292, label %if.end288.out_crit_edge

if.end288.out_crit_edge:                          ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end292:                                        ; preds = %if.end288
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %39 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stack.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i718 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i718, label %signal_pending.exit.i, label %if.end292.out.sink.split_crit_edge, !prof !175

if.end292.out.sink.split_crit_edge:               ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i:                            ; preds = %if.end292
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and1.i.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %signal_pending.exit.i.for.inc297_crit_edge, label %signal_pending.exit.i.out.sink.split_crit_edge

signal_pending.exit.i.out.sink.split_crit_edge:   ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i.for.inc297_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc297

for.inc297:                                       ; preds = %signal_pending.exit.i.for.inc297_crit_edge, %for.body284.for.inc297_crit_edge
  %inc298 = add nuw nsw i32 %i.1943, 1
  %50 = load i32, ptr @ebcnt, align 4
  %cmp282 = icmp slt i32 %inc298, %50
  br i1 %cmp282, label %for.inc297.for.body284_crit_edge, label %for.inc297.for.end299_crit_edge

for.inc297.for.end299_crit_edge:                  ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end299

for.inc297.for.body284_crit_edge:                 ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body284

for.end299:                                       ; preds = %for.inc297.for.end299_crit_edge, %do.end278.for.end299_crit_edge
  %call.i719 = tail call i64 @ktime_get() #11
  store i64 %call.i719, ptr @finish, align 8
  %call300 = tail call fastcc i32 @calc_speed()
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call300) #14
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  %call.i720 = tail call i64 @ktime_get() #11
  store i64 %call.i720, ptr @start, align 8
  %51 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp312945 = icmp sgt i32 %51, 0
  br i1 %cmp312945, label %for.end299.for.body314_crit_edge, label %for.end299.for.end329_crit_edge

for.end299.for.end329_crit_edge:                  ; preds = %for.end299
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end329

for.end299.for.body314_crit_edge:                 ; preds = %for.end299
  br label %for.body314

for.body314:                                      ; preds = %for.inc327.for.body314_crit_edge, %for.end299.for.body314_crit_edge
  %i.2946 = phi i32 [ %inc328, %for.inc327.for.body314_crit_edge ], [ 0, %for.end299.for.body314_crit_edge ]
  %52 = load ptr, ptr @bbt, align 4
  %arrayidx315 = getelementptr i8, ptr %52, i32 %i.2946
  %53 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx315, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool316.not = icmp eq i8 %54, 0
  br i1 %tobool316.not, label %if.end318, label %for.body314.for.inc327_crit_edge

for.body314.for.inc327_crit_edge:                 ; preds = %for.body314
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc327

if.end318:                                        ; preds = %for.body314
  %conv.i721 = zext i32 %i.2946 to i64
  %55 = load ptr, ptr @mtd, align 4
  %erasesize.i722 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %erasesize.i722 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %erasesize.i722, align 8
  %conv1.i723 = zext i32 %57 to i64
  %mul.i724 = mul nuw nsw i64 %conv1.i723, %conv.i721
  %58 = load ptr, ptr @iobuf, align 4
  %call.i725 = tail call i32 @mtdtest_read(ptr noundef %55, i64 noundef %mul.i724, i32 noundef %57, ptr noundef %58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i725)
  %tobool320.not = icmp eq i32 %call.i725, 0
  br i1 %tobool320.not, label %if.end322, label %if.end318.out_crit_edge

if.end318.out_crit_edge:                          ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end322:                                        ; preds = %if.end318
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i.i726 = tail call i32 @__cond_resched() #11
  %59 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i727 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i727 to ptr
  %task.i728 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i728 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i728, align 8
  %stack.i.i.i729 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %stack.i.i.i729 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stack.i.i.i729, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i730 = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i730, label %signal_pending.exit.i733, label %if.end322.out.sink.split_crit_edge, !prof !175

if.end322.out.sink.split_crit_edge:               ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i733:                         ; preds = %if.end322
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %64, align 4
  %and1.i.i.i.i.i.i731 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i731)
  %tobool.not.i732 = icmp eq i32 %and1.i.i.i.i.i.i731, 0
  br i1 %tobool.not.i732, label %signal_pending.exit.i733.for.inc327_crit_edge, label %signal_pending.exit.i733.out.sink.split_crit_edge

signal_pending.exit.i733.out.sink.split_crit_edge: ; preds = %signal_pending.exit.i733
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i733.for.inc327_crit_edge:    ; preds = %signal_pending.exit.i733
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc327

for.inc327:                                       ; preds = %signal_pending.exit.i733.for.inc327_crit_edge, %for.body314.for.inc327_crit_edge
  %inc328 = add nuw nsw i32 %i.2946, 1
  %70 = load i32, ptr @ebcnt, align 4
  %cmp312 = icmp slt i32 %inc328, %70
  br i1 %cmp312, label %for.inc327.for.body314_crit_edge, label %for.inc327.for.end329_crit_edge

for.inc327.for.end329_crit_edge:                  ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end329

for.inc327.for.body314_crit_edge:                 ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body314

for.end329:                                       ; preds = %for.inc327.for.end329_crit_edge, %for.end299.for.end329_crit_edge
  %call.i738 = tail call i64 @ktime_get() #11
  store i64 %call.i738, ptr @finish, align 8
  %call330 = tail call fastcc i32 @calc_speed()
  %call335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call330) #14
  %71 = load ptr, ptr @mtd, align 4
  %72 = load ptr, ptr @bbt, align 4
  %73 = load i32, ptr @ebcnt, align 4
  %call336 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %71, ptr noundef %72, i32 noundef 0, i32 noundef %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %do.end342, label %for.end329.out_crit_edge

for.end329.out_crit_edge:                         ; preds = %for.end329
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end342:                                        ; preds = %for.end329
  %call344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  %call.i739 = tail call i64 @ktime_get() #11
  store i64 %call.i739, ptr @start, align 8
  %74 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp346948 = icmp sgt i32 %74, 0
  br i1 %cmp346948, label %do.end342.for.body348_crit_edge, label %do.end342.for.end363_crit_edge

do.end342.for.end363_crit_edge:                   ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end363

do.end342.for.body348_crit_edge:                  ; preds = %do.end342
  br label %for.body348

for.body348:                                      ; preds = %for.inc361.for.body348_crit_edge, %do.end342.for.body348_crit_edge
  %i.3949 = phi i32 [ %inc362, %for.inc361.for.body348_crit_edge ], [ 0, %do.end342.for.body348_crit_edge ]
  %75 = load ptr, ptr @bbt, align 4
  %arrayidx349 = getelementptr i8, ptr %75, i32 %i.3949
  %76 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx349, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool350.not = icmp eq i8 %77, 0
  br i1 %tobool350.not, label %if.end352, label %for.body348.for.inc361_crit_edge

for.body348.for.inc361_crit_edge:                 ; preds = %for.body348
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc361

if.end352:                                        ; preds = %for.body348
  %78 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp8.i = icmp sgt i32 %78, 0
  br i1 %cmp8.i, label %for.body.preheader.i, label %if.end352.if.end356_crit_edge

if.end352.if.end356_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end356

for.body.preheader.i:                             ; preds = %if.end352
  %79 = load ptr, ptr @iobuf, align 4
  %80 = load ptr, ptr @mtd, align 4
  %erasesize.i740 = getelementptr inbounds %struct.mtd_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %erasesize.i740 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %erasesize.i740, align 8
  %conv1.i741 = zext i32 %82 to i64
  %conv.i742 = zext i32 %i.3949 to i64
  %mul.i743 = mul nuw nsw i64 %conv1.i741, %conv.i742
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i747.for.body.i_crit_edge, %for.body.preheader.i
  %buf.011.i = phi ptr [ %add.ptr.i, %if.end.i747.for.body.i_crit_edge ], [ %79, %for.body.preheader.i ]
  %addr.010.i = phi i64 [ %add.i, %if.end.i747.for.body.i_crit_edge ], [ %mul.i743, %for.body.preheader.i ]
  %i.09.i = phi i32 [ %inc.i, %if.end.i747.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %83 = load ptr, ptr @mtd, align 4
  %84 = load i32, ptr @pgsize, align 4
  %call.i744 = tail call i32 @mtdtest_write(ptr noundef %83, i64 noundef %addr.010.i, i32 noundef %84, ptr noundef %buf.011.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i744)
  %tobool.not.i745 = icmp eq i32 %call.i744, 0
  br i1 %tobool.not.i745, label %if.end.i747, label %for.body.i.out_crit_edge

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i747:                                      ; preds = %for.body.i
  %85 = load i32, ptr @pgsize, align 4
  %conv3.i = sext i32 %85 to i64
  %add.i = add i64 %addr.010.i, %conv3.i
  %add.ptr.i = getelementptr i8, ptr %buf.011.i, i32 %85
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %86 = load i32, ptr @pgcnt, align 4
  %cmp.i746 = icmp slt i32 %inc.i, %86
  br i1 %cmp.i746, label %if.end.i747.for.body.i_crit_edge, label %if.end.i747.if.end356_crit_edge

if.end.i747.if.end356_crit_edge:                  ; preds = %if.end.i747
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end356

if.end.i747.for.body.i_crit_edge:                 ; preds = %if.end.i747
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end356:                                        ; preds = %if.end.i747.if.end356_crit_edge, %if.end352.if.end356_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i.i748 = tail call i32 @__cond_resched() #11
  %87 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i749 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i749 to ptr
  %task.i750 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i750 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i750, align 8
  %stack.i.i.i751 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %stack.i.i.i751 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %stack.i.i.i751, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %95 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i752 = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i752, label %signal_pending.exit.i755, label %if.end356.out.sink.split_crit_edge, !prof !175

if.end356.out.sink.split_crit_edge:               ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i755:                         ; preds = %if.end356
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %92, align 4
  %and1.i.i.i.i.i.i753 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i753)
  %tobool.not.i754 = icmp eq i32 %and1.i.i.i.i.i.i753, 0
  br i1 %tobool.not.i754, label %signal_pending.exit.i755.for.inc361_crit_edge, label %signal_pending.exit.i755.out.sink.split_crit_edge

signal_pending.exit.i755.out.sink.split_crit_edge: ; preds = %signal_pending.exit.i755
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i755.for.inc361_crit_edge:    ; preds = %signal_pending.exit.i755
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc361

for.inc361:                                       ; preds = %signal_pending.exit.i755.for.inc361_crit_edge, %for.body348.for.inc361_crit_edge
  %inc362 = add nuw nsw i32 %i.3949, 1
  %98 = load i32, ptr @ebcnt, align 4
  %cmp346 = icmp slt i32 %inc362, %98
  br i1 %cmp346, label %for.inc361.for.body348_crit_edge, label %for.inc361.for.end363_crit_edge

for.inc361.for.end363_crit_edge:                  ; preds = %for.inc361
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end363

for.inc361.for.body348_crit_edge:                 ; preds = %for.inc361
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body348

for.end363:                                       ; preds = %for.inc361.for.end363_crit_edge, %do.end342.for.end363_crit_edge
  %call.i760 = tail call i64 @ktime_get() #11
  store i64 %call.i760, ptr @finish, align 8
  %call364 = tail call fastcc i32 @calc_speed()
  %call369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call364) #14
  %call374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #14
  %call.i761 = tail call i64 @ktime_get() #11
  store i64 %call.i761, ptr @start, align 8
  %99 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp376952 = icmp sgt i32 %99, 0
  br i1 %cmp376952, label %for.end363.for.body378_crit_edge, label %for.end363.for.end393_crit_edge

for.end363.for.end393_crit_edge:                  ; preds = %for.end363
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end393

for.end363.for.body378_crit_edge:                 ; preds = %for.end363
  br label %for.body378

for.body378:                                      ; preds = %for.inc391.for.body378_crit_edge, %for.end363.for.body378_crit_edge
  %i.4953 = phi i32 [ %inc392, %for.inc391.for.body378_crit_edge ], [ 0, %for.end363.for.body378_crit_edge ]
  %100 = load ptr, ptr @bbt, align 4
  %arrayidx379 = getelementptr i8, ptr %100, i32 %i.4953
  %101 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx379, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool380.not = icmp eq i8 %102, 0
  br i1 %tobool380.not, label %if.end382, label %for.body378.for.inc391_crit_edge

for.body378.for.inc391_crit_edge:                 ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc391

if.end382:                                        ; preds = %for.body378
  %103 = load i32, ptr @pgcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp8.i762 = icmp sgt i32 %103, 0
  br i1 %cmp8.i762, label %for.body.preheader.i767, label %if.end382.if.end386_crit_edge

if.end382.if.end386_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end386

for.body.preheader.i767:                          ; preds = %if.end382
  %104 = load ptr, ptr @iobuf, align 4
  %105 = load ptr, ptr @mtd, align 4
  %erasesize.i763 = getelementptr inbounds %struct.mtd_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %erasesize.i763 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %erasesize.i763, align 8
  %conv1.i764 = zext i32 %107 to i64
  %conv.i765 = zext i32 %i.4953 to i64
  %mul.i766 = mul nuw nsw i64 %conv1.i764, %conv.i765
  br label %for.body.i773

for.body.i773:                                    ; preds = %if.end.i779.for.body.i773_crit_edge, %for.body.preheader.i767
  %buf.011.i768 = phi ptr [ %add.ptr.i776, %if.end.i779.for.body.i773_crit_edge ], [ %104, %for.body.preheader.i767 ]
  %addr.010.i769 = phi i64 [ %add.i775, %if.end.i779.for.body.i773_crit_edge ], [ %mul.i766, %for.body.preheader.i767 ]
  %i.09.i770 = phi i32 [ %inc.i777, %if.end.i779.for.body.i773_crit_edge ], [ 0, %for.body.preheader.i767 ]
  %108 = load ptr, ptr @mtd, align 4
  %109 = load i32, ptr @pgsize, align 4
  %call.i771 = tail call i32 @mtdtest_read(ptr noundef %108, i64 noundef %addr.010.i769, i32 noundef %109, ptr noundef %buf.011.i768) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i771)
  %tobool.not.i772 = icmp eq i32 %call.i771, 0
  br i1 %tobool.not.i772, label %if.end.i779, label %for.body.i773.out_crit_edge

for.body.i773.out_crit_edge:                      ; preds = %for.body.i773
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i779:                                      ; preds = %for.body.i773
  %110 = load i32, ptr @pgsize, align 4
  %conv3.i774 = sext i32 %110 to i64
  %add.i775 = add i64 %addr.010.i769, %conv3.i774
  %add.ptr.i776 = getelementptr i8, ptr %buf.011.i768, i32 %110
  %inc.i777 = add nuw nsw i32 %i.09.i770, 1
  %111 = load i32, ptr @pgcnt, align 4
  %cmp.i778 = icmp slt i32 %inc.i777, %111
  br i1 %cmp.i778, label %if.end.i779.for.body.i773_crit_edge, label %if.end.i779.if.end386_crit_edge

if.end.i779.if.end386_crit_edge:                  ; preds = %if.end.i779
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end386

if.end.i779.for.body.i773_crit_edge:              ; preds = %if.end.i779
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i773

if.end386:                                        ; preds = %if.end.i779.if.end386_crit_edge, %if.end382.if.end386_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i.i781 = tail call i32 @__cond_resched() #11
  %112 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i782 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i782 to ptr
  %task.i783 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task.i783 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task.i783, align 8
  %stack.i.i.i784 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %stack.i.i.i784 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %stack.i.i.i784, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i.i785 = icmp eq i32 %120, 0
  br i1 %tobool.not.i.i785, label %signal_pending.exit.i788, label %if.end386.out.sink.split_crit_edge, !prof !175

if.end386.out.sink.split_crit_edge:               ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i788:                         ; preds = %if.end386
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %117, align 4
  %and1.i.i.i.i.i.i786 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i786)
  %tobool.not.i787 = icmp eq i32 %and1.i.i.i.i.i.i786, 0
  br i1 %tobool.not.i787, label %signal_pending.exit.i788.for.inc391_crit_edge, label %signal_pending.exit.i788.out.sink.split_crit_edge

signal_pending.exit.i788.out.sink.split_crit_edge: ; preds = %signal_pending.exit.i788
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i788.for.inc391_crit_edge:    ; preds = %signal_pending.exit.i788
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc391

for.inc391:                                       ; preds = %signal_pending.exit.i788.for.inc391_crit_edge, %for.body378.for.inc391_crit_edge
  %inc392 = add nuw nsw i32 %i.4953, 1
  %123 = load i32, ptr @ebcnt, align 4
  %cmp376 = icmp slt i32 %inc392, %123
  br i1 %cmp376, label %for.inc391.for.body378_crit_edge, label %for.inc391.for.end393_crit_edge

for.inc391.for.end393_crit_edge:                  ; preds = %for.inc391
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end393

for.inc391.for.body378_crit_edge:                 ; preds = %for.inc391
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body378

for.end393:                                       ; preds = %for.inc391.for.end393_crit_edge, %for.end363.for.end393_crit_edge
  %call.i793 = tail call i64 @ktime_get() #11
  store i64 %call.i793, ptr @finish, align 8
  %call394 = tail call fastcc i32 @calc_speed()
  %call399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %call394) #14
  %124 = load ptr, ptr @mtd, align 4
  %125 = load ptr, ptr @bbt, align 4
  %126 = load i32, ptr @ebcnt, align 4
  %call400 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %124, ptr noundef %125, i32 noundef 0, i32 noundef %126) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %do.end406, label %for.end393.out_crit_edge

for.end393.out_crit_edge:                         ; preds = %for.end393
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end406:                                        ; preds = %for.end393
  %call408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #14
  %call.i794 = tail call i64 @ktime_get() #11
  store i64 %call.i794, ptr @start, align 8
  %127 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp410956 = icmp sgt i32 %127, 0
  br i1 %cmp410956, label %do.end406.for.body412_crit_edge, label %do.end406.for.end427_crit_edge

do.end406.for.end427_crit_edge:                   ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end427

do.end406.for.body412_crit_edge:                  ; preds = %do.end406
  br label %for.body412

for.body412:                                      ; preds = %for.inc425.for.body412_crit_edge, %do.end406.for.body412_crit_edge
  %i.5957 = phi i32 [ %inc426, %for.inc425.for.body412_crit_edge ], [ 0, %do.end406.for.body412_crit_edge ]
  %128 = load ptr, ptr @bbt, align 4
  %arrayidx413 = getelementptr i8, ptr %128, i32 %i.5957
  %129 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx413, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool414.not = icmp eq i8 %130, 0
  br i1 %tobool414.not, label %if.end416, label %for.body412.for.inc425_crit_edge

for.body412.for.inc425_crit_edge:                 ; preds = %for.body412
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc425

if.end416:                                        ; preds = %for.body412
  %131 = load i32, ptr @pgsize, align 4
  %mul.i795 = shl i32 %131, 1
  %132 = load i32, ptr @pgcnt, align 4
  %div.i = sdiv i32 %132, 2
  %conv.i796 = zext i32 %i.5957 to i64
  %133 = load ptr, ptr @mtd, align 4
  %erasesize.i797 = getelementptr inbounds %struct.mtd_info, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %erasesize.i797 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %erasesize.i797, align 8
  %conv1.i798 = zext i32 %135 to i64
  %mul2.i = mul nuw nsw i64 %conv1.i798, %conv.i796
  %136 = load ptr, ptr @iobuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp25.i = icmp sgt i32 %132, 1
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %if.end416.for.end.i_crit_edge

if.end416.for.end.i_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end416
  %conv4.i = zext i32 %mul.i795 to i64
  br label %for.body.i801

for.body.i801:                                    ; preds = %if.end.i805.for.body.i801_crit_edge, %for.body.lr.ph.i
  %buf.028.i = phi ptr [ %136, %for.body.lr.ph.i ], [ %add.ptr.i803, %if.end.i805.for.body.i801_crit_edge ]
  %addr.027.i = phi i64 [ %mul2.i, %for.body.lr.ph.i ], [ %add.i802, %if.end.i805.for.body.i801_crit_edge ]
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i804, %if.end.i805.for.body.i801_crit_edge ]
  %137 = load ptr, ptr @mtd, align 4
  %call.i799 = tail call i32 @mtdtest_write(ptr noundef %137, i64 noundef %addr.027.i, i32 noundef %mul.i795, ptr noundef %buf.028.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i799)
  %tobool.not.i800 = icmp eq i32 %call.i799, 0
  br i1 %tobool.not.i800, label %if.end.i805, label %for.body.i801.out_crit_edge

for.body.i801.out_crit_edge:                      ; preds = %for.body.i801
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i805:                                      ; preds = %for.body.i801
  %add.i802 = add i64 %addr.027.i, %conv4.i
  %add.ptr.i803 = getelementptr i8, ptr %buf.028.i, i32 %mul.i795
  %inc.i804 = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i804, %div.i
  br i1 %exitcond.not.i, label %if.end.i805.for.end.i_crit_edge, label %if.end.i805.for.body.i801_crit_edge

if.end.i805.for.body.i801_crit_edge:              ; preds = %if.end.i805
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i801

if.end.i805.for.end.i_crit_edge:                  ; preds = %if.end.i805
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i805.for.end.i_crit_edge, %if.end416.for.end.i_crit_edge
  %addr.0.lcssa.i = phi i64 [ %mul2.i, %if.end416.for.end.i_crit_edge ], [ %add.i802, %if.end.i805.for.end.i_crit_edge ]
  %buf.0.lcssa.i = phi ptr [ %136, %if.end416.for.end.i_crit_edge ], [ %add.ptr.i803, %if.end.i805.for.end.i_crit_edge ]
  %138 = load i32, ptr @pgcnt, align 4
  %139 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool5.not.i = icmp eq i32 %139, 0
  br i1 %tobool5.not.i, label %for.end.i.if.end420_crit_edge, label %write_eraseblock_by_2pages.exit

for.end.i.if.end420_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end420

write_eraseblock_by_2pages.exit:                  ; preds = %for.end.i
  %140 = load ptr, ptr @mtd, align 4
  %141 = load i32, ptr @pgsize, align 4
  %call7.i806 = tail call i32 @mtdtest_write(ptr noundef %140, i64 noundef %addr.0.lcssa.i, i32 noundef %141, ptr noundef %buf.0.lcssa.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i806)
  %tobool418.not = icmp eq i32 %call7.i806, 0
  br i1 %tobool418.not, label %write_eraseblock_by_2pages.exit.if.end420_crit_edge, label %write_eraseblock_by_2pages.exit.out_crit_edge

write_eraseblock_by_2pages.exit.out_crit_edge:    ; preds = %write_eraseblock_by_2pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

write_eraseblock_by_2pages.exit.if.end420_crit_edge: ; preds = %write_eraseblock_by_2pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end420

if.end420:                                        ; preds = %write_eraseblock_by_2pages.exit.if.end420_crit_edge, %for.end.i.if.end420_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i.i808 = tail call i32 @__cond_resched() #11
  %142 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i809 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i809 to ptr
  %task.i810 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task.i810 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task.i810, align 8
  %stack.i.i.i811 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %stack.i.i.i811 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %stack.i.i.i811, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %147, align 4
  %150 = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i.i812 = icmp eq i32 %150, 0
  br i1 %tobool.not.i.i812, label %signal_pending.exit.i815, label %if.end420.out.sink.split_crit_edge, !prof !175

if.end420.out.sink.split_crit_edge:               ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i815:                         ; preds = %if.end420
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %147, align 4
  %and1.i.i.i.i.i.i813 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i813)
  %tobool.not.i814 = icmp eq i32 %and1.i.i.i.i.i.i813, 0
  br i1 %tobool.not.i814, label %signal_pending.exit.i815.for.inc425_crit_edge, label %signal_pending.exit.i815.out.sink.split_crit_edge

signal_pending.exit.i815.out.sink.split_crit_edge: ; preds = %signal_pending.exit.i815
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i815.for.inc425_crit_edge:    ; preds = %signal_pending.exit.i815
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc425

for.inc425:                                       ; preds = %signal_pending.exit.i815.for.inc425_crit_edge, %for.body412.for.inc425_crit_edge
  %inc426 = add nuw nsw i32 %i.5957, 1
  %153 = load i32, ptr @ebcnt, align 4
  %cmp410 = icmp slt i32 %inc426, %153
  br i1 %cmp410, label %for.inc425.for.body412_crit_edge, label %for.inc425.for.end427_crit_edge

for.inc425.for.end427_crit_edge:                  ; preds = %for.inc425
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end427

for.inc425.for.body412_crit_edge:                 ; preds = %for.inc425
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body412

for.end427:                                       ; preds = %for.inc425.for.end427_crit_edge, %do.end406.for.end427_crit_edge
  %call.i820 = tail call i64 @ktime_get() #11
  store i64 %call.i820, ptr @finish, align 8
  %call428 = tail call fastcc i32 @calc_speed()
  %call433 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %call428) #14
  %call438 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #14
  %call.i821 = tail call i64 @ktime_get() #11
  store i64 %call.i821, ptr @start, align 8
  %154 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp440959 = icmp sgt i32 %154, 0
  br i1 %cmp440959, label %for.end427.for.body442_crit_edge, label %for.end427.for.end457_crit_edge

for.end427.for.end457_crit_edge:                  ; preds = %for.end427
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end457

for.end427.for.body442_crit_edge:                 ; preds = %for.end427
  br label %for.body442

for.body442:                                      ; preds = %for.inc455.for.body442_crit_edge, %for.end427.for.body442_crit_edge
  %i.6960 = phi i32 [ %inc456, %for.inc455.for.body442_crit_edge ], [ 0, %for.end427.for.body442_crit_edge ]
  %155 = load ptr, ptr @bbt, align 4
  %arrayidx443 = getelementptr i8, ptr %155, i32 %i.6960
  %156 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx443, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool444.not = icmp eq i8 %157, 0
  br i1 %tobool444.not, label %if.end446, label %for.body442.for.inc455_crit_edge

for.body442.for.inc455_crit_edge:                 ; preds = %for.body442
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc455

if.end446:                                        ; preds = %for.body442
  %158 = load i32, ptr @pgsize, align 4
  %mul.i822 = shl i32 %158, 1
  %159 = load i32, ptr @pgcnt, align 4
  %div.i823 = sdiv i32 %159, 2
  %conv.i824 = zext i32 %i.6960 to i64
  %160 = load ptr, ptr @mtd, align 4
  %erasesize.i825 = getelementptr inbounds %struct.mtd_info, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %erasesize.i825 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %erasesize.i825, align 8
  %conv1.i826 = zext i32 %162 to i64
  %mul2.i827 = mul nuw nsw i64 %conv1.i826, %conv.i824
  %163 = load ptr, ptr @iobuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp25.i828 = icmp sgt i32 %159, 1
  br i1 %cmp25.i828, label %for.body.lr.ph.i830, label %if.end446.for.end.i845_crit_edge

if.end446.for.end.i845_crit_edge:                 ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i845

for.body.lr.ph.i830:                              ; preds = %if.end446
  %conv4.i829 = zext i32 %mul.i822 to i64
  br label %for.body.i836

for.body.i836:                                    ; preds = %if.end.i841.for.body.i836_crit_edge, %for.body.lr.ph.i830
  %buf.028.i831 = phi ptr [ %163, %for.body.lr.ph.i830 ], [ %add.ptr.i838, %if.end.i841.for.body.i836_crit_edge ]
  %addr.027.i832 = phi i64 [ %mul2.i827, %for.body.lr.ph.i830 ], [ %add.i837, %if.end.i841.for.body.i836_crit_edge ]
  %i.026.i833 = phi i32 [ 0, %for.body.lr.ph.i830 ], [ %inc.i839, %if.end.i841.for.body.i836_crit_edge ]
  %164 = load ptr, ptr @mtd, align 4
  %call.i834 = tail call i32 @mtdtest_read(ptr noundef %164, i64 noundef %addr.027.i832, i32 noundef %mul.i822, ptr noundef %buf.028.i831) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i834)
  %tobool.not.i835 = icmp eq i32 %call.i834, 0
  br i1 %tobool.not.i835, label %if.end.i841, label %for.body.i836.out_crit_edge

for.body.i836.out_crit_edge:                      ; preds = %for.body.i836
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i841:                                      ; preds = %for.body.i836
  %add.i837 = add i64 %addr.027.i832, %conv4.i829
  %add.ptr.i838 = getelementptr i8, ptr %buf.028.i831, i32 %mul.i822
  %inc.i839 = add nuw nsw i32 %i.026.i833, 1
  %exitcond.not.i840 = icmp eq i32 %inc.i839, %div.i823
  br i1 %exitcond.not.i840, label %if.end.i841.for.end.i845_crit_edge, label %if.end.i841.for.body.i836_crit_edge

if.end.i841.for.body.i836_crit_edge:              ; preds = %if.end.i841
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i836

if.end.i841.for.end.i845_crit_edge:               ; preds = %if.end.i841
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i845

for.end.i845:                                     ; preds = %if.end.i841.for.end.i845_crit_edge, %if.end446.for.end.i845_crit_edge
  %addr.0.lcssa.i842 = phi i64 [ %mul2.i827, %if.end446.for.end.i845_crit_edge ], [ %add.i837, %if.end.i841.for.end.i845_crit_edge ]
  %buf.0.lcssa.i843 = phi ptr [ %163, %if.end446.for.end.i845_crit_edge ], [ %add.ptr.i838, %if.end.i841.for.end.i845_crit_edge ]
  %165 = load i32, ptr @pgcnt, align 4
  %166 = and i32 %165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool5.not.i844 = icmp eq i32 %166, 0
  br i1 %tobool5.not.i844, label %for.end.i845.if.end450_crit_edge, label %read_eraseblock_by_2pages.exit

for.end.i845.if.end450_crit_edge:                 ; preds = %for.end.i845
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end450

read_eraseblock_by_2pages.exit:                   ; preds = %for.end.i845
  %167 = load ptr, ptr @mtd, align 4
  %168 = load i32, ptr @pgsize, align 4
  %call7.i846 = tail call i32 @mtdtest_read(ptr noundef %167, i64 noundef %addr.0.lcssa.i842, i32 noundef %168, ptr noundef %buf.0.lcssa.i843) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i846)
  %tobool448.not = icmp eq i32 %call7.i846, 0
  br i1 %tobool448.not, label %read_eraseblock_by_2pages.exit.if.end450_crit_edge, label %read_eraseblock_by_2pages.exit.out_crit_edge

read_eraseblock_by_2pages.exit.out_crit_edge:     ; preds = %read_eraseblock_by_2pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

read_eraseblock_by_2pages.exit.if.end450_crit_edge: ; preds = %read_eraseblock_by_2pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end450

if.end450:                                        ; preds = %read_eraseblock_by_2pages.exit.if.end450_crit_edge, %for.end.i845.if.end450_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i.i849 = tail call i32 @__cond_resched() #11
  %169 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i.i850 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i850 to ptr
  %task.i851 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %task.i851 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %task.i851, align 8
  %stack.i.i.i852 = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %stack.i.i.i852 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stack.i.i.i852, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %174, align 4
  %177 = and i32 %176, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i.i853 = icmp eq i32 %177, 0
  br i1 %tobool.not.i.i853, label %signal_pending.exit.i856, label %if.end450.out.sink.split_crit_edge, !prof !175

if.end450.out.sink.split_crit_edge:               ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i856:                         ; preds = %if.end450
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %174, align 4
  %and1.i.i.i.i.i.i854 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i854)
  %tobool.not.i855 = icmp eq i32 %and1.i.i.i.i.i.i854, 0
  br i1 %tobool.not.i855, label %signal_pending.exit.i856.for.inc455_crit_edge, label %signal_pending.exit.i856.out.sink.split_crit_edge

signal_pending.exit.i856.out.sink.split_crit_edge: ; preds = %signal_pending.exit.i856
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

signal_pending.exit.i856.for.inc455_crit_edge:    ; preds = %signal_pending.exit.i856
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc455

for.inc455:                                       ; preds = %signal_pending.exit.i856.for.inc455_crit_edge, %for.body442.for.inc455_crit_edge
  %inc456 = add nuw nsw i32 %i.6960, 1
  %180 = load i32, ptr @ebcnt, align 4
  %cmp440 = icmp slt i32 %inc456, %180
  br i1 %cmp440, label %for.inc455.for.body442_crit_edge, label %for.inc455.for.end457_crit_edge

for.inc455.for.end457_crit_edge:                  ; preds = %for.inc455
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end457

for.inc455.for.body442_crit_edge:                 ; preds = %for.inc455
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body442

for.end457:                                       ; preds = %for.inc455.for.end457_crit_edge, %for.end427.for.end457_crit_edge
  %call.i861 = tail call i64 @ktime_get() #11
  store i64 %call.i861, ptr @finish, align 8
  %call458 = tail call fastcc i32 @calc_speed()
  %call463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call458) #14
  %call468 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #14
  %call.i862 = tail call i64 @ktime_get() #11
  store i64 %call.i862, ptr @start, align 8
  %181 = load ptr, ptr @mtd, align 4
  %182 = load ptr, ptr @bbt, align 4
  %183 = load i32, ptr @ebcnt, align 4
  %call469 = tail call i32 @mtdtest_erase_good_eraseblocks(ptr noundef %181, ptr noundef %182, i32 noundef 0, i32 noundef %183) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469)
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %if.end472, label %for.end457.out_crit_edge

for.end457.out_crit_edge:                         ; preds = %for.end457
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end472:                                        ; preds = %for.end457
  %call.i863 = tail call i64 @ktime_get() #11
  store i64 %call.i863, ptr @finish, align 8
  %call473 = tail call fastcc i32 @calc_speed()
  %call478 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call473) #14
  br label %for.body482

for.body482:                                      ; preds = %for.end522.for.body482_crit_edge, %if.end472
  %k.0970 = phi i32 [ 1, %if.end472 ], [ %inc530, %for.end522.for.body482_crit_edge ]
  %shl483 = shl nuw nsw i32 1, %k.0970
  %call488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %shl483) #14
  %call.i864 = tail call i64 @ktime_get() #11
  store i64 %call.i864, ptr @start, align 8
  %184 = load i32, ptr @ebcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp490967 = icmp sgt i32 %184, 0
  br i1 %cmp490967, label %for.cond493.preheader.lr.ph, label %for.body482.for.end522_crit_edge

for.body482.for.end522_crit_edge:                 ; preds = %for.body482
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end522

for.cond493.preheader.lr.ph:                      ; preds = %for.body482
  %smax985 = call i32 @llvm.smax.i32(i32 %shl483, i32 1)
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.cond489.backedge.land.rhs.preheader_crit_edge, %for.cond493.preheader.lr.ph
  %185 = phi i32 [ %184, %for.cond493.preheader.lr.ph ], [ %190, %for.cond489.backedge.land.rhs.preheader_crit_edge ]
  %i.7968 = phi i32 [ 0, %for.cond493.preheader.lr.ph ], [ %i.7.be, %for.cond489.backedge.land.rhs.preheader_crit_edge ]
  %smax = call i32 @llvm.smax.i32(i32 %185, i32 %i.7968)
  %186 = sub i32 %smax, %i.7968
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc505.land.rhs_crit_edge, %land.rhs.preheader
  %j.0963 = phi i32 [ %inc506, %for.inc505.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0963, i32 %186)
  %exitcond986.not = icmp eq i32 %j.0963, %186
  br i1 %exitcond986.not, label %land.rhs.for.end507_crit_edge, label %for.body499

land.rhs.for.end507_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end507

for.body499:                                      ; preds = %land.rhs
  %add496 = add nsw i32 %j.0963, %i.7968
  %187 = load ptr, ptr @bbt, align 4
  %arrayidx501 = getelementptr i8, ptr %187, i32 %add496
  %188 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx501, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool502.not = icmp eq i8 %189, 0
  br i1 %tobool502.not, label %for.inc505, label %for.body499.for.end507_crit_edge

for.body499.for.end507_crit_edge:                 ; preds = %for.body499
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end507

for.inc505:                                       ; preds = %for.body499
  %inc506 = add nuw nsw i32 %j.0963, 1
  %exitcond987.not = icmp eq i32 %inc506, %smax985
  br i1 %exitcond987.not, label %for.inc505.if.end512_crit_edge, label %for.inc505.land.rhs_crit_edge

for.inc505.land.rhs_crit_edge:                    ; preds = %for.inc505
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc505.if.end512_crit_edge:                   ; preds = %for.inc505
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end512

for.end507:                                       ; preds = %for.body499.for.end507_crit_edge, %land.rhs.for.end507_crit_edge
  %j.0.lcssa.ph = phi i32 [ %186, %land.rhs.for.end507_crit_edge ], [ %j.0963, %for.body499.for.end507_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa.ph)
  %cmp508 = icmp eq i32 %j.0.lcssa.ph, 0
  br i1 %cmp508, label %if.then510, label %for.end507.if.end512_crit_edge

for.end507.if.end512_crit_edge:                   ; preds = %for.end507
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end512

if.then510:                                       ; preds = %for.end507
  call void @__sanitizer_cov_trace_pc() #13
  %inc511 = add i32 %i.7968, 1
  br label %for.cond489.backedge

for.cond489.backedge:                             ; preds = %if.end520, %if.then510
  %i.7.be = phi i32 [ %inc511, %if.then510 ], [ %add521, %if.end520 ]
  %190 = load i32, ptr @ebcnt, align 4
  %cmp490 = icmp slt i32 %i.7.be, %190
  br i1 %cmp490, label %for.cond489.backedge.land.rhs.preheader_crit_edge, label %for.cond489.backedge.for.end522_crit_edge

for.cond489.backedge.for.end522_crit_edge:        ; preds = %for.cond489.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end522

for.cond489.backedge.land.rhs.preheader_crit_edge: ; preds = %for.cond489.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

if.end512:                                        ; preds = %for.end507.if.end512_crit_edge, %for.inc505.if.end512_crit_edge
  %j.0.lcssa.ph991 = phi i32 [ %j.0.lcssa.ph, %for.end507.if.end512_crit_edge ], [ %smax985, %for.inc505.if.end512_crit_edge ]
  %call513 = tail call fastcc i32 @multiblock_erase(i32 noundef %i.7968, i32 noundef %j.0.lcssa.ph991)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call513)
  %tobool514.not = icmp eq i32 %call513, 0
  br i1 %tobool514.not, label %if.end516, label %if.end512.out_crit_edge

if.end512.out_crit_edge:                          ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end516:                                        ; preds = %if.end512
  %call517 = tail call fastcc i32 @mtdtest_relax()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call517)
  %tobool518.not = icmp eq i32 %call517, 0
  br i1 %tobool518.not, label %if.end520, label %if.end516.out_crit_edge

if.end516.out_crit_edge:                          ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end520:                                        ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #13
  %add521 = add i32 %j.0.lcssa.ph991, %i.7968
  br label %for.cond489.backedge

for.end522:                                       ; preds = %for.cond489.backedge.for.end522_crit_edge, %for.body482.for.end522_crit_edge
  %call.i865 = tail call i64 @ktime_get() #11
  store i64 %call.i865, ptr @finish, align 8
  %call523 = tail call fastcc i32 @calc_speed()
  %call528 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %shl483, i32 noundef %call523) #14
  %inc530 = add nuw nsw i32 %k.0970, 1
  %exitcond988.not = icmp eq i32 %inc530, 7
  br i1 %exitcond988.not, label %for.end522.out.sink.split_crit_edge, label %for.end522.for.body482_crit_edge

for.end522.for.body482_crit_edge:                 ; preds = %for.end522
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body482

for.end522.out.sink.split_crit_edge:              ; preds = %for.end522
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.end522.out.sink.split_crit_edge, %signal_pending.exit.i856.out.sink.split_crit_edge, %if.end450.out.sink.split_crit_edge, %signal_pending.exit.i815.out.sink.split_crit_edge, %if.end420.out.sink.split_crit_edge, %signal_pending.exit.i788.out.sink.split_crit_edge, %if.end386.out.sink.split_crit_edge, %signal_pending.exit.i755.out.sink.split_crit_edge, %if.end356.out.sink.split_crit_edge, %signal_pending.exit.i733.out.sink.split_crit_edge, %if.end322.out.sink.split_crit_edge, %signal_pending.exit.i.out.sink.split_crit_edge, %if.end292.out.sink.split_crit_edge
  %.str.84.sink = phi ptr [ @.str.76, %for.end522.out.sink.split_crit_edge ], [ @.str.84, %if.end450.out.sink.split_crit_edge ], [ @.str.84, %signal_pending.exit.i856.out.sink.split_crit_edge ], [ @.str.84, %if.end420.out.sink.split_crit_edge ], [ @.str.84, %signal_pending.exit.i815.out.sink.split_crit_edge ], [ @.str.84, %if.end386.out.sink.split_crit_edge ], [ @.str.84, %signal_pending.exit.i788.out.sink.split_crit_edge ], [ @.str.84, %if.end356.out.sink.split_crit_edge ], [ @.str.84, %signal_pending.exit.i755.out.sink.split_crit_edge ], [ @.str.84, %if.end322.out.sink.split_crit_edge ], [ @.str.84, %signal_pending.exit.i733.out.sink.split_crit_edge ], [ @.str.84, %if.end292.out.sink.split_crit_edge ], [ @.str.84, %signal_pending.exit.i.out.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ 0, %for.end522.out.sink.split_crit_edge ], [ -4, %if.end450.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i856.out.sink.split_crit_edge ], [ -4, %if.end420.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i815.out.sink.split_crit_edge ], [ -4, %if.end386.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i788.out.sink.split_crit_edge ], [ -4, %if.end356.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i755.out.sink.split_crit_edge ], [ -4, %if.end322.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i733.out.sink.split_crit_edge ], [ -4, %if.end292.out.sink.split_crit_edge ], [ -4, %signal_pending.exit.i.out.sink.split_crit_edge ]
  %call4.i857 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.84.sink) #14
  br label %out

out:                                              ; preds = %out.sink.split, %if.end516.out_crit_edge, %if.end512.out_crit_edge, %for.end457.out_crit_edge, %read_eraseblock_by_2pages.exit.out_crit_edge, %for.body.i836.out_crit_edge, %write_eraseblock_by_2pages.exit.out_crit_edge, %for.body.i801.out_crit_edge, %for.end393.out_crit_edge, %for.body.i773.out_crit_edge, %for.body.i.out_crit_edge, %for.end329.out_crit_edge, %if.end318.out_crit_edge, %if.end288.out_crit_edge, %for.end.out_crit_edge, %if.end261.out_crit_edge, %if.end256.out_crit_edge, %if.end8.i.out_crit_edge
  %err.2 = phi i32 [ %call262, %if.end261.out_crit_edge ], [ %call272, %for.end.out_crit_edge ], [ %call336, %for.end329.out_crit_edge ], [ %call400, %for.end393.out_crit_edge ], [ %call469, %for.end457.out_crit_edge ], [ -12, %if.end256.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ], [ %err.2.ph, %out.sink.split ], [ %call517, %if.end516.out_crit_edge ], [ %call513, %if.end512.out_crit_edge ], [ %call.i834, %for.body.i836.out_crit_edge ], [ %call7.i846, %read_eraseblock_by_2pages.exit.out_crit_edge ], [ %call.i799, %for.body.i801.out_crit_edge ], [ %call7.i806, %write_eraseblock_by_2pages.exit.out_crit_edge ], [ %call.i771, %for.body.i773.out_crit_edge ], [ %call.i744, %for.body.i.out_crit_edge ], [ %call.i725, %if.end318.out_crit_edge ], [ %call.i717, %if.end288.out_crit_edge ]
  %191 = load ptr, ptr @iobuf, align 4
  tail call void @kfree(ptr noundef %191) #11
  %192 = load ptr, ptr @bbt, align 4
  tail call void @kfree(ptr noundef %192) #11
  %193 = load ptr, ptr @mtd, align 4
  tail call void @put_mtd_device(ptr noundef %193) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool537.not = icmp eq i32 %err.2, 0
  br i1 %tobool537.not, label %out.cleanup_crit_edge, label %do.end541

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end541:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call543 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %err.2) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end541, %out.cleanup_crit_edge, %if.then31, %do.end9
  %.str.4.sink = phi ptr [ @.str.19, %if.then31 ], [ @.str.10, %do.end9 ], [ @.str.4, %out.cleanup_crit_edge ], [ @.str.4, %do.end541 ]
  %retval.0 = phi i32 [ %3, %if.then31 ], [ -22, %do.end9 ], [ %err.2, %out.cleanup_crit_edge ], [ %err.2, %do.end541 ]
  %call549 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #14
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_erase_good_eraseblocks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdtest_relax() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_resched(ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !165) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %entry.do.end_crit_edge, !prof !175

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

signal_pending.exit:                              ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.return_crit_edge, label %signal_pending.exit.do.end_crit_edge

signal_pending.exit.do.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

signal_pending.exit.return_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %signal_pending.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #14
  br label %return

return:                                           ; preds = %do.end, %signal_pending.exit.return_crit_edge
  %retval.0 = phi i32 [ -4, %do.end ], [ 0, %signal_pending.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_speed() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @finish, align 8
  %1 = load i64, ptr @start, align 8
  %sub.i = sub i64 %0, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #11
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %2) #15, !srcloc !177
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %2, i64 %3, i32 0) #15, !srcloc !178
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @goodebcnt, align 4
  %conv2 = sext i32 %5 to i64
  %6 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erasesize, align 8
  %div274 = lshr i32 %8, 10
  %conv3 = zext i32 %div274 to i64
  %mul = mul nsw i64 %conv2, 1000
  %mul4 = mul nsw i64 %mul, %conv3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul4)
  %cmp176 = icmp ult i64 %mul4, 4294967296
  br i1 %cmp176, label %if.then180, label %if.else186, !prof !175

if.then180:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv181 = trunc i64 %mul4 to i32
  %div184 = udiv i32 %conv181, %conv
  br label %cleanup

if.else186:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %mul4) #15, !srcloc !176
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t302 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else186, %if.then180, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %div184, %if.then180 ], [ %extract.t302, %if.else186 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @multiblock_erase(i32 noundef %ebnum, i32 noundef %blocks) unnamed_addr #7 align 64 {
entry:
  %ei = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ei) #11
  %0 = getelementptr inbounds %struct.erase_info, ptr %ei, i32 0, i32 1
  %conv = sext i32 %ebnum to i64
  %1 = load ptr, ptr @mtd, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erasesize, align 8
  %conv1 = zext i32 %3 to i64
  %mul = mul nsw i64 %conv1, %conv
  %4 = getelementptr inbounds i8, ptr %ei, i32 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %4, align 8
  %6 = ptrtoint ptr %ei to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul, ptr %ei, align 8
  %7 = load i32, ptr %erasesize, align 8
  %mul4 = mul i32 %7, %blocks
  %conv5 = zext i32 %mul4 to i64
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv5, ptr %0, align 8
  %call = call i32 @mtd_erase(ptr noundef %1, ptr noundef nonnull %ei) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %call, i32 noundef %ebnum, i32 noundef %blocks) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ei) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtdtest_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !162, !163, !164}
!llvm.named.register.sp = !{!165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__param_dev, !1, !"__param_dev", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/speedtest.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_devtype201, !1, !"__UNIQUE_ID_devtype201", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dev202, !4, !"__UNIQUE_ID_dev202", i1 false, i1 false}
!4 = !{!"../drivers/mtd/tests/speedtest.c", i32 26, i32 1}
!5 = !{ptr @__param_count, !6, !"__param_count", i1 false, i1 false}
!6 = !{!"../drivers/mtd/tests/speedtest.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_counttype203, !6, !"__UNIQUE_ID_counttype203", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_count204, !9, !"__UNIQUE_ID_count204", i1 false, i1 false}
!9 = !{!"../drivers/mtd/tests/speedtest.c", i32 30, i32 1}
!10 = !{ptr @__UNIQUE_ID_description205, !11, !"__UNIQUE_ID_description205", i1 false, i1 false}
!11 = !{!"../drivers/mtd/tests/speedtest.c", i32 417, i32 1}
!12 = !{ptr @__UNIQUE_ID_author206, !13, !"__UNIQUE_ID_author206", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/speedtest.c", i32 418, i32 1}
!14 = !{ptr @__UNIQUE_ID_license207, !15, !"__UNIQUE_ID_license207", i1 false, i1 false}
!15 = !{!"../drivers/mtd/tests/speedtest.c", i32 419, i32 1}
!16 = !{ptr @count, !17, !"count", i1 false, i1 false}
!17 = !{!"../drivers/mtd/tests/speedtest.c", i32 28, i32 12}
!18 = !{ptr @___asan_gen_.88, !1, !"__param_str_dev", i1 false, i1 false}
!19 = !{ptr @dev, !20, !"dev", i1 false, i1 false}
!20 = !{!"../drivers/mtd/tests/speedtest.c", i32 24, i32 12}
!21 = !{ptr @___asan_gen_.91, !6, !"__param_str_count", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/tests/speedtest.c", i32 180, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mtd_speedtest_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtd_speedtest_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/speedtest.c", i32 181, i32 2}
!30 = !{ptr @mtd_speedtest_init._entry.3, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtd_speedtest_init._entry_ptr.5, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/tests/speedtest.c", i32 184, i32 3}
!34 = !{ptr @mtd_speedtest_init._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtd_speedtest_init._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/tests/speedtest.c", i32 185, i32 3}
!38 = !{ptr @mtd_speedtest_init._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtd_speedtest_init._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/tests/speedtest.c", i32 190, i32 3}
!42 = !{ptr @mtd_speedtest_init._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtd_speedtest_init._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/tests/speedtest.c", i32 192, i32 3}
!46 = !{ptr @mtd_speedtest_init._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtd_speedtest_init._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/tests/speedtest.c", i32 197, i32 3}
!50 = !{ptr @mtd_speedtest_init._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtd_speedtest_init._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/tests/speedtest.c", i32 202, i32 3}
!54 = !{ptr @mtd_speedtest_init._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtd_speedtest_init._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/tests/speedtest.c", i32 213, i32 2}
!58 = !{ptr @mtd_speedtest_init._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtd_speedtest_init._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/tests/speedtest.c", i32 245, i32 2}
!62 = !{ptr @mtd_speedtest_init._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtd_speedtest_init._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/tests/speedtest.c", i32 260, i32 2}
!66 = !{ptr @mtd_speedtest_init._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtd_speedtest_init._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/tests/speedtest.c", i32 263, i32 2}
!70 = !{ptr @mtd_speedtest_init._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtd_speedtest_init._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/tests/speedtest.c", i32 278, i32 2}
!74 = !{ptr @mtd_speedtest_init._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtd_speedtest_init._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/tests/speedtest.c", i32 285, i32 2}
!78 = !{ptr @mtd_speedtest_init._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtd_speedtest_init._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/tests/speedtest.c", i32 300, i32 2}
!82 = !{ptr @mtd_speedtest_init._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mtd_speedtest_init._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/tests/speedtest.c", i32 303, i32 2}
!86 = !{ptr @mtd_speedtest_init._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mtd_speedtest_init._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/tests/speedtest.c", i32 318, i32 2}
!90 = !{ptr @mtd_speedtest_init._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtd_speedtest_init._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/tests/speedtest.c", i32 325, i32 2}
!94 = !{ptr @mtd_speedtest_init._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mtd_speedtest_init._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/tests/speedtest.c", i32 340, i32 2}
!98 = !{ptr @mtd_speedtest_init._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mtd_speedtest_init._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/tests/speedtest.c", i32 343, i32 2}
!102 = !{ptr @mtd_speedtest_init._entry.57, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mtd_speedtest_init._entry_ptr.59, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/tests/speedtest.c", i32 358, i32 2}
!106 = !{ptr @mtd_speedtest_init._entry.60, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mtd_speedtest_init._entry_ptr.62, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/tests/speedtest.c", i32 361, i32 2}
!110 = !{ptr @mtd_speedtest_init._entry.63, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mtd_speedtest_init._entry_ptr.65, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/tests/speedtest.c", i32 368, i32 2}
!114 = !{ptr @mtd_speedtest_init._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mtd_speedtest_init._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/tests/speedtest.c", i32 373, i32 3}
!118 = !{ptr @mtd_speedtest_init._entry.69, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mtd_speedtest_init._entry_ptr.71, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.73, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/tests/speedtest.c", i32 396, i32 3}
!122 = !{ptr @mtd_speedtest_init._entry.72, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mtd_speedtest_init._entry_ptr.74, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/tests/speedtest.c", i32 399, i32 2}
!126 = !{ptr @mtd_speedtest_init._entry.75, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mtd_speedtest_init._entry_ptr.77, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.79, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/tests/speedtest.c", i32 405, i32 3}
!130 = !{ptr @mtd_speedtest_init._entry.78, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mtd_speedtest_init._entry_ptr.80, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @mtd_speedtest_init._entry.81, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/mtd/tests/speedtest.c", i32 406, i32 2}
!134 = !{ptr @mtd_speedtest_init._entry_ptr.82, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @mtd, !136, !"mtd", i1 false, i1 false}
!136 = !{!"../drivers/mtd/tests/speedtest.c", i32 33, i32 25}
!137 = !{ptr @pgsize, !138, !"pgsize", i1 false, i1 false}
!138 = !{!"../drivers/mtd/tests/speedtest.c", i32 37, i32 12}
!139 = !{ptr @ebcnt, !140, !"ebcnt", i1 false, i1 false}
!140 = !{!"../drivers/mtd/tests/speedtest.c", i32 38, i32 12}
!141 = !{ptr @pgcnt, !142, !"pgcnt", i1 false, i1 false}
!142 = !{!"../drivers/mtd/tests/speedtest.c", i32 39, i32 12}
!143 = !{ptr @iobuf, !144, !"iobuf", i1 false, i1 false}
!144 = !{!"../drivers/mtd/tests/speedtest.c", i32 34, i32 23}
!145 = !{ptr @bbt, !146, !"bbt", i1 false, i1 false}
!146 = !{!"../drivers/mtd/tests/speedtest.c", i32 35, i32 23}
!147 = !{ptr @goodebcnt, !148, !"goodebcnt", i1 false, i1 false}
!148 = !{!"../drivers/mtd/tests/speedtest.c", i32 40, i32 12}
!149 = !{ptr @start, !150, !"start", i1 false, i1 false}
!150 = !{!"../drivers/mtd/tests/speedtest.c", i32 41, i32 16}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!155 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mtdtest_relax._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @mtdtest_relax._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @finish, !159, !"finish", i1 false, i1 false}
!159 = !{!"../drivers/mtd/tests/speedtest.c", i32 41, i32 23}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/tests/speedtest.c", i32 55, i32 3}
!162 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @multiblock_erase._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @multiblock_erase._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{!"sp"}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{i64 2148057404, i64 2148057684, i64 2148058018, i64 2148058352}
!177 = !{i64 571573, i64 571600}
!178 = !{i64 572268, i64 572295, i64 572328, i64 572349, i64 572376, i64 572402}
