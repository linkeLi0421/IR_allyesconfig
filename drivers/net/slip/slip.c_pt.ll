; ModuleID = '/llk/IR_all_yes/drivers/net/slip/slip.c_pt.bc'
source_filename = "../drivers/net/slip/slip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.127 }
%union.anon.127 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.92, %struct.anon.93, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.92 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.93 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.slip = type { i32, ptr, ptr, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.timer_list, %struct.timer_list }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ifreq = type { %union.anon.134, %union.anon.135 }
%union.anon.134 = type { [16 x i8] }
%union.anon.135 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.slcompress = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_slip_maxdev = internal constant [17 x i8] c"slip.slip_maxdev\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@slip_maxdev = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_slip_maxdev = internal constant %struct.kernel_param { ptr @__param_str_slip_maxdev, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.127 { ptr @slip_maxdev } }, section "__param", align 4
@__UNIQUE_ID_slip_maxdevtype474 = internal constant [30 x i8] c"slip.parmtype=slip_maxdev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_slip_maxdev475 = internal constant [53 x i8] c"slip.parm=slip_maxdev:Maximum number of slip devices\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@slip_devs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@slip_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: tty discipline still running\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slip_exit\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/slip/slip.c\00", [40 x i8] zeroinitializer }, align 32
@slip_exit._entry_ptr = internal global ptr @slip_exit._entry, section ".printk_index", align 4
@sl_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.3, i32 1, ptr @slip_open, ptr @slip_close, ptr null, ptr null, ptr null, ptr @slip_ioctl, ptr null, ptr null, ptr null, ptr @slip_hangup, ptr @slip_receive_buf, ptr @slip_write_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_slip__481_1370_slip_init6 = internal global ptr @slip_init, section ".initcall6.init", align 4
@__exitcall_slip_exit = internal global ptr @slip_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file482 = internal constant [32 x i8] c"slip.file=drivers/net/slip/slip\00", section ".modinfo", align 1
@__UNIQUE_ID_license483 = internal constant [17 x i8] c"slip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias484 = internal constant [23 x i8] c"slip.alias=tty-ldisc-1\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slip\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sl%d\00", [27 x i8] zeroinitializer }, align 32
@sl_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&sl->lock\00", [22 x i8] zeroinitializer }, align 32
@sl_alloc.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&sl->tx_work)\00", [32 x i8] zeroinitializer }, align 32
@sl_alloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&sl->keepalive_timer)\00", [41 x i8] zeroinitializer }, align 32
@sl_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&sl->outfill_timer)\00", [43 x i8] zeroinitializer }, align 32
@sl_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @sl_init, ptr @sl_uninit, ptr @sl_open, ptr @sl_close, ptr @sl_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sl_siocdevprivate, ptr null, ptr @sl_change_mtu, ptr null, ptr @sl_tx_timeout, ptr @sl_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sl_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: xmit call when iface is down\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sl_xmit\00", [24 x i8] zeroinitializer }, align 32
@sl_xmit._entry_ptr = internal global ptr @sl_xmit._entry, section ".printk_index", align 4
@sl_encaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: truncating oversized transmit packet!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sl_encaps\00", [22 x i8] zeroinitializer }, align 32
@sl_encaps._entry_ptr = internal global ptr @sl_encaps._entry, section ".printk_index", align 4
@sl_realloc_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: unable to grow slip buffers, MTU change cancelled.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sl_realloc_bufs\00", [16 x i8] zeroinitializer }, align 32
@sl_realloc_bufs._entry_ptr = internal global ptr @sl_realloc_bufs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sl_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: transmit timed out, %s?\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sl_tx_timeout\00", [18 x i8] zeroinitializer }, align 32
@sl_tx_timeout._entry_ptr = internal global ptr @sl_tx_timeout._entry, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad line quality\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"driver error\00", [19 x i8] zeroinitializer }, align 32
@sl_keepalive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: no packets received during keepalive timeout, hangup.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sl_keepalive\00", [19 x i8] zeroinitializer }, align 32
@sl_keepalive._entry_ptr = internal global ptr @sl_keepalive._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sl_bump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: compressed packet ignored\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sl_bump\00", [24 x i8] zeroinitializer }, align 32
@sl_bump._entry_ptr = internal global ptr @sl_bump._entry, section ".printk_index", align 4
@sl_bump._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: header compression turned on\0A\00", [60 x i8] zeroinitializer }, align 32
@sl_bump._entry_ptr.31 = internal global ptr @sl_bump._entry.29, section ".printk_index", align 4
@sl_bump._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: memory squeeze, dropping packet.\0A\00", [56 x i8] zeroinitializer }, align 32
@sl_bump._entry_ptr.34 = internal global ptr @sl_bump._entry.32, section ".printk_index", align 4
@slip_write_wakeup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@slip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016SLIP: version %s (dynamic channels, max=%d) (6 bit encapsulation enabled).\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slip_init\00", [22 x i8] zeroinitializer }, align 32
@slip_init._entry_ptr = internal global ptr @slip_init._entry, section ".printk_index", align 4
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0.8.4-NET3.019-NEWTTY\00", [42 x i8] zeroinitializer }, align 32
@slip_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016CSLIP: code copyright 1989 Regents of the University of California.\0A\00", [57 x i8] zeroinitializer }, align 32
@slip_init._entry_ptr.44 = internal global ptr @slip_init._entry.42, section ".printk_index", align 4
@slip_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.2, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016SLIP linefill/keepalive option.\0A\00", [61 x i8] zeroinitializer }, align 32
@slip_init._entry_ptr.47 = internal global ptr @slip_init._entry.45, section ".printk_index", align 4
@slip_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013SLIP: can't register line discipline (err = %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@slip_init._entry_ptr.50 = internal global ptr @slip_init._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 35088, i64 35108, i64 35109, i64 35110, i64 35312, i64 35313, i64 35314, i64 35315]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 219, i64 220, i64 221]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 35312, i64 35313, i64 35314, i64 35315, i64 35316, i64 35317]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"slip_maxdev\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 99, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"slip_devs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 97, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1357, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"sl_ldisc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1268, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1271, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 755, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 766, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 767, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 771, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 772, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"sl_netdev_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 641, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 506, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 382, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 252, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 483, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1425, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 230, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 214, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 174, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 333, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 350, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 363, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 459, i32 7 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 695, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 723, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1287, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1294, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1297, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [27 x i8] c"../drivers/net/slip/slip.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1308, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias484, ptr @__UNIQUE_ID_file482, ptr @__UNIQUE_ID_license483, ptr @__UNIQUE_ID_slip_maxdev475, ptr @__UNIQUE_ID_slip_maxdevtype474, ptr @__exitcall_slip_exit, ptr @__initcall__kmod_slip__481_1370_slip_init6, ptr @__param_slip_maxdev, ptr @sl_bump._entry, ptr @sl_bump._entry.29, ptr @sl_bump._entry.32, ptr @sl_bump._entry_ptr, ptr @sl_bump._entry_ptr.31, ptr @sl_bump._entry_ptr.34, ptr @sl_encaps._entry, ptr @sl_encaps._entry_ptr, ptr @sl_keepalive._entry, ptr @sl_keepalive._entry_ptr, ptr @sl_realloc_bufs._entry, ptr @sl_realloc_bufs._entry_ptr, ptr @sl_tx_timeout._entry, ptr @sl_tx_timeout._entry_ptr, ptr @sl_xmit._entry, ptr @sl_xmit._entry_ptr, ptr @slip_exit, ptr @slip_exit._entry, ptr @slip_exit._entry_ptr, ptr @slip_init._entry, ptr @slip_init._entry.42, ptr @slip_init._entry.45, ptr @slip_init._entry.48, ptr @slip_init._entry_ptr, ptr @slip_init._entry_ptr.44, ptr @slip_init._entry_ptr.47, ptr @slip_init._entry_ptr.50, ptr @slip_maxdev, ptr @slip_devs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sl_ldisc, ptr @.str.3, ptr @.str.4, ptr @sl_alloc.__key, ptr @.str.5, ptr @sl_alloc.__key.6, ptr @.str.7, ptr @sl_alloc.__key.8, ptr @.str.9, ptr @sl_alloc.__key.10, ptr @.str.11, ptr @sl_netdev_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_maxdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_alloc.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_alloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_encaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_realloc_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_keepalive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_bump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_bump._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl_bump._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slip_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @slip_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load ptr, ptr @slip_devs, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end2.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2.preheader:                                ; preds = %entry
  %add.neg = sub i32 -100, %0
  %2 = load i32, ptr @slip_maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp36072 = icmp sgt i32 %2, 0
  br i1 %cmp36072, label %if.end2.preheader.for.body_crit_edge, label %if.end2.preheader.for.end35_crit_edge

if.end2.preheader.for.end35_crit_edge:            ; preds = %if.end2.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end35

if.end2.preheader.for.body_crit_edge:             ; preds = %if.end2.preheader
  br label %for.body

if.then1:                                         ; preds = %land.rhs
  %call = tail call i32 @msleep_interruptible(i32 noundef 100) #16
  %3 = load i32, ptr @slip_maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp360 = icmp sgt i32 %3, 0
  br i1 %cmp360, label %if.then1.for.body.backedge_crit_edge, label %if.then1.for.end35_crit_edge

if.then1.for.end35_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end35

if.then1.for.body.backedge_crit_edge:             ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

for.body:                                         ; preds = %for.body.backedge, %if.end2.preheader.for.body_crit_edge
  %i.062 = phi i32 [ %i.062.be, %for.body.backedge ], [ 0, %if.end2.preheader.for.body_crit_edge ]
  %busy.161 = phi i32 [ %busy.161.be, %for.body.backedge ], [ 0, %if.end2.preheader.for.body_crit_edge ]
  %4 = load ptr, ptr @slip_devs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.062
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %lock = getelementptr i8, ptr %6, i32 2316
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %tty = getelementptr i8, ptr %6, i32 2308
  %7 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %busy.161, 1
  tail call void @tty_hangup(ptr noundef nonnull %8) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %busy.2 = phi i32 [ %inc, %if.then9 ], [ %busy.161, %if.end6.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %busy.3 = phi i32 [ %busy.2, %if.end11 ], [ %busy.161, %for.body.for.inc_crit_edge ]
  %inc13 = add nuw nsw i32 %i.062, 1
  %9 = load i32, ptr @slip_maxdev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc13, i32 %9)
  %cmp3 = icmp slt i32 %inc13, %9
  br i1 %cmp3, label %for.inc.for.body.backedge_crit_edge, label %do.cond

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then1.for.body.backedge_crit_edge
  %i.062.be = phi i32 [ %inc13, %for.inc.for.body.backedge_crit_edge ], [ 0, %if.then1.for.body.backedge_crit_edge ]
  %busy.161.be = phi i32 [ %busy.3, %for.inc.for.body.backedge_crit_edge ], [ 0, %if.then1.for.body.backedge_crit_edge ]
  br label %for.body

do.cond:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy.3)
  %tobool14.not = icmp eq i32 %busy.3, 0
  br i1 %tobool14.not, label %do.cond.do.end_crit_edge, label %land.rhs

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.rhs:                                         ; preds = %do.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %if.then1, label %do.endthread-pre-split

do.endthread-pre-split:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %.pr = load i32, ptr @slip_maxdev, align 4
  br label %do.end

