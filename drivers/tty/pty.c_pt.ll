; ModuleID = '/llk/IR_all_yes/drivers/tty/pty.c_pt.bc'
source_filename = "../drivers/tty/pty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.71 }
%union.anon.71 = type { ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_legacy_count = internal constant [17 x i8] c"pty.legacy_count\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@legacy_count = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_legacy_count = internal constant %struct.kernel_param { ptr @__param_str_legacy_count, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.71 { ptr @legacy_count } }, section "__param", align 4
@__UNIQUE_ID_legacy_counttype234 = internal constant [30 x i8] c"pty.parmtype=legacy_count:int\00", section ".modinfo", align 1
@ptm_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_pty__235_957_pty_init6 = internal global ptr @pty_init, section ".initcall6.init", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't allocate pty driver\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't allocate pty slave driver\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pty_master\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pty\00", [28 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@master_pty_ops_bsd = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @pty_install, ptr @pty_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr @pty_bsd_ioctl, ptr null, ptr null, ptr null, ptr @pty_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pty_slave\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyp\00", [27 x i8] zeroinitializer }, align 32
@slave_pty_ops_bsd = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @pty_install, ptr @pty_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr null, ptr null, ptr @pty_set_termios, ptr null, ptr @pty_unthrottle, ptr @pty_stop, ptr @pty_start, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't register pty driver\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't register pty slave driver\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&o_tty->termios_rwsem\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/tty/pty.c\00", [46 x i8] zeroinitializer }, align 32
@devpts_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devpts_mutex, i64 52), ptr getelementptr (i8, ptr @devpts_mutex, i64 52) }, ptr @devpts_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devpts_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devpts_mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't allocate Unix98 ptm driver\00", [60 x i8] zeroinitializer }, align 32
@pts_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't allocate Unix98 pts driver\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptm\00", [28 x i8] zeroinitializer }, align 32
@ptm_unix98_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr @ptm_unix98_lookup, ptr @pty_unix98_install, ptr @pty_unix98_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr @pty_unix98_ioctl, ptr null, ptr null, ptr null, ptr @pty_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pty_resize, ptr null, ptr null, ptr null, ptr @pty_show_fdinfo, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pts\00", [28 x i8] zeroinitializer }, align 32
@pty_unix98_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr @pts_unix98_lookup, ptr @pty_unix98_install, ptr @pty_unix98_remove, ptr @pty_open, ptr @pty_close, ptr null, ptr @pty_cleanup, ptr @pty_write, ptr null, ptr null, ptr @pty_write_room, ptr null, ptr null, ptr null, ptr @pty_set_termios, ptr null, ptr @pty_unthrottle, ptr @pty_stop, ptr @pty_start, ptr null, ptr null, ptr @pty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't register Unix98 ptm driver\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't register Unix98 pts driver\00", [60 x i8] zeroinitializer }, align 32
@ptmx_fops = internal global %struct.file_operations zeroinitializer, section ".data..ro_after_init", align 4
@ptmx_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"/dev/ptmx\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't register /dev/ptmx driver\00", [61 x i8] zeroinitializer }, align 32
@tty_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptmx\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tty-index:\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@tty_mutex = external dso_local global %struct.mutex, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 21536, i64 1074025521, i64 1074025526, i64 2147767344, i64 2147767352, i64 2147767353]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 20]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 21536, i64 1074025521, i64 1074025526, i64 2147767344, i64 2147767352, i64 2147767353]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 20]
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"legacy_count\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 497, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"ptm_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 42, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 551, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 558, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 560, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 561, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"master_pty_ops_bsd\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 508, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 576, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 577, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"slave_pty_ops_bsd\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 523, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 590, i32 9 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 592, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 394, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 50, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"devpts_mutex\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 44, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 892, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"pts_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 43, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 900, i32 9 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 903, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"ptm_unix98_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 755, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 919, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"pty_unix98_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 772, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 932, i32 9 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 934, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"ptmx_cdev\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 600, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 942, i32 56 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 943, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 944, i32 63 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [21 x i8] c"../drivers/tty/pty.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 752, i32 16 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_legacy_counttype234, ptr @__initcall__kmod_pty__235_957_pty_init6, ptr @__param_legacy_count, ptr @legacy_count, ptr @ptm_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @master_pty_ops_bsd, ptr @.str.4, ptr @.str.5, ptr @slave_pty_ops_bsd, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @devpts_mutex, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @pts_driver, ptr @.str.13, ptr @.str.14, ptr @ptm_unix98_ops, ptr @.str.15, ptr @pty_unix98_ops, ptr @.str.16, ptr @.str.17, ptr @ptmx_cdev, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptm_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_pty_ops_bsd to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_pty_ops_bsd to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devpts_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pts_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptm_unix98_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_unix98_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptmx_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptm_open_peer(ptr noundef %master, ptr nocapture noundef readonly %tty, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !80
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = load ptr, ptr @ptm_driver, align 4
  %cmp.not = icmp eq ptr %3, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @get_unused_fd_flags(i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data, align 4
  %call5 = tail call ptr @devpts_mntget(ptr noundef %master, ptr noundef %6) #11
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %path, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.err_put_crit_edge, label %if.end11

if.end4.err_put_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end11:                                         ; preds = %if.end4
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %driver_data12 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %driver_data12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data12, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %0, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %call14 = call ptr @dentry_open(ptr noundef nonnull %path, i32 noundef %flags, ptr noundef %18) #11
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path, align 4
  call void @mntput(ptr noundef %20) #11
  %cmp.i32 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.end11.err_put_crit_edge, label %if.end19

if.end11.err_put_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @fd_install(i32 noundef %call, ptr noundef %call14) #11
  br label %cleanup

err_put:                                          ; preds = %if.end11.err_put_crit_edge, %if.end4.err_put_crit_edge
  %retval1.0.in = phi ptr [ %call5, %if.end4.err_put_crit_edge ], [ %call14, %if.end11.err_put_crit_edge ]
  %retval1.0 = ptrtoint ptr %retval1.0.in to i32
  call void @put_unused_fd(i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end19 ], [ -5, %entry.cleanup_crit_edge ], [ %retval1.0, %err_put ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_mntget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @legacy_pty_init() #14
  tail call fastcc void @unix98_pty_init() #14
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @legacy_pty_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @legacy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @__tty_alloc_driver(i32 noundef %0, ptr noundef null, i32 noundef 70) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #15
  unreachable

if.end3:                                          ; preds = %if.end
  %1 = load i32, ptr @legacy_count, align 4
  %call4 = tail call ptr @__tty_alloc_driver(i32 noundef %1, ptr noundef null, i32 noundef 70) #11
  %cmp.i67 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #15
  unreachable

if.end7:                                          ; preds = %if.end3
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.3, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %9 = ptrtoint ptr %init_termios to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %init_termios, align 4
  %c_oflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %c_oflag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %c_oflag, align 4
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 191, ptr %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %c_lflag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %c_lflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 6
  %13 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 38400, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 7
  %14 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 38400, ptr %c_ospeed, align 4
  %other = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %other to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %other, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @master_pty_ops_bsd, ptr %ops.i, align 4
  %driver_name14 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 4
  %17 = ptrtoint ptr %driver_name14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.4, ptr %driver_name14, align 4
  %name15 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 5
  %18 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.5, ptr %name15, align 4
  %major16 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 7
  %19 = ptrtoint ptr %major16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %major16, align 4
  %minor_start17 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 8
  %20 = ptrtoint ptr %minor_start17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %minor_start17, align 4
  %type18 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 10
  %21 = ptrtoint ptr %type18 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4, ptr %type18, align 4
  %subtype19 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 11
  %22 = ptrtoint ptr %subtype19 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %subtype19, align 2
  %init_termios20 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 12
  %23 = call ptr @memcpy(ptr %init_termios20, ptr @tty_std_termios, i32 36)
  %c_cflag22 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %c_cflag22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 191, ptr %c_cflag22, align 4
  %c_ispeed24 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 12, i32 6
  %25 = ptrtoint ptr %c_ispeed24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 38400, ptr %c_ispeed24, align 4
  %c_ospeed26 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 12, i32 7
  %26 = ptrtoint ptr %c_ospeed26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 38400, ptr %c_ospeed26, align 4
  %other27 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 15
  %27 = ptrtoint ptr %other27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %other27, align 4
  %ops.i68 = getelementptr inbounds %struct.tty_driver, ptr %call4, i32 0, i32 20
  %28 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @slave_pty_ops_bsd, ptr %ops.i68, align 4
  %call28 = tail call i32 @tty_register_driver(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #15
  unreachable

if.end30:                                         ; preds = %if.end7
  %call31 = tail call i32 @tty_register_driver(ptr noundef %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #15
  unreachable

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix98_pty_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 1048576, ptr noundef null, i32 noundef 94) #11
  store ptr %call, ptr @ptm_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12) #15
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__tty_alloc_driver(i32 noundef 1048576, ptr noundef null, i32 noundef 94) #11
  store ptr %call2, ptr @pts_driver, align 4
  %cmp.i39 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13) #15
  unreachable

if.end5:                                          ; preds = %if.end
  %0 = load ptr, ptr @ptm_driver, align 4
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.14, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %4 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %8 = ptrtoint ptr %init_termios to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %init_termios, align 4
  %c_oflag = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %c_oflag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %c_oflag, align 4
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 191, ptr %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12, i32 3
  %11 = ptrtoint ptr %c_lflag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %c_lflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12, i32 6
  %12 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 38400, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 12, i32 7
  %13 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 38400, ptr %c_ospeed, align 4
  %other = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 15
  %14 = ptrtoint ptr %other to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %other, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 20
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ptm_unix98_ops, ptr %ops.i, align 4
  %driver_name12 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 4
  %16 = ptrtoint ptr %driver_name12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.4, ptr %driver_name12, align 4
  %name13 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 5
  %17 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.15, ptr %name13, align 4
  %major14 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 7
  %18 = ptrtoint ptr %major14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 136, ptr %major14, align 4
  %minor_start15 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 8
  %19 = ptrtoint ptr %minor_start15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %minor_start15, align 4
  %type16 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 10
  %20 = ptrtoint ptr %type16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 4, ptr %type16, align 4
  %subtype17 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 11
  %21 = ptrtoint ptr %subtype17 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %subtype17, align 2
  %init_termios18 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12
  %22 = call ptr @memcpy(ptr %init_termios18, ptr @tty_std_termios, i32 36)
  %c_cflag20 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %c_cflag20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 191, ptr %c_cflag20, align 4
  %c_ispeed22 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 6
  %24 = ptrtoint ptr %c_ispeed22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 38400, ptr %c_ispeed22, align 4
  %c_ospeed24 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 7
  %25 = ptrtoint ptr %c_ospeed24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 38400, ptr %c_ospeed24, align 4
  %other25 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 15
  %26 = ptrtoint ptr %other25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %0, ptr %other25, align 4
  %ops.i40 = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 20
  %27 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pty_unix98_ops, ptr %ops.i40, align 4
  %call26 = tail call i32 @tty_register_driver(ptr noundef %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.16) #15
  unreachable

if.end28:                                         ; preds = %if.end5
  %28 = load ptr, ptr @pts_driver, align 4
  %call29 = tail call i32 @tty_register_driver(ptr noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.17) #15
  unreachable

if.end32:                                         ; preds = %if.end28
  tail call void @tty_default_fops(ptr noundef nonnull @ptmx_fops) #11
  store ptr @ptmx_open, ptr getelementptr inbounds (%struct.file_operations, ptr @ptmx_fops, i32 0, i32 14), align 4
  tail call void @cdev_init(ptr noundef nonnull @ptmx_cdev, ptr noundef nonnull @ptmx_fops) #11
  %call33 = tail call i32 @cdev_add(ptr noundef nonnull @ptmx_cdev, i32 noundef 5242882, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %if.end32.if.then36_crit_edge

if.end32.if.then36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end32
  %call35 = tail call i32 @register_chrdev_region(i32 noundef 5242882, i32 noundef 1, ptr noundef nonnull @.str.18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %lor.lhs.false.if.then36_crit_edge, label %if.end37

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end32.if.then36_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.19) #15
  unreachable

if.end37:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tty_class to i32))
  %29 = load ptr, ptr @tty_class, align 4
  %call38 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %29, ptr noundef null, i32 noundef 5242882, ptr noundef null, ptr noundef nonnull @.str.20) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pty_common_install(ptr noundef %driver, ptr noundef %tty, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pty_remove(ptr nocapture noundef readonly %driver, ptr nocapture noundef readonly %tty) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %ttys = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 16
  %2 = ptrtoint ptr %ttys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttys, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver1 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver1, align 4
  %ttys2 = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %ttys2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ttys2, align 4
  %index3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index3, align 4
  %arrayidx4 = getelementptr ptr, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_open(ptr noundef %tty, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tty, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

if.end4:                                          ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags6, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.return.sink.split_crit_edge

if.end4.return.sink.split_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

if.end10:                                         ; preds = %if.end4
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp = icmp eq i16 %11, 2
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %count = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp13.not = icmp eq i32 %13, 1
  br i1 %cmp13.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.return.sink.split_crit_edge

land.lhs.true.return.sink.split_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %flags19 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags19) #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end16, %land.lhs.true.return.sink.split_crit_edge, %if.end4.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end16 ], [ 1, %land.lhs.true.return.sink.split_crit_edge ], [ 1, %if.end4.return.sink.split_crit_edge ], [ 1, %if.end.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end16 ], [ -5, %land.lhs.true.return.sink.split_crit_edge ], [ -5, %if.end4.return.sink.split_crit_edge ], [ -5, %if.end.return.sink.split_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %flags) #11
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.return_crit_edge ], [ -19, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_close(ptr noundef %tty, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 17
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp sgt i32 %5, 1
  br i1 %cmp2, label %do.end, label %if.then.if.end30_crit_edge, !prof !81

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 50, i32 noundef 9, ptr noundef null) #11
  br label %if.end30

if.else:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end24, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end24:                                         ; preds = %if.else
  %count25 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 17
  %9 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp26 = icmp sgt i32 %10, 2
  br i1 %cmp26, label %if.end24.if.end62_crit_edge, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end24.if.end62_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end30:                                         ; preds = %if.end24.if.end30_crit_edge, %do.end, %if.then.if.end30_crit_edge
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl) #11
  %packet = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  %11 = ptrtoint ptr %packet to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %packet, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctrl) #11
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 4
  %tobool34.not = icmp eq ptr %13, null
  br i1 %tobool34.not, label %if.end30.if.end62_crit_edge, label %if.end36

