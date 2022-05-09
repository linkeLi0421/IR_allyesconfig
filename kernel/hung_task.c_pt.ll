; ModuleID = '/llk/IR_all_yes/kernel/hung_task.c_pt.bc'
source_filename = "../kernel/hung_task.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+reset_hung_task_detector\22, \22a\22\09"
module asm "\09.weak\09__crc_reset_hung_task_detector\09\09\09\09"
module asm "\09.long\09__crc_reset_hung_task_detector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_hung_task_detector:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_hung_task_detector\22\09\09\09\09\09"
module asm "__kstrtabns_reset_hung_task_detector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@sysctl_hung_task_check_count = dso_local global i32 32768, section ".data..read_mostly", align 4
@sysctl_hung_task_timeout_secs = dso_local global i32 120, section ".data..read_mostly", align 4
@sysctl_hung_task_warnings = dso_local global i32 10, section ".data..read_mostly", align 4
@sysctl_hung_task_panic = dso_local global i32 1, section ".data..read_mostly", align 4
@reset_hung_task = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_reset_hung_task_detector = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_hung_task_detector = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_hung_task_detector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_hung_task_detector to i32), ptr @__kstrtab_reset_hung_task_detector, ptr @__kstrtabns_reset_hung_task_detector }, section "___ksymtab_gpl+reset_hung_task_detector", align 4
@__initcall__kmod_hung_task__371_391_hung_task_init4 = internal global ptr @hung_task_init, section ".initcall4.init", align 4
@sysctl_hung_task_check_interval_secs = dso_local global i32 0, section ".data..read_mostly", align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@panic_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hung_task_panic, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hung_task_init.hungtask_pm_notify_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hungtask_pm_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"khungtaskd\00", [21 x i8] zeroinitializer }, align 32
@watchdog_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@did_panic = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@hung_detector_suspended = internal global { i1, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hung_task_show_lock = internal global { i1, [31 x i8] } zeroinitializer, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@check_hung_uninterruptible_tasks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/hung_task.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hung_task_show_all_bt = internal global { i1, [31 x i8] } zeroinitializer, align 32
@hung_task_call_panic = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hung_task: blocked tasks\00", [39 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@check_hung_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013INFO: task %s:%d blocked for more than %ld seconds.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_hung_task\00", [16 x i8] zeroinitializer }, align 32
@check_hung_task._entry_ptr = internal global ptr @check_hung_task._entry, section ".printk_index", align 4
@check_hung_task._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.1, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013      %s %s %.*s\0A\00", [44 x i8] zeroinitializer }, align 32
@check_hung_task._entry_ptr.10 = internal global ptr @check_hung_task._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@check_hung_task._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.1, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013\22echo 0 > /proc/sys/kernel/hung_task_timeout_secs\22 disables this message.\0A\00", [51 x i8] zeroinitializer }, align 32
@check_hung_task._entry_ptr.14 = internal global ptr @check_hung_task._entry.12, section ".printk_index", align 4
@sysctl_hung_task_all_cpu_backtrace = internal global i32 0, section ".data..read_mostly", align 4
@__tracepoint_sched_process_hang = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_process_hang.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@hung_task_sysctls = internal global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.21, ptr @sysctl_hung_task_all_cpu_backtrace, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.22, ptr @sysctl_hung_task_panic, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.23, ptr @sysctl_hung_task_check_count, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.24, ptr @sysctl_hung_task_timeout_secs, i32 4, i16 420, ptr null, ptr @proc_dohung_task_timeout_secs, ptr null, ptr null, ptr @hung_task_timeout_max }, %struct.ctl_table { ptr @.str.25, ptr @sysctl_hung_task_check_interval_secs, i32 4, i16 420, ptr null, ptr @proc_dohung_task_timeout_secs, ptr null, ptr null, ptr @hung_task_timeout_max }, %struct.ctl_table { ptr @.str.26, ptr @sysctl_hung_task_warnings, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr null }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hung_task_sysctls\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hung_task_all_cpu_backtrace\00", [36 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hung_task_panic\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hung_task_check_count\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hung_task_timeout_secs\00", [41 x i8] zeroinitializer }, align 32
@hung_task_timeout_max = internal constant { i32, [28 x i8] } { i32 21474836, [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hung_task_check_interval_secs\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hung_task_warnings\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"reset_hung_task\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 318, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"panic_block\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 86, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"hungtask_pm_notify_nb\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 384, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 386, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"watchdog_task\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 59, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"hung_detector_suspended\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"hung_task_show_lock\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 193, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"hung_task_show_all_bt\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"hung_task_call_panic\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 216, i32 9 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 132, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 134, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 138, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 554, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 723, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"hung_task_sysctls\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 253, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 311, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 256, i32 15 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 266, i32 15 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 275, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 283, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"hung_task_timeout_max\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 252, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 291, i32 15 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [22 x i8] c"../kernel/hung_task.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 299, i32 15 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__initcall__kmod_hung_task__371_391_hung_task_init4, ptr @__ksymtab_reset_hung_task_detector, ptr @check_hung_task._entry, ptr @check_hung_task._entry.12, ptr @check_hung_task._entry.8, ptr @check_hung_task._entry_ptr, ptr @check_hung_task._entry_ptr.10, ptr @check_hung_task._entry_ptr.14, ptr @reset_hung_task, ptr @panic_block, ptr @hung_task_init.hungtask_pm_notify_nb, ptr @.str, ptr @watchdog_task, ptr @hung_detector_suspended, ptr @hung_task_show_lock, ptr @.str.1, ptr @.str.2, ptr @hung_task_show_all_bt, ptr @hung_task_call_panic, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @hung_task_sysctls, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @hung_task_timeout_max, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hung_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_task_init.hungtask_pm_notify_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_detector_suspended to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_task_show_lock to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_task_show_all_bt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_task_call_panic to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_hung_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_hung_task._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_hung_task._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_task_sysctls to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hung_task_timeout_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reset_hung_task_detector() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reset_hung_task, i32 noundef 4) #12
  store volatile i32 1, ptr @reset_hung_task, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hung_task_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @panic_block) #12
  %call1 = tail call i32 @register_pm_notifier(ptr noundef nonnull @hung_task_init.hungtask_pm_notify_nb) #12
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @watchdog, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str) #12
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @wake_up_process(ptr noundef %call2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store ptr %call2, ptr @watchdog_task, align 4
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.19, ptr noundef nonnull @hung_task_sysctls, ptr noundef nonnull @.str.20) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hungtask_pm_notify(ptr nocapture noundef readnone %self, i32 noundef %action, ptr nocapture noundef readnone %hcpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %action, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = and i32 %switch.tableidx, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.idx.cast.not = icmp eq i32 %1, 0
  store i1 %switch.idx.cast.not, ptr @hung_detector_suspended, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog(ptr nocapture noundef readnone %dummy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %4, i32 noundef 0) #12
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end8, %entry
  %hung_last_checked.0.ph = phi i32 [ %75, %if.end8 ], [ %0, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %for.cond.outer
  %5 = load i32, ptr @sysctl_hung_task_timeout_secs, align 4
  %6 = load i32, ptr @sysctl_hung_task_check_interval_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %spec.select = select i1 %cmp, i32 %5, i32 %6
  %7 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.cond.if.end9_crit_edge, label %hung_timeout_jiffies.exit

for.cond.if.end9_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

hung_timeout_jiffies.exit:                        ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %7, 100
  %sub.i = add i32 %mul.i, %hung_last_checked.0.ph
  %add.i = sub i32 %sub.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp3 = icmp slt i32 %add.i, 1
  br i1 %cmp3, label %if.then4, label %hung_timeout_jiffies.exit.if.end9_crit_edge

hung_timeout_jiffies.exit.if.end9_crit_edge:      ; preds = %hung_timeout_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %hung_timeout_jiffies.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reset_hung_task, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr nonnull @reset_hung_task, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @reset_hung_task) #12, !srcloc !101
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.then4
  %.b21 = load i1, ptr @hung_detector_suspended, align 1
  br i1 %.b21, label %land.lhs.true.if.end8_crit_edge, label %if.then7

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %10 = load i32, ptr @sysctl_hung_task_check_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @test_taint(i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %lor.lhs.false.i, label %if.then7.if.end8_crit_edge

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.then7
  %.b.i = load i1, ptr @did_panic, align 4
  br i1 %.b.i, label %lor.lhs.false.i.if.end8_crit_edge, label %if.end.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false.i
  store i1 false, ptr @hung_task_show_lock, align 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i23 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i23, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr106.i = getelementptr i8, ptr %16, i32 -1136
  %cmp.not107.i = icmp eq ptr %add.ptr106.i, @init_task
  br i1 %cmp.not107.i, label %rcu_read_lock.exit.i.unlock.i_crit_edge, label %do.body3.lr.ph.i

rcu_read_lock.exit.i.unlock.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i

do.body3.lr.ph.i:                                 ; preds = %rcu_read_lock.exit.i
  %mul.neg.i.i = mul i32 %5, -100
  br label %do.body3.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %do.end13.i.for.cond.loopexit.i_crit_edge
  %last_break.1.lcssa.i = phi i32 [ %last_break.0108.i, %do.end13.i.for.cond.loopexit.i_crit_edge ], [ %last_break.2.i, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %max_count.1.lcssa.i = phi i32 [ %max_count.0109.i, %do.end13.i.for.cond.loopexit.i_crit_edge ], [ %dec.i, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %tasks.i = getelementptr inbounds %struct.task_struct, ptr %add.ptr110.i, i32 0, i32 50
  %17 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %tasks.i, align 16
  %add.ptr.i = getelementptr i8, ptr %18, i32 -1136
  %cmp.not.i = icmp eq ptr %add.ptr.i, @init_task
  br i1 %cmp.not.i, label %for.cond.loopexit.i.unlock.i_crit_edge, label %for.cond.loopexit.i.do.body3.i_crit_edge

for.cond.loopexit.i.do.body3.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.i

for.cond.loopexit.i.unlock.i_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i

do.body3.i:                                       ; preds = %for.cond.loopexit.i.do.body3.i_crit_edge, %do.body3.lr.ph.i
  %add.ptr110.i = phi ptr [ %add.ptr106.i, %do.body3.lr.ph.i ], [ %add.ptr.i, %for.cond.loopexit.i.do.body3.i_crit_edge ]
  %19 = phi ptr [ %16, %do.body3.lr.ph.i ], [ %18, %for.cond.loopexit.i.do.body3.i_crit_edge ]
  %max_count.0109.i = phi i32 [ %10, %do.body3.lr.ph.i ], [ %max_count.1.lcssa.i, %for.cond.loopexit.i.do.body3.i_crit_edge ]
  %last_break.0108.i = phi i32 [ %11, %do.body3.lr.ph.i ], [ %last_break.1.lcssa.i, %for.cond.loopexit.i.do.body3.i_crit_edge ]
  %call4.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %do.body3.i.do.end13.i_crit_edge

do.body3.i.do.end13.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

land.lhs.true.i:                                  ; preds = %do.body3.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b7480.i = load i1, ptr @check_hung_uninterruptible_tasks.__warned, align 1
  br i1 %.b7480.i, label %land.lhs.true8.i.do.end13.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_hung_uninterruptible_tasks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.2) #12
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge, %do.body3.i.do.end13.i_crit_edge
  %signal.i = getelementptr i8, ptr %19, i32 544
  %20 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %thread_head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn97.i = load volatile ptr, ptr %thread_head.i, align 4
  %cmp25.not100.i = icmp eq ptr %.pn97.i, %thread_head.i
  br i1 %cmp25.not100.i, label %do.end13.i.for.cond.loopexit.i_crit_edge, label %for.body26.lr.ph.i

do.end13.i.for.cond.loopexit.i_crit_edge:         ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body26.lr.ph.i:                               ; preds = %do.end13.i
  %usage.i.i.i = getelementptr i8, ptr %19, i32 -1128
  %thread_pid.i.i.i = getelementptr i8, ptr %19, i32 224
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %for.body26.lr.ph.i
  %.pn103.i = phi ptr [ %.pn97.i, %for.body26.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body26.i_crit_edge ]
  %max_count.1102.i = phi i32 [ %max_count.0109.i, %for.body26.lr.ph.i ], [ %dec.i, %for.inc.i.for.body26.i_crit_edge ]
  %last_break.1101.i = phi i32 [ %last_break.0108.i, %for.body26.lr.ph.i ], [ %last_break.2.i, %for.inc.i.for.body26.i_crit_edge ]
  %t.0104.i = getelementptr i8, ptr %.pn103.i, i32 -1404
  %dec.i = add i32 %max_count.1102.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count.1102.i)
  %tobool27.not.i = icmp eq i32 %max_count.1102.i, 0
  br i1 %tobool27.not.i, label %for.body26.i.unlock.i_crit_edge, label %if.end29.i

for.body26.i.unlock.i_crit_edge:                  ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i

if.end29.i:                                       ; preds = %for.body26.i
  %add.i24 = add i32 %last_break.1101.i, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i25 = sub i32 %add.i24, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i25)
  %cmp30.i = icmp slt i32 %sub.i25, 0
  br i1 %cmp30.i, label %if.then31.i, label %if.end29.i.do.end38.i_crit_edge

if.end29.i.do.end38.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38.i

if.then31.i:                                      ; preds = %if.end29.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #12, !srcloc !104
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !105

if.then31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then31.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_task_struct.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !106

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_task_struct.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then31.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %get_task_struct.exit.i.i

get_task_struct.exit.i.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_task_struct.exit.i.i_crit_edge
  %usage.i11.i.i = getelementptr i8, ptr %.pn103.i, i32 -1396
  %call.i.i.i.i.i.i12.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i11.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i11.i.i, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i11.i.i, ptr %usage.i11.i.i, i32 1, ptr elementtype(i32) %usage.i11.i.i) #12, !srcloc !104
  %asmresult.i.i.i.i.i.i13.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i13.i.i)
  %tobool1.not.i.i.i.i14.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i13.i.i, 0
  br i1 %tobool1.not.i.i.i.i14.i.i, label %get_task_struct.exit.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge, label %if.else.i.i.i.i17.i.i, !prof !105