do.end:                                           ; preds = %do.endthread-pre-split, %do.cond.do.end_crit_edge
  %11 = phi i32 [ %.pr, %do.endthread-pre-split ], [ %9, %do.cond.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1763 = icmp sgt i32 %11, 0
  br i1 %cmp1763, label %do.end.for.body18_crit_edge, label %do.end.for.end35_crit_edge

do.end.for.end35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end35

do.end.for.body18_crit_edge:                      ; preds = %do.end
  br label %for.body18

for.body18:                                       ; preds = %for.inc33.for.body18_crit_edge, %do.end.for.body18_crit_edge
  %i.164 = phi i32 [ %inc34, %for.inc33.for.body18_crit_edge ], [ 0, %do.end.for.body18_crit_edge ]
  %12 = load ptr, ptr @slip_devs, align 4
  %arrayidx19 = getelementptr ptr, ptr %12, i32 %i.164
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %for.body18.for.inc33_crit_edge, label %if.end22

for.body18.for.inc33_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc33

if.end22:                                         ; preds = %for.body18
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx19, align 4
  %tty25 = getelementptr i8, ptr %14, i32 2308
  %16 = ptrtoint ptr %tty25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty25, align 4
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end22.if.end32_crit_edge, label %do.end30

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %14) #19
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end22.if.end32_crit_edge
  tail call void @unregister_netdev(ptr noundef nonnull %14) #16
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32, %for.body18.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %i.164, 1
  %18 = load i32, ptr @slip_maxdev, align 4
  %cmp17 = icmp slt i32 %inc34, %18
  br i1 %cmp17, label %for.inc33.for.body18_crit_edge, label %for.inc33.for.end35_crit_edge

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end35

for.inc33.for.body18_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %do.end.for.end35_crit_edge, %if.then1.for.end35_crit_edge, %if.end2.preheader.for.end35_crit_edge
  %19 = load ptr, ptr @slip_devs, align 4
  tail call void @kfree(ptr noundef %19) #16
  store ptr null, ptr @slip_devs, align 4
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @sl_ldisc) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @slip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @slip_maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  store i32 4, ptr @slip_maxdev, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %1 = load i32, ptr @slip_maxdev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.41, i32 noundef %1) #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #19
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #19
  %2 = load i32, ptr @slip_maxdev, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #16
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !130

kcalloc.exit.thread:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  store ptr null, ptr @slip_devs, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #20
  store ptr %call8.i.i, ptr @slip_devs, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end13

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end7.i.i
  %call14 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @sl_ldisc) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end13.cleanup_crit_edge, label %do.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %call14) #19
  %6 = load ptr, ptr @slip_devs, align 4
  tail call void @kfree(ptr noundef %6) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end13.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call14, %do.end19 ], [ 0, %if.end13.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slip_open(ptr noundef %tty) #4 align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @rtnl_lock() #16
  %4 = load i32, ptr @slip_maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14.i = icmp sgt i32 %4, 0
  br i1 %cmp14.i, label %if.end2.for.body.i_crit_edge, label %if.end2.sl_sync.exit_crit_edge

if.end2.sl_sync.exit_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_sync.exit

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end2.for.body.i_crit_edge ]
  %5 = load ptr, ptr @slip_devs, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.015.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %7, null
  br i1 %cmp1.i, label %for.body.i.sl_sync.exit_crit_edge, label %if.end.i

for.body.i.sl_sync.exit_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_sync.exit

if.end.i:                                         ; preds = %for.body.i
  %tty.i = getelementptr i8, ptr %7, i32 2308
  %8 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %leased.i = getelementptr i8, ptr %7, i32 2453
  %10 = ptrtoint ptr %leased.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %leased.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.for.inc.i_crit_edge, label %if.then6.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dev_close(ptr noundef nonnull %7) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end4.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %14 = load i32, ptr @slip_maxdev, align 4
  %cmp.i = icmp slt i32 %inc.i, %14
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sl_sync.exit_crit_edge

for.inc.i.sl_sync.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_sync.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

sl_sync.exit:                                     ; preds = %for.inc.i.sl_sync.exit_crit_edge, %for.body.i.sl_sync.exit_crit_edge, %if.end2.sl_sync.exit_crit_edge
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %15 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %sl_sync.exit.if.end5_crit_edge, label %land.lhs.true

sl_sync.exit.if.end5_crit_edge:                   ; preds = %sl_sync.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true:                                    ; preds = %sl_sync.exit
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21250, i32 %18)
  %cmp3 = icmp eq i32 %18, 21250
  br i1 %cmp3, label %land.lhs.true.err_exit_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true.err_exit_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_exit

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %sl_sync.exit.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #16
  %19 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %20 = load i32, ptr @slip_maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp53.i = icmp sgt i32 %20, 0
  br i1 %cmp53.i, label %for.body.lr.ph.i, label %if.end5.sl_alloc.exit.thread_crit_edge

if.end5.sl_alloc.exit.thread_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end5
  %21 = load ptr, ptr @slip_devs, align 4
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.inc.i81.for.body.i79_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i80, %for.inc.i81.for.body.i79_crit_edge ]
  %arrayidx.i77 = getelementptr ptr, ptr %21, i32 %i.054.i
  %22 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i77, align 4
  %cmp1.i78 = icmp eq ptr %23, null
  br i1 %cmp1.i78, label %if.end4.i83, label %for.inc.i81

for.inc.i81:                                      ; preds = %for.body.i79
  %inc.i80 = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i80, %20
  br i1 %exitcond.not.i, label %for.inc.i81.sl_alloc.exit.thread_crit_edge, label %for.inc.i81.for.body.i79_crit_edge

for.inc.i81.for.body.i79_crit_edge:               ; preds = %for.inc.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i79

for.inc.i81.sl_alloc.exit.thread_crit_edge:       ; preds = %for.inc.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc.exit.thread

if.end4.i83:                                      ; preds = %for.body.i79
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.4, i32 noundef %i.054.i) #16
  %call6.i = call ptr @alloc_netdev_mqs(i32 noundef 256, ptr noundef nonnull %name.i, i8 noundef zeroext 0, ptr noundef nonnull @sl_setup, i32 noundef 1, i32 noundef 1) #16
  %tobool.not.i82 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i82, label %if.end4.i83.sl_alloc.exit.thread_crit_edge, label %sl_alloc.exit

if.end4.i83.sl_alloc.exit.thread_crit_edge:       ; preds = %if.end4.i83
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc.exit.thread

sl_alloc.exit.thread:                             ; preds = %if.end4.i83.sl_alloc.exit.thread_crit_edge, %for.inc.i81.sl_alloc.exit.thread_crit_edge, %if.end5.sl_alloc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #16
  br label %err_exit

sl_alloc.exit:                                    ; preds = %if.end4.i83
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 5
  %24 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.054.i, ptr %base_addr.i, align 32
  %add.ptr.i.i = getelementptr i8, ptr %call6.i, i32 2304
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 21250, ptr %add.ptr.i.i, align 4
  %dev10.i = getelementptr i8, ptr %call6.i, i32 2312
  %26 = ptrtoint ptr %dev10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call6.i, ptr %dev10.i, align 4
  %lock.i = getelementptr i8, ptr %call6.i, i32 2316
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @sl_alloc.__key, i16 noundef signext 3) #16
  %tx_work.i = getelementptr i8, ptr %call6.i, i32 2360
  call void @__init_work(ptr noundef %tx_work.i, i32 noundef 0) #16
  %27 = ptrtoint ptr %tx_work.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %tx_work.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %call6.i, i32 2376
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @sl_alloc.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry16.i = getelementptr i8, ptr %call6.i, i32 2364
  %28 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry16.i, ptr %entry16.i, align 4
  %prev.i.i = getelementptr i8, ptr %call6.i, i32 2368
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry16.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %call6.i, i32 2372
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @slip_transmit, ptr %func.i, align 4
  %mode.i = getelementptr i8, ptr %call6.i, i32 2452
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %mode.i, align 4
  %keepalive_timer.i = getelementptr i8, ptr %call6.i, i32 2512
  call void @init_timer_key(ptr noundef %keepalive_timer.i, ptr noundef nonnull @sl_keepalive, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @sl_alloc.__key.8) #16
  %outfill_timer.i = getelementptr i8, ptr %call6.i, i32 2464
  call void @init_timer_key(ptr noundef %outfill_timer.i, ptr noundef nonnull @sl_outfill, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @sl_alloc.__key.10) #16
  %32 = load ptr, ptr @slip_devs, align 4
  %arrayidx26.i = getelementptr ptr, ptr %32, i32 %i.054.i
  %33 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call6.i, ptr %arrayidx26.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #16
  %cmp7 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp7, label %sl_alloc.exit.err_exit_crit_edge, label %if.end9

sl_alloc.exit.err_exit_crit_edge:                 ; preds = %sl_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_exit

if.end9:                                          ; preds = %sl_alloc.exit
  %tty10 = getelementptr i8, ptr %call6.i, i32 2308
  %34 = ptrtoint ptr %tty10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tty, ptr %tty10, align 4
  %35 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i, ptr %disc_data, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i84 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i84 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid, align 8
  %pid13 = getelementptr i8, ptr %call6.i, i32 2456
  %42 = ptrtoint ptr %pid13 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %pid13, align 4
  %flags = getelementptr i8, ptr %call6.i, i32 2448
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool15.not = icmp eq i32 %and1.i, 0
  br i1 %tobool15.not, label %if.then16, label %if.end9.if.end26_crit_edge

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then16:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3264, i32 noundef 1156) #21
  %cmp1.i85 = icmp eq ptr %call7.i.i, null
  br i1 %cmp1.i85, label %if.then16.sl_alloc_bufs.exit_crit_edge, label %if.end3.i

if.then16.sl_alloc_bufs.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc_bufs.exit

if.end3.i:                                        ; preds = %if.then16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i1.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 1156) #21
  %cmp6.i = icmp eq ptr %call7.i1.i, null
  br i1 %cmp6.i, label %if.end3.i.sl_alloc_bufs.exit_crit_edge, label %if.end8.i86

if.end3.i.sl_alloc_bufs.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc_bufs.exit

if.end8.i86:                                      ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i2.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 1156) #21
  %cmp11.i = icmp eq ptr %call7.i2.i, null
  br i1 %cmp11.i, label %if.end8.i86.sl_alloc_bufs.exit_crit_edge, label %if.end13.i

if.end8.i86.sl_alloc_bufs.exit_crit_edge:         ; preds = %if.end8.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc_bufs.exit

if.end13.i:                                       ; preds = %if.end8.i86
  %call14.i = call ptr @slhc_init(i32 noundef 16, i32 noundef 16) #16
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end13.i.sl_alloc_bufs.exit_crit_edge, label %if.end17.i

if.end13.i.sl_alloc_bufs.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_alloc_bufs.exit

if.end17.i:                                       ; preds = %if.end13.i
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #16
  %48 = ptrtoint ptr %tty10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tty10, align 4
  %cmp18.i = icmp eq ptr %49, null
  br i1 %cmp18.i, label %if.end17.i.err_exit.sink.split.i_crit_edge, label %if.end21.i