if.end30.if.end62_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end36:                                         ; preds = %if.end30
  %flags38 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags38) #11
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %read_wait40 = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait40, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link, align 4
  %write_wait42 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %write_wait42, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 4
  %subtype44 = getelementptr inbounds %struct.tty_driver, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %subtype44 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subtype44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp46 = icmp eq i16 %21, 1
  br i1 %cmp46, label %if.then48, label %if.end36.if.end62_crit_edge

if.end36.if.end62_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then48:                                        ; preds = %if.end36
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #11
  %22 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver, align 4
  %24 = load ptr, ptr @ptm_driver, align 4
  %cmp51 = icmp eq ptr %23, %24
  br i1 %cmp51, label %if.then53, label %if.then48.if.end60_crit_edge

if.then48.if.end60_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then53:                                        ; preds = %if.then48
  tail call void @mutex_lock_nested(ptr noundef nonnull @devpts_mutex, i32 noundef 0) #11
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 30
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data, align 4
  %tobool55.not = icmp eq ptr %28, null
  br i1 %tobool55.not, label %if.then53.if.end59_crit_edge, label %if.then56

if.then53.if.end59_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devpts_pty_kill(ptr noundef nonnull %28) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then53.if.end59_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devpts_mutex) #11
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then48.if.end60_crit_edge
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link, align 4
  tail call void @tty_vhangup(ptr noundef %30) #11
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %if.end36.if.end62_crit_edge, %if.end30.if.end62_crit_edge, %if.end24.if.end62_crit_edge, %if.else.if.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_cleanup(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @tty_port_put(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c)
  %cmp = icmp sgt i32 %c, 0
  br i1 %cmp, label %do.body2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %if.end
  %port = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %lock = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %7, ptr noundef %buf, i8 noundef zeroext 0, i32 noundef %c) #11
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %lock10 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %do.body2.cleanup_crit_edge, label %if.then12

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then12 ], [ 0, %do.body2.cleanup_crit_edge ], [ %c, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_write_room(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %port = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %call = tail call i32 @tty_buffer_space_avail(ptr noundef %5) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_bsd_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog [
    i32 1074025521, label %sw.bb
    i32 -2147199943, label %sw.bb1
    i32 21536, label %sw.bb3
    i32 -2147199944, label %sw.bb5
    i32 1074025526, label %sw.bb7
    i32 -2147199952, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 151) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !83
  %and.i.i = and i32 %4, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #11, !srcloc !86
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %asmresult1.i = extractvalue { i32, i32 } %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool3.not.i = icmp eq i32 %asmresult1.i, 0
  %flags5.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags5.i) #11
  br label %return

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags5.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = inttoptr i32 %arg to ptr
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %8, 16
  %and1.i.i = and i32 %shr.i.i, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 164) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i18 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i18 to ptr
  %cpu_domain.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i19) #4, !srcloc !83
  %and.i.i20 = and i32 %11, -13
  %or.i.i21 = or i32 %and.i.i20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i21) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %and1.i.i, i32 -1226833921) #11, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  br label %return

