; ModuleID = '/llk/IR_all_yes/kernel/watchdog.c_pt.bc'
source_filename = "../kernel/watchdog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+touch_softlockup_watchdog\22, \22a\22\09"
module asm "\09.weak\09__crc_touch_softlockup_watchdog\09\09\09\09"
module asm "\09.long\09__crc_touch_softlockup_watchdog\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touch_softlockup_watchdog:\09\09\09\09\09"
module asm "\09.asciz \09\22touch_softlockup_watchdog\22\09\09\09\09\09"
module asm "__kstrtabns_touch_softlockup_watchdog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@watchdog_user_enabled = dso_local global i32 1, section ".data..read_mostly", align 4
@nmi_watchdog_user_enabled = dso_local global i32 0, section ".data..read_mostly", align 4
@soft_watchdog_user_enabled = dso_local global i32 1, section ".data..read_mostly", align 4
@watchdog_thresh = dso_local global i32 10, section ".data..read_mostly", align 4
@watchdog_cpumask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@watchdog_cpumask_bits = dso_local global { ptr, [28 x i8] } { ptr @watchdog_cpumask, [28 x i8] zeroinitializer }, align 32
@softlockup_panic = dso_local global i32 1, section ".data..read_mostly", align 4
@__setup_str_nowatchdog_setup = internal constant [11 x i8] c"nowatchdog\00", section ".init.rodata", align 1
@__setup_nowatchdog_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_nowatchdog_setup, ptr @nowatchdog_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_nosoftlockup_setup = internal constant [13 x i8] c"nosoftlockup\00", section ".init.rodata", align 1
@__setup_nosoftlockup_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_nosoftlockup_setup, ptr @nosoftlockup_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_watchdog_thresh_setup = internal constant [17 x i8] c"watchdog_thresh=\00", section ".init.rodata", align 1
@__setup_watchdog_thresh_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_watchdog_thresh_setup, ptr @watchdog_thresh_setup, i32 0 }, section ".init.setup", align 4
@watchdog_report_ts = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_touch_softlockup_watchdog = external dso_local constant [0 x i8], align 1
@__kstrtabns_touch_softlockup_watchdog = external dso_local constant [0 x i8], align 1
@__ksymtab_touch_softlockup_watchdog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touch_softlockup_watchdog to i32), ptr @__kstrtab_touch_softlockup_watchdog, ptr @__kstrtabns_touch_softlockup_watchdog }, section "___ksymtab+touch_softlockup_watchdog", align 4
@watchdog_allowed_mask = internal global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@softlockup_touch_sync = weak dso_local global i8 0, section ".data..percpu", align 1
@hrtimer_interrupts = weak dso_local global i32 0, section ".data..percpu", align 4
@hrtimer_interrupts_saved = weak dso_local global i32 0, section ".data..percpu", align 4
@watchdog_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @watchdog_mutex, i64 52), ptr getelementptr (i8, ptr @watchdog_mutex, i64 52) }, ptr @watchdog_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@watchdog_enabled = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@nmi_watchdog_available = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@lockup_detector_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016watchdog: Disabling watchdog on nohz_full cores by default\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lockup_detector_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/watchdog.c\00", [46 x i8] zeroinitializer }, align 32
@lockup_detector_init._entry_ptr = internal global ptr @lockup_detector_init._entry, section ".printk_index", align 4
@sysctl_softlockup_all_cpu_backtrace = dso_local global i32 0, section ".data..read_mostly", align 4
@__pcpu_unique_watchdog_touch_ts = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@watchdog_touch_ts = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_watchdog_report_ts = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_watchdog_hrtimer = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@watchdog_hrtimer = weak dso_local global %struct.hrtimer zeroinitializer, section ".data..percpu", align 8
@__pcpu_unique_softlockup_touch_sync = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_hrtimer_interrupts = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_hrtimer_interrupts_saved = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_softlockup_completion = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@softlockup_completion = weak dso_local global %struct.completion zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_softlockup_stop_work = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@softlockup_stop_work = weak dso_local global %struct.cpu_stop_work zeroinitializer, section ".data..percpu", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@watchdog_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sample_period = internal unnamed_addr global i64 0, section ".data..read_mostly", align 8
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@soft_lockup_nmi_warn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@watchdog_timer_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\010watchdog: BUG: soft lockup - CPU#%d stuck for %us! [%s:%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"watchdog_timer_fn\00", [46 x i8] zeroinitializer }, align 32
@watchdog_timer_fn._entry_ptr = internal global ptr @watchdog_timer_fn._entry, section ".printk_index", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"softlockup: hung tasks\00", [41 x i8] zeroinitializer }, align 32
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@watchdog_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"watchdog_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"watchdog_mutex\00", [17 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@softlockup_initialized = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@watchdog_sysctls = internal global { [8 x %struct.ctl_table], [64 x i8] } { [8 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.15, ptr @watchdog_user_enabled, i32 4, i16 420, ptr null, ptr @proc_watchdog, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.16, ptr @watchdog_thresh, i32 4, i16 420, ptr null, ptr @proc_watchdog_thresh, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @sixty }, %struct.ctl_table { ptr @.str.17, ptr @nmi_watchdog_user_enabled, i32 4, i16 292, ptr null, ptr @proc_nmi_watchdog, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.18, ptr @watchdog_cpumask_bits, i32 4, i16 420, ptr null, ptr @proc_watchdog_cpumask, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr @soft_watchdog_user_enabled, i32 4, i16 420, ptr null, ptr @proc_soft_watchdog, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.20, ptr @softlockup_panic, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.21, ptr @sysctl_softlockup_all_cpu_backtrace, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"watchdog_sysctls\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"watchdog_thresh\00", [16 x i8] zeroinitializer }, align 32
@sixty = internal constant { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nmi_watchdog\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"watchdog_cpumask\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"soft_watchdog\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"softlockup_panic\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"softlockup_all_cpu_backtrace\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"watchdog_cpumask_bits\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 48, i32 16 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"watchdog_mutex\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 848, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 108, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 87, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"soft_lockup_nmi_warn\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 184, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 427, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 444, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 30, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"watchdog_sysctls\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 746, i32 25 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 839, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 748, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 757, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 744, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 766, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 775, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 783, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 792, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [21 x i8] c"../kernel/watchdog.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 802, i32 15 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_touch_softlockup_watchdog, ptr @__setup_nosoftlockup_setup, ptr @__setup_nowatchdog_setup, ptr @__setup_watchdog_thresh_setup, ptr @lockup_detector_init._entry, ptr @lockup_detector_init._entry_ptr, ptr @watchdog_timer_fn._entry, ptr @watchdog_timer_fn._entry_ptr, ptr @watchdog_cpumask_bits, ptr @watchdog_mutex, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @soft_lockup_nmi_warn, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @watchdog_sysctls, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sixty, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_cpumask_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockup_detector_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_lockup_nmi_warn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_timer_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_sysctls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixty to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @watchdog_nmi_enable(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @watchdog_nmi_disable(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @watchdog_nmi_probe() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @watchdog_nmi_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @watchdog_nmi_start() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nowatchdog_setup(ptr nocapture noundef readnone %str) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @watchdog_user_enabled, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nosoftlockup_setup(ptr nocapture noundef readnone %str) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @soft_watchdog_user_enabled, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_thresh_setup(ptr noundef %str) #1 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @watchdog_thresh) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @touch_softlockup_watchdog_sched() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @watchdog_report_ts to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @touch_softlockup_watchdog() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @watchdog_report_ts to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  tail call void @wq_watchdog_touch(i32 noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_watchdog_touch(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @touch_all_softlockup_watchdogs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @watchdog_allowed_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call7 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call5, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @watchdog_report_ts to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  tail call void @wq_watchdog_touch(i32 noundef %call7) #12
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef nonnull @watchdog_allowed_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @touch_softlockup_watchdog_sync() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @softlockup_touch_sync to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %6, align 1
  %8 = load i32, ptr %cpu, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %10, ptrtoint (ptr @watchdog_report_ts to i32)
  %11 = inttoptr i32 %add23 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_hardlockup() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @hrtimer_interrupts to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add26 = add i32 %5, ptrtoint (ptr @hrtimer_interrupts_saved to i32)
  %9 = inttoptr i32 %add26 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp = icmp eq i32 %11, %8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %8, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockup_detector_online_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !127

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div1.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr @watchdog_allowed_mask, i32 %div1.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.if.end_crit_edge, label %if.then

cpumask_test_cpu.exit.if.end_crit_edge:           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @watchdog_enable(i32 noundef %cpu)
  br label %if.end

if.end:                                           ; preds = %if.then, %cpumask_test_cpu.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @watchdog_enable(i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @watchdog_hrtimer to i32)
  %6 = inttoptr i32 %add to ptr
  %add13 = add i32 %5, ptrtoint (ptr @softlockup_completion to i32)
  %7 = inttoptr i32 %add13 to ptr
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp.not = icmp eq i32 %3, %cpu
  br i1 %cmp.not, label %entry.if.end46_crit_edge, label %land.rhs

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.rhs:                                         ; preds = %entry
  %.b65 = load i1, ptr @watchdog_enable.__already_done, align 1
  br i1 %.b65, label %land.rhs.if.end46_crit_edge, label %if.then, !prof !127

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @watchdog_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 455, i32 noundef 9, ptr noundef null) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then, %land.rhs.if.end46_crit_edge, %entry.if.end46_crit_edge
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %7, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #12
  tail call void @complete(ptr noundef %7) #12
  tail call void @hrtimer_init(ptr noundef %6, i32 noundef 1, i32 noundef 9) #12
  %function = getelementptr inbounds %struct.hrtimer, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @watchdog_timer_fn, ptr %function, align 8
  %10 = load i64, ptr @sample_period, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %6, i64 noundef %10, i64 noundef 0, i32 noundef 11) #12
  %call.i.i = tail call i64 @running_clock() #12
  %shr.i.i = lshr i64 %call.i.i, 30
  %conv.i.i = trunc i64 %shr.i.i to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @watchdog_touch_ts to i32)
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i.i, ptr %17, align 4
  %call.i.i.i = tail call i64 @running_clock() #12
  %shr.i.i.i = lshr i64 %call.i.i.i, 30
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, ptrtoint (ptr @watchdog_report_ts to i32)
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i.i.i, ptr %25, align 4
  %27 = load i32, ptr @watchdog_enabled, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.end46.if.end58_crit_edge, label %if.then56

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call i32 @watchdog_nmi_enable(i32 noundef %cpu)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end46.if.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockup_detector_offline_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !127

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div1.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr @watchdog_allowed_mask, i32 %div1.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.if.end_crit_edge, label %if.then