get_task_struct.exit.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge: ; preds = %get_task_struct.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i19.i.i

if.else.i.i.i.i17.i.i:                            ; preds = %get_task_struct.exit.i.i
  %add.i.i.i.i15.i.i = add i32 %asmresult.i.i.i.i.i.i13.i.i, 1
  %27 = or i32 %add.i.i.i.i15.i.i, %asmresult.i.i.i.i.i.i13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i16.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i16.i.i, label %if.else.i.i.i.i17.i.i.get_task_struct.exit20.i.i_crit_edge, label %if.else.i.i.i.i17.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge, !prof !106

if.else.i.i.i.i17.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge: ; preds = %if.else.i.i.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i19.i.i

if.else.i.i.i.i17.i.i.get_task_struct.exit20.i.i_crit_edge: ; preds = %if.else.i.i.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit20.i.i

if.end15.sink.split.i.i.i.i19.i.i:                ; preds = %if.else.i.i.i.i17.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge, %get_task_struct.exit.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge
  %.sink.i.i.i.i18.i.i = phi i32 [ 2, %get_task_struct.exit.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge ], [ 1, %if.else.i.i.i.i17.i.i.if.end15.sink.split.i.i.i.i19.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i11.i.i, i32 noundef %.sink.i.i.i.i18.i.i) #12
  br label %get_task_struct.exit20.i.i