sw.bb3:                                           ; preds = %entry
  %13 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 172) #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i22 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i22 to ptr
  %cpu_domain.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i23) #4, !srcloc !83
  %and.i.i24 = and i32 %16, -13
  %or.i.i25 = or i32 %and.i.i24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i25) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1226833921) #11, !srcloc !88
  %asmresult.i26 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i26)
  %tobool.not.i27 = icmp eq i32 %asmresult.i26, 0
  br i1 %tobool.not.i27, label %if.end.i30, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i30:                                       ; preds = %sw.bb3
  %asmresult1.i28 = extractvalue { i32, i32 } %17, 1
  %ctrl.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i28)
  %tobool3.not.i29 = icmp eq i32 %asmresult1.i28, 0
  %packet16.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  br i1 %tobool3.not.i29, label %if.end.i30.if.end17.sink.split.i_crit_edge, label %if.then4.i31

if.end.i30.if.end17.sink.split.i_crit_edge:       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

if.then4.i31:                                     ; preds = %if.end.i30
  %18 = ptrtoint ptr %packet16.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %packet16.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp eq i8 %19, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then4.i31.if.end17.i_crit_edge

if.then4.i31.if.end17.i_crit_edge:                ; preds = %if.then4.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.then4.i31
  call void @__sanitizer_cov_trace_pc() #13
  %link.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %20 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link.i, align 4
  %pktstatus.i = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 20, i32 3
  %22 = ptrtoint ptr %pktstatus.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pktstatus.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !89
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then7.i, %if.end.i30.if.end17.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then7.i ], [ 0, %if.end.i30.if.end17.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %packet16.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i, ptr %packet16.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.sink.split.i, %if.then4.i31.if.end17.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctrl.i) #11
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = inttoptr i32 %arg to ptr
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  %25 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %packet.i, align 1, !range !82
  %27 = zext i8 %26 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 194) #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i33 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i33 to ptr
  %cpu_domain.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i34) #4, !srcloc !83
  %and.i.i35 = and i32 %30, -13
  %or.i.i36 = or i32 %and.i.i35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i36) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %24, i32 %27, i32 -1226833921) #11, !srcloc !90
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  br label %return