cpumask_test_cpu.exit.if.end_crit_edge:           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cpumask_test_cpu.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i2 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i2 to ptr
  %cpu2.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu2.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cpu)
  %cmp.not.i = icmp eq i32 %8, %cpu
  br i1 %cmp.not.i, label %if.then.watchdog_disable.exit_crit_edge, label %land.rhs.i

if.then.watchdog_disable.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %watchdog_disable.exit

land.rhs.i:                                       ; preds = %if.then
  %.b58.i = load i1, ptr @watchdog_disable.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.watchdog_disable.exit_crit_edge, label %if.then.i, !prof !127

land.rhs.i.watchdog_disable.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %watchdog_disable.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @watchdog_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 480, i32 noundef 9, ptr noundef null) #12
  br label %watchdog_disable.exit

watchdog_disable.exit:                            ; preds = %if.then.i, %land.rhs.i.watchdog_disable.exit_crit_edge, %if.then.watchdog_disable.exit_crit_edge
  %add.i = add i32 %10, ptrtoint (ptr @watchdog_hrtimer to i32)
  %11 = inttoptr i32 %add.i to ptr
  tail call void @watchdog_nmi_disable(i32 noundef %cpu) #12
  %call43.i = tail call i32 @hrtimer_cancel(ptr noundef %11) #12
  %12 = ptrtoint ptr %cpu2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu2.i, align 4
  %arrayidx53.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx53.i, align 4
  %add54.i = add i32 %15, ptrtoint (ptr @softlockup_completion to i32)
  %16 = inttoptr i32 %add54.i to ptr
  tail call void @wait_for_completion(ptr noundef %16) #12
  br label %if.end