if.end17.i.err_exit.sink.split.i_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_exit.sink.split.i

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %mtu22.i = getelementptr i8, ptr %call6.i, i32 2432
  %50 = ptrtoint ptr %mtu22.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 296, ptr %mtu22.i, align 4
  %buffsize.i = getelementptr i8, ptr %call6.i, i32 2436
  %51 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1152, ptr %buffsize.i, align 4
  %rcount.i = getelementptr i8, ptr %call6.i, i32 2416
  %52 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %rcount.i, align 4
  %xleft.i = getelementptr i8, ptr %call6.i, i32 2428
  %53 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %xleft.i, align 4
  %rbuff23.i = getelementptr i8, ptr %call6.i, i32 2412
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rbuff23.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !131
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @llvm.prefetch.p0(ptr %rbuff23.i, i32 1, i32 3, i32 1) #16
  %55 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %54, ptr %rbuff23.i) #16, !srcloc !132
  %asmresult.i.i = extractvalue { i32, i32 } %55, 0
  %56 = inttoptr i32 %asmresult.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !133
  %xbuff40.i = getelementptr i8, ptr %call6.i, i32 2420
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %xbuff40.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !134
  %57 = ptrtoint ptr %call7.i1.i to i32
  call void @llvm.prefetch.p0(ptr %xbuff40.i, i32 1, i32 3, i32 1) #16
  %58 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %57, ptr %xbuff40.i) #16, !srcloc !132
  %asmresult.i6.i = extractvalue { i32, i32 } %58, 0
  %59 = inttoptr i32 %asmresult.i6.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !135
  %cbuff62.i = getelementptr i8, ptr %call6.i, i32 2408
  %call.i4.i = call zeroext i1 @__kasan_check_write(ptr noundef %cbuff62.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  %60 = ptrtoint ptr %call7.i2.i to i32
  call void @llvm.prefetch.p0(ptr %cbuff62.i, i32 1, i32 3, i32 1) #16
  %61 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %60, ptr %cbuff62.i) #16, !srcloc !132
  %asmresult.i7.i = extractvalue { i32, i32 } %61, 0
  %62 = inttoptr i32 %asmresult.i7.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !137
  %slcomp84.i = getelementptr i8, ptr %call6.i, i32 2404
  %call.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %slcomp84.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !138
  %63 = ptrtoint ptr %call14.i to i32
  call void @llvm.prefetch.p0(ptr %slcomp84.i, i32 1, i32 3, i32 1) #16
  %64 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %63, ptr %slcomp84.i) #16, !srcloc !132
  %asmresult.i8.i = extractvalue { i32, i32 } %64, 0
  %65 = inttoptr i32 %asmresult.i8.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !139
  %xdata.i = getelementptr i8, ptr %call6.i, i32 2440
  %66 = ptrtoint ptr %xdata.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %xdata.i, align 4
  %xbits.i = getelementptr i8, ptr %call6.i, i32 2444
  %67 = ptrtoint ptr %xbits.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %xbits.i, align 4
  br label %err_exit.sink.split.i

err_exit.sink.split.i:                            ; preds = %if.end21.i, %if.end17.i.err_exit.sink.split.i_crit_edge
  %slcomp.0.ph.i = phi ptr [ %65, %if.end21.i ], [ %call14.i, %if.end17.i.err_exit.sink.split.i_crit_edge ]
  %cbuff.0.ph.i = phi ptr [ %62, %if.end21.i ], [ %call7.i2.i, %if.end17.i.err_exit.sink.split.i_crit_edge ]
  %xbuff.0.ph.i = phi ptr [ %59, %if.end21.i ], [ %call7.i1.i, %if.end17.i.err_exit.sink.split.i_crit_edge ]
  %rbuff.0.ph.i = phi ptr [ %56, %if.end21.i ], [ %call7.i.i, %if.end17.i.err_exit.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ 0, %if.end21.i ], [ -19, %if.end17.i.err_exit.sink.split.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  br label %sl_alloc_bufs.exit

sl_alloc_bufs.exit:                               ; preds = %err_exit.sink.split.i, %if.end13.i.sl_alloc_bufs.exit_crit_edge, %if.end8.i86.sl_alloc_bufs.exit_crit_edge, %if.end3.i.sl_alloc_bufs.exit_crit_edge, %if.then16.sl_alloc_bufs.exit_crit_edge
  %slcomp.0.i = phi ptr [ null, %if.then16.sl_alloc_bufs.exit_crit_edge ], [ null, %if.end3.i.sl_alloc_bufs.exit_crit_edge ], [ null, %if.end8.i86.sl_alloc_bufs.exit_crit_edge ], [ %call14.i, %if.end13.i.sl_alloc_bufs.exit_crit_edge ], [ %slcomp.0.ph.i, %err_exit.sink.split.i ]
  %cbuff.0.i = phi ptr [ null, %if.then16.sl_alloc_bufs.exit_crit_edge ], [ null, %if.end3.i.sl_alloc_bufs.exit_crit_edge ], [ null, %if.end8.i86.sl_alloc_bufs.exit_crit_edge ], [ %call7.i2.i, %if.end13.i.sl_alloc_bufs.exit_crit_edge ], [ %cbuff.0.ph.i, %err_exit.sink.split.i ]
  %xbuff.0.i = phi ptr [ null, %if.then16.sl_alloc_bufs.exit_crit_edge ], [ null, %if.end3.i.sl_alloc_bufs.exit_crit_edge ], [ %call7.i1.i, %if.end8.i86.sl_alloc_bufs.exit_crit_edge ], [ %call7.i1.i, %if.end13.i.sl_alloc_bufs.exit_crit_edge ], [ %xbuff.0.ph.i, %err_exit.sink.split.i ]
  %rbuff.0.i = phi ptr [ null, %if.then16.sl_alloc_bufs.exit_crit_edge ], [ %call7.i.i, %if.end3.i.sl_alloc_bufs.exit_crit_edge ], [ %call7.i.i, %if.end8.i86.sl_alloc_bufs.exit_crit_edge ], [ %call7.i.i, %if.end13.i.sl_alloc_bufs.exit_crit_edge ], [ %rbuff.0.ph.i, %err_exit.sink.split.i ]
  %err.0.i = phi i32 [ -105, %if.then16.sl_alloc_bufs.exit_crit_edge ], [ -105, %if.end3.i.sl_alloc_bufs.exit_crit_edge ], [ -105, %if.end8.i86.sl_alloc_bufs.exit_crit_edge ], [ -105, %if.end13.i.sl_alloc_bufs.exit_crit_edge ], [ %err.0.ph.i, %err_exit.sink.split.i ]
  call void @kfree(ptr noundef %cbuff.0.i) #16
  call void @slhc_free(ptr noundef %slcomp.0.i) #16
  call void @kfree(ptr noundef %xbuff.0.i) #16
  call void @kfree(ptr noundef %rbuff.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool18.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool18.not, label %if.end20, label %sl_alloc_bufs.exit.err_free_chan_crit_edge

sl_alloc_bufs.exit.err_free_chan_crit_edge:       ; preds = %sl_alloc_bufs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_chan

if.end20:                                         ; preds = %sl_alloc_bufs.exit
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #16
  %68 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev10.i, align 4
  %call22 = call i32 @register_netdevice(ptr noundef %69) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %err_free_bufs

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end26:                                         ; preds = %if.end20.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %keepalive = getelementptr i8, ptr %call6.i, i32 2461
  %70 = ptrtoint ptr %keepalive to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %keepalive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool27.not = icmp eq i8 %71, 0
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i8 %71 to i32
  %mul = mul nuw nsw i32 %conv, 100
  %add = add i32 %72, %mul
  %expires = getelementptr i8, ptr %call6.i, i32 2520
  %73 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add, ptr %expires, align 4
  call void @add_timer(ptr noundef %keepalive_timer.i) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %outfill = getelementptr i8, ptr %call6.i, i32 2460
  %74 = ptrtoint ptr %outfill to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %outfill, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool32.not = icmp eq i8 %75, 0
  br i1 %tobool32.not, label %if.end31.if.end40_crit_edge, label %if.then33

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %conv35 = zext i8 %75 to i32
  %mul36 = mul nuw nsw i32 %conv35, 100
  %add37 = add i32 %76, %mul36
  %expires38 = getelementptr i8, ptr %call6.i, i32 2472
  %77 = ptrtoint ptr %expires38 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add37, ptr %expires38, align 4
  call void @add_timer(ptr noundef %outfill_timer.i) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end31.if.end40_crit_edge
  call void @rtnl_unlock() #16
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %78 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 65536, ptr %receive_room, align 4
  br label %cleanup

err_free_bufs:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @sl_free_bufs(ptr noundef nonnull %add.ptr.i.i)
  br label %err_free_chan

err_free_chan:                                    ; preds = %err_free_bufs, %sl_alloc_bufs.exit.err_free_chan_crit_edge
  %err.0 = phi i32 [ %err.0.i, %sl_alloc_bufs.exit.err_free_chan_crit_edge ], [ %call22, %err_free_bufs ]
  %79 = ptrtoint ptr %tty10 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %tty10, align 4
  %80 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %disc_data, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #16
  %81 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev10.i, align 4
  %base_addr.i89 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %base_addr.i89 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base_addr.i89, align 32
  %85 = load ptr, ptr @slip_devs, align 4
  %arrayidx.i90 = getelementptr ptr, ptr %85, i32 %84
  %86 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx.i90, align 4
  call void @rtnl_unlock() #16
  %87 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev10.i, align 4
  call void @free_netdev(ptr noundef %88) #16
  br label %cleanup

err_exit:                                         ; preds = %sl_alloc.exit.err_exit_crit_edge, %sl_alloc.exit.thread, %land.lhs.true.err_exit_crit_edge
  %err.1 = phi i32 [ -17, %land.lhs.true.err_exit_crit_edge ], [ -23, %sl_alloc.exit.err_exit_crit_edge ], [ -23, %sl_alloc.exit.thread ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %err_free_chan, %if.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_exit ], [ 0, %if.end40 ], [ %err.0, %err_free_chan ], [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slip_close(ptr noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21250, i32 %3)
  %cmp.not = icmp eq i32 %3, 21250
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %tty2 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tty2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty2, align 4
  %cmp3.not = icmp eq ptr %5, %tty
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %6 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %disc_data, align 4
  %7 = ptrtoint ptr %tty2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tty2, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  tail call void @synchronize_rcu() #16
  %tx_work = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @flush_work(ptr noundef %tx_work) #16
  %keepalive_timer = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 23
  %call41 = tail call i32 @del_timer_sync(ptr noundef %keepalive_timer) #16
  %outfill_timer = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 22
  %call42 = tail call i32 @del_timer_sync(ptr noundef %outfill_timer) #16
  %dev = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slip_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21250, i32 %4)
  %cmp.not = icmp eq i32 %4, 21250
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 35088, label %sw.bb
    i32 35109, label %sw.bb8
    i32 35110, label %sw.bb15
    i32 35108, label %if.end.cleanup_crit_edge
    i32 35312, label %sw.bb42
    i32 35313, label %sw.bb81
    i32 35314, label %sw.bb102
    i32 35315, label %sw.bb145
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dev = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = tail call i32 @strlen(ptr noundef %7) #22
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sw.bb
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !140

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.bb
  tail call void @__check_object_size(ptr noundef %7, i32 noundef %add, i1 noundef zeroext true) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %add, i32 -1226833920) #23, !srcloc !141
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef %add) #16
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %7, i32 noundef %add) #16
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool5.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select239 = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %mode = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode, align 4
  %conv = zext i8 %10 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1094) #16
  %11 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !142
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %conv, i32 -1226833921) #16, !srcloc !145
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  %.214 = select i1 %tobool12.not, i32 0, i32 -14
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1099) #16
  %15 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i217 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i217 to ptr
  %cpu_domain.i.i218 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i218) #12, !srcloc !142
  %and.i219 = and i32 %17, -13
  %or.i220 = or i32 %and.i219, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i220) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #16, !srcloc !146
  %asmresult = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool26.not = icmp eq i32 %asmresult, 0
  br i1 %tobool26.not, label %if.end28, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  %asmresult24 = extractvalue { i32, i32 } %18, 1
  %and = and i32 %asmresult24, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %cmp29 = icmp eq i32 %and, 9
  %and32 = and i32 %asmresult24, -9
  %spec.select = select i1 %cmp29, i32 %and32, i32 %asmresult24
  %conv34 = trunc i32 %spec.select to i8
  %mode35 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %mode35 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv34, ptr %mode35, align 4
  %20 = trunc i32 %spec.select to i16
  %21 = and i16 %20, 255
  %conv39 = or i16 %21, 256
  %dev40 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev40, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv39, ptr %type, align 16
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1124) #16
  %25 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i221 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i221 to ptr
  %cpu_domain.i.i222 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i222) #12, !srcloc !142
  %and.i223 = and i32 %27, -13
  %or.i224 = or i32 %and.i223, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i224) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  %28 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #16, !srcloc !147
  %asmresult52 = extractvalue { i32, i32 } %28, 0
  %asmresult53 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult52)
  %tobool55.not = icmp eq i32 %asmresult52, 0
  br i1 %tobool55.not, label %if.end57, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end57:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %asmresult53)
  %cmp58 = icmp ugt i32 %asmresult53, 255
  br i1 %cmp58, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %lock = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %tty62 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %tty62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tty62, align 4
  %tobool63.not = icmp eq ptr %30, null
  br i1 %tobool63.not, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %conv67 = trunc i32 %asmresult53 to i8
  %keepalive = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %keepalive to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv67, ptr %keepalive, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult53)
  %cmp70.not = icmp eq i32 %asmresult53, 0
  %keepalive_timer77 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 23
  br i1 %cmp70.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %mul = mul nuw nsw i32 %asmresult53, 100
  %add75 = add i32 %32, %mul
  %call76 = tail call i32 @mod_timer(ptr noundef %keepalive_timer77, i32 noundef %add75) #16
  %flags = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #16
  br label %if.end79

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %call78 = tail call i32 @del_timer(ptr noundef %keepalive_timer77) #16
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then72
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