sw.bb7:                                           ; preds = %entry
  %32 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %arg, label %sw.bb7.return_crit_edge [
    i32 2, label %sw.bb7.if.end.i39_crit_edge
    i32 3, label %sw.bb7.if.end.i39_crit_edge44
    i32 20, label %sw.bb7.if.end.i39_crit_edge45
  ]

sw.bb7.if.end.i39_crit_edge45:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i39

sw.bb7.if.end.i39_crit_edge44:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i39

sw.bb7.if.end.i39_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i39

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i39:                                       ; preds = %sw.bb7.if.end.i39_crit_edge, %sw.bb7.if.end.i39_crit_edge44, %sw.bb7.if.end.i39_crit_edge45
  %link.i37 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %33 = ptrtoint ptr %link.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link.i37, align 4
  %tobool.not.i38 = icmp eq ptr %34, null
  br i1 %tobool.not.i38, label %if.end.i39.return_crit_edge, label %if.then4.i41

if.end.i39.return_crit_edge:                      ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i41:                                     ; preds = %if.end.i39
  %call.i = tail call ptr @tty_get_pgrp(ptr noundef nonnull %34) #11
  %tobool6.not.i40 = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i40, label %if.then4.i41.if.end9.i_crit_edge, label %if.then7.i42

if.then4.i41.if.end9.i_crit_edge:                 ; preds = %if.then4.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i42:                                     ; preds = %if.then4.i41
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 @kill_pgrp(ptr noundef nonnull %call.i, i32 noundef %arg, i32 noundef 1) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i42, %if.then4.i41.if.end9.i_crit_edge
  tail call void @put_pid(ptr noundef %call.i) #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.epilog, %if.end9.i, %if.end.i39.return_crit_edge, %sw.bb7.return_crit_edge, %sw.bb5, %if.end17.i, %sw.bb3.return_crit_edge, %sw.bb1, %if.else.i, %if.then4.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -515, %sw.epilog ], [ %31, %sw.bb5 ], [ %12, %sw.bb1 ], [ -22, %entry.return_crit_edge ], [ -14, %sw.bb.return_crit_edge ], [ 0, %if.else.i ], [ 0, %if.then4.i ], [ 0, %if.end17.i ], [ -14, %sw.bb3.return_crit_edge ], [ -22, %sw.bb7.return_crit_edge ], [ 0, %if.end9.i ], [ 0, %if.end.i39.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_unthrottle(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  tail call void @tty_wakeup(ptr noundef %1) #11
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_flush_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tty_buffer_flush(ptr noundef nonnull %1, ptr noundef null) #11
  %packet = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl3 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl3) #11
  %pktstatus = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %4 = ptrtoint ptr %pktstatus to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktstatus, align 4
  %6 = or i8 %5, 2
  store i8 %6, ptr %pktstatus, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctrl3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_resize(ptr noundef %tty, ptr nocapture noundef readonly %ws) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %winsize_mutex = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %winsize_mutex, i32 noundef 0) #11
  %winsize = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 18
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %ws, ptr noundef dereferenceable(8) %winsize, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @tty_get_pgrp(ptr noundef %tty) #11
  %call2 = tail call ptr @tty_get_pgrp(ptr noundef %1) #11
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @kill_pgrp(ptr noundef nonnull %call1, i32 noundef 28, i32 noundef 1) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %cmp.not = icmp eq ptr %call2, %call1
  %tobool7.not = icmp eq ptr %call2, null
  %or.cond = or i1 %cmp.not, %tobool7.not
  br i1 %or.cond, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @kill_pgrp(ptr noundef nonnull %call2, i32 noundef 28, i32 noundef 1) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  tail call void @put_pid(ptr noundef %call1) #11
  tail call void @put_pid(ptr noundef %call2) #11
  %2 = ptrtoint ptr %ws to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %ws, align 2
  %4 = ptrtoint ptr %winsize to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %winsize, align 4
  %winsize12 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 18
  %5 = load i64, ptr %ws, align 2
  %6 = ptrtoint ptr %winsize12 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %winsize12, align 4
  br label %done

done:                                             ; preds = %if.end10, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %winsize_mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pty_common_install(ptr noundef %driver, ptr noundef %tty, i1 noundef zeroext %legacy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 11
  %2 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 576) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i102 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 576) #17
  %tobool.not = icmp eq ptr %call7.i, null
  %tobool7.not = icmp eq ptr %call7.i102, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end.err_crit_edge, label %if.end9

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end9:                                          ; preds = %if.end
  %other = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 15
  %6 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %other, align 4
  %owner = getelementptr inbounds %struct.tty_driver, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  %call10 = tail call zeroext i1 @try_module_get(ptr noundef %9) #11
  br i1 %call10, label %if.end12, label %if.end9.err_crit_edge

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end12:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %other, align 4
  %call14 = tail call ptr @alloc_tty_struct(ptr noundef %11, i32 noundef %1) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %err_put_module, label %if.end17