if.end:                                           ; preds = %watchdog_disable.exit, %cpumask_test_cpu.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lockup_detector_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__lockup_detector_cleanup.exit_crit_edge, label %land.rhs.i

entry.__lockup_detector_cleanup.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__lockup_detector_cleanup.exit

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @watchdog_mutex, i32 0, i32 5), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__lockup_detector_cleanup.exit_crit_edge, !prof !128

land.rhs.i.__lockup_detector_cleanup.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__lockup_detector_cleanup.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %__lockup_detector_cleanup.exit

__lockup_detector_cleanup.exit:                   ; preds = %do.end.i, %land.rhs.i.__lockup_detector_cleanup.exit_crit_edge, %entry.__lockup_detector_cleanup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @lockup_detector_soft_poweroff() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @watchdog_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_watchdog(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_watchdog_common(i32 noundef 3, ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_watchdog_common(i32 noundef %which, ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load i32, ptr @watchdog_enabled, align 4
  %and = and i32 %2, %which
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %1, align 4
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef 0, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  br label %if.end10

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %call1 = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.not = icmp eq i32 %5, %7
  br i1 %cmp7.not, label %land.lhs.true.if.end10_crit_edge, label %if.end.i.i.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i.i.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef nonnull @watchdog_cpumask, ptr noundef nonnull @watchdog_cpumask, ptr noundef nonnull @__cpu_possible_mask, i32 noundef %8) #12
  tail call fastcc void @lockup_detector_reconfigure() #12
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i.i, %land.lhs.true.if.end10_crit_edge, %do.end.if.end10_crit_edge, %if.then
  %err.0 = phi i32 [ %call1, %do.end.if.end10_crit_edge ], [ 0, %if.end.i.i.i ], [ 0, %land.lhs.true.if.end10_crit_edge ], [ %call, %if.then ]
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_mutex) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_nmi_watchdog(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @nmi_watchdog_available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %.b
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @proc_watchdog_common(i32 noundef 1, ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_soft_watchdog(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_watchdog_common(i32 noundef 2, ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_watchdog_thresh(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_mutex, i32 noundef 0) #12
  %0 = load volatile i32, ptr @watchdog_thresh, align 4
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load volatile i32, ptr @watchdog_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %land.lhs.true2.if.end_crit_edge, label %if.end.i.i.i

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i.i:                                     ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef nonnull @watchdog_cpumask, ptr noundef nonnull @watchdog_cpumask, ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #12
  tail call fastcc void @lockup_detector_reconfigure() #12
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_mutex) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_watchdog_cpumask(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_mutex, i32 noundef 0) #12
  %call = tail call i32 @proc_do_large_bitmap(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.end.i.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef nonnull @watchdog_cpumask, ptr noundef nonnull @watchdog_cpumask, ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #12
  tail call fastcc void @lockup_detector_reconfigure() #12
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_mutex) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_large_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lockup_detector_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call ptr @housekeeping_cpumask(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %0, 31
  %1 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %1, 536870908
  %2 = call ptr @memcpy(ptr @watchdog_cpumask, ptr %call2, i32 %mul.i.i)
  %call3 = tail call i32 @watchdog_nmi_probe() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nmi_watchdog_available, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  tail call fastcc void @lockup_detector_setup() #16
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.13, ptr noundef nonnull @watchdog_sysctls, ptr noundef nonnull @.str.14) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockup_detector_setup() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @watchdog_enabled, align 4
  %0 = load i32, ptr @watchdog_user_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.lockup_detector_update_enable.exit_crit_edge, label %if.end.i

entry.lockup_detector_update_enable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lockup_detector_update_enable.exit

if.end.i:                                         ; preds = %entry
  %.b.i = load i1, ptr @nmi_watchdog_available, align 4
  br i1 %.b.i, label %land.lhs.true.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %1 = load i32, ptr @nmi_watchdog_user_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end4.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 1, ptr @watchdog_enabled, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %2 = load i32, ptr @soft_watchdog_user_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not.i = icmp eq i32 %2, 0
  br i1 %tobool5.not.i, label %if.end4.i.lockup_detector_update_enable.exit_crit_edge, label %if.then6.i

if.end4.i.lockup_detector_update_enable.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lockup_detector_update_enable.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = load i32, ptr @watchdog_enabled, align 4
  %or7.i = or i32 %3, 2
  store i32 %or7.i, ptr @watchdog_enabled, align 4
  br label %lockup_detector_update_enable.exit

lockup_detector_update_enable.exit:               ; preds = %if.then6.i, %if.end4.i.lockup_detector_update_enable.exit_crit_edge, %entry.lockup_detector_update_enable.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_mutex, i32 noundef 0) #12
  tail call fastcc void @lockup_detector_reconfigure()
  store i1 true, ptr @softlockup_initialized, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_timer_fn(ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = load i32, ptr @sysctl_softlockup_all_cpu_backtrace, align 4
  %10 = load i32, ptr @watchdog_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i173 = add i32 %5, ptrtoint (ptr @hrtimer_interrupts to i32)
  %11 = inttoptr i32 %add.i173 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add7.i = add i32 %13, 1
  store i32 %add7.i, ptr %11, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @softlockup_completion to i32)
  %20 = inttoptr i32 %add to ptr
  %call3 = tail call zeroext i1 @completion_done(ptr noundef %20) #12
  br i1 %call3, label %do.body5, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %24, ptrtoint (ptr @softlockup_completion to i32)
  %25 = inttoptr i32 %add15 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %27 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %29, ptrtoint (ptr @softlockup_stop_work to i32)
  %30 = inttoptr i32 %add28 to ptr
  %call29 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %27, ptr noundef nonnull @softlockup_fn, ptr noundef null, ptr noundef %30) #12
  br label %if.end30

if.end30:                                         ; preds = %do.body5, %if.end.if.end30_crit_edge
  %31 = load i64, ptr @sample_period, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 3
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %35() #12
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrtimer, i64 noundef %call.i, i64 noundef %31) #12
  %call.i174 = tail call i64 @running_clock() #12
  %shr.i = lshr i64 %call.i174, 30
  %conv.i = trunc i64 %shr.i to i32
  %36 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu, align 4
  %arrayidx48 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %39, ptrtoint (ptr @watchdog_report_ts to i32)
  %40 = inttoptr i32 %add49 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp = icmp eq i32 %42, -1
  br i1 %cmp, label %if.then50, label %if.end102

if.then50:                                        ; preds = %if.end30
  %add67 = add i32 %39, ptrtoint (ptr @softlockup_touch_sync to i32)
  %43 = inttoptr i32 %add67 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool68.not = icmp eq i8 %45, 0
  br i1 %tobool68.not, label %if.then50.if.end101_crit_edge, label %if.then79, !prof !127

if.then50.if.end101_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then79:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %43, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then79, %if.then50.if.end101_crit_edge
  %call.i.i = tail call i64 @running_clock() #12
  %shr.i.i = lshr i64 %call.i.i, 30
  %conv.i.i = trunc i64 %shr.i.i to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i175 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i175 to ptr
  %cpu.i176 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i176 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i176, align 4
  %arrayidx.i177 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i177, align 4
  %add.i178 = add i32 %52, ptrtoint (ptr @watchdog_report_ts to i32)
  %53 = inttoptr i32 %add.i178 to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv.i.i, ptr %53, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.end30
  %add120 = add i32 %39, ptrtoint (ptr @watchdog_touch_ts to i32)
  %55 = inttoptr i32 %add120 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = load i32, ptr @watchdog_enabled, align 4
  %and.i179 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i, label %if.end102.cleanup_crit_edge, label %land.lhs.true.i

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end102
  %59 = load i32, ptr @watchdog_thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool1.not.i = icmp eq i32 %59, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %mul.i.i = shl i32 %59, 1
  %add.i180 = sub i32 %42, %conv.i
  %sub.i = add i32 %add.i180, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  %sub3.i = sub i32 %conv.i, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv.i)
  %tobool123.not = icmp eq i32 %57, %conv.i
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool123.not
  br i1 %or.cond, label %if.then.i.cleanup_crit_edge, label %if.then130, !prof !130

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then130:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool131.not = icmp eq i32 %9, 0
  br i1 %tobool131.not, label %if.then130.if.end136_crit_edge, label %if.then132