sw.bb81:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %keepalive86 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 21
  %33 = ptrtoint ptr %keepalive86 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %keepalive86, align 1
  %conv87 = zext i8 %34 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1145) #16
  %35 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i225 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i225 to ptr
  %cpu_domain.i.i226 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i226) #12, !srcloc !142
  %and.i227 = and i32 %37, -13
  %or.i228 = or i32 %and.i227, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i228) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %conv87, i32 -1226833921) #16, !srcloc !148
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool99.not = icmp eq i32 %38, 0
  %.215 = select i1 %tobool99.not, i32 0, i32 -14
  br label %cleanup

sw.bb102:                                         ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1150) #16
  %39 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i229 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i229 to ptr
  %cpu_domain.i.i230 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i230) #12, !srcloc !142
  %and.i231 = and i32 %41, -13
  %or.i232 = or i32 %and.i231, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i232) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  %42 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #16, !srcloc !149
  %asmresult112 = extractvalue { i32, i32 } %42, 0
  %asmresult113 = extractvalue { i32, i32 } %42, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult112)
  %tobool115.not = icmp eq i32 %asmresult112, 0
  br i1 %tobool115.not, label %if.end117, label %sw.bb102.cleanup_crit_edge

sw.bb102.cleanup_crit_edge:                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end117:                                        ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %asmresult113)
  %cmp118 = icmp ugt i32 %asmresult113, 255
  br i1 %cmp118, label %if.end117.cleanup_crit_edge, label %if.end121

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end121:                                        ; preds = %if.end117
  %lock122 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock122) #16
  %tty123 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %tty123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tty123, align 4
  %tobool124.not = icmp eq ptr %44, null
  br i1 %tobool124.not, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock122) #16
  br label %cleanup

if.end127:                                        ; preds = %if.end121
  %conv128 = trunc i32 %asmresult113 to i8
  %outfill = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 20
  %45 = ptrtoint ptr %outfill to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv128, ptr %outfill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult113)
  %cmp131.not = icmp eq i32 %asmresult113, 0
  %outfill_timer141 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 22
  br i1 %cmp131.not, label %if.else140, label %if.then133

if.then133:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %mul136 = mul nuw nsw i32 %asmresult113, 100
  %add137 = add i32 %46, %mul136
  %call138 = tail call i32 @mod_timer(ptr noundef %outfill_timer141, i32 noundef %add137) #16
  %flags139 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags139) #16
  br label %if.end143

if.else140:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  %call142 = tail call i32 @del_timer(ptr noundef %outfill_timer141) #16
  br label %if.end143

if.end143:                                        ; preds = %if.else140, %if.then133
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock122) #16
  br label %cleanup

sw.bb145:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %outfill150 = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 20
  %47 = ptrtoint ptr %outfill150 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %outfill150, align 4
  %conv151 = zext i8 %48 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1170) #16
  %49 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i233 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i233 to ptr
  %cpu_domain.i.i234 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i234) #12, !srcloc !142
  %and.i235 = and i32 %51, -13
  %or.i236 = or i32 %and.i235, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i236) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %conv151, i32 -1226833921) #16, !srcloc !150
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #16, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool163.not = icmp eq i32 %52, 0
  %.216 = select i1 %tobool163.not, i32 0, i32 -14
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call166 = tail call i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb145, %if.end143, %if.then125, %if.end117.cleanup_crit_edge, %sw.bb102.cleanup_crit_edge, %sw.bb81, %if.end79, %if.then64, %if.end57.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %if.end28, %sw.bb15.cleanup_crit_edge, %sw.bb8, %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call166, %sw.default ], [ 0, %if.end143 ], [ -19, %if.then125 ], [ 0, %if.end79 ], [ -19, %if.then64 ], [ 0, %if.end28 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %.214, %sw.bb8 ], [ -14, %sw.bb15.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %sw.bb42.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ], [ %.215, %sw.bb81 ], [ -14, %sw.bb102.cleanup_crit_edge ], [ -22, %if.end117.cleanup_crit_edge ], [ %.216, %sw.bb145 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select239, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slip_hangup(ptr noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @slip_close(ptr noundef %tty)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slip_receive_buf(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %cp, ptr noundef readonly %fp, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21250, i32 %3)
  %cmp.not = icmp eq i32 %3, 21250
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not44 = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.i.not, %tobool2.not44
  br i1 %or.cond, label %lor.lhs.false1.cleanup_crit_edge, label %while.body.lr.ph

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %lor.lhs.false1
  %flags = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 16
  %mode = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 17
  %xdata20.i = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 14
  %xbits23.i = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 15
  %rcount37.i = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 8
  %buffsize.i = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 13
  %rbuff.i = getelementptr inbounds %struct.slip, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec47.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec47, %while.cond.backedge.while.body_crit_edge ]
  %fp.addr.046 = phi ptr [ %fp, %while.body.lr.ph ], [ %fp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %cp.addr.045 = phi ptr [ %cp, %while.body.lr.ph ], [ %cp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dec47 = add i32 %dec47.in, -1
  %tobool3.not = icmp eq ptr %fp.addr.046, null
  br i1 %tobool3.not, label %while.body.if.end12_crit_edge, label %land.lhs.true

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

land.lhs.true:                                    ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %fp.addr.046, i32 1
  %8 = ptrtoint ptr %fp.addr.046 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fp.addr.046, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end12_crit_edge, label %if.then5

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.while.cond.backedge_crit_edge

if.then5.while.cond.backedge_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 4
  %12 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end33.i, %if.then31.i, %sw.epilog.i.while.cond.backedge_crit_edge, %sw.bb10.i, %if.end7.i, %if.end42.i, %if.then40.i, %if.then27.i.while.cond.backedge_crit_edge, %if.then19.i.while.cond.backedge_crit_edge, %if.else.i.while.cond.backedge_crit_edge, %if.end10.i, %if.then8, %if.then5.while.cond.backedge_crit_edge
  %fp.addr.0.be = phi ptr [ %incdec.ptr, %if.then8 ], [ %incdec.ptr, %if.then5.while.cond.backedge_crit_edge ], [ %fp.addr.1, %if.end33.i ], [ %fp.addr.1, %if.then31.i ], [ %fp.addr.1, %sw.epilog.i.while.cond.backedge_crit_edge ], [ %fp.addr.1, %sw.bb10.i ], [ %fp.addr.1, %if.end7.i ], [ %fp.addr.1, %if.end42.i ], [ %fp.addr.1, %if.then40.i ], [ %fp.addr.1, %if.then27.i.while.cond.backedge_crit_edge ], [ %fp.addr.1, %if.then19.i.while.cond.backedge_crit_edge ], [ %fp.addr.1, %if.else.i.while.cond.backedge_crit_edge ], [ %fp.addr.1, %if.end10.i ]
  %cp.addr.0.be = getelementptr i8, ptr %cp.addr.045, i32 1
  %tobool2.not = icmp eq i32 %dec47, 0
  br i1 %tobool2.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %fp.addr.1 = phi ptr [ %incdec.ptr, %land.lhs.true.if.end12_crit_edge ], [ null, %while.body.if.end12_crit_edge ]
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode, align 4
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %cp.addr.045 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cp.addr.045, align 1
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %18)
  %cmp.i = icmp eq i8 %18, 112
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then15
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %call5.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %22 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rcount37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp7.i = icmp sgt i32 %23, 2
  br i1 %cmp7.i, label %if.then9.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @sl_bump(ptr noundef nonnull %1) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %24 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rcount37.i, align 4
  %25 = ptrtoint ptr %xbits23.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %xbits23.i, align 4
  %26 = ptrtoint ptr %xdata20.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %xdata20.i, align 4
  br label %while.cond.backedge

if.else.i:                                        ; preds = %if.then15
  %27 = add i8 %18, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %27)
  %28 = icmp ult i8 %27, 64
  br i1 %28, label %if.then19.i, label %if.else.i.while.cond.backedge_crit_edge

if.else.i.while.cond.backedge_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then19.i:                                      ; preds = %if.else.i
  %29 = ptrtoint ptr %xdata20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xdata20.i, align 4
  %shl.i = shl i32 %30, 6
  %31 = add nuw nsw i8 %18, 16
  %32 = and i8 %31, 63
  %and.i = zext i8 %32 to i32
  %or.i = or i32 %shl.i, %and.i
  store i32 %or.i, ptr %xdata20.i, align 4
  %33 = ptrtoint ptr %xbits23.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xbits23.i, align 4
  %add.i = add i32 %34, 6
  store i32 %add.i, ptr %xbits23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add.i)
  %cmp25.i = icmp sgt i32 %add.i, 7
  br i1 %cmp25.i, label %if.then27.i, label %if.then19.i.while.cond.backedge_crit_edge

if.then19.i.while.cond.backedge_crit_edge:        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then27.i:                                      ; preds = %if.then19.i
  %sub29.i = add nsw i32 %34, -2
  %35 = ptrtoint ptr %xbits23.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub29.i, ptr %xbits23.i, align 4
  %shr.i = ashr i32 %or.i, %sub29.i
  %conv32.i = trunc i32 %shr.i to i8
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool35.not.i = icmp eq i32 %38, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.then27.i.while.cond.backedge_crit_edge

if.then27.i.while.cond.backedge_crit_edge:        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then36.i:                                      ; preds = %if.then27.i
  %39 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rcount37.i, align 4
  %41 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buffsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp38.i = icmp slt i32 %40, %42
  br i1 %cmp38.i, label %if.then40.i, label %if.end42.i

if.then40.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %rbuff.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rbuff.i, align 4
  %inc.i = add nsw i32 %40, 1
  %45 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc.i, ptr %rcount37.i, align 4
  %arrayidx.i = getelementptr i8, ptr %44, i32 %40
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv32.i, ptr %arrayidx.i, align 1
  br label %while.cond.backedge

if.end42.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36, i32 11
  %49 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_over_errors.i, align 4
  %inc43.i = add i32 %50, 1
  store i32 %inc43.i, ptr %rx_over_errors.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #16
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end12
  %51 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %18, label %if.else.sw.epilog.i_crit_edge [
    i8 -64, label %sw.bb.i
    i8 -37, label %sw.bb10.i
    i8 -35, label %sw.bb12.i
    i8 -36, label %sw.bb18.i
  ]

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags, align 4
  %54 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i30 = icmp eq i32 %54, 0
  br i1 %tobool.not.i30, label %sw.bb.i.if.end.i32_crit_edge, label %if.then.i31