if.end17:                                         ; preds = %if.end12
  tail call void @tty_set_lock_subclass(ptr noundef nonnull %call14) #11
  %dep_map = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 11, i32 6
  %12 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dep_map, align 4
  %wait_type_inner = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 11, i32 6, i32 4
  %14 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.8, ptr noundef %13, i32 noundef 1, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br i1 %legacy, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_init_termios(ptr noundef %tty) #11
  tail call void @tty_init_termios(ptr noundef nonnull %call14) #11
  %16 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %other, align 4
  %ttys = getelementptr inbounds %struct.tty_driver, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %ttys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttys, align 4
  %arrayidx27 = getelementptr ptr, ptr %19, i32 %1
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %arrayidx27, align 4
  %ttys28 = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 16
  %21 = ptrtoint ptr %ttys28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ttys28, align 4
  %arrayidx29 = getelementptr ptr, ptr %22, i32 %1
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tty, ptr %arrayidx29, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %termios_locked = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 14
  %24 = call ptr @memset(ptr %termios_locked, i32 0, i32 44)
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 12
  %25 = call ptr @memcpy(ptr %termios, ptr %init_termios, i32 44)
  %termios_locked30 = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 14
  %26 = call ptr @memset(ptr %termios_locked30, i32 0, i32 44)
  %termios31 = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 13
  %27 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %other, align 4
  %init_termios33 = getelementptr inbounds %struct.tty_driver, ptr %28, i32 0, i32 12
  %29 = call ptr @memcpy(ptr %termios31, ptr %init_termios33, i32 44)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then25
  %30 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %other, align 4
  %kref.i = getelementptr inbounds %struct.tty_driver, ptr %31, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #11, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end34.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !81

if.end34.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end34
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tty_driver_kref_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !92

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tty_driver_kref_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tty_driver_kref_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end34.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end34.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %tty_driver_kref_get.exit

tty_driver_kref_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tty_driver_kref_get.exit_crit_edge
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %34 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14, ptr %link, align 4
  %link37 = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 24
  %35 = ptrtoint ptr %link37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tty, ptr %link37, align 4
  tail call void @tty_port_init(ptr noundef nonnull %call7.i) #11
  tail call void @tty_port_init(ptr noundef nonnull %call7.i102) #11
  %call41 = tail call i32 @tty_buffer_set_limit(ptr noundef nonnull %call7.i, i32 noundef 8192) #11
  %call43 = tail call i32 @tty_buffer_set_limit(ptr noundef nonnull %call7.i102, i32 noundef 8192) #11
  %port = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 37
  %36 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i, ptr %port, align 4
  %port46 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %37 = ptrtoint ptr %port46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i102, ptr %port46, align 4
  %38 = load ptr, ptr %port, align 4
  %itty = getelementptr inbounds %struct.tty_port, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %itty to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call14, ptr %itty, align 4
  %40 = load ptr, ptr %port, align 4
  tail call void @tty_buffer_set_lock_subclass(ptr noundef %40) #11
  %kref.i103 = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 1
  %call.i.i.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i103, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i103, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i103, ptr %kref.i103, i32 1, ptr elementtype(i32) %kref.i103) #11, !srcloc !91
  %asmresult.i.i.i.i.i.i.i105 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i105)
  %tobool1.not.i.i.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i.i.i105, 0
  br i1 %tobool1.not.i.i.i.i.i106, label %tty_driver_kref_get.exit.if.end15.sink.split.i.i.i.i.i111_crit_edge, label %if.else.i.i.i.i.i109, !prof !81

tty_driver_kref_get.exit.if.end15.sink.split.i.i.i.i.i111_crit_edge: ; preds = %tty_driver_kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i111

if.else.i.i.i.i.i109:                             ; preds = %tty_driver_kref_get.exit
  %add.i.i.i.i.i107 = add i32 %asmresult.i.i.i.i.i.i.i105, 1
  %42 = or i32 %add.i.i.i.i.i107, %asmresult.i.i.i.i.i.i.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i108 = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i108, label %if.else.i.i.i.i.i109.tty_driver_kref_get.exit112_crit_edge, label %if.else.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i111_crit_edge, !prof !92

if.else.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i111_crit_edge: ; preds = %if.else.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i111

if.else.i.i.i.i.i109.tty_driver_kref_get.exit112_crit_edge: ; preds = %if.else.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %tty_driver_kref_get.exit112

if.end15.sink.split.i.i.i.i.i111:                 ; preds = %if.else.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i111_crit_edge, %tty_driver_kref_get.exit.if.end15.sink.split.i.i.i.i.i111_crit_edge
  %.sink.i.i.i.i.i110 = phi i32 [ 2, %tty_driver_kref_get.exit.if.end15.sink.split.i.i.i.i.i111_crit_edge ], [ 1, %if.else.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i111_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i103, i32 noundef %.sink.i.i.i.i.i110) #11
  br label %tty_driver_kref_get.exit112

tty_driver_kref_get.exit112:                      ; preds = %if.end15.sink.split.i.i.i.i.i111, %if.else.i.i.i.i.i109.tty_driver_kref_get.exit112_crit_edge
  %count = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 17
  %43 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %count, align 4
  %count50 = getelementptr inbounds %struct.tty_struct, ptr %call14, i32 0, i32 17
  %45 = ptrtoint ptr %count50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count50, align 4
  %inc51 = add i32 %46, 1
  store i32 %inc51, ptr %count50, align 4
  br label %cleanup

err_put_module:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %other, align 4
  %owner53 = getelementptr inbounds %struct.tty_driver, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %owner53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %owner53, align 4
  tail call void @module_put(ptr noundef %50) #11
  br label %err