if.then130.if.end136_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then132:                                       ; preds = %if.then130
  %call133 = tail call fastcc zeroext i1 @test_and_set_bit_lock()
  br i1 %call133, label %if.then132.cleanup_crit_edge, label %if.then132.if.end136_crit_edge

if.then132.if.end136_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end136:                                        ; preds = %if.then132.if.end136_crit_edge, %if.then130.if.end136_crit_edge
  %call.i.i181 = tail call i64 @running_clock() #12
  %shr.i.i182 = lshr i64 %call.i.i181, 30
  %conv.i.i183 = trunc i64 %shr.i.i182 to i32
  %60 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i184 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i184 to ptr
  %cpu.i185 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i185, align 4
  %arrayidx.i186 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i186, align 4
  %add.i187 = add i32 %65, ptrtoint (ptr @watchdog_report_ts to i32)
  %66 = inttoptr i32 %add.i187 to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i.i183, ptr %66, align 4
  %68 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu, align 4
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid.i, align 8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %69, i32 noundef %sub3.i, ptr noundef %comm, i32 noundef %73) #17
  tail call void @print_modules() #12
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  tail call void @print_irqtrace_events(ptr noundef %75) #12
  %tobool150.not = icmp eq ptr %8, null
  br i1 %tobool150.not, label %if.else, label %if.then151