get_task_struct.exit20.i.i:                       ; preds = %if.end15.sink.split.i.i.i.i19.i.i, %if.else.i.i.i.i17.i.i.get_task_struct.exit20.i.i_crit_edge
  %call.i21.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i21.i.i, label %get_task_struct.exit20.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i24.i.i

get_task_struct.exit20.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %get_task_struct.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %get_task_struct.exit20.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool.not.i23.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool.not.i23.i.i, label %land.lhs.true.i24.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i26.i.i

land.lhs.true.i24.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i26.i.i:                           ; preds = %land.lhs.true.i24.i.i
  %.b4.i25.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25.i.i, label %land.lhs.true2.i26.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i27.i.i

land.lhs.true2.i26.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i27.i.i:                                  ; preds = %land.lhs.true2.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i27.i.i, %land.lhs.true2.i26.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rcu_read_unlock.exit.i.i_crit_edge, %get_task_struct.exit20.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %28 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i28.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i28.i.i to ptr
  %preempt_count.i.i.i.i29.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i29.i.i, align 4
  %sub.i.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i29.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 164, i32 noundef 0) #12
  %call.i30.i.i = tail call i32 @__cond_resched() #12
  %32 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %rcu_read_unlock.exit.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

rcu_read_unlock.exit.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_unlock.exit.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %rcu_read_unlock.exit.i.i.rcu_read_lock.exit.i.i_crit_edge
  %36 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %thread_pid.i.i.i, align 16
  %cmp.i.not.i.i = icmp eq ptr %37, null
  br i1 %cmp.i.not.i.i, label %rcu_read_lock.exit.i.i.land.end.i.i_crit_edge, label %land.rhs.i.i