err:                                              ; preds = %err_put_module, %if.end9.err_crit_edge, %if.end.err_crit_edge
  tail call void @kfree(ptr noundef %call7.i) #11
  tail call void @kfree(ptr noundef %call7.i102) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %tty_driver_kref_get.exit112, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tty_driver_kref_get.exit112 ], [ -12, %err ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_tty_struct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_set_lock_subclass(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_init_termios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_set_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_set_lock_subclass(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_pty_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_space_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %old_termios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end71_crit_edge, label %land.lhs.true

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

land.lhs.true:                                    ; preds = %entry
  %packet = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end71_crit_edge, label %if.then

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then:                                          ; preds = %land.lhs.true
  %c_lflag = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 3
  %4 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_lflag, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_lflag3 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %c_lflag3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_lflag3, align 4
  %and98 = or i32 %7, %5
  %or = and i32 %and98, 65536
  %8 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_termios, align 4
  %and5 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.land.end_crit_edge, label %land.lhs.true7

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true7:                                   ; preds = %if.then
  %arrayidx = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %11)
  %cmp = icmp eq i8 %11, 19
  br i1 %cmp, label %land.rhs, label %land.lhs.true7.land.end_crit_edge

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10 = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp12 = icmp eq i8 %13, 17
  %phi.cast = zext i1 %cmp12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7.land.end_crit_edge, %if.then.land.end_crit_edge
  %14 = phi i32 [ 0, %land.lhs.true7.land.end_crit_edge ], [ 0, %if.then.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %15 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %termios, align 4
  %and16 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.end.land.end32_crit_edge, label %land.lhs.true18

land.end.land.end32_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end32

land.lhs.true18:                                  ; preds = %land.end
  %arrayidx21 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %18)
  %cmp23 = icmp eq i8 %18, 19
  br i1 %cmp23, label %land.rhs25, label %land.lhs.true18.land.end32_crit_edge

land.lhs.true18.land.end32_crit_edge:             ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end32

land.rhs25:                                       ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %20)
  %cmp30 = icmp eq i8 %20, 17
  br label %land.end32

land.end32:                                       ; preds = %land.rhs25, %land.lhs.true18.land.end32_crit_edge, %land.end.land.end32_crit_edge
  %21 = phi i1 [ false, %land.lhs.true18.land.end32_crit_edge ], [ false, %land.end.land.end32_crit_edge ], [ %cmp30, %land.rhs25 ]
  %land.ext33 = zext i1 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %land.ext33)
  %cmp34.not = icmp eq i32 %14, %land.ext33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool36.not = icmp eq i32 %or, 0
  %or.cond = select i1 %cmp34.not, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %land.end32.if.end71_crit_edge, label %if.then37

land.end32.if.end71_crit_edge:                    ; preds = %land.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then37:                                        ; preds = %land.end32
  %ctrl38 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl38) #11
  br i1 %cmp34.not, label %if.then37.if.end58_crit_edge, label %if.then41

if.then37.if.end58_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %pktstatus = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %22 = ptrtoint ptr %pktstatus to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pktstatus, align 4
  %24 = and i8 %23, -49
  %. = select i1 %21, i8 32, i8 16
  %25 = or i8 %24, %.
  store i8 %25, ptr %pktstatus, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then41, %if.then37.if.end58_crit_edge
  br i1 %tobool36.not, label %if.end58.if.end66_crit_edge, label %if.then60

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %pktstatus62 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %26 = ptrtoint ptr %pktstatus62 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pktstatus62, align 4
  %28 = or i8 %27, 64
  store i8 %28, ptr %pktstatus62, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.end58.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctrl38) #11
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end71

if.end71:                                         ; preds = %if.end66, %land.end32.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %entry.if.end71_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %31 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_cflag, align 4
  %and73 = and i32 %32, -433
  %or76 = or i32 %and73, 176
  store i32 %or76, ptr %c_cflag, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_stop(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %packet = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %do.body3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl4 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl4) #11
  %pktstatus = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %4 = ptrtoint ptr %pktstatus to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktstatus, align 4
  %6 = and i8 %5, -13
  %7 = or i8 %6, 4
  store i8 %7, ptr %pktstatus, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl4, i32 noundef %call5) #11
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.body3, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_start(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %packet = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %do.body3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl4 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl4) #11
  %pktstatus = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 3
  %4 = ptrtoint ptr %pktstatus to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktstatus, align 4
  %6 = and i8 %5, -13
  %7 = or i8 %6, 8
  store i8 %7, ptr %pktstatus, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl4, i32 noundef %call5) #11
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.body3, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_default_fops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptmx_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #11
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %or = or i32 %1, 67108864
  store i32 %or, ptr %f_mode, align 8
  %call2 = tail call i32 @tty_alloc_file(ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devpts_acquire(ptr noundef %filp) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call3 to i32
  br label %out_free_file

if.end7:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @devpts_mutex, i32 noundef 0) #11
  %call8 = tail call i32 @devpts_new_index(ptr noundef %call3) #11
  tail call void @mutex_unlock(ptr noundef nonnull @devpts_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.out_put_fsi_crit_edge, label %if.end10

if.end7.out_put_fsi_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_fsi

if.end10:                                         ; preds = %if.end7
  tail call void @mutex_lock_nested(ptr noundef nonnull @tty_mutex, i32 noundef 0) #11
  %3 = load ptr, ptr @ptm_driver, align 4
  %call11 = tail call ptr @tty_init_dev(ptr noundef %3, i32 noundef %call8) #11
  tail call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #11
  %cmp.i65 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %out, label %if.end15

if.end15:                                         ; preds = %if.end10
  %flags = getelementptr inbounds %struct.tty_struct, ptr %call11, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags) #11
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %call11, i32 0, i32 30
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %driver_data, align 4
  tail call void @tty_add_file(ptr noundef %call11, ptr noundef %filp) #11
  %link = getelementptr inbounds %struct.tty_struct, ptr %call11, i32 0, i32 24
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link, align 4
  %call16 = tail call ptr @devpts_pty_new(ptr noundef %call3, i32 noundef %call8, ptr noundef %6) #11
  %cmp.i66 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call16 to i32
  br label %err_release