sw.bb.i.if.end.i32_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i32

if.then.i31:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #16
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then.i31, %sw.bb.i.if.end.i32_crit_edge
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i35, label %if.end.i32.if.end7.i_crit_edge

if.end.i32.if.end7.i_crit_edge:                   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

land.lhs.true.i35:                                ; preds = %if.end.i32
  %55 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rcount37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i34 = icmp sgt i32 %56, 2
  br i1 %cmp.i34, label %if.then6.i, label %land.lhs.true.i35.if.end7.i_crit_edge

land.lhs.true.i35.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then6.i:                                       ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @sl_bump(ptr noundef nonnull %1) #16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %land.lhs.true.i35.if.end7.i_crit_edge, %if.end.i32.if.end7.i_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  %57 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rcount37.i, align 4
  br label %while.cond.backedge

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #16
  br label %while.cond.backedge

sw.bb12.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  %spec.select.i = select i1 %tobool15.not.i, i8 -35, i8 -37
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call20.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  %spec.select54.i = select i1 %tobool21.not.i, i8 -36, i8 -64
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %sw.bb12.i, %if.else.sw.epilog.i_crit_edge
  %s.addr.0.i = phi i8 [ %18, %if.else.sw.epilog.i_crit_edge ], [ %spec.select.i, %sw.bb12.i ], [ %spec.select54.i, %sw.bb18.i ]
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags, align 4
  %60 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool26.not.i = icmp eq i32 %60, 0
  br i1 %tobool26.not.i, label %if.then27.i37, label %sw.epilog.i.while.cond.backedge_crit_edge

sw.epilog.i.while.cond.backedge_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then27.i37:                                    ; preds = %sw.epilog.i
  %61 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rcount37.i, align 4
  %63 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buffsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp29.i = icmp slt i32 %62, %64
  br i1 %cmp29.i, label %if.then31.i, label %if.end33.i

if.then31.i:                                      ; preds = %if.then27.i37
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %rbuff.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rbuff.i, align 4
  %inc.i39 = add nsw i32 %62, 1
  %67 = ptrtoint ptr %rcount37.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc.i39, ptr %rcount37.i, align 4
  %arrayidx.i40 = getelementptr i8, ptr %66, i32 %62
  %68 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %s.addr.0.i, ptr %arrayidx.i40, align 1
  br label %while.cond.backedge

if.end33.i:                                       ; preds = %if.then27.i37
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %rx_over_errors.i42 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 36, i32 11
  %71 = ptrtoint ptr %rx_over_errors.i42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_over_errors.i42, align 4
  %inc34.i = add i32 %72, 1
  store i32 %inc34.i, ptr %rx_over_errors.i42, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #16
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slip_write_wakeup(ptr noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !151
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %disc_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @slip_write_wakeup.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @slip_write_wakeup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 459, ptr noundef nonnull @.str.35) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  %tx_work = getelementptr inbounds %struct.slip, ptr %5, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %tx_work) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !152
  %7 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i.i.i.i.i22 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sl_free_bufs(ptr noundef %sl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rbuff = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 7
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rbuff, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !153
  tail call void @llvm.prefetch.p0(ptr %rbuff, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %rbuff) #16, !srcloc !132
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !154
  tail call void @kfree(ptr noundef %1) #16
  %xbuff = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 9
  %call.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xbuff, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %xbuff, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xbuff) #16, !srcloc !132
  %asmresult.i88 = extractvalue { i32, i32 } %2, 0
  %3 = inttoptr i32 %asmresult.i88 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !156
  tail call void @kfree(ptr noundef %3) #16
  %cbuff = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 6
  %call.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cbuff, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %cbuff, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cbuff) #16, !srcloc !132
  %asmresult.i89 = extractvalue { i32, i32 } %4, 0
  %5 = inttoptr i32 %asmresult.i89 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !158
  tail call void @kfree(ptr noundef %5) #16
  %slcomp = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 5
  %call.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %slcomp, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %slcomp, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %slcomp) #16, !srcloc !132
  %asmresult.i90 = extractvalue { i32, i32 } %6, 0
  %7 = inttoptr i32 %asmresult.i90 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !160
  tail call void @slhc_free(ptr noundef %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sl_free_netdev(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = load ptr, ptr @slip_devs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sl_setup(ptr nocapture noundef writeonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sl_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %2 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sl_free_netdev, ptr %priv_destructor, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %5 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %tx_queue_len, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %7 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65534, ptr %max_mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4240, ptr %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slip_transmit(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %tty = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21250, i32 %3)
  %cmp.not = icmp eq i32 %3, 21250
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %dev = getelementptr i8, ptr %work, i32 -48
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false1.if.then_crit_edge, label %if.end

lor.lhs.false1.if.then_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false1.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %xleft = getelementptr i8, ptr %work, i32 68
  %8 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp slt i32 %9, 1
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %tx_packets, align 4
  %12 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tty, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %17) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %xhead = getelementptr i8, ptr %work, i32 64
  %22 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xhead, align 4
  %call12 = tail call i32 %21(ptr noundef nonnull %1, ptr noundef %23, i32 noundef %9) #16
  %24 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xleft, align 4
  %sub = sub i32 %25, %call12
  store i32 %sub, ptr %xleft, align 4
  %26 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xhead, align 4
  %add.ptr15 = getelementptr i8, ptr %27, i32 %call12
  store ptr %add.ptr15, ptr %xhead, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl_keepalive(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -196
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %tty = getelementptr i8, ptr %t, i32 -204
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %keepalive = getelementptr i8, ptr %t, i32 -51
  %2 = ptrtoint ptr %keepalive to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keepalive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then1

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then1:                                         ; preds = %if.end
  %flags = getelementptr i8, ptr %t, i32 -64
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  %outfill = getelementptr i8, ptr %t, i32 -52
  %7 = ptrtoint ptr %outfill to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %outfill, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.then3.do.end_crit_edge, label %if.then5

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %outfill_timer = getelementptr i8, ptr %t, i32 -48
  %call6 = tail call i32 @del_timer(ptr noundef %outfill_timer) #16
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then3.do.end_crit_edge
  %dev = getelementptr i8, ptr %t, i32 -200
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %10) #19
  %11 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tty, align 4
  tail call void @tty_hangup(ptr noundef %12) #16
  br label %out

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %keepalive to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keepalive, align 1
  %conv = zext i8 %15 to i32
  %mul = mul nuw nsw i32 %conv, 100
  %add = add i32 %mul, %13
  %call14 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #16
  br label %out

out:                                              ; preds = %if.else, %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl_outfill(ptr noundef %t) #4 align 64 {
entry:
  %s = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -148
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %tty = getelementptr i8, ptr %t, i32 -156
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %outfill = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %outfill to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %outfill, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then1

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then1:                                         ; preds = %if.end
  %flags = getelementptr i8, ptr %t, i32 -16
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %s) #16
  %mode = getelementptr i8, ptr %t, i32 -12
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %conv5 = select i1 %tobool4.not, i8 -64, i8 112
  %10 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %s, align 1
  %dev = getelementptr i8, ptr %t, i32 -152
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then7, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 4
  %call10 = call i32 %20(ptr noundef nonnull %1, ptr noundef nonnull %s, i32 noundef 1) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then3.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %s) #16
  br label %if.end13

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #16
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %outfill to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %outfill, align 4
  %conv15 = zext i8 %23 to i32
  %mul = mul nuw nsw i32 %conv15, 100
  %add = add i32 %mul, %21
  %call16 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #16
  br label %out