rcu_read_lock.exit.i.i.land.end.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i31.i.i = getelementptr i8, ptr %.pn103.i, i32 -44
  %38 = ptrtoint ptr %thread_pid.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %thread_pid.i31.i.i, align 16
  %cmp.i32.i.i = icmp ne ptr %39, null
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %rcu_read_lock.exit.i.i.land.end.i.i_crit_edge
  %40 = phi i1 [ false, %rcu_read_lock.exit.i.i.land.end.i.i_crit_edge ], [ %cmp.i32.i.i, %land.rhs.i.i ]
  %call.i.i.i.i.i.i35.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i11.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage.i11.i.i, i32 1, i32 3, i32 1) #12
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i11.i.i, ptr %usage.i11.i.i, i32 1, ptr elementtype(i32) %usage.i11.i.i) #12, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i37.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i36.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i36.i.i, label %if.end5.i.i.i.i.i.i.put_task_struct.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !106

if.end5.i.i.i.i.i.i.put_task_struct.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i11.i.i, i32 noundef 3) #12
  br label %put_task_struct.exit.i.i

if.then.i37.i.i:                                  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  tail call void @__put_task_struct(ptr noundef %t.0104.i) #12
  br label %put_task_struct.exit.i.i

put_task_struct.exit.i.i:                         ; preds = %if.then.i37.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.put_task_struct.exit.i.i_crit_edge
  %call.i.i.i.i.i.i39.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #12
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #12, !srcloc !109
  %asmresult.i.i.i.i.i.i.i40.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i40.i.i)
  %cmp.i.i.i.i41.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i40.i.i, 1
  br i1 %cmp.i.i.i.i41.i.i, label %if.then.i45.i.i, label %if.end5.i.i.i.i43.i.i