if.end20:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %driver_data22 = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %driver_data22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %driver_data22, align 4
  %11 = load ptr, ptr @ptm_driver, align 4
  %ops = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %open = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %open, align 4
  %call23 = tail call i32 %15(ptr noundef %call11, ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %if.end20.err_release_crit_edge

if.end20.err_release_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_unlock(ptr noundef %call11) #11
  br label %cleanup

err_release:                                      ; preds = %if.end20.err_release_crit_edge, %if.then18
  %retval1.0 = phi i32 [ %7, %if.then18 ], [ %call23, %if.end20.err_release_crit_edge ]
  tail call void @tty_unlock(ptr noundef %call11) #11
  %call27 = tail call i32 @tty_release(ptr noundef %inode, ptr noundef %filp) #11
  br label %cleanup

out:                                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call11 to i32
  tail call void @devpts_kill_index(ptr noundef %call3, i32 noundef %call8) #11
  br label %out_put_fsi

out_put_fsi:                                      ; preds = %out, %if.end7.out_put_fsi_crit_edge
  %retval1.1 = phi i32 [ %call8, %if.end7.out_put_fsi_crit_edge ], [ %16, %out ]
  tail call void @devpts_release(ptr noundef %call3) #11
  br label %out_free_file

out_free_file:                                    ; preds = %out_put_fsi, %if.then5
  %retval1.2 = phi i32 [ %2, %if.then5 ], [ %retval1.1, %out_put_fsi ]
  tail call void @tty_free_file(ptr noundef %filp) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free_file, %err_release, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %out_free_file ], [ %retval1.0, %err_release ], [ 0, %do.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @ptm_unix98_lookup(ptr nocapture noundef readnone %driver, ptr nocapture noundef readnone %file, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_unix98_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pty_common_install(ptr noundef %driver, ptr noundef %tty, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_unix98_remove(ptr nocapture noundef readnone %driver, ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %tty.pn = phi ptr [ %5, %if.else ], [ %tty, %entry.if.end_crit_edge ]
  %fsi.0.in = getelementptr inbounds %struct.tty_struct, ptr %tty.pn, i32 0, i32 30
  %6 = ptrtoint ptr %fsi.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %fsi.0 = load ptr, ptr %fsi.0.in, align 4
  %tobool.not = icmp eq ptr %fsi.0, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  tail call void @devpts_kill_index(ptr noundef nonnull %fsi.0, i32 noundef %8) #11
  tail call void @devpts_release(ptr noundef nonnull %fsi.0) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pty_unix98_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 1074025521, label %sw.bb
    i32 -2147199943, label %sw.bb1
    i32 21536, label %sw.bb3
    i32 -2147199944, label %sw.bb5
    i32 -2147199952, label %sw.bb7
    i32 1074025526, label %sw.bb10
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 151) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !83
  %and.i.i = and i32 %4, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #11, !srcloc !86
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %asmresult1.i = extractvalue { i32, i32 } %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool3.not.i = icmp eq i32 %asmresult1.i, 0
  %flags5.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags5.i) #11
  br label %return

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags5.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = inttoptr i32 %arg to ptr
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %8, 16
  %and1.i.i = and i32 %shr.i.i, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 164) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i22 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i22 to ptr
  %cpu_domain.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i23) #4, !srcloc !83
  %and.i.i24 = and i32 %11, -13
  %or.i.i25 = or i32 %and.i.i24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i25) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %and1.i.i, i32 -1226833921) #11, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  br label %return

sw.bb3:                                           ; preds = %entry
  %13 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 172) #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i26 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i26 to ptr
  %cpu_domain.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i27) #4, !srcloc !83
  %and.i.i28 = and i32 %16, -13
  %or.i.i29 = or i32 %and.i.i28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i29) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1226833921) #11, !srcloc !88
  %asmresult.i30 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i30)
  %tobool.not.i31 = icmp eq i32 %asmresult.i30, 0
  br i1 %tobool.not.i31, label %if.end.i34, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i34:                                       ; preds = %sw.bb3
  %asmresult1.i32 = extractvalue { i32, i32 } %17, 1
  %ctrl.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i32)
  %tobool3.not.i33 = icmp eq i32 %asmresult1.i32, 0
  %packet16.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  br i1 %tobool3.not.i33, label %if.end.i34.if.end17.sink.split.i_crit_edge, label %if.then4.i35

if.end.i34.if.end17.sink.split.i_crit_edge:       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split.i

if.then4.i35:                                     ; preds = %if.end.i34
  %18 = ptrtoint ptr %packet16.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %packet16.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp eq i8 %19, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then4.i35.if.end17.i_crit_edge

if.then4.i35.if.end17.i_crit_edge:                ; preds = %if.then4.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.then4.i35
  call void @__sanitizer_cov_trace_pc() #13
  %link.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %20 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link.i, align 4
  %pktstatus.i = getelementptr inbounds %struct.tty_struct, ptr %21, i32 0, i32 20, i32 3
  %22 = ptrtoint ptr %pktstatus.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pktstatus.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !89
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then7.i, %if.end.i34.if.end17.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then7.i ], [ 0, %if.end.i34.if.end17.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %packet16.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i, ptr %packet16.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.sink.split.i, %if.then4.i35.if.end17.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctrl.i) #11
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = inttoptr i32 %arg to ptr
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 4
  %25 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %packet.i, align 1, !range !82
  %27 = zext i8 %26 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 194) #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i37 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i37 to ptr
  %cpu_domain.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i38) #4, !srcloc !83
  %and.i.i39 = and i32 %30, -13
  %or.i.i40 = or i32 %and.i.i39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i40) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %24, i32 %27, i32 -1226833921) #11, !srcloc !90
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %32 = inttoptr i32 %arg to ptr
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 665) #11
  %35 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !83
  %and.i = and i32 %37, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %32, i32 %34, i32 -1226833921) #11, !srcloc !93
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #11, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  br label %return

sw.bb10:                                          ; preds = %entry
  %39 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %arg, label %sw.bb10.return_crit_edge [
    i32 2, label %sw.bb10.if.end.i43_crit_edge
    i32 3, label %sw.bb10.if.end.i43_crit_edge48
    i32 20, label %sw.bb10.if.end.i43_crit_edge49
  ]

sw.bb10.if.end.i43_crit_edge49:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

sw.bb10.if.end.i43_crit_edge48:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

sw.bb10.if.end.i43_crit_edge:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

sw.bb10.return_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i43:                                       ; preds = %sw.bb10.if.end.i43_crit_edge, %sw.bb10.if.end.i43_crit_edge48, %sw.bb10.if.end.i43_crit_edge49
  %link.i41 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %40 = ptrtoint ptr %link.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link.i41, align 4
  %tobool.not.i42 = icmp eq ptr %41, null
  br i1 %tobool.not.i42, label %if.end.i43.return_crit_edge, label %if.then4.i45