out:                                              ; preds = %if.end13, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sl_init(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mtu1, align 4
  %mode = getelementptr i8, ptr %dev, i32 2452
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode, align 4
  %conv = zext i8 %4 to i16
  %add = or i16 %conv, 256
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add, ptr %type, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %6 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2000, ptr %watchdog_timeo, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl_uninit(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @sl_free_bufs(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl_open(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tty = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr i8, ptr %dev, i32 2448
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  store i32 %and, ptr %flags, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl_close(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %tty = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %rcount = getelementptr i8, ptr %dev, i32 2416
  %4 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rcount, align 4
  %xleft = getelementptr i8, ptr %dev, i32 2428
  %5 = ptrtoint ptr %xleft to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xleft, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  %p.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %dev) #19
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tty = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %tx_bytes, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #16
  %mtu.i = getelementptr i8, ptr %dev, i32 2432
  %15 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.i = icmp slt i32 %16, %14
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %18) #19
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  %23 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %25) #16
  br label %sl_encaps.exit

if.end.i:                                         ; preds = %if.end6
  %26 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %13, ptr %p.i, align 4
  %mode.i = getelementptr i8, ptr %dev, i32 2452
  %27 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode.i, align 4
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %slcomp.i = getelementptr i8, ptr %dev, i32 2404
  %30 = ptrtoint ptr %slcomp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slcomp.i, align 4
  %cbuff.i = getelementptr i8, ptr %dev, i32 2408
  %32 = ptrtoint ptr %cbuff.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cbuff.i, align 4
  %call3.i = call i32 @slhc_compress(ptr noundef %31, ptr noundef %13, i32 noundef %14, ptr noundef %33, ptr noundef nonnull %p.i, i32 noundef 1) #16
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %len.addr.0.i = phi i32 [ %call3.i, %if.then2.i ], [ %14, %if.end.i.if.end4.i_crit_edge ]
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode.i, align 4
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool8.not.i = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %p.i, align 4
  %xbuff11.i = getelementptr i8, ptr %dev, i32 2420
  %39 = ptrtoint ptr %xbuff11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xbuff11.i, align 4
  %incdec.ptr.i46.i = getelementptr i8, ptr %40, i32 1
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end4.i
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 112, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %cmp43.i.i = icmp sgt i32 %len.addr.0.i, 0
  br i1 %cmp43.i.i, label %if.then9.i.for.body.i.i_crit_edge, label %if.then9.i.slip_esc6.exit.i_crit_edge

if.then9.i.slip_esc6.exit.i_crit_edge:            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slip_esc6.exit.i

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %bits.047.i.i = phi i16 [ %bits.1.lcssa.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %v.046.i.i = phi i32 [ %conv10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %i.045.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %ptr.044.i.i = phi ptr [ %ptr.1.lcssa.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %incdec.ptr.i46.i, %if.then9.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 %v.046.i.i, 8
  %arrayidx.i.i = getelementptr i8, ptr %38, i32 %i.045.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1
  %conv1.i.i = zext i8 %43 to i32
  %add.i.i = add i16 %bits.047.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %bits.047.i.i)
  %cmp639.i.i = icmp sgt i16 %bits.047.i.i, -3
  %shl.masked.i.i = and i32 %shl.i.i, 65280
  %conv10.i.i = or i32 %shl.masked.i.i, %conv1.i.i
  br i1 %cmp639.i.i, label %while.body.i.preheader.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

while.body.i.preheader.i:                         ; preds = %for.body.i.i
  %44 = zext i16 %add.i.i to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %indvars.iv.i = phi i32 [ %44, %while.body.i.preheader.i ], [ %indvars.iv.next.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %bits.141.i.i = phi i16 [ %add.i.i, %while.body.i.preheader.i ], [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %ptr.140.i.i = phi ptr [ %ptr.044.i.i, %while.body.i.preheader.i ], [ %incdec.ptr14.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = add nsw i16 %bits.141.i.i, -6
  %45 = zext i16 %sub.i.i to i32
  %shr.i.i = lshr i32 %conv10.i.i, %45
  %46 = trunc i32 %shr.i.i to i8
  %47 = and i8 %46, 63
  %conv13.i.i = add nuw nsw i8 %47, 48
  %incdec.ptr14.i.i = getelementptr i8, ptr %ptr.140.i.i, i32 1
  %48 = ptrtoint ptr %ptr.140.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv13.i.i, ptr %ptr.140.i.i, align 1
  %cmp6.i.i = icmp ugt i32 %indvars.iv.i, 11
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -6
  br i1 %cmp6.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.for.inc.i.i_crit_edge

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

for.inc.i.i:                                      ; preds = %while.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %ptr.1.lcssa.i.i = phi ptr [ %ptr.044.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %incdec.ptr14.i.i, %while.body.i.i.for.inc.i.i_crit_edge ]
  %bits.1.lcssa.i.i = phi i16 [ %add.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %sub.i.i, %while.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %len.addr.0.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bits.1.lcssa.i.i)
  %tobool.not.i.i = icmp eq i16 %bits.1.lcssa.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.slip_esc6.exit.i_crit_edge, label %if.then.i.i

for.end.i.i.slip_esc6.exit.i_crit_edge:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slip_esc6.exit.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i.i.le = zext i8 %43 to i32
  %conv16.i.i = sext i16 %bits.1.lcssa.i.i to i32
  %sub17.i.i = sub nsw i32 6, %conv16.i.i
  %shl18.i.i = shl i32 %conv1.i.i.le, %sub17.i.i
  %49 = trunc i32 %shl18.i.i to i8
  %50 = and i8 %49, 63
  %conv21.i.i = add nuw nsw i8 %50, 48
  %incdec.ptr22.i.i = getelementptr i8, ptr %ptr.1.lcssa.i.i, i32 1
  %51 = ptrtoint ptr %ptr.1.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv21.i.i, ptr %ptr.1.lcssa.i.i, align 1
  br label %slip_esc6.exit.i

slip_esc6.exit.i:                                 ; preds = %if.then.i.i, %for.end.i.i.slip_esc6.exit.i_crit_edge, %if.then9.i.slip_esc6.exit.i_crit_edge
  %ptr.2.i.i = phi ptr [ %incdec.ptr22.i.i, %if.then.i.i ], [ %ptr.1.lcssa.i.i, %for.end.i.i.slip_esc6.exit.i_crit_edge ], [ %incdec.ptr.i46.i, %if.then9.i.slip_esc6.exit.i_crit_edge ]
  %52 = ptrtoint ptr %ptr.2.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 112, ptr %ptr.2.i.i, align 1
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end4.i
  %53 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -64, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %cmp18.i.i = icmp sgt i32 %len.addr.0.i, 0
  br i1 %cmp18.i.i, label %if.else.i.while.body.i47.i_crit_edge, label %if.else.i.slip_esc.exit.i_crit_edge

if.else.i.slip_esc.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slip_esc.exit.i

if.else.i.while.body.i47.i_crit_edge:             ; preds = %if.else.i
  br label %while.body.i47.i

while.body.i47.i:                                 ; preds = %sw.epilog.i.i.while.body.i47.i_crit_edge, %if.else.i.while.body.i47.i_crit_edge
  %dec21.in.i.i = phi i32 [ %dec21.i.i, %sw.epilog.i.i.while.body.i47.i_crit_edge ], [ %len.addr.0.i, %if.else.i.while.body.i47.i_crit_edge ]
  %ptr.020.i.i = phi ptr [ %ptr.1.i.i, %sw.epilog.i.i.while.body.i47.i_crit_edge ], [ %incdec.ptr.i46.i, %if.else.i.while.body.i47.i_crit_edge ]
  %s.addr.019.i.i = phi ptr [ %incdec.ptr1.i.i, %sw.epilog.i.i.while.body.i47.i_crit_edge ], [ %38, %if.else.i.while.body.i47.i_crit_edge ]
  %dec21.i.i = add nsw i32 %dec21.in.i.i, -1
  %incdec.ptr1.i.i = getelementptr i8, ptr %s.addr.019.i.i, i32 1
  %54 = ptrtoint ptr %s.addr.019.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %s.addr.019.i.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %55, label %sw.default.i.i [
    i8 -64, label %sw.bb.i.i
    i8 -37, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %while.body.i47.i
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr2.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 1
  %57 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -37, ptr %ptr.020.i.i, align 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 2
  %58 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -36, ptr %incdec.ptr2.i.i, align 1
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %while.body.i47.i
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr5.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 1
  %59 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -37, ptr %ptr.020.i.i, align 1
  %incdec.ptr6.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 2
  %60 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -35, ptr %incdec.ptr5.i.i, align 1
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %while.body.i47.i
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr7.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 1
  %61 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %55, ptr %ptr.020.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb.i.i
  %ptr.1.i.i = phi ptr [ %incdec.ptr7.i.i, %sw.default.i.i ], [ %incdec.ptr6.i.i, %sw.bb4.i.i ], [ %incdec.ptr3.i.i, %sw.bb.i.i ]
  %cmp.i.i = icmp ugt i32 %dec21.in.i.i, 1
  br i1 %cmp.i.i, label %sw.epilog.i.i.while.body.i47.i_crit_edge, label %sw.epilog.i.i.slip_esc.exit.i_crit_edge

sw.epilog.i.i.slip_esc.exit.i_crit_edge:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slip_esc.exit.i

sw.epilog.i.i.while.body.i47.i_crit_edge:         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i47.i

slip_esc.exit.i:                                  ; preds = %sw.epilog.i.i.slip_esc.exit.i_crit_edge, %if.else.i.slip_esc.exit.i_crit_edge
  %ptr.0.lcssa.i.i = phi ptr [ %incdec.ptr.i46.i, %if.else.i.slip_esc.exit.i_crit_edge ], [ %ptr.1.i.i, %sw.epilog.i.i.slip_esc.exit.i_crit_edge ]
  %62 = ptrtoint ptr %ptr.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -64, ptr %ptr.0.lcssa.i.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %slip_esc.exit.i, %slip_esc6.exit.i
  %ptr.0.lcssa.i.pn.i = phi ptr [ %ptr.0.lcssa.i.i, %slip_esc.exit.i ], [ %ptr.2.i.i, %slip_esc6.exit.i ]
  %incdec.ptr8.i.sink.i = getelementptr i8, ptr %ptr.0.lcssa.i.pn.i, i32 1
  %sub.ptr.lhs.cast.i48.i = ptrtoint ptr %incdec.ptr8.i.sink.i to i32
  %sub.ptr.rhs.cast.i49.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i50.i = sub i32 %sub.ptr.lhs.cast.i48.i, %sub.ptr.rhs.cast.i49.i
  %63 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tty, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %64, i32 0, i32 16
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #16
  %65 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tty, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write.i, align 4
  %71 = ptrtoint ptr %xbuff11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xbuff11.i, align 4
  %call17.i = call i32 %70(ptr noundef %66, ptr noundef %72, i32 noundef %sub.ptr.sub.i50.i) #16
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i24 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 103
  %75 = ptrtoint ptr %_tx.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i.i24, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 12
  %78 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %77)
  %cmp.not.i.i.i = icmp eq i32 %79, %77
  br i1 %cmp.not.i.i.i, label %if.end13.i.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

if.end13.i.netif_trans_update.exit.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %77, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %if.end13.i.netif_trans_update.exit.i_crit_edge
  %sub.i = sub i32 %sub.ptr.sub.i50.i, %call17.i
  %xleft.i = getelementptr i8, ptr %dev, i32 2428
  %81 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i, ptr %xleft.i, align 4
  %82 = ptrtoint ptr %xbuff11.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %xbuff11.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %83, i32 %call17.i
  %xhead.i = getelementptr i8, ptr %dev, i32 2424
  %84 = ptrtoint ptr %xhead.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i25, ptr %xhead.i, align 4
  %flags20.i = getelementptr i8, ptr %dev, i32 2448
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags20.i) #16
  br label %sl_encaps.exit

sl_encaps.exit:                                   ; preds = %netif_trans_update.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call void @consume_skb(ptr noundef %skb) #16
  br label %cleanup

cleanup:                                          ; preds = %sl_encaps.exit, %if.then4, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl_siocdevprivate(ptr noundef %dev, ptr nocapture noundef %rq, ptr nocapture noundef readnone %data, i32 noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %tty = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %cmd, label %if.end6.cleanup.sink.split_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %sw.bb27
    i32 35314, label %sw.bb30
    i32 35315, label %sw.bb52
    i32 35316, label %sw.bb55
    i32 35317, label %sw.bb73
  ]

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end6
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifr_ifru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp7 = icmp ugt i32 %4, 255
  br i1 %cmp7, label %sw.bb.cleanup.sink.split_crit_edge, label %if.end10

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end10:                                         ; preds = %sw.bb
  %conv = trunc i32 %4 to i8
  %keepalive = getelementptr i8, ptr %dev, i32 2461
  %5 = ptrtoint ptr %keepalive to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %keepalive, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.not = icmp eq i32 %4, 0
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %mul = mul nuw nsw i32 %4, 100
  %add = add i32 %6, %mul
  %keepalive_timer = getelementptr i8, ptr %dev, i32 2512
  %expires = getelementptr i8, ptr %dev, i32 2520
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %expires, align 4
  %8 = load volatile i32, ptr @jiffies, align 128
  %add22 = add i32 %8, %mul
  %call23 = tail call i32 @mod_timer(ptr noundef %keepalive_timer, i32 noundef %add22) #16
  %flags = getelementptr i8, ptr %dev, i32 2448
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #16
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %keepalive_timer24 = getelementptr i8, ptr %dev, i32 2512
  %call25 = tail call i32 @del_timer(ptr noundef %keepalive_timer24) #16
  br label %cleanup.sink.split

sw.bb27:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %keepalive28 = getelementptr i8, ptr %dev, i32 2461
  %9 = ptrtoint ptr %keepalive28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %keepalive28, align 1
  %conv29 = zext i8 %10 to i32
  %11 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv29, ptr %ifr_ifru, align 4
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.end6
  %12 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifr_ifru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %13)
  %cmp31 = icmp ugt i32 %13, 255
  br i1 %cmp31, label %sw.bb30.cleanup.sink.split_crit_edge, label %if.end35

sw.bb30.cleanup.sink.split_crit_edge:             ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end35:                                         ; preds = %sw.bb30
  %conv36 = trunc i32 %13 to i8
  %outfill = getelementptr i8, ptr %dev, i32 2460
  %14 = ptrtoint ptr %outfill to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv36, ptr %outfill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp39.not = icmp eq i32 %13, 0
  %outfill_timer49 = getelementptr i8, ptr %dev, i32 2464
  br i1 %cmp39.not, label %if.else48, label %if.then41

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %mul44 = mul nuw nsw i32 %13, 100
  %add45 = add i32 %15, %mul44
  %call46 = tail call i32 @mod_timer(ptr noundef %outfill_timer49, i32 noundef %add45) #16
  %flags47 = getelementptr i8, ptr %dev, i32 2448
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags47) #16
  br label %cleanup.sink.split

if.else48:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %call50 = tail call i32 @del_timer(ptr noundef %outfill_timer49) #16
  br label %cleanup.sink.split

sw.bb52:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %outfill53 = getelementptr i8, ptr %dev, i32 2460
  %16 = ptrtoint ptr %outfill53 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %outfill53, align 4
  %conv54 = zext i8 %17 to i32
  %18 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv54, ptr %ifr_ifru, align 4
  br label %cleanup.sink.split

sw.bb55:                                          ; preds = %if.end6
  %19 = tail call i32 @llvm.read_register.i32(metadata !120) #16
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 111
  %23 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal, align 16
  %tty58 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 25
  %25 = ptrtoint ptr %tty58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tty58, align 8
  %cmp59.not = icmp eq ptr %1, %26
  br i1 %cmp59.not, label %sw.bb55.if.end68_crit_edge, label %land.lhs.true

sw.bb55.if.end68_crit_edge:                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

land.lhs.true:                                    ; preds = %sw.bb55
  %pid = getelementptr i8, ptr %dev, i32 2456
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 4
  %pid63 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %29 = ptrtoint ptr %pid63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid63, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp64.not = icmp eq i32 %28, %30
  br i1 %cmp64.not, label %land.lhs.true.if.end68_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %sw.bb55.if.end68_crit_edge
  %leased = getelementptr i8, ptr %dev, i32 2453
  %31 = ptrtoint ptr %leased to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %leased, align 1
  %32 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ifr_ifru, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool69.not = icmp ne i32 %33, 0
  %spec.store.select = zext i1 %tobool69.not to i8
  %34 = ptrtoint ptr %leased to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.store.select, ptr %leased, align 1
  br label %cleanup.sink.split

sw.bb73:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %leased74 = getelementptr i8, ptr %dev, i32 2453
  %35 = ptrtoint ptr %leased74 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %leased74, align 1
  %conv75 = zext i8 %36 to i32
  %37 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv75, ptr %ifr_ifru, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb73, %if.end68, %land.lhs.true.cleanup.sink.split_crit_edge, %sw.bb52, %if.else48, %if.then41, %sw.bb30.cleanup.sink.split_crit_edge, %sw.bb27, %if.else, %if.then15, %sw.bb.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %sw.bb30.cleanup.sink.split_crit_edge ], [ -1, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %if.end68 ], [ 0, %if.then41 ], [ 0, %if.else48 ], [ 0, %if.then15 ], [ 0, %if.else ], [ 0, %sw.bb73 ], [ 0, %if.end6.cleanup.sink.split_crit_edge ], [ 0, %sw.bb52 ], [ 0, %sw.bb27 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %mul.i = shl i32 %new_mtu, 1
  %2 = tail call i32 @llvm.smax.i32(i32 %mul.i, i32 1152) #16
  %add.i = add nuw i32 %2, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #20
  %call9.i181.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #20
  %call9.i208.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #20
  %cmp6.i = icmp eq ptr %call9.i.i, null
  %cmp7.i = icmp eq ptr %call9.i181.i, null
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp7.i
  %cmp9.i = icmp eq ptr %call9.i208.i, null
  %or.cond157.i = select i1 %or.cond.i, i1 true, i1 %cmp9.i
  br i1 %or.cond157.i, label %if.then10.i, label %if.end16.i

if.then10.i:                                      ; preds = %entry
  %mtu11.i = getelementptr i8, ptr %dev, i32 2432
  %3 = ptrtoint ptr %mtu11.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %new_mtu)
  %cmp12.i = icmp slt i32 %4, %new_mtu
  br i1 %cmp12.i, label %do.end.i, label %if.then10.i.sl_realloc_bufs.exit_crit_edge

if.then10.i.sl_realloc_bufs.exit_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sl_realloc_bufs.exit

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %1) #19
  br label %sl_realloc_bufs.exit

if.end16.i:                                       ; preds = %entry
  %lock.i = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #16
  %tty.i = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tty.i, align 4
  %cmp17.i = icmp eq ptr %6, null
  br i1 %cmp17.i, label %if.end16.i.done_on_bh.i_crit_edge, label %if.end19.i

if.end16.i.done_on_bh.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %done_on_bh.i

if.end19.i:                                       ; preds = %if.end16.i
  %xbuff20.i = getelementptr i8, ptr %dev, i32 2420
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xbuff20.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !161
  %7 = ptrtoint ptr %call9.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %xbuff20.i, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %7, ptr %xbuff20.i) #16, !srcloc !132
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  %9 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !162
  %rbuff41.i = getelementptr i8, ptr %dev, i32 2412
  %call.i212.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rbuff41.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !163
  %10 = ptrtoint ptr %call9.i181.i to i32
  tail call void @llvm.prefetch.p0(ptr %rbuff41.i, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %10, ptr %rbuff41.i) #16, !srcloc !132
  %asmresult.i214.i = extractvalue { i32, i32 } %11, 0
  %12 = inttoptr i32 %asmresult.i214.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !164
  %cbuff63.i = getelementptr i8, ptr %dev, i32 2408
  %call.i213.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cbuff63.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !165
  %13 = ptrtoint ptr %call9.i208.i to i32
  tail call void @llvm.prefetch.p0(ptr %cbuff63.i, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %13, ptr %cbuff63.i) #16, !srcloc !132
  %asmresult.i215.i = extractvalue { i32, i32 } %14, 0
  %15 = inttoptr i32 %asmresult.i215.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !166
  %xleft.i = getelementptr i8, ptr %dev, i32 2428
  %16 = ptrtoint ptr %xleft.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xleft.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end19.i.if.end92.i_crit_edge, label %if.then84.i

if.end19.i.if.end92.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.i

if.then84.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %2)
  %cmp86.not.i = icmp sgt i32 %17, %2
  br i1 %cmp86.not.i, label %if.else.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %xbuff20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xbuff20.i, align 4
  %xhead.i = getelementptr i8, ptr %dev, i32 2424
  %20 = ptrtoint ptr %xhead.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xhead.i, align 4
  %22 = call ptr @memcpy(ptr %19, ptr %21, i32 %17)
  br label %if.end92.i