if.end5.i.i.i.i43.i.i:                            ; preds = %put_task_struct.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40.i.i)
  %.not.i.i.i.i42.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i40.i.i, 0
  br i1 %.not.i.i.i.i42.i.i, label %if.end5.i.i.i.i43.i.i.rcu_lock_break.exit.i_crit_edge, label %if.then10.i.i.i.i44.i.i, !prof !106

if.end5.i.i.i.i43.i.i.rcu_lock_break.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_lock_break.exit.i

if.then10.i.i.i.i44.i.i:                          ; preds = %if.end5.i.i.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef 3) #12
  br label %rcu_lock_break.exit.i

if.then.i45.i.i:                                  ; preds = %put_task_struct.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  tail call void @__put_task_struct(ptr noundef %add.ptr110.i) #12
  br label %rcu_lock_break.exit.i

rcu_lock_break.exit.i:                            ; preds = %if.then.i45.i.i, %if.then10.i.i.i.i44.i.i, %if.end5.i.i.i.i43.i.i.rcu_lock_break.exit.i_crit_edge
  br i1 %40, label %if.end34.i, label %rcu_lock_break.exit.i.unlock.i_crit_edge

rcu_lock_break.exit.i.unlock.i_crit_edge:         ; preds = %rcu_lock_break.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i

if.end34.i:                                       ; preds = %rcu_lock_break.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  br label %do.end38.i

do.end38.i:                                       ; preds = %if.end34.i, %if.end29.i.do.end38.i_crit_edge
  %last_break.2.i = phi i32 [ %43, %if.end34.i ], [ %last_break.1101.i, %if.end29.i.do.end38.i_crit_edge ]
  %44 = ptrtoint ptr %t.0104.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %t.0104.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp40.i = icmp eq i32 %45, 2
  br i1 %cmp40.i, label %if.then41.i, label %do.end38.i.for.inc.i_crit_edge

do.end38.i.for.inc.i_crit_edge:                   ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then41.i:                                      ; preds = %do.end38.i
  %nvcsw.i.i = getelementptr i8, ptr %.pn103.i, i32 116
  %46 = ptrtoint ptr %nvcsw.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nvcsw.i.i, align 16
  %nivcsw.i.i = getelementptr i8, ptr %.pn103.i, i32 120
  %48 = ptrtoint ptr %nivcsw.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nivcsw.i.i, align 4
  %add.i.i = add i32 %49, %47
  %flags.i.i = getelementptr i8, ptr %.pn103.i, i32 -1392
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %51, 1073807360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i81.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool3.not.i.i = icmp eq i32 %add.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i81.i, i1 true, i1 %tobool3.not.i.i
  br i1 %or.cond.i.i, label %if.then41.i.for.inc.i_crit_edge, label %if.end13.i.i, !prof !111