if.end.i43.return_crit_edge:                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i45:                                     ; preds = %if.end.i43
  %call.i = tail call ptr @tty_get_pgrp(ptr noundef nonnull %41) #11
  %tobool6.not.i44 = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i44, label %if.then4.i45.if.end9.i_crit_edge, label %if.then7.i46

if.then4.i45.if.end9.i_crit_edge:                 ; preds = %if.then4.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i46:                                     ; preds = %if.then4.i45
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 @kill_pgrp(ptr noundef nonnull %call.i, i32 noundef %arg, i32 noundef 1) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i46, %if.then4.i45.if.end9.i_crit_edge
  tail call void @put_pid(ptr noundef %call.i) #11
  br label %return

return:                                           ; preds = %if.end9.i, %if.end.i43.return_crit_edge, %sw.bb10.return_crit_edge, %sw.bb7, %sw.bb5, %if.end17.i, %sw.bb3.return_crit_edge, %sw.bb1, %if.else.i, %if.then4.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %38, %sw.bb7 ], [ %31, %sw.bb5 ], [ %12, %sw.bb1 ], [ -515, %entry.return_crit_edge ], [ -14, %sw.bb.return_crit_edge ], [ 0, %if.else.i ], [ 0, %if.then4.i ], [ 0, %if.end17.i ], [ -14, %sw.bb3.return_crit_edge ], [ -22, %sw.bb10.return_crit_edge ], [ 0, %if.end9.i ], [ 0, %if.end.i43.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pty_show_fdinfo(ptr nocapture noundef readonly %tty, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_kill_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pts_unix98_lookup(ptr nocapture noundef readnone %driver, ptr nocapture noundef readonly %file, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devpts_mutex, i32 noundef 0) #11
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %call = tail call ptr @devpts_get_priv(ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef nonnull @devpts_mutex) #11
  %tobool.not = icmp eq ptr %call, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -5 to ptr), ptr %call
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_get_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_alloc_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devpts_new_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_init_dev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_add_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devpts_pty_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_free_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__param_legacy_count, !1, !"__param_legacy_count", i1 false, i1 false}
!1 = !{!"../drivers/tty/pty.c", i32 502, i32 1}
!2 = !{ptr @__UNIQUE_ID_legacy_counttype234, !1, !"__UNIQUE_ID_legacy_counttype234", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../drivers/tty/pty.c", i32 636, i32 35}
!5 = !{ptr @__initcall__kmod_pty__235_957_pty_init6, !6, !"__initcall__kmod_pty__235_957_pty_init6", i1 false, i1 false}
!6 = !{!"../drivers/tty/pty.c", i32 957, i32 1}
!7 = !{ptr @ptm_driver, !8, !"ptm_driver", i1 false, i1 false}
!8 = !{!"../drivers/tty/pty.c", i32 42, i32 27}
!9 = !{ptr @__param_str_legacy_count, !1, !"__param_str_legacy_count", i1 false, i1 false}
!10 = !{ptr @legacy_count, !11, !"legacy_count", i1 false, i1 false}
!11 = !{!"../drivers/tty/pty.c", i32 497, i32 12}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/pty.c", i32 551, i32 9}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/pty.c", i32 558, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/pty.c", i32 560, i32 28}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/pty.c", i32 561, i32 21}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/pty.c", i32 576, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/pty.c", i32 577, i32 27}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/pty.c", i32 590, i32 9}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/tty/pty.c", i32 592, i32 9}
!28 = !{ptr @master_pty_ops_bsd, !29, !"master_pty_ops_bsd", i1 false, i1 false}
!29 = !{!"../drivers/tty/pty.c", i32 508, i32 36}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/pty.c", i32 394, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/pty.c", i32 50, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tty/pty.c", i32 44, i32 8}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @devpts_mutex, !35, !"devpts_mutex", i1 false, i1 false}
!38 = !{ptr @slave_pty_ops_bsd, !39, !"slave_pty_ops_bsd", i1 false, i1 false}
!39 = !{!"../drivers/tty/pty.c", i32 523, i32 36}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/pty.c", i32 892, i32 9}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/pty.c", i32 900, i32 9}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/pty.c", i32 903, i32 21}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/pty.c", i32 919, i32 21}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/pty.c", i32 932, i32 9}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/pty.c", i32 934, i32 9}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/pty.c", i32 942, i32 56}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/pty.c", i32 943, i32 9}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/pty.c", i32 944, i32 63}
!58 = !{ptr @pts_driver, !59, !"pts_driver", i1 false, i1 false}
!59 = !{!"../drivers/tty/pty.c", i32 43, i32 27}
!60 = !{ptr @ptm_unix98_ops, !61, !"ptm_unix98_ops", i1 false, i1 false}
!61 = !{!"../drivers/tty/pty.c", i32 755, i32 36}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/pty.c", i32 752, i32 16}
!64 = !{ptr @pty_unix98_ops, !65, !"pty_unix98_ops", i1 false, i1 false}
!65 = !{!"../drivers/tty/pty.c", i32 772, i32 36}
!66 = !{ptr @ptmx_fops, !67, !"ptmx_fops", i1 false, i1 false}
!67 = !{!"../drivers/tty/pty.c", i32 881, i32 31}
!68 = !{ptr @ptmx_cdev, !69, !"ptmx_cdev", i1 false, i1 false}
!69 = !{!"../drivers/tty/pty.c", i32 600, i32 20}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i8 0, i8 2}
!83 = !{i64 5660221}
!84 = !{i64 5660418}
!85 = !{i64 2153145651}
!86 = !{i64 2154412882, i64 2154413162, i64 2154413496, i64 2154413830}
!87 = !{i64 2154422544, i64 2154422824, i64 2154423158, i64 2154423492}
!88 = !{i64 2154434041, i64 2154434321, i64 2154434655, i64 2154434989}
!89 = !{i64 2154437780}
!90 = !{i64 2154443652, i64 2154443932, i64 2154444266, i64 2154444600}
!91 = !{i64 2148364379, i64 2148364411, i64 2148364440, i64 2148364474, i64 2148364505, i64 2148364528}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2154466452, i64 2154466732, i64 2154467066, i64 2154467400}