if.else.i:                                        ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %xleft.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %24 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else.i, %if.then87.i, %if.end19.i.if.end92.i_crit_edge
  %26 = ptrtoint ptr %xbuff20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xbuff20.i, align 4
  %xhead94.i = getelementptr i8, ptr %dev, i32 2424
  %28 = ptrtoint ptr %xhead94.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %xhead94.i, align 4
  %rcount.i = getelementptr i8, ptr %dev, i32 2416
  %29 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool95.not.i = icmp eq i32 %30, 0
  br i1 %tobool95.not.i, label %if.end92.i.if.end107.i_crit_edge, label %if.then96.i

if.end92.i.if.end107.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i

if.then96.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %2)
  %cmp98.not.i = icmp sgt i32 %30, %2
  br i1 %cmp98.not.i, label %if.else102.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %rbuff41.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rbuff41.i, align 4
  %33 = call ptr @memcpy(ptr %32, ptr %12, i32 %30)
  br label %if.end107.i

if.else102.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rcount.i, align 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %35 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_over_errors.i, align 4
  %inc105.i = add i32 %36, 1
  store i32 %inc105.i, ptr %rx_over_errors.i, align 4
  %flags.i = getelementptr i8, ptr %dev, i32 2448
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #16
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.else102.i, %if.then99.i, %if.end92.i.if.end107.i_crit_edge
  %mtu108.i = getelementptr i8, ptr %dev, i32 2432
  %37 = ptrtoint ptr %mtu108.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %new_mtu, ptr %mtu108.i, align 4
  %mtu109.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %38 = ptrtoint ptr %mtu109.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %new_mtu, ptr %mtu109.i, align 4
  %buffsize.i = getelementptr i8, ptr %dev, i32 2436
  %39 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %2, ptr %buffsize.i, align 4
  br label %done_on_bh.i