if.then151:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @show_regs(ptr noundef nonnull %8) #12
  br label %if.end152

if.else:                                          ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_stack() #17
  br label %if.end152

if.end152:                                        ; preds = %if.else, %if.then151
  br i1 %tobool131.not, label %if.end152.if.end156_crit_edge, label %if.then154

if.end152.if.end156_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext true) #12
  tail call fastcc void @clear_bit_unlock()
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.end152.if.end156_crit_edge
  tail call void @add_taint(i32 noundef 14, i32 noundef 0) #12
  %76 = load i32, ptr @softlockup_panic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool157.not = icmp eq i32 %76, 0
  br i1 %tobool157.not, label %if.end156.cleanup_crit_edge, label %if.then158

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then158:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9) #18
  unreachable

cleanup:                                          ; preds = %if.end156.cleanup_crit_edge, %if.then132.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end101, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end101 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then132.cleanup_crit_edge ], [ 1, %if.end156.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.end102.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softlockup_fn(ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @running_clock() #12
  %shr.i.i = lshr i64 %call.i.i, 30
  %conv.i.i = trunc i64 %shr.i.i to i32
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @watchdog_touch_ts to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i.i, ptr %6, align 4
  %call.i.i.i = tail call i64 @running_clock() #12
  %shr.i.i.i = lshr i64 %call.i.i.i, 30
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, ptrtoint (ptr @watchdog_report_ts to i32)
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i.i.i, ptr %14, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add = add i32 %21, ptrtoint (ptr @softlockup_completion to i32)
  %22 = inttoptr i32 %add to ptr
  tail call void @complete(ptr noundef %22) #12
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @test_and_set_bit_lock() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @soft_lockup_nmi_warn, i32 noundef 4) #12
  %0 = load volatile i32, ptr @soft_lockup_nmi_warn, align 4
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.arch_test_and_set_bit_lock.exit_crit_edge

entry.arch_test_and_set_bit_lock.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @llvm.prefetch.p0(ptr nonnull @soft_lockup_nmi_warn, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @soft_lockup_nmi_warn, ptr nonnull @soft_lockup_nmi_warn, i32 1, ptr nonnull elementtype(i32) @soft_lockup_nmi_warn) #12, !srcloc !131
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !132
  %and1.i = and i32 %asmresult.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %phi.cmp = icmp ne i32 %and1.i, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %if.end.i, %entry.arch_test_and_set_bit_lock.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry.arch_test_and_set_bit_lock.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_irqtrace_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_bit_unlock() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @soft_lockup_nmi_warn, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr nonnull @soft_lockup_nmi_warn, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @soft_lockup_nmi_warn, ptr nonnull @soft_lockup_nmi_warn, i32 1, ptr nonnull elementtype(i32) @soft_lockup_nmi_warn) #12, !srcloc !134
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @running_clock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockup_detector_reconfigure() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #12
  tail call void @watchdog_nmi_stop()
  %.b4.i = load i1, ptr @softlockup_initialized, align 1
  br i1 %.b4.i, label %for.cond.preheader.i, label %entry.softlockup_stop_all.exit_crit_edge

entry.softlockup_stop_all.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %softlockup_stop_all.exit