if.then41.i.for.inc.i_crit_edge:                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end13.i.i:                                     ; preds = %if.then41.i
  %last_switch_count.i.i = getelementptr i8, ptr %.pn103.i, i32 252
  %52 = ptrtoint ptr %last_switch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last_switch_count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %53)
  %cmp.not.i.i = icmp eq i32 %add.i.i, %53
  br i1 %cmp.not.i.i, label %if.end16.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %last_switch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i, ptr %last_switch_count.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %last_switch_time.i.i = getelementptr i8, ptr %.pn103.i, i32 256
  %56 = ptrtoint ptr %last_switch_time.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_switch_time.i.i, align 4
  br label %for.inc.i

if.end16.i.i:                                     ; preds = %if.end13.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %last_switch_time17.i.i = getelementptr i8, ptr %.pn103.i, i32 256
  %58 = ptrtoint ptr %last_switch_time17.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_switch_time17.i.i, align 4
  %add18.neg.i.i = add i32 %57, %mul.neg.i.i
  %sub.i.i = sub i32 %add18.neg.i.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp19.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp19.i.i, label %if.end16.i.i.for.inc.i_crit_edge, label %if.end21.i.i

if.end16.i.i.for.inc.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end21.i.i:                                     ; preds = %if.end16.i.i
  tail call fastcc void @trace_sched_process_hang(ptr noundef %t.0104.i) #12
  %60 = load i32, ptr @sysctl_hung_task_panic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool22.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.end24.i.i_crit_edge, label %if.then23.i.i

if.end21.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @console_verbose() #12
  store i1 true, ptr @hung_task_show_lock, align 1
  store i1 true, ptr @hung_task_call_panic, align 1
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then23.i.i, %if.end21.i.i.if.end24.i.i_crit_edge
  %61 = load i32, ptr @sysctl_hung_task_warnings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool25.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool25.not.i.i, label %if.end24.i.i.if.end54.i.i_crit_edge, label %if.then26.i.i

if.end24.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then26.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp27.i.i = icmp sgt i32 %61, 0
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.then26.i.i.do.end.i.i_crit_edge

if.then26.i.i.do.end.i.i_crit_edge:               ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then28.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i.i = add nsw i32 %61, -1
  store i32 %dec.i.i, ptr @sysctl_hung_task_warnings, align 4
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then28.i.i, %if.then26.i.i.do.end.i.i_crit_edge
  %comm.i.i = getelementptr i8, ptr %.pn103.i, i32 220
  %pid.i.i = getelementptr i8, ptr %.pn103.i, i32 -100
  %62 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %65 = ptrtoint ptr %last_switch_time17.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %last_switch_time17.i.i, align 4
  %sub31.i.i = sub i32 %64, %66
  %div.i.i = udiv i32 %sub31.i.i, 100
  %call.i82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm.i.i, i32 noundef %63, i32 noundef %div.i.i) #15
  %call36.i.i = tail call ptr @print_tainted() #12
  %call41.i.i = tail call i32 @strcspn(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.11) #12
  %call45.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %call36.i.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef %call41.i.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #15
  %call50.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  tail call void @sched_show_task(ptr noundef %t.0104.i) #12
  store i1 true, ptr @hung_task_show_lock, align 1
  %67 = load i32, ptr @sysctl_hung_task_all_cpu_backtrace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool51.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool51.not.i.i, label %do.end.i.i.if.end54.i.i_crit_edge, label %if.then52.i.i

do.end.i.i.if.end54.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then52.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hung_task_show_all_bt, align 1
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then52.i.i, %do.end.i.i.if.end54.i.i_crit_edge, %if.end24.i.i.if.end54.i.i_crit_edge
  tail call void @touch_softlockup_watchdog() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end54.i.i, %if.end16.i.i.for.inc.i_crit_edge, %if.then14.i.i, %if.then41.i.for.inc.i_crit_edge, %do.end38.i.for.inc.i_crit_edge
  %68 = ptrtoint ptr %.pn103.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i = load volatile ptr, ptr %.pn103.i, align 4
  %69 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %signal.i, align 16
  %thread_head24.i = getelementptr inbounds %struct.signal_struct, ptr %70, i32 0, i32 3
  %cmp25.not.i = icmp eq ptr %.pn.i, %thread_head24.i
  br i1 %cmp25.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body26.i_crit_edge

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body26.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