done_on_bh.i:                                     ; preds = %if.end107.i, %if.end16.i.done_on_bh.i_crit_edge
  %cbuff.0.i = phi ptr [ %call9.i208.i, %if.end16.i.done_on_bh.i_crit_edge ], [ %15, %if.end107.i ]
  %rbuff.0.i = phi ptr [ %call9.i181.i, %if.end16.i.done_on_bh.i_crit_edge ], [ %12, %if.end107.i ]
  %xbuff.0.i = phi ptr [ %call9.i.i, %if.end16.i.done_on_bh.i_crit_edge ], [ %9, %if.end107.i ]
  %err.0.i = phi i32 [ -19, %if.end16.i.done_on_bh.i_crit_edge ], [ 0, %if.end107.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  br label %sl_realloc_bufs.exit

sl_realloc_bufs.exit:                             ; preds = %done_on_bh.i, %do.end.i, %if.then10.i.sl_realloc_bufs.exit_crit_edge
  %cbuff.1.i = phi ptr [ %call9.i208.i, %do.end.i ], [ %call9.i208.i, %if.then10.i.sl_realloc_bufs.exit_crit_edge ], [ %cbuff.0.i, %done_on_bh.i ]
  %rbuff.1.i = phi ptr [ %call9.i181.i, %do.end.i ], [ %call9.i181.i, %if.then10.i.sl_realloc_bufs.exit_crit_edge ], [ %rbuff.0.i, %done_on_bh.i ]
  %xbuff.1.i = phi ptr [ %call9.i.i, %do.end.i ], [ %call9.i.i, %if.then10.i.sl_realloc_bufs.exit_crit_edge ], [ %xbuff.0.i, %done_on_bh.i ]
  %err.1.i = phi i32 [ -105, %do.end.i ], [ 0, %if.then10.i.sl_realloc_bufs.exit_crit_edge ], [ %err.0.i, %done_on_bh.i ]
  tail call void @kfree(ptr noundef %xbuff.1.i) #16
  tail call void @kfree(ptr noundef %rbuff.1.i) #16
  tail call void @kfree(ptr noundef %cbuff.1.i) #16
  ret i32 %err.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call4 = tail call i32 @dev_trans_start(ptr noundef %dev) #16
  %add.neg = add i32 %6, -2000
  %sub = sub i32 %add.neg, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %do.end

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end:                                           ; preds = %if.end
  %tty = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty, align 4
  %call7 = tail call i32 @tty_chars_in_buffer(ptr noundef %8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %lor.rhs, label %do.end.lor.end_crit_edge

do.end.lor.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %xleft = getelementptr i8, ptr %dev, i32 2428
  %9 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  %phi.sel = select i1 %tobool8.not, ptr @.str.21, ptr @.str.20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end.lor.end_crit_edge
  %11 = phi ptr [ @.str.20, %do.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %dev, ptr noundef nonnull %11) #19
  %xleft10 = getelementptr i8, ptr %dev, i32 2428
  %12 = ptrtoint ptr %xleft10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %xleft10, align 4
  %13 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tty, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #16
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %18) #16
  br label %out

out:                                              ; preds = %lor.end, %if.end.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sl_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %slcomp = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %slcomp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slcomp, align 4
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats1, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %stats, align 8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %5 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_packets, align 4
  %conv3 = zext i32 %6 to i64
  %tx_packets4 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %tx_packets4 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv3, ptr %tx_packets4, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bytes, align 4
  %conv5 = zext i32 %9 to i64
  %rx_bytes6 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %10 = ptrtoint ptr %rx_bytes6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv5, ptr %rx_bytes6, align 8
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %11 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_bytes, align 4
  %conv7 = zext i32 %12 to i64
  %tx_bytes8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %13 = ptrtoint ptr %tx_bytes8 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv7, ptr %tx_bytes8, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %14 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_dropped, align 4
  %conv9 = zext i32 %15 to i64
  %rx_dropped10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %16 = ptrtoint ptr %rx_dropped10 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv9, ptr %rx_dropped10, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %17 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_dropped, align 4
  %conv11 = zext i32 %18 to i64
  %tx_dropped12 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %19 = ptrtoint ptr %tx_dropped12 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv11, ptr %tx_dropped12, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %20 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_errors, align 4
  %conv13 = zext i32 %21 to i64
  %tx_errors14 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %22 = ptrtoint ptr %tx_errors14 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv13, ptr %tx_errors14, align 8
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %23 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors, align 4
  %conv15 = zext i32 %24 to i64
  %rx_errors16 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %25 = ptrtoint ptr %rx_errors16 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv15, ptr %rx_errors16, align 8
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %26 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_over_errors, align 4
  %conv17 = zext i32 %27 to i64
  %rx_over_errors18 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 11
  %28 = ptrtoint ptr %rx_over_errors18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv17, ptr %rx_over_errors18, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sls_i_compressed = getelementptr inbounds %struct.slcompress, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %sls_i_compressed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sls_i_compressed, align 4
  %conv19 = zext i32 %30 to i64
  %rx_compressed = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 21
  %31 = ptrtoint ptr %rx_compressed to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv19, ptr %rx_compressed, align 8
  %sls_o_compressed = getelementptr inbounds %struct.slcompress, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %sls_o_compressed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sls_o_compressed, align 4
  %conv20 = zext i32 %33 to i64
  %tx_compressed = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 22
  %34 = ptrtoint ptr %tx_compressed to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv20, ptr %tx_compressed, align 8
  %35 = load i32, ptr %sls_i_compressed, align 4
  %conv22 = zext i32 %35 to i64
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %36 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rx_fifo_errors, align 8
  %add = add i64 %37, %conv22
  store i64 %add, ptr %rx_fifo_errors, align 8
  %sls_i_tossed = getelementptr inbounds %struct.slcompress, ptr %1, i32 0, i32 17
  %38 = ptrtoint ptr %sls_i_tossed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sls_i_tossed, align 4
  %conv23 = zext i32 %39 to i64
  %add25 = add nuw nsw i64 %conv23, %conv9
  %40 = ptrtoint ptr %rx_dropped10 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add25, ptr %rx_dropped10, align 8
  %41 = load i32, ptr %sls_o_compressed, align 4
  %conv27 = zext i32 %41 to i64
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 18
  %42 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tx_fifo_errors, align 8
  %add28 = add i64 %43, %conv27
  store i64 %add28, ptr %tx_fifo_errors, align 8
  %sls_o_misses = getelementptr inbounds %struct.slcompress, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %sls_o_misses to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sls_o_misses, align 4
  %conv29 = zext i32 %45 to i64
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %46 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %collisions, align 8
  %add30 = add i64 %47, %conv29
  store i64 %add30, ptr %collisions, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slhc_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @slhc_init(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @slhc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_mode_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sl_bump(ptr nocapture noundef %sl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rcount = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 8
  %2 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rcount, align 4
  %mode = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 17
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end58_crit_edge, label %if.then

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then:                                          ; preds = %entry
  %rbuff = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 7
  %6 = ptrtoint ptr %rbuff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rbuff, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool4.not = icmp sgt i8 %9, -1
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %and8 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %1) #19
  br label %cleanup80

if.end:                                           ; preds = %if.then5
  %add = add i32 %3, 80
  %buffsize = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 13
  %10 = ptrtoint ptr %buffsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp = icmp sgt i32 %add, %11
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %12 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  br label %cleanup80

if.end13:                                         ; preds = %if.end
  %slcomp = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 5
  %14 = ptrtoint ptr %slcomp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slcomp, align 4
  %call15 = tail call i32 @slhc_uncompress(ptr noundef %15, ptr noundef %7, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.end13.cleanup80_crit_edge, label %if.end13.if.end58_crit_edge

if.end13.if.end58_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.end13.cleanup80_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup80

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %9)
  %cmp21 = icmp ugt i8 %9, 111
  br i1 %cmp21, label %if.then23, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then23:                                        ; preds = %if.else
  %and26 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %if.then23.if.end43_crit_edge

if.then23.if.end43_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %or = and i8 %5, -10
  %16 = or i8 %or, 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %mode, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %1) #19
  br label %if.end43

if.end43:                                         ; preds = %if.then28, %if.then23.if.end43_crit_edge
  %18 = ptrtoint ptr %rbuff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rbuff, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %22 = and i8 %21, 79
  store i8 %22, ptr %19, align 1
  %slcomp49 = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 5
  %23 = ptrtoint ptr %slcomp49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slcomp49, align 4
  %25 = load ptr, ptr %rbuff, align 4
  %call51 = tail call i32 @slhc_remember(ptr noundef %24, ptr noundef %25, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %if.end43.cleanup80_crit_edge, label %if.end43.if.end58_crit_edge

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.end43.cleanup80_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup80

if.end58:                                         ; preds = %if.end43.if.end58_crit_edge, %if.else.if.end58_crit_edge, %if.end13.if.end58_crit_edge, %entry.if.end58_crit_edge
  %count.2 = phi i32 [ %3, %entry.if.end58_crit_edge ], [ %call15, %if.end13.if.end58_crit_edge ], [ %3, %if.end43.if.end58_crit_edge ], [ %3, %if.else.if.end58_crit_edge ]
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %26 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_bytes, align 8
  %add60 = add i32 %27, %count.2
  store i32 %add60, ptr %rx_bytes, align 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %count.2, i32 noundef 2592) #16
  %cmp62 = icmp eq ptr %call.i.i, null
  br i1 %cmp62, label %do.end67, label %if.end74

do.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %1) #19
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %28 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_dropped, align 8
  %inc73 = add i32 %29, 1
  store i32 %inc73, ptr %rx_dropped, align 8
  br label %cleanup80

if.end74:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %stats59 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %30 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %30, align 8
  %rbuff75 = getelementptr inbounds %struct.slip, ptr %sl, i32 0, i32 7
  %32 = ptrtoint ptr %rbuff75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rbuff75, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %count.2) #16
  %34 = call ptr @memcpy(ptr %call.i, ptr %33, i32 %count.2)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %39 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2048, ptr %protocol, align 8
  %call77 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i) #16
  %41 = ptrtoint ptr %stats59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stats59, align 8
  %inc79 = add i32 %42, 1
  store i32 %inc79, ptr %stats59, align 8
  br label %cleanup80

cleanup80:                                        ; preds = %if.end74, %do.end67, %if.end43.cleanup80_crit_edge, %if.end13.cleanup80_crit_edge, %if.then12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slhc_uncompress(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slhc_remember(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119}
!llvm.named.register.sp = !{!120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__param_slip_maxdev, !1, !"__param_slip_maxdev", i1 false, i1 false}
!1 = !{!"../drivers/net/slip/slip.c", i32 100, i32 1}
!2 = !{ptr @__UNIQUE_ID_slip_maxdevtype474, !1, !"__UNIQUE_ID_slip_maxdevtype474", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_slip_maxdev475, !4, !"__UNIQUE_ID_slip_maxdev475", i1 false, i1 false}
!4 = !{!"../drivers/net/slip/slip.c", i32 101, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/slip/slip.c", i32 1357, i32 4}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @slip_exit._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @slip_exit._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_slip__481_1370_slip_init6, !12, !"__initcall__kmod_slip__481_1370_slip_init6", i1 false, i1 false}
!12 = !{!"../drivers/net/slip/slip.c", i32 1370, i32 1}
!13 = !{ptr @__exitcall_slip_exit, !14, !"__exitcall_slip_exit", i1 false, i1 false}
!14 = !{!"../drivers/net/slip/slip.c", i32 1371, i32 1}
!15 = !{ptr @__UNIQUE_ID_file482, !16, !"__UNIQUE_ID_file482", i1 false, i1 false}
!16 = !{!"../drivers/net/slip/slip.c", i32 1440, i32 1}
!17 = !{ptr @__UNIQUE_ID_license483, !16, !"__UNIQUE_ID_license483", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alias484, !19, !"__UNIQUE_ID_alias484", i1 false, i1 false}
!19 = !{!"../drivers/net/slip/slip.c", i32 1441, i32 1}
!20 = !{ptr @slip_devs, !21, !"slip_devs", i1 false, i1 false}
!21 = !{!"../drivers/net/slip/slip.c", i32 97, i32 28}
!22 = !{ptr @__param_str_slip_maxdev, !1, !"__param_str_slip_maxdev", i1 false, i1 false}
!23 = !{ptr @slip_maxdev, !24, !"slip_maxdev", i1 false, i1 false}
!24 = !{!"../drivers/net/slip/slip.c", i32 99, i32 12}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/slip/slip.c", i32 1271, i32 12}
!27 = !{ptr @sl_ldisc, !28, !"sl_ldisc", i1 false, i1 false}
!28 = !{!"../drivers/net/slip/slip.c", i32 1268, i32 29}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/slip/slip.c", i32 755, i32 16}
!31 = !{ptr @sl_alloc.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/slip/slip.c", i32 766, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sl_alloc.__key.6, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/slip/slip.c", i32 767, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sl_alloc.__key.8, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/slip/slip.c", i32 771, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sl_alloc.__key.10, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/slip/slip.c", i32 772, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sl_netdev_ops, !44, !"sl_netdev_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/slip/slip.c", i32 641, i32 36}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/slip/slip.c", i32 506, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sl_xmit._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sl_xmit._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/slip/slip.c", i32 382, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sl_encaps._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sl_encaps._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/slip/slip.c", i32 252, i32 4}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sl_realloc_bufs._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sl_realloc_bufs._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/slip/slip.c", i32 483, i32 3}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sl_tx_timeout._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @sl_tx_timeout._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/slip/slip.c", i32 1425, i32 4}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sl_keepalive._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sl_keepalive._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/slip/slip.c", i32 333, i32 5}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sl_bump._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sl_bump._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/slip/slip.c", i32 350, i32 5}
!86 = !{ptr @sl_bump._entry.29, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sl_bump._entry_ptr.31, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/slip/slip.c", i32 363, i32 3}
!90 = !{ptr @sl_bump._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sl_bump._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../drivers/net/slip/slip.c", i32 459, i32 7}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!101 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/slip/slip.c", i32 1287, i32 2}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @slip_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @slip_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/slip/slip.c", i32 1294, i32 2}
!110 = !{ptr @slip_init._entry.42, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @slip_init._entry_ptr.44, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/slip/slip.c", i32 1297, i32 2}
!114 = !{ptr @slip_init._entry.45, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @slip_init._entry_ptr.47, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/slip/slip.c", i32 1308, i32 3}
!118 = !{ptr @slip_init._entry.48, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @slip_init._entry_ptr.50, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{!"sp"}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2157312826}
!132 = !{i64 770877, i64 770894, i64 770918, i64 770944, i64 770962}
!133 = !{i64 2157313173}
!134 = !{i64 2157314008}
!135 = !{i64 2157314355}
!136 = !{i64 2157315190}
!137 = !{i64 2157315537}
!138 = !{i64 2157316379}
!139 = !{i64 2157316727}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2152295989, i64 2152296014}
!142 = !{i64 4790863}
!143 = !{i64 4791060}
!144 = !{i64 2152276293}
!145 = !{i64 2157360281, i64 2157360561, i64 2157360895, i64 2157361229}
!146 = !{i64 2157371755, i64 2157372035, i64 2157372369, i64 2157372703}
!147 = !{i64 2157383953, i64 2157384233, i64 2157384567, i64 2157384901}
!148 = !{i64 2157393553, i64 2157393833, i64 2157394167, i64 2157394501}
!149 = !{i64 2157405046, i64 2157405326, i64 2157405660, i64 2157405994}
!150 = !{i64 2157414642, i64 2157414922, i64 2157415256, i64 2157415590}
!151 = !{i64 2149435277}
!152 = !{i64 2149435543}
!153 = !{i64 2157317604}
!154 = !{i64 2157317957}
!155 = !{i64 2157318834}
!156 = !{i64 2157319187}
!157 = !{i64 2157320064}
!158 = !{i64 2157320417}
!159 = !{i64 2157321296}
!160 = !{i64 2157321649}
!161 = !{i64 2157324657}
!162 = !{i64 2157325004}
!163 = !{i64 2157325839}
!164 = !{i64 2157326186}
!165 = !{i64 2157327021}
!166 = !{i64 2157327368}