for.cond.preheader.i:                             ; preds = %entry
  %call5.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @watchdog_allowed_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %0)
  %cmp6.i = icmp ult i32 %call5.i, %0
  br i1 %cmp6.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call7.i = phi i32 [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %call5.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call1.i = tail call i32 @smp_call_on_cpu(i32 noundef %call7.i, ptr noundef nonnull @softlockup_stop_fn, ptr noundef null, i1 noundef zeroext false) #12
  %call.i = tail call i32 @cpumask_next(i32 noundef %call7.i, ptr noundef nonnull @watchdog_allowed_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %1, %for.body.i.for.end.i_crit_edge ]
  %sub.i.i.i = add i32 %.lcssa.i, 31
  %2 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %2, 536870908
  %3 = call ptr @memset(ptr @watchdog_allowed_mask, i32 0, i32 %mul.i.i.i)
  br label %softlockup_stop_all.exit

softlockup_stop_all.exit:                         ; preds = %for.end.i, %entry.softlockup_stop_all.exit_crit_edge
  %4 = load i32, ptr @watchdog_thresh, align 4
  %mul.i.i = shl i32 %4, 1
  %conv.i = sext i32 %mul.i.i to i64
  %mul.i = mul nsw i64 %conv.i, 200000000
  store i64 %mul.i, ptr @sample_period, align 8
  store i32 0, ptr @watchdog_enabled, align 4
  %5 = load i32, ptr @watchdog_user_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %softlockup_stop_all.exit.if.end_crit_edge, label %if.end.i

softlockup_stop_all.exit.if.end_crit_edge:        ; preds = %softlockup_stop_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %softlockup_stop_all.exit
  %.b.i = load i1, ptr @nmi_watchdog_available, align 4
  br i1 %.b.i, label %land.lhs.true.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = load i32, ptr @nmi_watchdog_user_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end4.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 1, ptr @watchdog_enabled, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %7 = load i32, ptr @soft_watchdog_user_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i = icmp eq i32 %7, 0
  %.pr = load i32, ptr @watchdog_enabled, align 4
  br i1 %tobool5.not.i, label %lockup_detector_update_enable.exit, label %lockup_detector_update_enable.exit.thread12

lockup_detector_update_enable.exit.thread12:      ; preds = %if.end4.i
  %or7.i = or i32 %.pr, 2
  store i32 %or7.i, ptr @watchdog_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.old = icmp eq i32 %4, 0
  br i1 %tobool1.not.old, label %lockup_detector_update_enable.exit.thread12.if.end_crit_edge, label %lockup_detector_update_enable.exit.thread12.if.then_crit_edge

lockup_detector_update_enable.exit.thread12.if.then_crit_edge: ; preds = %lockup_detector_update_enable.exit.thread12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lockup_detector_update_enable.exit.thread12.if.end_crit_edge: ; preds = %lockup_detector_update_enable.exit.thread12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lockup_detector_update_enable.exit:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %lockup_detector_update_enable.exit.if.end_crit_edge, label %lockup_detector_update_enable.exit.if.then_crit_edge

lockup_detector_update_enable.exit.if.then_crit_edge: ; preds = %lockup_detector_update_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lockup_detector_update_enable.exit.if.end_crit_edge: ; preds = %lockup_detector_update_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lockup_detector_update_enable.exit.if.then_crit_edge, %lockup_detector_update_enable.exit.thread12.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i2 = add i32 %8, 31
  %9 = lshr i32 %sub.i.i.i2, 3
  %mul.i.i.i3 = and i32 %9, 536870908
  %10 = call ptr @memcpy(ptr @watchdog_allowed_mask, ptr @watchdog_cpumask, i32 %mul.i.i.i3)
  %call4.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @watchdog_allowed_mask) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %8)
  %cmp5.i = icmp ult i32 %call4.i, %8
  br i1 %cmp5.i, label %if.then.for.body.i7_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.for.body.i7_crit_edge:                    ; preds = %if.then
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.body.i7.for.body.i7_crit_edge, %if.then.for.body.i7_crit_edge
  %call6.i = phi i32 [ %call.i5, %for.body.i7.for.body.i7_crit_edge ], [ %call4.i, %if.then.for.body.i7_crit_edge ]
  %call1.i4 = tail call i32 @smp_call_on_cpu(i32 noundef %call6.i, ptr noundef nonnull @softlockup_start_fn, ptr noundef null, i1 noundef zeroext false) #12
  %call.i5 = tail call i32 @cpumask_next(i32 noundef %call6.i, ptr noundef nonnull @watchdog_allowed_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i6 = icmp ult i32 %call.i5, %11
  br i1 %cmp.i6, label %for.body.i7.for.body.i7_crit_edge, label %for.body.i7.if.end_crit_edge

for.body.i7.if.end_crit_edge:                     ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i7.for.body.i7_crit_edge:                ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i7

if.end:                                           ; preds = %for.body.i7.if.end_crit_edge, %if.then.if.end_crit_edge, %lockup_detector_update_enable.exit.if.end_crit_edge, %lockup_detector_update_enable.exit.thread12.if.end_crit_edge, %softlockup_stop_all.exit.if.end_crit_edge
  tail call void @watchdog_nmi_start()
  tail call void @cpus_read_unlock() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i9 = icmp eq i32 %12, 0
  br i1 %tobool.not.i9, label %if.end.__lockup_detector_cleanup.exit_crit_edge, label %land.rhs.i

if.end.__lockup_detector_cleanup.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__lockup_detector_cleanup.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @watchdog_mutex, i32 0, i32 5), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__lockup_detector_cleanup.exit_crit_edge, !prof !128

land.rhs.i.__lockup_detector_cleanup.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__lockup_detector_cleanup.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %__lockup_detector_cleanup.exit