unlock.i:                                         ; preds = %rcu_lock_break.exit.i.unlock.i_crit_edge, %for.body26.i.unlock.i_crit_edge, %for.cond.loopexit.i.unlock.i_crit_edge, %rcu_read_lock.exit.i.unlock.i_crit_edge
  %call.i83.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i83.i, label %unlock.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i86.i

unlock.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i86.i:                              ; preds = %unlock.i
  %call1.i84.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.i)
  %tobool.not.i85.i = icmp eq i32 %call1.i84.i, 0
  br i1 %tobool.not.i85.i, label %land.lhs.true.i86.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i88.i

land.lhs.true.i86.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i88.i:                             ; preds = %land.lhs.true.i86.i
  %.b4.i87.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i87.i, label %land.lhs.true2.i88.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i89.i

land.lhs.true2.i88.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i89.i:                                    ; preds = %land.lhs.true2.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i89.i, %land.lhs.true2.i88.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i86.i.rcu_read_unlock.exit.i_crit_edge, %unlock.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %71 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i.i90.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i90.i to ptr
  %preempt_count.i.i.i.i91.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i91.i, align 4
  %sub.i.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i91.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %.b7377.i = load i1, ptr @hung_task_show_lock, align 1
  br i1 %.b7377.i, label %if.then54.i, label %rcu_read_unlock.exit.i.if.end55.i_crit_edge

rcu_read_unlock.exit.i.if.end55.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then54.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_show_all_locks() #12
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %rcu_read_unlock.exit.i.if.end55.i_crit_edge
  %.b7578.i = load i1, ptr @hung_task_show_all_bt, align 1
  br i1 %.b7578.i, label %if.then57.i, label %if.end55.i.if.end59.i_crit_edge

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 false, ptr @hung_task_show_all_bt, align 1
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end59.i_crit_edge
  %.b7679.i = load i1, ptr @hung_task_call_panic, align 1
  br i1 %.b7679.i, label %if.then61.i, label %if.end59.i.if.end8_crit_edge

if.end59.i.if.end8_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #16
  unreachable

if.end8:                                          ; preds = %if.end59.i.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge, %if.then7.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  br label %for.cond.outer

if.end9:                                          ; preds = %hung_timeout_jiffies.exit.if.end9_crit_edge, %for.cond.if.end9_crit_edge
  %cond.i28 = phi i32 [ %add.i, %hung_timeout_jiffies.exit.if.end9_crit_edge ], [ 2147483647, %for.cond.if.end9_crit_edge ]
  %call10 = tail call i32 @schedule_timeout_interruptible(i32 noundef %cond.i28) #12
  br label %for.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hung_task_panic(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readnone %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @did_panic, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @test_taint(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_show_all_locks() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_process_hang(ptr noundef %tsk) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_hang, i32 0, i32 1), ptr blockaddress(@trace_sched_process_hang, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !112

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !106

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %call42 = tail call i32 @__traceiter_sched_process_hang(ptr noundef null, ptr noundef %tsk) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !106

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_hang, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_hang, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_process_hang.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_sched_process_hang.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 569, ptr noundef nonnull @.str.16) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @print_tainted() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_hang(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dohung_task_timeout_secs(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @watchdog_task, align 4
  %call2 = tail call i32 @wake_up_process(ptr noundef %0) #12
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !64, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @sysctl_hung_task_check_count, !1, !"sysctl_hung_task_check_count", i1 false, i1 false}
!1 = !{!"../kernel/hung_task.c", i32 31, i32 19}
!2 = !{ptr @sysctl_hung_task_timeout_secs, !3, !"sysctl_hung_task_timeout_secs", i1 false, i1 false}
!3 = !{!"../kernel/hung_task.c", i32 45, i32 29}
!4 = !{ptr @sysctl_hung_task_warnings, !5, !"sysctl_hung_task_warnings", i1 false, i1 false}
!5 = !{!"../kernel/hung_task.c", i32 52, i32 19}
!6 = !{ptr @sysctl_hung_task_panic, !7, !"sysctl_hung_task_panic", i1 false, i1 false}
!7 = !{!"../kernel/hung_task.c", i32 75, i32 28}
!8 = !{ptr @__ksymtab_reset_hung_task_detector, !9, !"__ksymtab_reset_hung_task_detector", i1 false, i1 false}
!9 = !{!"../kernel/hung_task.c", i32 324, i32 1}
!10 = !{ptr @__initcall__kmod_hung_task__371_391_hung_task_init4, !11, !"__initcall__kmod_hung_task__371_391_hung_task_init4", i1 false, i1 false}
!11 = !{!"../kernel/hung_task.c", i32 391, i32 1}
!12 = !{ptr @sysctl_hung_task_check_interval_secs, !13, !"sysctl_hung_task_check_interval_secs", i1 false, i1 false}
!13 = !{!"../kernel/hung_task.c", i32 50, i32 29}
!14 = !{ptr @reset_hung_task, !15, !"reset_hung_task", i1 false, i1 false}
!15 = !{!"../kernel/hung_task.c", i32 318, i32 17}
!16 = !{ptr @hung_task_init.hungtask_pm_notify_nb, !17, !"hungtask_pm_notify_nb", i1 false, i1 false}
!17 = !{!"../kernel/hung_task.c", i32 384, i32 2}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/hung_task.c", i32 386, i32 18}
!20 = !{ptr @panic_block, !21, !"panic_block", i1 false, i1 false}
!21 = !{!"../kernel/hung_task.c", i32 86, i32 30}
!22 = distinct !{null, !23, !"did_panic", i1 false, i1 false}
!23 = !{!"../kernel/hung_task.c", i32 54, i32 26}
!24 = distinct !{null, !25, !"hung_detector_suspended", i1 false, i1 false}
!25 = !{!"../kernel/hung_task.c", i32 326, i32 13}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../kernel/hung_task.c", i32 193, i32 2}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/hung_task.c", i32 216, i32 9}
!32 = distinct !{null, !33, !"hung_task_show_lock", i1 false, i1 false}
!33 = !{!"../kernel/hung_task.c", i32 55, i32 13}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/hung_task.c", i32 132, i32 3}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @check_hung_task._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @check_hung_task._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/hung_task.c", i32 134, i32 3}
!45 = !{ptr @check_hung_task._entry.8, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @check_hung_task._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/hung_task.c", i32 138, i32 3}
!50 = !{ptr @check_hung_task._entry.12, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @check_hung_task._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/sched.h", i32 554, i32 1}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sysctl_hung_task_all_cpu_backtrace, !61, !"sysctl_hung_task_all_cpu_backtrace", i1 false, i1 false}
!61 = !{!"../kernel/hung_task.c", i32 66, i32 35}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"hung_task_show_all_bt", i1 false, i1 false}
!66 = !{!"../kernel/hung_task.c", i32 57, i32 13}
!67 = distinct !{null, !68, !"hung_task_call_panic", i1 false, i1 false}
!68 = !{!"../kernel/hung_task.c", i32 56, i32 13}
!69 = !{ptr @watchdog_task, !70, !"watchdog_task", i1 false, i1 false}
!70 = !{!"../kernel/hung_task.c", i32 59, i32 28}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/hung_task.c", i32 311, i32 2}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/hung_task.c", i32 256, i32 15}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/hung_task.c", i32 266, i32 15}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/hung_task.c", i32 275, i32 15}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/hung_task.c", i32 283, i32 15}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/hung_task.c", i32 291, i32 15}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/hung_task.c", i32 299, i32 15}
!86 = !{ptr @hung_task_sysctls, !87, !"hung_task_sysctls", i1 false, i1 false}
!87 = !{!"../kernel/hung_task.c", i32 253, i32 25}
!88 = !{ptr @hung_task_timeout_max, !89, !"hung_task_timeout_max", i1 false, i1 false}
!89 = !{!"../kernel/hung_task.c", i32 252, i32 28}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148932806}
!101 = !{i64 1179674, i64 1179691, i64 1179715, i64 1179741, i64 1179759}
!102 = !{i64 2148933176}
!103 = !{i64 2150008239}
!104 = !{i64 2148674436, i64 2148674468, i64 2148674497, i64 2148674531, i64 2148674562, i64 2148674585}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2150008505}
!108 = !{i64 2148762461}
!109 = !{i64 2148676901, i64 2148676933, i64 2148676962, i64 2148676996, i64 2148677027, i64 2148677050}
!110 = !{i64 2149958696}
!111 = !{!"branch_weights", i32 4001, i32 4000000}
!112 = !{i64 2148273583, i64 2148273588, i64 2148273601, i64 2148273645, i64 2148273679, i64 2148273700}
!113 = !{i64 2155337728}
!114 = !{i64 2155337933}
!115 = !{i64 2150016798}
!116 = !{i64 2150017834}