__lockup_detector_cleanup.exit:                   ; preds = %do.end.i, %land.rhs.i.__lockup_detector_cleanup.exit_crit_edge, %if.end.__lockup_detector_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_on_cpu(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softlockup_stop_fn(ptr nocapture noundef readnone %data) #0 align 64 {
watchdog_disable.exit:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @watchdog_hrtimer to i32)
  %6 = inttoptr i32 %add.i to ptr
  tail call void @watchdog_nmi_disable(i32 noundef %3) #12
  %call43.i = tail call i32 @hrtimer_cancel(ptr noundef %6) #12
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx53.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx53.i, align 4
  %add54.i = add i32 %10, ptrtoint (ptr @softlockup_completion to i32)
  %11 = inttoptr i32 %add54.i to ptr
  tail call void @wait_for_completion(ptr noundef %11) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softlockup_start_fn(ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  tail call fastcc void @watchdog_enable(i32 noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !67, !69, !70, !72, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !93, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @watchdog_user_enabled, !1, !"watchdog_user_enabled", i1 false, i1 false}
!1 = !{!"../kernel/watchdog.c", i32 41, i32 19}
!2 = !{ptr @nmi_watchdog_user_enabled, !3, !"nmi_watchdog_user_enabled", i1 false, i1 false}
!3 = !{!"../kernel/watchdog.c", i32 42, i32 19}
!4 = !{ptr @soft_watchdog_user_enabled, !5, !"soft_watchdog_user_enabled", i1 false, i1 false}
!5 = !{!"../kernel/watchdog.c", i32 43, i32 19}
!6 = !{ptr @watchdog_thresh, !7, !"watchdog_thresh", i1 false, i1 false}
!7 = !{!"../kernel/watchdog.c", i32 44, i32 19}
!8 = !{ptr @watchdog_cpumask_bits, !9, !"watchdog_cpumask_bits", i1 false, i1 false}
!9 = !{!"../kernel/watchdog.c", i32 48, i32 16}
!10 = !{ptr @softlockup_panic, !11, !"softlockup_panic", i1 false, i1 false}
!11 = !{!"../kernel/watchdog.c", i32 170, i32 28}
!12 = !{ptr @__setup_nowatchdog_setup, !13, !"__setup_nowatchdog_setup", i1 false, i1 false}
!13 = !{!"../kernel/watchdog.c", i32 191, i32 1}
!14 = !{ptr @__setup_nosoftlockup_setup, !15, !"__setup_nosoftlockup_setup", i1 false, i1 false}
!15 = !{!"../kernel/watchdog.c", i32 198, i32 1}
!16 = !{ptr @__setup_watchdog_thresh_setup, !17, !"__setup_watchdog_thresh_setup", i1 false, i1 false}
!17 = !{!"../kernel/watchdog.c", i32 205, i32 1}
!18 = !{ptr @__ksymtab_touch_softlockup_watchdog, !19, !"__ksymtab_touch_softlockup_watchdog", i1 false, i1 false}
!19 = !{!"../kernel/watchdog.c", i32 278, i32 1}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/watchdog.c", i32 301, i32 2}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/watchdog.c", i32 320, i32 24}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/watchdog.c", i32 848, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lockup_detector_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @lockup_detector_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @watchdog_enabled, !31, !"watchdog_enabled", i1 false, i1 false}
!31 = !{!"../kernel/watchdog.c", i32 40, i32 29}
!32 = distinct !{null, !33, !"nmi_watchdog_available", i1 false, i1 false}
!33 = !{!"../kernel/watchdog.c", i32 45, i32 26}
!34 = !{ptr @watchdog_cpumask, !35, !"watchdog_cpumask", i1 false, i1 false}
!35 = !{!"../kernel/watchdog.c", i32 47, i32 16}
!36 = !{ptr @sysctl_softlockup_all_cpu_backtrace, !37, !"sysctl_softlockup_all_cpu_backtrace", i1 false, i1 false}
!37 = !{!"../kernel/watchdog.c", i32 164, i32 19}
!38 = !{ptr @watchdog_allowed_mask, !39, !"watchdog_allowed_mask", i1 false, i1 false}
!39 = !{!"../kernel/watchdog.c", i32 167, i32 23}
!40 = !{ptr @__pcpu_unique_watchdog_touch_ts, !41, !"__pcpu_unique_watchdog_touch_ts", i1 false, i1 false}
!41 = !{!"../kernel/watchdog.c", i32 177, i32 8}
!42 = !{ptr @watchdog_touch_ts, !41, !"watchdog_touch_ts", i1 false, i1 false}
!43 = !{ptr @__pcpu_unique_watchdog_report_ts, !44, !"__pcpu_unique_watchdog_report_ts", i1 false, i1 false}
!44 = !{!"../kernel/watchdog.c", i32 179, i32 8}
!45 = !{ptr @watchdog_report_ts, !44, !"watchdog_report_ts", i1 false, i1 false}
!46 = !{ptr @__pcpu_unique_watchdog_hrtimer, !47, !"__pcpu_unique_watchdog_hrtimer", i1 false, i1 false}
!47 = !{!"../kernel/watchdog.c", i32 180, i32 8}
!48 = !{ptr @watchdog_hrtimer, !47, !"watchdog_hrtimer", i1 false, i1 false}
!49 = !{ptr @__pcpu_unique_softlockup_touch_sync, !50, !"__pcpu_unique_softlockup_touch_sync", i1 false, i1 false}
!50 = !{!"../kernel/watchdog.c", i32 181, i32 8}
!51 = !{ptr @softlockup_touch_sync, !50, !"softlockup_touch_sync", i1 false, i1 false}
!52 = !{ptr @__pcpu_unique_hrtimer_interrupts, !53, !"__pcpu_unique_hrtimer_interrupts", i1 false, i1 false}
!53 = !{!"../kernel/watchdog.c", i32 182, i32 8}
!54 = !{ptr @hrtimer_interrupts, !53, !"hrtimer_interrupts", i1 false, i1 false}
!55 = !{ptr @__pcpu_unique_hrtimer_interrupts_saved, !56, !"__pcpu_unique_hrtimer_interrupts_saved", i1 false, i1 false}
!56 = !{!"../kernel/watchdog.c", i32 183, i32 8}
!57 = !{ptr @hrtimer_interrupts_saved, !56, !"hrtimer_interrupts_saved", i1 false, i1 false}
!58 = !{ptr @__pcpu_unique_softlockup_completion, !59, !"__pcpu_unique_softlockup_completion", i1 false, i1 false}
!59 = !{!"../kernel/watchdog.c", i32 334, i32 8}
!60 = !{ptr @softlockup_completion, !59, !"softlockup_completion", i1 false, i1 false}
!61 = !{ptr @__pcpu_unique_softlockup_stop_work, !62, !"__pcpu_unique_softlockup_stop_work", i1 false, i1 false}
!62 = !{!"../kernel/watchdog.c", i32 335, i32 8}
!63 = !{ptr @softlockup_stop_work, !62, !"softlockup_stop_work", i1 false, i1 false}
!64 = !{ptr @__setup_str_nowatchdog_setup, !13, !"__setup_str_nowatchdog_setup", i1 false, i1 false}
!65 = !{ptr @__setup_str_nosoftlockup_setup, !15, !"__setup_str_nosoftlockup_setup", i1 false, i1 false}
!66 = !{ptr @__setup_str_watchdog_thresh_setup, !17, !"__setup_str_watchdog_thresh_setup", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!69 = !{ptr @.str.5, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../kernel/watchdog.c", i32 455, i32 2}
!72 = !{ptr @init_completion.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../include/linux/completion.h", i32 87, i32 2}
!74 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.7, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/watchdog.c", i32 427, i32 3}
!77 = !{ptr @.str.8, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @watchdog_timer_fn._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @watchdog_timer_fn._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/watchdog.c", i32 444, i32 10}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/watchdog.c", i32 331, i32 2}
!84 = !{ptr @soft_lockup_nmi_warn, !85, !"soft_lockup_nmi_warn", i1 false, i1 false}
!85 = !{!"../kernel/watchdog.c", i32 184, i32 22}
!86 = !{ptr @sample_period, !87, !"sample_period", i1 false, i1 false}
!87 = !{!"../kernel/watchdog.c", i32 174, i32 26}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../kernel/watchdog.c", i32 480, i32 2}
!90 = !{ptr @.str.11, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/watchdog.c", i32 30, i32 8}
!92 = !{ptr @.str.12, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @watchdog_mutex, !91, !"watchdog_mutex", i1 false, i1 false}
!94 = distinct !{null, !95, !"softlockup_initialized", i1 false, i1 false}
!95 = !{!"../kernel/watchdog.c", i32 173, i32 13}
!96 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/watchdog.c", i32 839, i32 2}
!98 = !{ptr @.str.14, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.15, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/watchdog.c", i32 748, i32 21}
!101 = !{ptr @.str.16, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/watchdog.c", i32 757, i32 15}
!103 = !{ptr @.str.17, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/watchdog.c", i32 766, i32 21}
!105 = !{ptr @.str.18, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/watchdog.c", i32 775, i32 15}
!107 = !{ptr @.str.19, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/watchdog.c", i32 783, i32 21}
!109 = !{ptr @.str.20, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/watchdog.c", i32 792, i32 15}
!111 = !{ptr @.str.21, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/watchdog.c", i32 802, i32 15}
!113 = !{ptr @watchdog_sysctls, !114, !"watchdog_sysctls", i1 false, i1 false}
!114 = !{!"../kernel/watchdog.c", i32 746, i32 25}
!115 = !{ptr @sixty, !116, !"sixty", i1 false, i1 false}
!116 = !{!"../kernel/watchdog.c", i32 744, i32 18}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i8 0, i8 2}
!130 = !{!"branch_weights", i32 4001, i32 1}
!131 = !{i64 2148695076, i64 2148695108, i64 2148695137, i64 2148695171, i64 2148695202, i64 2148695225}
!132 = !{i64 2148784181}
!133 = !{i64 2148783068}
!134 = !{i64 2148693463, i64 2148693495, i64 2148693524, i64 2148693558, i64 2148693589, i64 2148693612}
